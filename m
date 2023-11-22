Return-Path: <devicetree+bounces-17927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EA87F473C
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14E78B20B11
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B364C63A;
	Wed, 22 Nov 2023 12:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="mA/UeoFe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6249AD62;
	Wed, 22 Nov 2023 04:56:56 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 79DD953ED8;
	Wed, 22 Nov 2023 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1700657814; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=TCt0JoZg+p6aWcClOSdNWHnx4AX17W2tb5XYFeiobmA=;
	b=mA/UeoFeBoCs2qSwF7nxxjkUFaDJmKEQOU5Wa3EZR57SwbPJTyghxGJyrkaqLlt8artEKp
	XetuKqfHJtF0FUusVm5MxTpbBorJ6XO4yi80Y7kkKVSgxqCsAFgHMeKkXHY7kl/1JKXOAT
	3wPLJioi0l8r9tRD4y3K8w8M4TFym6Vpy7w3Hmsy366qrWz8KB1AxlhOZFmK/4LqYMOG8I
	hxfRLPKqZyrMcGbFncrldnP0BQZFg9HX+CpDFkKMWYDG6sHM29vpnyPSAOTDVjvR1pDeb/
	2kQxQdwn3GkaAdg0SZ3BjvPke9JVwMBaXzMDv741W7XbCIzRVhVnV5A6g2RVPQ==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] soc: amlogic: meson-gx-socinfo: move common code to exported function
Date: Wed, 22 Nov 2023 15:56:40 +0300
Message-Id: <20231122125643.1717160-3-adeep@lexina.in>
In-Reply-To: <20231122125643.1717160-1-adeep@lexina.in>
References: <20231122125643.1717160-1-adeep@lexina.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2574; h=from:subject; bh=BnHHuUquDeW8vfYvoIWuzuZnrP1gP/Gae/DQ47jDLU8=; b=owGbwMvMwCHmnhFhrJcZuJTxtFoSQ2rstyP3FWz+1wqt///MM3F/QLJsm3D3Tg8PsXbvuoya5uoP 2tYdpSwMYhwMsmKKLGEdQVP3eay+OHGB0QGYOaxMIEMYuDgFYCInExkZjjtfuFXcoBVz8Iw/O9fm2t J7qisu61w0ZbuSXG3wg/9AAMN/j4jY8vh1NuZZeuEcnzYK/Vc+u6NVsUyGn//ftKlmJyQ5AQ==
X-Developer-Key: i=adeep@lexina.in; a=openpgp; fpr=E2FA1A767ACB0716E02E3E7AEE36B110025A8DFA
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Move common code fill soc_device_attribute to common function for
later use

Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
---
 .../soc/amlogic/meson-gx-socinfo-internal.h   |  3 +++
 drivers/soc/amlogic/meson-gx-socinfo.c        | 26 ++++++++++++-------
 2 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo-internal.h b/drivers/soc/amlogic/meson-gx-socinfo-internal.h
index 884cf8fb580f..5a742cc16fc8 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo-internal.h
+++ b/drivers/soc/amlogic/meson-gx-socinfo-internal.h
@@ -95,5 +95,8 @@ static inline unsigned int socinfo_to_misc(u32 socinfo)
 	return FIELD_GET(SOCINFO_MISC, socinfo);
 }
 
+int meson_gx_socinfo_prepare_soc_driver_attr(struct soc_device_attribute *soc_dev_attr,
+					     unsigned int socattr);
+
 #endif /* _MESON_GX_SOCINFO_INTERNAL_H_ */
 
diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 9d7921c0fb91..8cf69dd238ee 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -47,6 +47,22 @@ static const char *socinfo_to_soc_id(u32 socinfo)
 	return "Unknown";
 }
 
+int meson_gx_socinfo_prepare_soc_driver_attr(struct soc_device_attribute *soc_dev_attr,
+					     unsigned int socattr)
+{
+	soc_dev_attr->family = "Amlogic Meson";
+	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%x:%x - %x:%x",
+					   socinfo_to_major(socattr),
+					   socinfo_to_minor(socattr),
+					   socinfo_to_pack(socattr),
+					   socinfo_to_misc(socattr));
+	soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "%s (%s)",
+					 socinfo_to_soc_id(socattr),
+					 socinfo_to_package_id(socattr));
+	return 0;
+}
+EXPORT_SYMBOL(meson_gx_socinfo_prepare_soc_driver_attr);
+
 static int __init meson_gx_socinfo_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
@@ -95,15 +111,7 @@ static int __init meson_gx_socinfo_init(void)
 	if (!soc_dev_attr)
 		return -ENODEV;
 
-	soc_dev_attr->family = "Amlogic Meson";
-	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%x:%x - %x:%x",
-					   socinfo_to_major(socinfo),
-					   socinfo_to_minor(socinfo),
-					   socinfo_to_pack(socinfo),
-					   socinfo_to_misc(socinfo));
-	soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "%s (%s)",
-					 socinfo_to_soc_id(socinfo),
-					 socinfo_to_package_id(socinfo));
+	meson_gx_socinfo_prepare_soc_driver_attr(soc_dev_attr, socinfo);
 
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
-- 
2.34.1


