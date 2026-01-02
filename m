Return-Path: <devicetree+bounces-251107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C38CEEBD6
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB2F5300F881
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F69C1FDE31;
	Fri,  2 Jan 2026 14:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mgWFRxAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC72CE571
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767363440; cv=none; b=omQrP2CuiDHDNqwJjZj2MY/+P5tTjhdwaZin8Vk5Za10ixQRAszcDBic87u1d3RLetz+vXJEMJ3Sw7VQI514r0VJxfwoWF7WBIK09CQSJ34t00v2CeIygyY+WgI5hYamQMM0s7QaKbwkqHJqsFxesVFu7ZEQWLyIneWTIaAuS2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767363440; c=relaxed/simple;
	bh=FJoe36boc6PxayFIxdzbRJUcTEEkPNJJScshy1OJqJc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hr6xalPImuYlQu942Yx9zcB6eLT2YslCnNbe3T76PVAs37H7vS4E7gM/STPGmvBrMcSqZoac+4QjclY3des4p0MkENUjsj4HHGq7jBsGLgA1r3z+VlNERcJ/EhAGEc5g9jRDekMELumqhJDuZSyLQDWnd9Z6f1bPpKveShcpY0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mgWFRxAZ; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c026e074373so11600951a12.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 06:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767363438; x=1767968238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HF9+lG717CVNmqMq8exrBzr6HEfuKw3j8dCzXnfDeFA=;
        b=mgWFRxAZzwvanpeDy+zJdpoQ8itoRyqqJcM33xgihBt/7jjr6dOPEnVkmnpiRhzZEa
         U/l/pZ/w8UTOLgA6SLZyxycfHZEfAWS/xrqs/nEj6G2lNOkpt/G1cXgdV0fTSceSihrV
         rr59qAPf+0WJv1O2RhO2NGOlw7X4QAS4K0eL5dekTtzlDNDd538jNMEHeGq/kHEFdswC
         c12+n2wDcKJRk7POVP98cD5O1SMKrn3HJF0OFOK0mVYqhe3MMTax5iAueXtzQu7ttibV
         EpGZj4ST7ZgOctHP+bmLTRyVlCiK/F0ndR07HCTlt2nIB+yO08tlPBDaMettdRmzKzsa
         K53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767363438; x=1767968238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HF9+lG717CVNmqMq8exrBzr6HEfuKw3j8dCzXnfDeFA=;
        b=nNeXZ56a+P5qfAz6mTUnkvc/pyJ2kZjPN7uI8/WdVGmt1EBOhi+IpzxQZr8YUzLI5M
         XNYro3wuOOf2ZW+WiVXiyN7D7SS/s0tKlPVnnqEja2d8W2DNJnE0r3foWNYq5bFSWhy2
         SZ3bVjUpD60k7BDSgwKKI+lcSYS5EGj9q9fBjE5T8lhkYYtDqJe6s0w3FrTUEe8XhKD+
         FLK/dFhyMAi+OACoggDC7z7+APkdoiKRpnmBzN+HLtxVTJUpfD488H1+p7K/9wp8cYSd
         LMtpOfR1wFKaeczTZMdp2fwJAYi0ab8O5JkacCQ9UBG7JK5Fh50dAca/62TBI+NshPgd
         gtTg==
X-Forwarded-Encrypted: i=1; AJvYcCUWMyvCRpR/EsENJlyV+7vE/YQfh5yYncQXOYTkggCY3UxC22WCrUksNMNB1JEsXWCfZWbaRCRh/cdY@vger.kernel.org
X-Gm-Message-State: AOJu0YyTBYnqDw6IOikp+HQ5Nzy+qak3vASZQIBI3jMFRqBLS9SBKuSw
	0I+nq5XXz4gABhmTl3QB3Tnv7myjV80G8PhISGUtW/4Lae4BAC43JDJh
X-Gm-Gg: AY/fxX5EVlnNCXy6syssn6Exg+xS4BEfjXbSmdHXklhWX9DaTkm4THHedtgJlLu/I2N
	Xi1eh1z7aRbEFb1dJtwOAgi/AMHpJR/ayvUfS2wGBsUOppitK96CvmiyIqOk9myGDPydBY7sHqa
	WnRadIqsuILDY7fZwygfZrLC5gldCqTpwMknnU198eRR5zZY1pIPbn+OcKp1D0OwVMNr0UkbppZ
	MNa9tsqUK87z48v/yu8P2g9k/LHfug2n2cxIADZ014aVGvVdySnUSrUtwaKTHnhNacpTMlKrKHG
	MTIfQGTWb/r/IxuwtBAPjmeZmBXJ2DLesXg5ORXRBZBFVi4FFUwWZnAGqxsCkxTYWuJPaiPkQ+E
	eAqO4f1GUR11aqlX0h3HUjC4Y55zHNDyLBaJFpBoVa889JP+giKDpVyliua3nhXUYvYv58PyKqO
	Md8fdneGRkjHhLa+ctm6Zyx2cp3tH3ZE+Ykg==
X-Google-Smtp-Source: AGHT+IGoPrJ3ysAlwx4pGQiNHkfSl5CijdG6Qv9Gm+B4ir5LeQKGngbBUkiw4zJqznzJS10tmjiMEA==
X-Received: by 2002:a05:7300:a217:b0:2a4:3594:d552 with SMTP id 5a478bee46e88-2b05ec96026mr29703798eec.31.1767363437975;
        Fri, 02 Jan 2026 06:17:17 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:388a:7a66:ea1:ff85])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b140c42ea3sm840356eec.29.2026.01.02.06.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 06:17:17 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 2/2] drm/panel: simple: Add Innolux G150XGE-L05 panel entry
Date: Fri,  2 Jan 2026 11:17:06 -0300
Message-Id: <20260102141706.36842-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260102141706.36842-1-festevam@gmail.com>
References: <20260102141706.36842-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@nabladev.com>

Add support for the Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- None.

 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 3acc9f3dac16..c606e5932ca7 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2836,6 +2836,32 @@ static const struct panel_desc innolux_g121xce_l01 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing innolux_g150xge_l05_timing = {
+	.pixelclock   = { 53350000, 65000000, 80000000 },
+	.hactive      = { 1024, 1024, 1024 },
+	.hfront_porch = { 58, 160, 288 },
+	.hback_porch  = { 58, 160, 288 },
+	.hsync_len    = { 1, 1, 1 },
+	.vactive      = { 768, 768, 768 },
+	.vfront_porch = { 6, 19, 216 },
+	.vback_porch  = { 6, 19, 216 },
+	.vsync_len    = { 1, 1, 1 },
+	.flags        = DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc innolux_g150xge_l05 = {
+	.timings = &innolux_g150xge_l05_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width  = 304,
+		.height = 228,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct display_timing innolux_g156hce_l01_timings = {
 	.pixelclock = { 120000000, 141860000, 150000000 },
 	.hactive = { 1920, 1920, 1920 },
@@ -5314,6 +5340,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "innolux,g121xce-l01",
 		.data = &innolux_g121xce_l01,
+	}, {
+		.compatible = "innolux,g150xge-l05",
+		.data = &innolux_g150xge_l05,
 	}, {
 		.compatible = "innolux,g156hce-l01",
 		.data = &innolux_g156hce_l01,
-- 
2.34.1


