open util/integer
pred show {}


abstract sig c0_tristate
{ r_c0_module : lone c0_module }

sig c0_module
{}
{ one @r_c0_module.this }

lone sig c0_MISC_FILESYSTEMS
{ r_c0_display : one c0_display
, r_c0_JFFS2_FS : lone c0_JFFS2_FS }
{ (some this.@r_c0_display) => ((this.(@r_c0_display.@ref)) = 0) }

lone sig c0_display
{ ref : one Int }
{ one r_c0_display }

lone sig c0_JFFS2_FS extends c0_tristate
{ r_c1_display : one c1_display
, r_c0_FFS2_FS_DEBUG : one c0_FFS2_FS_DEBUG
, r_c0_JFFS2_FS_WRITEBUFFER : lone c0_JFFS2_FS_WRITEBUFFER
, r_c0_JFFS2_COMPRESS : lone c0_JFFS2_COMPRESS }
{ one r_c0_JFFS2_FS
  (some this.@r_c1_display) => ((this.(@r_c1_display.@ref)) = 1)
  some c0_MTD
  (some c0_MTD) => (some c0_CRC32)
  (some this.@r_c0_JFFS2_FS_WRITEBUFFER) <=> (some c0_HAS_IOMEM) }

lone sig c1_display
{ ref : one Int }
{ one r_c1_display }

lone sig c0_FFS2_FS_DEBUG
{ ref : one Int
, r_c2_display : one c2_display }
{ one r_c0_FFS2_FS_DEBUG
  (this.@ref) = 0
  (some this.@r_c2_display) => ((this.(@r_c2_display.@ref)) = 2)
  (0 <= (this.@ref)) && ((this.@ref) <= 2) }

lone sig c2_display
{ ref : one Int }
{ one r_c2_display }

lone sig c0_JFFS2_FS_WRITEBUFFER
{}
{ one r_c0_JFFS2_FS_WRITEBUFFER }

lone sig c0_JFFS2_COMPRESS
{ r_c3_display : one c3_display
, r_c0_JFFS2_ZLIB : lone c0_JFFS2_ZLIB
, r_c0_CompressionChoice : one c0_CompressionChoice }
{ one r_c0_JFFS2_COMPRESS
  (some this.@r_c3_display) => ((this.(@r_c3_display.@ref)) = 3)
  some this.@r_c0_JFFS2_ZLIB }

lone sig c3_display
{ ref : one Int }
{ one r_c3_display }

lone sig c0_JFFS2_ZLIB
{ r_c4_display : one c4_display }
{ one r_c0_JFFS2_ZLIB
  (some this.@r_c4_display) => ((this.(@r_c4_display.@ref)) = 4)
  some c0_ZLIB_INFLATE }

lone sig c4_display
{ ref : one Int }
{ one r_c4_display }

lone sig c0_CompressionChoice
{ r_c5_display : one c5_display
, r_c0_choice : one c0_choice }
{ one r_c0_CompressionChoice
  (some this.@r_c5_display) => ((this.(@r_c5_display.@ref)) = 5)
  some (this.@r_c0_choice).@r_c0_JFFS2_CMODE_PRIORITY }

lone sig c5_display
{ ref : one Int }
{ one r_c5_display }

lone sig c0_choice
{ r_c0_JFFS2_CMODE_NONE : lone c0_JFFS2_CMODE_NONE
, r_c0_JFFS2_CMODE_PRIORITY : lone c0_JFFS2_CMODE_PRIORITY
, r_c0_JFFS2_CMODE_SIZE : lone c0_JFFS2_CMODE_SIZE }
{ one r_c0_choice
  let children = (r_c0_JFFS2_CMODE_NONE + r_c0_JFFS2_CMODE_PRIORITY + r_c0_JFFS2_CMODE_SIZE) | one children }

lone sig c0_JFFS2_CMODE_NONE
{ r_c6_display : one c6_display }
{ one r_c0_JFFS2_CMODE_NONE
  (some this.@r_c6_display) => ((this.(@r_c6_display.@ref)) = 6) }

lone sig c6_display
{ ref : one Int }
{ one r_c6_display }

lone sig c0_JFFS2_CMODE_PRIORITY
{ r_c7_display : one c7_display }
{ one r_c0_JFFS2_CMODE_PRIORITY
  (some this.@r_c7_display) => ((this.(@r_c7_display.@ref)) = 7) }

lone sig c7_display
{ ref : one Int }
{ one r_c7_display }

lone sig c0_JFFS2_CMODE_SIZE
{ r_c8_display : one c8_display }
{ one r_c0_JFFS2_CMODE_SIZE
  (some this.@r_c8_display) => ((this.(@r_c8_display.@ref)) = 8) }

lone sig c8_display
{ ref : one Int }
{ one r_c8_display }

one sig c0_MTD
{}

one sig c0_CRC32
{}

one sig c0_HAS_IOMEM
{}

one sig c0_ZLIB_INFLATE
{}

