Return-Path: <devicetree+bounces-13552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 220D07DEDA0
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5339F1C20EB9
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9FDF6ABD;
	Thu,  2 Nov 2023 07:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="XjYThrOo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4662C6AB0
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:49:35 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81D4512C;
	Thu,  2 Nov 2023 00:49:27 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 51175147AB3;
	Thu,  2 Nov 2023 07:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1698911365; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=DjHr33z5m71WBOI9v22JQkdNrW3bAbyGgJ/hgN+H1UM=;
	b=XjYThrOooEoCn2gOa0CXNbfolL9znTB9eHjNnAULCFsbKw17PTWQTw8tgyMwzZXXFGR0i6
	JLSM3sxt9joS5KLM3miIHWaRy7O9VU2BHfCYIiS/fWxBVtrR8qZvcSpQiyhac/HyS6g6qE
	PdJcKJFsxm1f6At4NLzWyhMAe2YYshagVOSQv31BuFBgRfDDLLD2ZLuH55RN3i+XqUFfR6
	hUybZQmu8JKHFkMP0a/LJ+3uxFSENmSxrRRbndDZ8qwovNjRg3VP/xAedcXHTZQEqnxWyk
	3AA1C4HYr/nrYiVzx1GxagiiuDoEUi4Bbv2ZHlHDlXWQ9RVLY84hZMvvVP/vgg==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/4] firmware: meson_sm: use meson_gx_socinfo for compatibility
Date: Thu,  2 Nov 2023 10:49:16 +0300
Message-Id: <20231102074916.3280809-5-adeep@lexina.in>
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

Use meson_gx_socinfo variable for chipid compatible call
from meson-gx-socinfo driver if available.

Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
---
 drivers/firmware/meson/meson_sm.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 2820f4ac871b..29b53a8a6941 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -23,6 +23,10 @@
 
 #include <linux/firmware/meson/meson_sm.h>
 
+#ifdef CONFIG_MESON_GX_SOCINFO
+extern unsigned int meson_gx_socinfo;
+#endif
+
 struct meson_sm_cmd {
 	unsigned int index;
 	u32 smc_id;
@@ -310,7 +314,19 @@ static ssize_t chipid_show(struct device *dev, struct device_attribute *attr,
 		buff = kmalloc(SM_CHIP_ID_LENGTH, GFP_KERNEL);
 		if (!buff)
 			return -ENOMEM;
-		((uint32_t *)buff)[0] = 0; // CPU_ID is empty
+#ifdef CONFIG_MESON_GX_SOCINFO
+		uint8_t *ch;
+		int i;
+
+		((uint32_t *)buff)[0] =
+			((meson_gx_socinfo & 0xff000000)        |       // Family ID
+			((meson_gx_socinfo << 8) & 0xff0000)    |       // Chip Revision
+			((meson_gx_socinfo >> 8) & 0xff00));            // Package ID
+
+		((uint32_t *)buff)[0] = htonl(((uint32_t *)buff)[0]);
+#else
+		((uint32)t *)buff)[0] = 0;
+#endif
 		/* Transform into expected order for display */
 		ch = (uint8_t *)(id_buf + 4);
 		for (i = 0; i < 12; i++)
-- 
2.34.1


