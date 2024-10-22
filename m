Return-Path: <devicetree+bounces-114421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE4A9AB94C
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 00:04:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 111FAB2132E
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 22:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA481CCB30;
	Tue, 22 Oct 2024 22:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="IvjMvj/e"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic308-18.consmr.mail.ir2.yahoo.com (sonic308-18.consmr.mail.ir2.yahoo.com [77.238.178.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A96D13B58A
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 22:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.238.178.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729634657; cv=none; b=UsuQJL+DK7SZVJX4R06E0cWYtnAj9N03FojnxZDYd3pywpTft64jEX2zK3+rdIz4UTephJJoaXTTwkNnBNeNzXc9J582rVDCAUFRq0CTNVtAVqLCbh+0+oYc/6U0geALR5zjltI2eftGXkD1+aSjiNcwra0T1bwN2t+FFE168Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729634657; c=relaxed/simple;
	bh=brSz+41Wb1TRp/pCmUwp2H6801TlN2v63i8bfdio2A4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lkkRVuJKd+fUwe5on+qkVcZRbbkOoZmI0WgGLfHn4chEKdVTOnQOO/tc3EfQVXXvbx0ZdeiKQkhtLHhbB/sGTBl2DbnLmuF4LgoGm0dN1kjqZQz71o2lAWc4n6nXCC/WaHoyiieKhkTo8uT+Ky6xILGh0110fVF27WQdpbwwYLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=IvjMvj/e; arc=none smtp.client-ip=77.238.178.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1729634652; bh=Vy1bwYNwmnRyExphf8HYLU7EL3DREmN4oWSeVjo8WnU=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=IvjMvj/eWbiNz6D0MplB9spCrh5khDMivS+nd+rJEeVCzISYQZ72jkiBQ0J+uGgiBhqBj+5FUa+53NriqtVvvTpEDRrYbMAWuE6ZpsciozaIUMGDElqDfAQalWAnvPDrPbqN6FKuk8lrByy8A5pRKZ+r9jUawWUxTQdTy/uF5/u2IhAQmIuScgiH1r17OoiwIV8aUkYSeUcLbsWa7hMxwq9q+w0cXz2ZjgkLWADfLlga2KKXq4X/FZL4RybDTFq4DT62pwxuVgy8rYvl+vA3te59cYxxRa6CAm/yAmQRC8D4Uet2+2gxLeKPfHXl+2pVWSQfLicmBXaET+UqhA8aaw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1729634652; bh=1kgI9M2ekHDjgC+XZGyr8wSSV0Fgyoj9P7SBLroM0Ta=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=dk3nhn0/Xr4ro0BKt0SWfArrMex25ckA93De0hNC3YVhxpJ413z85pX0215Aottld/4K7T1Dj3bZY17+6eunCkMNq6xIXT4Ll4mmH5jneNnRasMCfA7qd+BLRxcgL66M0r9oWHeHUJn4tG2X3I/6hIOgekWeI0kPr4O221BYIXXRjb0DmxnmkwLEU+3Bi8KJbWsBV2qtwPn7mSwEwioaYt0zWyCeAFFfObTrNkvZse22fI+9iy5LpZGsiHXHYR3BW+qwn+CIKErmvuJwvYyneqOZsImu/2Tep9QflUKHo6tcOnzF3Xp6Pz/uG2MmFfohC14y4cg4degl4HJ/FxR+zA==
X-YMail-OSG: FmFH82sVM1kTDgeRv5caOoIvYTIfYsTIvflcWGM5vEQgZwZze7wigJsEY4r8._f
 p.DXR8kOZ.CJyRLgGe5EMrcMQKLH39iOhmoGG3L8wIz3WfivEtASjlenQawiZplOp0_KCkxZMwUE
 sAxp50RyLGqtqzKhUjWd3jZIP5OUOi531qjo3.kBg8Hp7QDsTjV40JHlFf.E5GN7wQbcieriqaSD
 hzxcd6P_6D8ls8tB7Si.JQhBuitSzrHOMtHeGl3g2udWLG3qqEEODXYnkFLBeS6CQmoV9oiXx6sr
 8gnGvbFbKMGI7ny3HUkXzcNAww6F6vC.zKHNYX_KTzU7K2DhZsEaLAvUnHo71vHDxiYR4VhccM0r
 xq5T.cOf7lASRyPC2NJoSFAa7pcUqKFukV3d0SCrCqxe092nKrjvwdtS4DyakHI6B4UFhQHkc7fK
 sA3LfF8fLOZxOV_yKRZudOrAzhu4zGUnuKHTY7GnX0YLKy.XZA.t0BX_SppMMr1PvpTMZhxtzJAl
 6q0M9c_srfhzsxxT9OzGcbhDhJ4HN64hDznZoTJorCWS7nxi0PIIxt7TVmPL8p6XahgoR1nw6KWu
 RhraE4kxZy5N3bQQdUOlFaLRFMuI2ChtzYwXOU3hjskIjmTnYMC3phbzSQRWLD.BDzsKMmJj6U7H
 .LLVOIsGLjXQWkUaHeRH26DqWWR5KeVi_8TOSGoVzH0pCE7sXSTq5XXCMdL1vMFmPaqxwmR6TJXc
 Ni6RjTUupmZuu37pubHwQaQpEw263m5AMjN_g6UEbSDrn.GeM20q4ZaYhdR24ojmRFt37goZm7Sy
 OjndqD1dg272nYctIhGEQMDlOC6DuQeJXas3pvuI3ZmqvWmV8teB8SkV_GsQmSOGRdEd85aaTRRp
 re5ZfMJlwZjBHaP9LOrI562BCmsjmV3hYX_ngQUweD.sBIJ0fdlGvT55WUvtGtS90NjMevy7oxXK
 2jMVurVoXX9Ks9wHrQaxMEqHjyc3K0ibBWazzCn7KALf9.t8dnqS31CrcSF29Dov9AGamrCwq4ZV
 XAyFFz4wCu.NAxoYTRAu9zsiCjXCVPdioPtC0qiX929zgRFapcOWXcAn0dZxoifjF6OV_4AS730F
 vDTWGdvWl9jdV9Fx6FYcWeKEMxe.5gN0b1ZXE6YhgGbzwmrEsY_xZPSAggYvtlJOlxnlTjRfbj7E
 eRWJkRq8m4H04TaSnA1E0O_mXeWBxnLMvwGE9MfOMHHelYQYiUA.LpDmdiXxUHPjEc_tOMXBqCRI
 HkZW1CFa.gmGU4yRKsvcmXL33qm_t6vhTrICJEtdJVMvVHNklECVG2hJT.gsNY9lsMZnswmZIIlJ
 D8qtMnsO4x6BzICM_E0Y7KlSxYNGIPrySsqv6zZn1sc_FLQ8dGbbfvcsOqjo3FrnzpSlez992BeT
 8LW5T51iG.aarVdLiNQgHFikaqMyzAV3SvkrH8g7rKO6Cv.VU9X19d8R_EsmYpFLCW9XjefcPluk
 prKYcQVYqwg0dV30HlL28ROxM4esEoPbVwgr2xmfGZ2iXqzyeL6UJ3zCk_9JIHtIm3HvnzZFTTyO
 RJtAZz9CR3NyMIYHJQ.AmaMMpknieib6.jU_f8eqIsh_ZmUBBMrLBEJbceFYjg52uCGO3WChPlhU
 bNNA.iosRqfjiruQ7pqPWrhsDT4AjR98jaC2CC4ICm0858cLtGldedxEZoasVZv1I3_SbT5_Sg58
 ioa9S4EGDsfDd1Dk8A8Z2A1ZfucxBZJYcJ.wL802xeclN8KhtNutEtn.63I9bwpL_ukS_5exaihr
 umCxrTKBgxipU6fWDVqEW62KXNuMGmjJ._I1y42yXAGlaB_zAIV.X2N8xTyQ85NDGeq0xejUuDqk
 tdh5HD9eCZsSHc_0aZwhUq7ekGphnE2lRV5JrY4JYjs9E6NCU8U3RuPRgaWEOv.VqXk_xZnKAg2n
 jIteqSE51oBG61_q5WgSepWZDWf3MkaODi5Di6cYkS1wQNNZUS1i9w0k2A58yO06vGdb1P9pC.LA
 mQjszQ0EyQKNC9.cJ7INe.iOaLFboyYyUBPWxs9blcj94bBAGsoiSkXWR78aJLRYnu9DJlsqRR48
 KlPwAIeriCN07kuZY544bcIkOr7VudN.NREvVz1bxukROYhBlif8_lXjQJW_6aBRY33DGuEVJ73v
 zCKljf2VeCtkXRp4tPDTZi1qlXTjvZGoLb1jm251FhQsi_2HmTl61ZaLYikmQsGC5Rf6ExLmsEIW
 Bvmu5tyPz.yitRMkKr6k7Q37yQpsubhATexWjOi2FbiLrurj.kITrBWPoyoEm5Qeq4kR11WtSsL2
 9kJSSb9Suq7B4NHl7o7KQWQ6nYEU7bbXNS67FGSYMpSIBedVnYwaH3g--
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: dba94aff-c355-4aa8-afee-128a3f7a4cc8
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ir2.yahoo.com with HTTP; Tue, 22 Oct 2024 22:04:12 +0000
Received: by hermes--production-ir2-c694d79d9-qjs6q (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 00a5d0a4af66107c7c1614b6d685cac8;
          Tue, 22 Oct 2024 21:33:47 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH v2 4/5] drm/panel: samsung-s6e88a0-ams427ap24: Add brightness control
Date: Tue, 22 Oct 2024 23:33:38 +0200
Message-Id: <c21891ad66ef253b8854b221967c65134350f329.1729630039.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729630039.git.jahau@rocketmail.com>
References: <cover.1729630039.git.jahau@rocketmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tables for brightness to candela, aid and elvss were taken from downstream
kernel file "dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi" [1][2][3].

The gamma table gets generated in "ss_dsi_smart_dimming_S6E88A0_AMS427AP24.c" [4]
with hard-coded starting values. The function smart_dimming_init() [5] goes
through the v{*}_adjustments, generate_gray_scale and gamma_init procedure.
Instead of calculating it manually, it's easier to compile a custom downstream
kernel with SMART_DIMMING_DEBUG enabled and read out dmesg early at boot.

Selection of the values for aid and elvss are again according to downstream
file "dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi" [6][7].

The set of write commands is guided by downstream file "ss_dsi_panel_common.c" [8]
followed by "ss_dsi_panel_S6E88A0_AMS427AP24.c" [9].

The dsi mode flag MIPI_DSI_MODE_VIDEO_NO_HFP prevents screen flickering while
changing the brightness.

[1] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi#L341-L397
[2] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi#L214-L254
[3] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi#L301-L320
[4] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/ss_dsi_smart_dimming_S6E88A0_AMS427AP24.c
[5] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/ss_dsi_smart_dimming_S6E88A0_AMS427AP24.c#L1816-L1900
[6] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi#L256-L268
[7] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi#L322-L334
[8] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/ss_dsi_panel_common.c#L1389-L1517
[9] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/drivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/ss_dsi_panel_S6E88A0_AMS427AP24.c#L666-L678

Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
---
Changes in v2:
 - In the table "s6e88a0_ams427ap24_aid" in comment of the second-last line
   changed the format of "40,00 %" to "40.0%" like all others.
---
 drivers/gpu/drm/panel/Kconfig                 |   1 +
 .../panel/panel-samsung-s6e88a0-ams427ap24.c  | 519 +++++++++++++++++-
 2 files changed, 508 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index f8adc38447fb..d7469c565d1d 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -636,6 +636,7 @@ config DRM_PANEL_SAMSUNG_S6E88A0_AMS427AP24
 	tristate "Samsung AMS427AP24 panel with S6E88A0 controller"
 	depends on GPIOLIB && OF && REGULATOR
 	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
 	help
 	  Say Y here if you want to enable support for Samsung AMS427AP24 panel
 	  with S6E88A0 controller (found in Samsung Galaxy S4 Mini Value Edition
diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
index 0ab2768e0e2b..6e02b881434d 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
@@ -4,6 +4,7 @@
  * Copyright (c) 2024 Jakob Hauser <jahau@rocketmail.com>
  */
 
+#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -17,8 +18,17 @@
 #include <drm/drm_panel.h>
 #include <drm/drm_probe_helper.h>
 
+#define NUM_STEPS_CANDELA	54
+#define NUM_STEPS_AID		39
+#define NUM_STEPS_ELVSS		17
+
+#define SEQ_LENGTH_AID		5
+#define SEQ_LENGTH_ELVSS	2
+#define SEQ_LENGTH_GAMMA	33
+
 struct s6e88a0_ams427ap24 {
 	struct drm_panel panel;
+	struct backlight_device *bl_dev;
 	struct mipi_dsi_device *dsi;
 	struct regulator_bulk_data *supplies;
 	struct gpio_desc *reset_gpio;
@@ -35,6 +45,464 @@ struct s6e88a0_ams427ap24 *to_s6e88a0_ams427ap24(struct drm_panel *panel)
 	return container_of(panel, struct s6e88a0_ams427ap24, panel);
 }
 
+enum candela {
+	CANDELA_10CD, /* 0 */
+	CANDELA_11CD,
+	CANDELA_12CD,
+	CANDELA_13CD,
+	CANDELA_14CD,
+	CANDELA_15CD,
+	CANDELA_16CD,
+	CANDELA_17CD,
+	CANDELA_19CD,
+	CANDELA_20CD,
+	CANDELA_21CD,
+	CANDELA_22CD,
+	CANDELA_24CD,
+	CANDELA_25CD,
+	CANDELA_27CD,
+	CANDELA_29CD,
+	CANDELA_30CD,
+	CANDELA_32CD,
+	CANDELA_34CD,
+	CANDELA_37CD,
+	CANDELA_39CD,
+	CANDELA_41CD,
+	CANDELA_44CD,
+	CANDELA_47CD,
+	CANDELA_50CD,
+	CANDELA_53CD,
+	CANDELA_56CD,
+	CANDELA_60CD,
+	CANDELA_64CD,
+	CANDELA_68CD,
+	CANDELA_72CD,
+	CANDELA_77CD,
+	CANDELA_82CD,
+	CANDELA_87CD,
+	CANDELA_93CD,
+	CANDELA_98CD,
+	CANDELA_105CD,
+	CANDELA_111CD,
+	CANDELA_119CD,
+	CANDELA_126CD,
+	CANDELA_134CD,
+	CANDELA_143CD,
+	CANDELA_152CD,
+	CANDELA_162CD,
+	CANDELA_172CD,
+	CANDELA_183CD,
+	CANDELA_195CD,
+	CANDELA_207CD,
+	CANDELA_220CD,
+	CANDELA_234CD,
+	CANDELA_249CD,
+	CANDELA_265CD,
+	CANDELA_282CD,
+	CANDELA_300CD, /* 53 */
+};
+
+static const int s6e88a0_ams427ap24_br_to_cd[NUM_STEPS_CANDELA] = {
+	/* brightness till, candela */
+	10, /* 10CD */
+	11, /* 11CD */
+	12, /* 12CD */
+	13, /* 13CD */
+	14, /* 14CD */
+	15, /* 15CD */
+	16, /* 16CD */
+	17, /* 17CD */
+	18, /* 19CD */
+	19, /* 20CD */
+	20, /* 21CD */
+	21, /* 22CD */
+	22, /* 24CD */
+	23, /* 25CD */
+	24, /* 27CD */
+	25, /* 29CD */
+	26, /* 30CD */
+	27, /* 32CD */
+	28, /* 34CD */
+	29, /* 37CD */
+	30, /* 39CD */
+	32, /* 41CD */
+	34, /* 44CD */
+	36, /* 47CD */
+	38, /* 50CD */
+	40, /* 53CD */
+	43, /* 56CD */
+	46, /* 60CD */
+	49, /* 64CD */
+	52, /* 68CD */
+	56, /* 72CD */
+	59, /* 77CD */
+	63, /* 82CD */
+	67, /* 87CD */
+	71, /* 93CD */
+	76, /* 98CD */
+	80, /* 105CD */
+	86, /* 111CD */
+	91, /* 119CD */
+	97, /* 126CD */
+	104, /* 134CD */
+	110, /* 143CD */
+	118, /* 152CD */
+	125, /* 162CD */
+	133, /* 172CD */
+	142, /* 183CD */
+	150, /* 195CD */
+	160, /* 207CD */
+	170, /* 220CD */
+	181, /* 234CD */
+	205, /* 249CD */
+	234, /* 265CD */
+	254, /* 282CD */
+	255, /* 300CD */
+};
+
+static const u8 s6e88a0_ams427ap24_aid[NUM_STEPS_AID][SEQ_LENGTH_AID] = {
+	{ 0x40, 0x08, 0x20, 0x03, 0x77 }, /* AOR 90.9%, 10CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x73 }, /* AOR 90.5%, 11CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x69 }, /* AOR 89.4%, 12CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x65 }, /* AOR 89.0%, 13CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x61 }, /* AOR 88.6%, 14CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x55 }, /* AOR 87.4%, 15CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x50 }, /* AOR 86.9%, 16CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x45 }, /* AOR 85.8%, 17CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x35 }, /* AOR 84.1%, 19CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x27 }, /* AOR 82.7%, 20CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x23 }, /* AOR 82.3%, 21CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x17 }, /* AOR 81.0%, 22CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x11 }, /* AOR 80.4%, 24CD */
+	{ 0x40, 0x08, 0x20, 0x03, 0x04 }, /* AOR 79.1%, 25CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0xf4 }, /* AOR 77.5%, 27CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0xe3 }, /* AOR 75.7%, 29CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0xd7 }, /* AOR 74.5%, 30CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0xc6 }, /* AOR 72.7%, 32CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0xb7 }, /* AOR 71.2%, 34CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0xa1 }, /* AOR 69.0%, 37CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0x91 }, /* AOR 67.3%, 39CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0x78 }, /* AOR 64.8%, 41CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0x62 }, /* AOR 62.5%, 44CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0x45 }, /* AOR 59.5%, 47CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0x30 }, /* AOR 57.4%, 50CD */
+	{ 0x40, 0x08, 0x20, 0x02, 0x13 }, /* AOR 54.4%, 53CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0xf5 }, /* AOR 51.3%, 56CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0xd3 }, /* AOR 47.8%, 60CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0xb1 }, /* AOR 44.4%, 64CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0x87 }, /* AOR 40.1%, 68CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0x63 }, /* AOR 36.6%, 72CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0x35 }, /* AOR 31.7%, 77CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0x05 }, /* AOR 26.9%, 82CD */
+	{ 0x40, 0x08, 0x20, 0x00, 0xd5 }, /* AOR 21.8%, 87CD */
+	{ 0x40, 0x08, 0x20, 0x00, 0xa1 }, /* AOR 16.5%, 93CD */
+	{ 0x40, 0x08, 0x20, 0x00, 0x6f }, /* AOR 11.4%, 98CD */
+	{ 0x40, 0x08, 0x20, 0x00, 0x31 }, /* AOR 5.0%, 105CD */
+	{ 0x40, 0x08, 0x20, 0x01, 0x86 }, /* AOR 40.0%, 111CD ~ 172CD */
+	{ 0x40, 0x08, 0x20, 0x00, 0x08 }, /* AOR 0.6%, 183CD ~ 300CD */
+};
+
+static const u8 s6e88a0_ams427ap24_elvss[NUM_STEPS_ELVSS][SEQ_LENGTH_ELVSS] = {
+	{ 0x28, 0x14 }, /* 10CD ~ 111CD */
+	{ 0x28, 0x13 }, /* 119CD */
+	{ 0x28, 0x12 }, /* 126CD */
+	{ 0x28, 0x12 }, /* 134CD */
+	{ 0x28, 0x11 }, /* 143CD */
+	{ 0x28, 0x10 }, /* 152CD */
+	{ 0x28, 0x0f }, /* 162CD */
+	{ 0x28, 0x0e }, /* 172CD */
+	{ 0x28, 0x11 }, /* 183CD */
+	{ 0x28, 0x11 }, /* 195CD */
+	{ 0x28, 0x10 }, /* 207CD */
+	{ 0x28, 0x0f }, /* 220CD */
+	{ 0x28, 0x0f }, /* 234CD */
+	{ 0x28, 0x0e }, /* 249CD */
+	{ 0x28, 0x0d }, /* 265CD */
+	{ 0x28, 0x0c }, /* 282CD */
+	{ 0x28, 0x0b }, /* 300CD */
+};
+
+static const u8 s6e88a0_ams427ap24_gamma[NUM_STEPS_CANDELA][SEQ_LENGTH_GAMMA] = {
+	/* 10CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x8a, 0x8c, 0x8b,
+	  0x8c, 0x87, 0x89, 0x89, 0x88, 0x87, 0x8c, 0x80, 0x82, 0x88, 0x7b,
+	  0x72, 0x8c, 0x60, 0x68, 0x8c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 11CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x8a, 0x8c, 0x8b,
+	  0x8c, 0x87, 0x89, 0x89, 0x88, 0x87, 0x8c, 0x80, 0x82, 0x88, 0x7b,
+	  0x72, 0x8c, 0x60, 0x68, 0x8c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 12CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x8a, 0x8b, 0x8b,
+	  0x8c, 0x88, 0x89, 0x8a, 0x88, 0x87, 0x8c, 0x81, 0x82, 0x87, 0x7a,
+	  0x72, 0x8b, 0x60, 0x68, 0x8c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 13CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x8a, 0x8b, 0x8b,
+	  0x8c, 0x88, 0x89, 0x8a, 0x88, 0x87, 0x8c, 0x81, 0x82, 0x87, 0x7a,
+	  0x72, 0x8b, 0x61, 0x69, 0x8c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 14CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8c, 0x8b,
+	  0x8c, 0x88, 0x89, 0x8a, 0x87, 0x86, 0x8a, 0x82, 0x82, 0x87, 0x79,
+	  0x71, 0x89, 0x63, 0x6c, 0x8e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 15CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x8a, 0x8c, 0x8c,
+	  0x8c, 0x86, 0x87, 0x88, 0x85, 0x85, 0x8a, 0x83, 0x83, 0x88, 0x78,
+	  0x72, 0x89, 0x64, 0x6c, 0x8e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 16CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8c, 0x8b,
+	  0x8c, 0x86, 0x88, 0x88, 0x86, 0x86, 0x8a, 0x84, 0x84, 0x88, 0x78,
+	  0x72, 0x89, 0x5d, 0x67, 0x8b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 17CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x87, 0x89, 0x89, 0x86, 0x86, 0x8a, 0x84, 0x83, 0x87, 0x78,
+	  0x73, 0x89, 0x64, 0x6e, 0x8e, 0x38, 0x32, 0x24, 0x00, 0x00, 0x00 },
+	/* 19CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x87, 0x89, 0x89, 0x86, 0x86, 0x89, 0x84, 0x84, 0x87, 0x77,
+	  0x72, 0x88, 0x65, 0x6f, 0x8e, 0x38, 0x32, 0x24, 0x00, 0x00, 0x00 },
+	/* 20CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x88, 0x89, 0x89, 0x85, 0x85, 0x88, 0x82, 0x83, 0x85, 0x79,
+	  0x73, 0x88, 0x65, 0x6f, 0x8e, 0x38, 0x32, 0x24, 0x00, 0x00, 0x00 },
+	/* 21CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x88, 0x89, 0x89, 0x85, 0x85, 0x88, 0x82, 0x83, 0x85, 0x79,
+	  0x74, 0x88, 0x65, 0x6f, 0x8e, 0x38, 0x32, 0x24, 0x00, 0x00, 0x00 },
+	/* 22CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8c, 0x8b,
+	  0x8c, 0x86, 0x88, 0x87, 0x86, 0x86, 0x89, 0x82, 0x83, 0x85, 0x7c,
+	  0x75, 0x87, 0x65, 0x6f, 0x8e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 24CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8c, 0x8b,
+	  0x8c, 0x86, 0x88, 0x87, 0x86, 0x86, 0x89, 0x82, 0x83, 0x85, 0x7c,
+	  0x76, 0x86, 0x66, 0x6f, 0x8e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
+	/* 25CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x89, 0x88, 0x87, 0x87, 0x89, 0x82, 0x82, 0x84, 0x7f,
+	  0x7a, 0x89, 0x6b, 0x73, 0x8f, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 27CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x89, 0x88, 0x87, 0x87, 0x89, 0x82, 0x82, 0x84, 0x7f,
+	  0x7a, 0x89, 0x6b, 0x73, 0x8f, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 29CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x89, 0x88, 0x85, 0x84, 0x87, 0x84, 0x85, 0x86, 0x80,
+	  0x7b, 0x88, 0x6a, 0x73, 0x8f, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 30CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x89, 0x88, 0x85, 0x84, 0x87, 0x84, 0x85, 0x86, 0x80,
+	  0x7b, 0x88, 0x6a, 0x73, 0x8f, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 32CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x89, 0x88, 0x85, 0x84, 0x87, 0x84, 0x85, 0x86, 0x80,
+	  0x7b, 0x88, 0x6a, 0x73, 0x8f, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 34CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8c, 0x8a, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x89, 0x88, 0x85, 0x84, 0x87, 0x83, 0x84, 0x84, 0x7f,
+	  0x79, 0x86, 0x6c, 0x76, 0x91, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 37CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x88, 0x87, 0x86, 0x87, 0x83, 0x84, 0x84, 0x7f,
+	  0x79, 0x86, 0x6c, 0x76, 0x90, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 39CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x87, 0x84, 0x84, 0x86, 0x83, 0x85, 0x85, 0x80,
+	  0x79, 0x85, 0x6c, 0x76, 0x90, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 41CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x87, 0x84, 0x84, 0x86, 0x81, 0x84, 0x83, 0x7f,
+	  0x79, 0x84, 0x6e, 0x79, 0x93, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 44CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x87, 0x84, 0x84, 0x86, 0x81, 0x84, 0x83, 0x7f,
+	  0x79, 0x84, 0x6e, 0x79, 0x92, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 47CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x87, 0x84, 0x85, 0x86, 0x81, 0x84, 0x83, 0x7f,
+	  0x79, 0x83, 0x6f, 0x79, 0x91, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 50CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x87, 0x84, 0x85, 0x86, 0x82, 0x84, 0x83, 0x7f,
+	  0x79, 0x83, 0x6f, 0x79, 0x90, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 53CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8b,
+	  0x8b, 0x86, 0x88, 0x87, 0x83, 0x83, 0x85, 0x84, 0x85, 0x85, 0x7f,
+	  0x79, 0x83, 0x70, 0x79, 0x8f, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 56CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8a,
+	  0x8a, 0x87, 0x89, 0x87, 0x83, 0x83, 0x85, 0x84, 0x85, 0x84, 0x7f,
+	  0x79, 0x82, 0x70, 0x7a, 0x8e, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 60CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8a,
+	  0x8a, 0x87, 0x89, 0x87, 0x83, 0x83, 0x85, 0x84, 0x85, 0x84, 0x7e,
+	  0x79, 0x82, 0x71, 0x7a, 0x8d, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 64CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8b, 0x89, 0x89, 0x8b, 0x8a,
+	  0x8a, 0x86, 0x88, 0x86, 0x84, 0x84, 0x86, 0x82, 0x83, 0x82, 0x80,
+	  0x7a, 0x84, 0x71, 0x7a, 0x8c, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 68CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8c, 0x8a,
+	  0x8a, 0x86, 0x88, 0x86, 0x84, 0x84, 0x86, 0x82, 0x84, 0x82, 0x81,
+	  0x7b, 0x83, 0x72, 0x7b, 0x8b, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 72CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8c, 0x8a,
+	  0x8a, 0x86, 0x88, 0x86, 0x85, 0x85, 0x86, 0x82, 0x84, 0x82, 0x81,
+	  0x7b, 0x83, 0x72, 0x7c, 0x8a, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 77CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8c, 0x8a,
+	  0x8a, 0x85, 0x87, 0x85, 0x85, 0x87, 0x87, 0x82, 0x84, 0x82, 0x81,
+	  0x7c, 0x82, 0x72, 0x7c, 0x89, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 82CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8c, 0x8a,
+	  0x8a, 0x85, 0x87, 0x85, 0x85, 0x87, 0x87, 0x82, 0x84, 0x82, 0x81,
+	  0x7c, 0x82, 0x73, 0x7c, 0x88, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 87CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8c, 0x8a,
+	  0x8a, 0x85, 0x87, 0x85, 0x84, 0x84, 0x86, 0x80, 0x84, 0x81, 0x80,
+	  0x7a, 0x82, 0x76, 0x7f, 0x89, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 93CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8b, 0x8a,
+	  0x8a, 0x86, 0x87, 0x85, 0x84, 0x85, 0x86, 0x80, 0x84, 0x80, 0x80,
+	  0x7a, 0x82, 0x76, 0x80, 0x88, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 98CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x8a, 0x89, 0x89, 0x8b, 0x8a,
+	  0x8a, 0x86, 0x87, 0x85, 0x85, 0x85, 0x86, 0x80, 0x84, 0x80, 0x80,
+	  0x7a, 0x82, 0x76, 0x80, 0x88, 0x33, 0x2f, 0x22, 0x00, 0x00, 0x00 },
+	/* 105CD */
+	{ 0x00, 0xc8, 0x00, 0xc4, 0x00, 0xc5, 0x89, 0x88, 0x88, 0x8b, 0x8a,
+	  0x8a, 0x84, 0x87, 0x85, 0x85, 0x85, 0x85, 0x80, 0x84, 0x80, 0x7f,
+	  0x79, 0x81, 0x71, 0x7d, 0x87, 0x38, 0x32, 0x24, 0x00, 0x00, 0x00 },
+	/* 111CD */
+	{ 0x00, 0xdf, 0x00, 0xde, 0x00, 0xde, 0x85, 0x85, 0x84, 0x87, 0x86,
+	  0x87, 0x85, 0x86, 0x85, 0x83, 0x83, 0x83, 0x81, 0x82, 0x82, 0x80,
+	  0x7d, 0x82, 0x75, 0x7f, 0x86, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 119CD */
+	{ 0x00, 0xe3, 0x00, 0xe1, 0x00, 0xe2, 0x85, 0x85, 0x84, 0x86, 0x85,
+	  0x85, 0x84, 0x85, 0x84, 0x83, 0x83, 0x83, 0x82, 0x82, 0x82, 0x7e,
+	  0x7b, 0x81, 0x75, 0x7f, 0x86, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 126CD */
+	{ 0x00, 0xe6, 0x00, 0xe5, 0x00, 0xe5, 0x85, 0x84, 0x84, 0x85, 0x85,
+	  0x85, 0x84, 0x84, 0x84, 0x82, 0x83, 0x83, 0x80, 0x81, 0x81, 0x80,
+	  0x7f, 0x83, 0x73, 0x7c, 0x84, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 134CD */
+	{ 0x00, 0xe9, 0x00, 0xe8, 0x00, 0xe8, 0x84, 0x84, 0x83, 0x85, 0x85,
+	  0x85, 0x84, 0x84, 0x83, 0x81, 0x82, 0x82, 0x81, 0x81, 0x81, 0x7f,
+	  0x7d, 0x81, 0x73, 0x7c, 0x83, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 143CD */
+	{ 0x00, 0xed, 0x00, 0xec, 0x00, 0xec, 0x84, 0x83, 0x83, 0x84, 0x84,
+	  0x84, 0x84, 0x84, 0x83, 0x82, 0x83, 0x83, 0x81, 0x80, 0x81, 0x7f,
+	  0x7e, 0x81, 0x70, 0x79, 0x81, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 152CD */
+	{ 0x00, 0xf0, 0x00, 0xf0, 0x00, 0xf0, 0x83, 0x83, 0x83, 0x83, 0x83,
+	  0x83, 0x84, 0x84, 0x83, 0x81, 0x81, 0x81, 0x80, 0x80, 0x81, 0x80,
+	  0x80, 0x82, 0x6f, 0x78, 0x7f, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 162CD */
+	{ 0x00, 0xf4, 0x00, 0xf3, 0x00, 0xf4, 0x83, 0x83, 0x83, 0x83, 0x83,
+	  0x83, 0x82, 0x81, 0x81, 0x81, 0x81, 0x81, 0x80, 0x80, 0x81, 0x80,
+	  0x7f, 0x82, 0x6f, 0x78, 0x7f, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 172CD */
+	{ 0x00, 0xf8, 0x00, 0xf8, 0x00, 0xf8, 0x82, 0x82, 0x82, 0x82, 0x82,
+	  0x82, 0x82, 0x81, 0x81, 0x80, 0x81, 0x80, 0x80, 0x80, 0x81, 0x81,
+	  0x80, 0x83, 0x6d, 0x76, 0x7d, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 183CD */
+	{ 0x00, 0xe0, 0x00, 0xdf, 0x00, 0xdf, 0x84, 0x84, 0x83, 0x86, 0x86,
+	  0x86, 0x83, 0x84, 0x83, 0x82, 0x82, 0x82, 0x81, 0x83, 0x81, 0x81,
+	  0x7e, 0x81, 0x80, 0x82, 0x84, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 195CD */
+	{ 0x00, 0xe4, 0x00, 0xe3, 0x00, 0xe3, 0x84, 0x83, 0x83, 0x85, 0x85,
+	  0x85, 0x83, 0x84, 0x83, 0x81, 0x82, 0x82, 0x82, 0x83, 0x81, 0x81,
+	  0x80, 0x82, 0x7d, 0x7f, 0x81, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 207CD */
+	{ 0x00, 0xe7, 0x00, 0xe6, 0x00, 0xe6, 0x83, 0x82, 0x82, 0x85, 0x85,
+	  0x85, 0x82, 0x83, 0x83, 0x82, 0x82, 0x82, 0x80, 0x81, 0x80, 0x81,
+	  0x80, 0x82, 0x7d, 0x7f, 0x81, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 220CD */
+	{ 0x00, 0xeb, 0x00, 0xea, 0x00, 0xea, 0x83, 0x83, 0x82, 0x84, 0x84,
+	  0x84, 0x82, 0x83, 0x82, 0x81, 0x81, 0x82, 0x81, 0x82, 0x81, 0x80,
+	  0x7e, 0x80, 0x7d, 0x7f, 0x81, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 234CD */
+	{ 0x00, 0xef, 0x00, 0xee, 0x00, 0xee, 0x83, 0x82, 0x82, 0x83, 0x83,
+	  0x83, 0x82, 0x82, 0x82, 0x81, 0x81, 0x81, 0x80, 0x80, 0x80, 0x80,
+	  0x80, 0x81, 0x7b, 0x7c, 0x7f, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 249CD */
+	{ 0x00, 0xf3, 0x00, 0xf2, 0x00, 0xf2, 0x82, 0x81, 0x81, 0x83, 0x83,
+	  0x83, 0x82, 0x82, 0x82, 0x81, 0x81, 0x81, 0x80, 0x81, 0x80, 0x7f,
+	  0x7e, 0x7f, 0x7b, 0x7c, 0x7f, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 265CD */
+	{ 0x00, 0xf7, 0x00, 0xf7, 0x00, 0xf7, 0x81, 0x81, 0x80, 0x82, 0x82,
+	  0x82, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x81, 0x80, 0x7f,
+	  0x7e, 0x7f, 0x7b, 0x7c, 0x7f, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 282CD */
+	{ 0x00, 0xfb, 0x00, 0xfb, 0x00, 0xfb, 0x80, 0x80, 0x80, 0x81, 0x81,
+	  0x81, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x7f, 0x7f, 0x7f, 0x7f,
+	  0x7f, 0x7f, 0x78, 0x79, 0x7d, 0x85, 0x85, 0x82, 0x00, 0x00, 0x00 },
+	/* 300CD */
+	{ 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x80, 0x80, 0x80, 0x80, 0x80,
+	  0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
+	  0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x00, 0x00, 0x00 },
+};
+
+static int s6e88a0_ams427ap24_set_brightness(struct backlight_device *bd)
+{
+	struct s6e88a0_ams427ap24 *ctx = bl_get_data(bd);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+	struct device *dev = &dsi->dev;
+	int brightness = bd->props.brightness;
+	int candela_enum;
+	u8 b2[SEQ_LENGTH_AID + 1];
+	u8 b6[SEQ_LENGTH_ELVSS + 1];
+	u8 ca[SEQ_LENGTH_GAMMA + 1];
+
+	/* get candela enum from brightness */
+	for (candela_enum = 0; candela_enum < NUM_STEPS_CANDELA; candela_enum++)
+		if (brightness <= s6e88a0_ams427ap24_br_to_cd[candela_enum])
+			break;
+
+	/* get aid */
+	b2[0] = 0xb2;
+	switch (candela_enum) {
+	case CANDELA_10CD ... CANDELA_105CD:
+		memcpy(&b2[1], s6e88a0_ams427ap24_aid[candela_enum],
+		       SEQ_LENGTH_AID);
+		break;
+	case CANDELA_111CD ... CANDELA_172CD:
+		memcpy(&b2[1], s6e88a0_ams427ap24_aid[CANDELA_111CD],
+		       SEQ_LENGTH_AID);
+		break;
+	case CANDELA_183CD ... CANDELA_300CD:
+		memcpy(&b2[1], s6e88a0_ams427ap24_aid[CANDELA_111CD + 1],
+		       SEQ_LENGTH_AID);
+		break;
+	default:
+		dev_err(dev, "Failed to get aid data\n");
+		return -EINVAL;
+	}
+
+	/* get elvss */
+	b6[0] = 0xb6;
+	if (candela_enum <= CANDELA_111CD) {
+		memcpy(&b6[1], s6e88a0_ams427ap24_elvss[0], SEQ_LENGTH_ELVSS);
+	} else {
+		memcpy(&b6[1], s6e88a0_ams427ap24_elvss[candela_enum - CANDELA_111CD],
+		       SEQ_LENGTH_ELVSS);
+	}
+
+	/* get gamma */
+	ca[0] = 0xca;
+	memcpy(&ca[1], s6e88a0_ams427ap24_gamma[candela_enum], SEQ_LENGTH_GAMMA);
+
+	/* write: key on, aid, acl off, elvss, gamma, gamma update, key off */
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
+	mipi_dsi_dcs_write_buffer_multi(&dsi_ctx, b2, ARRAY_SIZE(b2));
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x00);
+	mipi_dsi_dcs_write_buffer_multi(&dsi_ctx, b6, ARRAY_SIZE(b6));
+	mipi_dsi_dcs_write_buffer_multi(&dsi_ctx, ca, ARRAY_SIZE(ca));
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf7, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
+
+	return dsi_ctx.accum_err;
+}
+
 static void s6e88a0_ams427ap24_reset(struct s6e88a0_ams427ap24 *ctx)
 {
 	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
@@ -49,6 +517,8 @@ static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
 {
 	struct mipi_dsi_device *dsi = ctx->dsi;
 	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+	struct device *dev = &dsi->dev;
+	int ret;
 
 	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
 
@@ -68,20 +538,15 @@ static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x4c);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x03, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0xa5, 0xa5);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca,
-				     0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x80,
-				     0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
-				     0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
-				     0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
-				     0x80, 0x80, 0x00, 0x00, 0x00);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb2,
-				     0x40, 0x08, 0x20, 0x00, 0x08);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb6, 0x28, 0x0b);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf7, 0x03);
-	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
 
+	ret = s6e88a0_ams427ap24_set_brightness(ctx->bl_dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set brightness: %d\n", ret);
+		return ret;
+	}
+
 	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
 
 	return dsi_ctx.accum_err;
@@ -181,6 +646,32 @@ static const struct drm_panel_funcs s6e88a0_ams427ap24_panel_funcs = {
 	.get_modes = s6e88a0_ams427ap24_get_modes,
 };
 
+static const struct backlight_ops s6e88a0_ams427ap24_bl_ops = {
+	.update_status	= s6e88a0_ams427ap24_set_brightness,
+};
+
+static int s6e88a0_ams427ap24_register_backlight(struct s6e88a0_ams427ap24 *ctx)
+{
+	struct backlight_properties props = {
+		.type		= BACKLIGHT_RAW,
+		.brightness	= 180,
+		.max_brightness = 255,
+	};
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret = 0;
+
+	ctx->bl_dev = devm_backlight_device_register(dev, dev_name(dev), dev, ctx,
+						     &s6e88a0_ams427ap24_bl_ops,
+						     &props);
+	if (IS_ERR(ctx->bl_dev)) {
+		ret = PTR_ERR(ctx->bl_dev);
+		dev_err(dev, "error registering backlight device (%d)\n", ret);
+	}
+
+	return ret;
+}
+
 static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
@@ -209,12 +700,16 @@ static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
 	dsi->lanes = 2;
 	dsi->format = MIPI_DSI_FMT_RGB888;
 	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
-			  MIPI_DSI_MODE_NO_EOT_PACKET;
+			  MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_VIDEO_NO_HFP;
 
 	drm_panel_init(&ctx->panel, dev, &s6e88a0_ams427ap24_panel_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 	ctx->panel.prepare_prev_first = true;
 
+	ret = s6e88a0_ams427ap24_register_backlight(ctx);
+	if (ret < 0)
+		return ret;
+
 	drm_panel_add(&ctx->panel);
 
 	ret = mipi_dsi_attach(dsi);
-- 
2.39.5


