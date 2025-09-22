Return-Path: <devicetree+bounces-219929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4B6B8F6EF
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:12:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06F463AA911
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 08:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECD82FE076;
	Mon, 22 Sep 2025 08:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ika7VvFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E652FD7CA
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758528756; cv=none; b=nzpgVAE4uvzhVtCfTATbZjI6QvkEYLztQSKMF4vV7SPpDqhJ7FxC4EnD8hSvs7vWlbuMLAhiBCOFQilo+3N3RLlEh5w3w2jCMxSfS+r/YfZyhXY5XXYFtRkeX9DnIsf5zX5ug8jThm7dx+9gNGrsUfkw2Fp0vPq7xClDkCey/xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758528756; c=relaxed/simple;
	bh=ciJyOR3eGK2gidrZT8YeI5fy6dg+FxklvW19mrX4w1c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ufkT7kZEwUdhL2T8sEEecayVmwnKxcJcz50iO4lGmiC2Kyil5YY0UEqUO4rrc4IGRLCGSPHxNSKTve+23iLMV/8ScYURN24cGAKwfIlmppv5ftK5GMXI24nCchKWVG30bAqSb0utwh5YB+QT4yakD6Q/L99FFd73nkrctnGFJvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ika7VvFy; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45dd5e24d16so39228535e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 01:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758528753; x=1759133553; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LPzMl9444DyFsyhIlxZU2alp+KEUomV9x8N6sGCMpt4=;
        b=ika7VvFyBacSeponGeHLxMa6+BeAoLmoJ4tYJK4e75JasN2tkJjTN5CcLp0QaEBvIQ
         LNX90UoyX99bbDfX1z+Rvq1J973wgXht0/2eUDSMFPs0682h1PFcSoEdkz6fTarsgYN4
         JPEOGFo8z/oS/F89c6Lh3BqeIaQ/GKdQGmD9We9qD9vFGK7hyHkCYBb/2m+PskzZltBS
         J0XnRnz8Jv4NELa+22mwpo0F9FUhmb9eKoHAbqQ4G9AOMx2r4Rq/F6nxcYm3nph0Q/jR
         MCvAjxw5IHufDkyLK/vnmvjvnsSMekB8NEsPz9QTgBe/HE5Stz9Wf9iJXVfNcHYAVn3p
         8+aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758528753; x=1759133553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LPzMl9444DyFsyhIlxZU2alp+KEUomV9x8N6sGCMpt4=;
        b=jrgxtp849KF1lAGSJuRYCTjw3CXIw/pyC+gGDKfuIl8r7fSQP0Mfbi6xtiRBoDf/pj
         ofG+QXHcsyGjkGlA+GQSb1sK2/ygkS9S29PMZyh9uyeOHlqjexw0XwFpj3W3X7rytus1
         6NXFjKF5ufLjQ062oZU4k/Fg6pxGYpmBlJR5YyyNTs86SvTB0sxmeov4BY3AZQFK6ZyC
         kMg8gUJ/+LQOvsWrkwpkbGLRK7+eWPRihzgHTEifFm8lvTGs+XhnUNdPTTfmtVlh3mGi
         TquNI/O7Gxs1Dy0RZWIQvo2e1pemP0BA6xnsez0oWezSB2gQBMI3YWsH1o1J23gu+OyT
         58Kg==
X-Forwarded-Encrypted: i=1; AJvYcCUFG9B+Ev9Exn/+PEb8s8sRk7BdS4ra5VjiMHwie3dHq1r6eTZx+/Z2jcF1zP9M86lme9ibcslvy+yf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1U44z7JGhn9VB6pmf/mo5VBwnp05+JI4D0D8EiR/qPCNZrstJ
	eoPVh9LSiQjqCdpTsC5Pd3T7wQn+5oyG1IMEBRgrDnS9SoGr80Ws8VPc
X-Gm-Gg: ASbGncveLrJc4mviY1S5g0qFmxPs9GEUI1TYw4L1eyBxc/gi2G5lohv7bm+/pXVar24
	JVYD6nCHMsmRhMjT16rPztMnHqf+RWQcE+kot3/hdwC7YaBkd87J2erJtml0HxI8OkHNQZx/JzE
	gfef7kmXhoo54JWZtxDvMRF/AJJpTUrOC3bGpwdvxYrfvGnU04lANIgtHswWxx3WI1a4UKWznuX
	170j6vz731J3QFYfxaqsvOJbDGXV8fOmL0MprLojLgbDtnBQpVkAGRmsFRNIEJPorUM3hFI0XUm
	OJa8bLBMj2jjEUJ4PRVClsn9IdEouvRlQhEBRq8QflZxlsjfB9sVIt1i0L3sPS8vbKb7Z2OQqJp
	1wkmd0cfDbpiIPtcpMotT92JvNPpHqkFx7BiF5qeVD2gUseGl+V7eeiNpjTLWbXDSuJZPfc0klm
	h9y4AjJ2rgARrxeRaW
X-Google-Smtp-Source: AGHT+IHErk/g/+nIENyJ6+q+pyXV8qOgYAZOyjvomg2ntIsCHA25Lz454iGFXy1dqVhhd2gwP8RBKA==
X-Received: by 2002:a05:600c:4ecf:b0:45d:cfc6:5166 with SMTP id 5b1f17b1804b1-467ea89db1bmr112950935e9.23.1758528752582;
        Mon, 22 Sep 2025 01:12:32 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee073f3d8csm17958416f8f.9.2025.09.22.01.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 01:12:32 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 10:12:19 +0200
Subject: [PATCH v7 2/3] clk: stm32mp25: add firewall grant_access ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-rcc-upstream-v7-2-2dfc4e018f40@gmail.com>
References: <20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com>
In-Reply-To: <20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

On STM32MP25, the RCC peripheral manages the secure level of resources
that are used by other devices such as clocks.
Declare this peripheral as a firewall controller.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 drivers/clk/stm32/clk-stm32mp25.c | 40 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/stm32/clk-stm32mp25.c b/drivers/clk/stm32/clk-stm32mp25.c
index 52f0e8a12926..af4bc06d703a 100644
--- a/drivers/clk/stm32/clk-stm32mp25.c
+++ b/drivers/clk/stm32/clk-stm32mp25.c
@@ -4,8 +4,10 @@
  * Author: Gabriel Fernandez <gabriel.fernandez@foss.st.com> for STMicroelectronics.
  */
 
+#include <linux/bus/stm32_firewall.h>
 #include <linux/bus/stm32_firewall_device.h>
 #include <linux/clk-provider.h>
+#include <linux/device.h>
 #include <linux/io.h>
 #include <linux/platform_device.h>
 
@@ -1602,6 +1604,11 @@ static int stm32_rcc_get_access(void __iomem *base, u32 index)
 	return 0;
 }
 
+static int stm32mp25_rcc_grant_access(struct stm32_firewall_controller *ctrl, u32 firewall_id)
+{
+	return stm32_rcc_get_access(ctrl->mmio, firewall_id);
+}
+
 static int stm32mp25_check_security(struct device_node *np, void __iomem *base,
 				    const struct clock_config *cfg)
 {
@@ -1970,6 +1977,7 @@ MODULE_DEVICE_TABLE(of, stm32mp25_match_data);
 
 static int stm32mp25_rcc_clocks_probe(struct platform_device *pdev)
 {
+	struct stm32_firewall_controller *rcc_controller;
 	struct device *dev = &pdev->dev;
 	void __iomem *base;
 	int ret;
@@ -1982,7 +1990,36 @@ static int stm32mp25_rcc_clocks_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	return stm32_rcc_init(dev, stm32mp25_match_data, base);
+	ret = stm32_rcc_init(dev, stm32mp25_match_data, base);
+	if (ret)
+		return ret;
+
+	rcc_controller = devm_kzalloc(&pdev->dev, sizeof(*rcc_controller), GFP_KERNEL);
+	if (!rcc_controller)
+		return -ENOMEM;
+
+	rcc_controller->dev = dev;
+	rcc_controller->mmio = base;
+	rcc_controller->name = dev_driver_string(dev);
+	rcc_controller->type = STM32_PERIPHERAL_FIREWALL;
+	rcc_controller->grant_access = stm32mp25_rcc_grant_access;
+
+	platform_set_drvdata(pdev, rcc_controller);
+
+	ret = stm32_firewall_controller_register(rcc_controller);
+	if (ret) {
+		dev_err(dev, "Couldn't register as a firewall controller: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void stm32mp25_rcc_clocks_remove(struct platform_device *pdev)
+{
+	struct stm32_firewall_controller *rcc_controller = platform_get_drvdata(pdev);
+
+	stm32_firewall_controller_unregister(rcc_controller);
 }
 
 static struct platform_driver stm32mp25_rcc_clocks_driver = {
@@ -1991,6 +2028,7 @@ static struct platform_driver stm32mp25_rcc_clocks_driver = {
 		.of_match_table = stm32mp25_match_data,
 	},
 	.probe = stm32mp25_rcc_clocks_probe,
+	.remove = stm32mp25_rcc_clocks_remove,
 };
 
 static int __init stm32mp25_clocks_init(void)

-- 
2.43.0


