Return-Path: <devicetree+bounces-13551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BA77DED9D
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F1BD1C20EF5
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8B6E6FA3;
	Thu,  2 Nov 2023 07:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="HWBp2KY7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487886AB8
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:49:35 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 247E212B;
	Thu,  2 Nov 2023 00:49:27 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0DC4F147AB2;
	Thu,  2 Nov 2023 07:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1698911365; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=8Xr/QweSmgY7p0LBTNCDzfvzvoqHoF5yll89vV6bmZg=;
	b=HWBp2KY7I80PU4n4CtgZLFQoURpXPvDGu6OdKU5iycx0g+S4FtILtkBU9671+oV8PNuLG8
	hSPz04sYvUBGo8Um0j2QOafAylCkZiMhTehtGrc0Qo+Wx7s+V4WlLoPsQ4J6F9NuXaB/k4
	DnPVjxzyO8NKz7VPxEyps1+FwvsjJxT7PKGtJlZvQ5jzGNgHkNDSTJSAyiciLxmtBxDpyk
	ZGJE4S4W0FmmvuqUcSpYmbIMOAHCi36a455PzlAyYu1xmE70vuIVb1GO3qQmjX8d1ddNUC
	GeqOOxSmmLhZ1kzqkveRn6wP0H90y7HIxs/1JNP1UR67+xnX6Sk88PaMMVS/Ow==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/4] soc: amlogic: meson-gx-socinfo: export socinfo for use in other modules
Date: Thu,  2 Nov 2023 10:49:15 +0300
Message-Id: <20231102074916.3280809-4-adeep@lexina.in>
In-Reply-To: <20231102074916.3280809-1-adeep@lexina.in>
References: <20231102074916.3280809-1-adeep@lexina.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Move socinfo variable to global scope and export it as meson_gx_socinfo.

Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 34 +++++++++++++++-----------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 6abb730344ab..0517f96a383b 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -24,6 +24,10 @@
 #define SOCINFO_MINOR	GENMASK(15, 8)
 #define SOCINFO_MISC	GENMASK(7, 0)
 
+
+unsigned int meson_gx_socinfo;
+EXPORT_SYMBOL(meson_gx_socinfo);
+
 static const struct meson_gx_soc_id {
 	const char *name;
 	unsigned int id;
@@ -131,10 +135,10 @@ static int __init meson_gx_socinfo_init(void)
 	struct soc_device *soc_dev;
 	struct device_node *np;
 	struct regmap *regmap;
-	unsigned int socinfo;
 	struct device *dev;
 	int ret;
 
+	meson_gx_socinfo = 0;
 	/* look up for chipid node */
 	np = of_find_compatible_node(NULL, NULL, "amlogic,meson-gx-ao-secure");
 	if (!np)
@@ -160,11 +164,13 @@ static int __init meson_gx_socinfo_init(void)
 		return -ENODEV;
 	}
 
-	ret = regmap_read(regmap, AO_SEC_SOCINFO_OFFSET, &socinfo);
-	if (ret < 0)
+	ret = regmap_read(regmap, AO_SEC_SOCINFO_OFFSET, &meson_gx_socinfo);
+	if (ret < 0) {
+		meson_gx_socinfo = 0;
 		return ret;
+	}
 
-	if (!socinfo) {
+	if (!meson_gx_socinfo) {
 		pr_err("%s: invalid chipid value\n", __func__);
 		return -EINVAL;
 	}
@@ -175,13 +181,13 @@ static int __init meson_gx_socinfo_init(void)
 
 	soc_dev_attr->family = "Amlogic Meson";
 	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%x:%x - %x:%x",
-					   socinfo_to_major(socinfo),
-					   socinfo_to_minor(socinfo),
-					   socinfo_to_pack(socinfo),
-					   socinfo_to_misc(socinfo));
+					   socinfo_to_major(meson_gx_socinfo),
+					   socinfo_to_minor(meson_gx_socinfo),
+					   socinfo_to_pack(meson_gx_socinfo),
+					   socinfo_to_misc(meson_gx_socinfo));
 	soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "%s (%s)",
-					 socinfo_to_soc_id(socinfo),
-					 socinfo_to_package_id(socinfo));
+					 socinfo_to_soc_id(meson_gx_socinfo),
+					 socinfo_to_package_id(meson_gx_socinfo));
 
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
@@ -194,10 +200,10 @@ static int __init meson_gx_socinfo_init(void)
 
 	dev_info(dev, "Amlogic Meson %s Revision %x:%x (%x:%x) Detected\n",
 			soc_dev_attr->soc_id,
-			socinfo_to_major(socinfo),
-			socinfo_to_minor(socinfo),
-			socinfo_to_pack(socinfo),
-			socinfo_to_misc(socinfo));
+			socinfo_to_major(meson_gx_socinfo),
+			socinfo_to_minor(meson_gx_socinfo),
+			socinfo_to_pack(meson_gx_socinfo),
+			socinfo_to_misc(meson_gx_socinfo));
 
 	return 0;
 }
-- 
2.34.1


