Return-Path: <devicetree+bounces-11777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE7B7D6904
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DE5F281994
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34EE6266DD;
	Wed, 25 Oct 2023 10:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4FB15491
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:40:12 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD93610C9;
	Wed, 25 Oct 2023 03:40:07 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 9330F83D4;
	Wed, 25 Oct 2023 18:39:59 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:59 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:59 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
CC: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	"Emil Renner Berthing" <kernel@esmil.dk>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel
	<p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Bjorn Andersson <andersson@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki
	<jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao
	<keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>,
	Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>
Subject: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
Date: Wed, 25 Oct 2023 18:39:54 +0800
Message-ID: <20231025103957.3776-4-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025103957.3776-1-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

For each modifier, add the corresponding description

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 include/uapi/drm/drm_fourcc.h | 57 +++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.=
h
index 8db7fd3f7..a580a848c 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -419,6 +419,7 @@ extern "C" {
 #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
 #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
 #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
+#define DRM_FORMAT_MOD_VENDOR_VERISILICON 0x0b
=20
 /* add more to the end as needed */
=20
@@ -1562,6 +1563,62 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 mo=
difier)
 #define AMD_FMT_MOD_CLEAR(field) \
 	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
=20
+#define DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL					0x00
+#define DRM_FORMAT_MOD_VERISILICON_TYPE_MASK					((__u64)0x3 << 54)
+
+#define fourcc_mod_vs_code(type, val) \
+	fourcc_mod_code(VERISILICON, ((((__u64)type) << 54) | (val)))
+
+#define DRM_FORMAT_MOD_VERISILICON_NORM_MODE_MASK				0x1F
+
+/*
+ * An x-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
+ * Each 8x8 sub-tile consists of four standard tiles .
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X8		0x02
+
+/*
+ * A y-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
+ * Each 8x8 sub-tile consists of four standard tiles .
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_8X8		0x03
+
+/*
+ * An 8x8 tile consists of four standard tiles
+ * that are organized in Z-order.
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_TILE_8X8						0x04
+
+/*
+ * An 8x4 tile consists of two standard tiles
+ * that are organized in Z-order.
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_TILE_8X4						0x07
+
+/*
+ * An x-major 8x4 super tile consists of 128 8x4 sub-tiles in total.
+ * Each 8x4 sub-tile consists of two standard tiles.
+ * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X4		0x0B
+
+/*
+ * A y-major 4x8 super tile consists of 128 4x8 sub-tiles in total.
+ * Each 4x8 sub-tile consists of two standard tiles.
+ * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_4X8    0x0C
+
+#define fourcc_mod_vs_norm_code(tile) \
+	fourcc_mod_vs_code(DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL, \
+				(tile))
+
 #if defined(__cplusplus)
 }
 #endif
--=20
2.34.1


