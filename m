Return-Path: <devicetree+bounces-187877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C58AE18F3
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BA9E3AD90B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716FD2882A8;
	Fri, 20 Jun 2025 10:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Ef3hi0+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147622857D5
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415500; cv=none; b=UTgt7tEHFm6x2utxzrgCI7QZOztvoNpS1ThxDwNkATHxdiok6ry1sTynHclA6kSAcEi/yLRaakDaYPfXrEgyHsViMokdHf5ip6KIlA3NpofygsM+9jPM+7MGcfEIJPMkB0wQmF6LxVuYcEV4FwtnehxV0GivGY6Rl2iibGchIgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415500; c=relaxed/simple;
	bh=aUgglQRYn7bTkMkwBI8lk1cjN4alca4VUVFQsxvzbtU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ekUK6bJCEbW0BsfOnK1wMI6mNpOTb/smMDdMG9Mcuz8R9dPB1mVSYIi78S1jKyyHTelGDteHanCsqhWt5ghYvXQmYfluGfXgzXiArhmvY2uCNGywE7dAfYDOSYYjqjBQH7NP3IRDKPD0+lD5oPHzgqBgI0fRq3YLyFgXJaUe4Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Ef3hi0+N; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so2518695a12.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750415496; x=1751020296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rx+JsSfgW45704ajaCZP3Z6JsbN0dOsJusfnG4fSCwM=;
        b=Ef3hi0+N+Z5WWS/agg0jMBcgMKFfGfwH0xEmeaAAB+F68900rK3SVA8+qHojPbj1vZ
         9kKAA57TBZCuXc9TtEPev9+7udaZt8nVu6WbguIts1TCaqISdirKeEA5df23r0cbDzZG
         wm2mpvCiNeadzcJ9XhEMPqfGFE956uiqRL4P1AMQZCBEXqZ5mlyYU07S2fpMP3a/99a0
         jweoa3yIREfEDV/ARYmJja/4+IcGIATA/+fsBzg62Rzx4F+rV46YXxmJaYj5xKUfbncl
         V+aw5ViNlZ13q67WGo0PXRvSbLKj07mXaH2Q5oqhARu3RnZ00edtuE2oBHYFTGDumtyR
         apVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750415496; x=1751020296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rx+JsSfgW45704ajaCZP3Z6JsbN0dOsJusfnG4fSCwM=;
        b=eBBnzrpoMpM6X+DdEn0wfNPBqNqqgKGmSHjuAoMkRAqag8Xk3c++S/M+G5wSDC/fo3
         vIAAeVhFYqPhLKaLkItmxynMAd18Y7GdpGPmMsJicpdrdgqL3x3r5ubCyEA5+Kaj3MCR
         KQv0pKlSlpiD4d1GZ1T1taOX6XXX7Cz0LvToSAIUwLXzoDWLHHGWlwQxFi/r89f0H2L5
         /aSTO8Ga+Yo5KsO+WqoquiauMprh+hbE9xvgN9xFHFIP5tLvET8DgLpno0IvqWfBcvoh
         9nIp2/OEzBYAHg/2Nbz4vQXgQh8R1saCJ0a2j8i7e6TrPMLgO7ZAO4DmqRe76PJek+9G
         s8uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxSLBwGY3sPqQAePEkztJI+00o4f+yK95dlITB8pM149UdQwctM7De4/AChHC7gH+4G7xAhh8tsT8H@vger.kernel.org
X-Gm-Message-State: AOJu0YxyOHLdJSIk8Bs8bkoEGcXHXhc0uUDxcV3ET8oNJ1w4WJOxfE+M
	hhJ+L/6vqI40/x05BANJBa2k5DTUSsYNQqCN70yJYAKmkJWVKhFlHHI1yf+8Hu2Eu2Q=
X-Gm-Gg: ASbGnctVbB/i8XUfrjCHtex+uBfzYGfGPzYLOR8DN4S90YZPfiQTrXn8mVw2EUpB6Wx
	6qwoVdd0D0oHeUMjwDooRPrwuN1WssD41QREDBv2fY6fjHZZowNyIYxgXVTLi43am/eXWaUZY1d
	HG7gOX54IJJFF/u8KVDnRnEErXVm2Zd/x/n5eUtm7nip8Y8+X1VMHHcgOipEGq0JyM+CxG+EPsN
	g2V5egPmwzrVNE5WQGlftX9f+9ayoR/Nbz+yOIxNCFfLfdkCLp6+H30ri2qnPUQKmwDu4AxDyiv
	4SeBa2NspJ/jdD9O+D8vLeTEUXrFe6ydfwV9Uy33wwm4gczUAv+X21ebf55Ph8GvQOVXzn4IQbR
	oyZXGiXVo2nKudP+Zc12AmQVrVT/AJz/s
X-Google-Smtp-Source: AGHT+IFojvse3lqX+gqKA0HNP3nkQ76ONpxVInRK6fKU0+nbCKCU4x5vFpvTAQSlT7CHl0bt8sS96g==
X-Received: by 2002:a17:907:3ccb:b0:ad5:4440:23 with SMTP id a640c23a62f3a-ae057f21fcdmr207244766b.50.1750415496144;
        Fri, 20 Jun 2025 03:31:36 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b6f5csm138047366b.122.2025.06.20.03.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 03:31:35 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Jun 2025 12:31:27 +0200
Subject: [PATCH 3/3] fbdev/simplefb: Add support for interconnect paths
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-simple-drm-fb-icc-v1-3-d92142e8f74f@fairphone.com>
References: <20250620-simple-drm-fb-icc-v1-0-d92142e8f74f@fairphone.com>
In-Reply-To: <20250620-simple-drm-fb-icc-v1-0-d92142e8f74f@fairphone.com>
To: Hans de Goede <hdegoede@redhat.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750415493; l=3509;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aUgglQRYn7bTkMkwBI8lk1cjN4alca4VUVFQsxvzbtU=;
 b=q76OcxFnlNqs8zk3v5IaY0TIGBj4kLjAwREPukb0aGjW2/MaP/fIm50kqwa8fh+iuaE1x69fK
 +4EOmwW3pikCwZOl7W1EI5MmfpyvVdzGesSDUA4icHlf9y6PepTL2jt
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Some devices might require keeping an interconnect path alive so that
the framebuffer continues working. Add support for that by setting the
bandwidth requirements appropriately for all provided interconnect
paths.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/video/fbdev/simplefb.c | 83 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/drivers/video/fbdev/simplefb.c b/drivers/video/fbdev/simplefb.c
index be95fcddce4c8ca794826b805cd7dad2985bd637..ca73e079fd13550ddc779e84db80f7f9b743d074 100644
--- a/drivers/video/fbdev/simplefb.c
+++ b/drivers/video/fbdev/simplefb.c
@@ -27,6 +27,7 @@
 #include <linux/parser.h>
 #include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
+#include <linux/interconnect.h>
 
 static const struct fb_fix_screeninfo simplefb_fix = {
 	.id		= "simple",
@@ -89,6 +90,10 @@ struct simplefb_par {
 	u32 regulator_count;
 	struct regulator **regulators;
 #endif
+#if defined CONFIG_OF && defined CONFIG_INTERCONNECT
+	unsigned int icc_count;
+	struct icc_path **icc_paths;
+#endif
 };
 
 static void simplefb_clocks_destroy(struct simplefb_par *par);
@@ -525,6 +530,80 @@ static int simplefb_attach_genpds(struct simplefb_par *par,
 }
 #endif
 
+#if defined CONFIG_OF && defined CONFIG_PM_GENERIC_DOMAINS
+/*
+ * Generic interconnect path handling code.
+ */
+static void simplefb_detach_icc(void *res)
+{
+	struct simplefb_par *par = res;
+	int i;
+
+	for (i = par->icc_count - 1; i >= 0; i--) {
+		if (!IS_ERR_OR_NULL(par->icc_paths[i]))
+			icc_put(par->icc_paths[i]);
+	}
+}
+
+static int simplefb_attach_icc(struct simplefb_par *par,
+			       struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	int ret, count, i;
+
+	count = of_count_phandle_with_args(dev->of_node, "interconnects",
+							 "#interconnect-cells");
+	if (count < 0)
+		return 0;
+
+	/* An interconnect path consists of two elements */
+	if (count % 2) {
+		dev_err(dev, "invalid interconnects value\n");
+		return -EINVAL;
+	}
+	par->icc_count = count / 2;
+
+	par->icc_paths = devm_kcalloc(dev, par->icc_count,
+				      sizeof(*par->icc_paths),
+				      GFP_KERNEL);
+	if (!par->icc_paths)
+		return -ENOMEM;
+
+	for (i = 0; i < par->icc_count; i++) {
+		par->icc_paths[i] = of_icc_get_by_index(dev, i);
+		if (IS_ERR_OR_NULL(par->icc_paths[i])) {
+			ret = PTR_ERR(par->icc_paths[i]);
+			if (ret == -EPROBE_DEFER)
+				goto err;
+			dev_err(dev, "failed to get interconnect path %u: %d\n", i, ret);
+			continue;
+		}
+
+		ret = icc_set_bw(par->icc_paths[i], 0, UINT_MAX);
+		if (ret) {
+			dev_err(dev, "failed to set interconnect bandwidth %u: %d\n", i, ret);
+			continue;
+		}
+	}
+
+	return devm_add_action_or_reset(dev, simplefb_detach_icc, par);
+
+err:
+	while (i) {
+		--i;
+		if (!IS_ERR_OR_NULL(par->icc_paths[i]))
+			icc_put(par->icc_paths[i]);
+	}
+	return ret;
+}
+#else
+static int simplefb_attach_icc(struct simplefb_par *par,
+			       struct platform_device *pdev)
+{
+	return 0;
+}
+#endif
+
 static int simplefb_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -615,6 +694,10 @@ static int simplefb_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto error_regulators;
 
+	ret = simplefb_attach_icc(par, pdev);
+	if (ret < 0)
+		goto error_regulators;
+
 	simplefb_clocks_enable(par, pdev);
 	simplefb_regulators_enable(par, pdev);
 

-- 
2.50.0


