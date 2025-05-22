Return-Path: <devicetree+bounces-179613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAF3AC0EDB
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CCA177A5BD0
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948E928DF14;
	Thu, 22 May 2025 14:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kWLSo5Ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1E328DB45
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925570; cv=none; b=GCrk83CTn6j5EsLy/vpLYdmEQleIml8jpWNiRy5ng421EY/MfzWjLtVxSQPqr2K5AZaimlPhxnGHxdWqw/FsjscHGv+4UA/gLLqUZwI0psQJU5GzsnfSdC34fdADnErMnuY6GEV/bREY9G1t5go4BLu5/riApqGbHVNDhuS/jIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925570; c=relaxed/simple;
	bh=vEU6OoOW4QiG7DnelFnexzER5F3I/xGLtYoU/uX9NAc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CKQF4Z0fuXwW5GuEsAiMKOiJiMBm3+CBr25BP1PectumqoVFGqLiYMKEWM65LPJ6kS7fJlAC36dlTNxftEQODtgRUztSdylq2oBNSw6kbn1oLzcI3w9h1rS8Bnn+eVGvwqi38VsAOgsS79ZEotQs7O33uqvCq+NNQFrwl0L+Om4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kWLSo5Ln; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so85556595e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747925565; x=1748530365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NSuSoLSh+LHiSs84RzlVPklfrqct9bYGikZDMbgQUs=;
        b=kWLSo5LnbyKT5XEPMXRRF1qHee9/oE3Ni7mHdjgcNB1Ssow8B3b5BQeKSCSoVDj8YA
         Wqvd8Lg3o4DcgdpbGH2HLIgDlZF7t45TF04w+GpQFaFGDIfUrx/f/bvRKTMfIJAETPeD
         GE9p5PK6NxegObEd+1V0CnLN+TOCUh8ZYhuUjrfKuzSomfi0U94TfLcx/nhUoXelW+Uk
         xiZqC1wDFLUssmUrhc6VWp86rYQ7+6/dJdqNxrJgW8Owa6iRMc43NGQqeO/uxNR2MxLS
         q/h7sbnabBzRbHFZXQpJ0jEwZRE20Zs7S2+J8Si8T/E0UMSf14NwWKPd2lcoaG4Jf804
         l/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925565; x=1748530365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NSuSoLSh+LHiSs84RzlVPklfrqct9bYGikZDMbgQUs=;
        b=asGZfgNQodSnLV1H2VK4jpUQhR86LpWWorSVtP05+lvV6nI6F5iIARKkk48aTX7KNA
         m8/hOmLPlefwwJx8l4xQ3IQCZSCepksouVuN7m7ao1zsYBTpAUsGN0oRTwkbLK28Viqz
         pAI1wojT3W6tp5jdAum10nZnftvgoKHDkwa7vLgoRL+FJOkkydI0AdTtOM/uPnFjpsrZ
         KU0epbSkjcasOn7gsAJkzkdw5aGVU6tn6kFklF+0i+NhN6XRW/N7y0WoXFyaDJ12S2tH
         DmeCJSowf2nq788MwBzEDuhUyw6jEj88aL2rqu11kSUK0MHnEwAk3cXmKjBT+P/1wTdf
         RrfA==
X-Forwarded-Encrypted: i=1; AJvYcCXXXaCQ9LvMUenWfyL7+cHF+BdjQwMH0EsLGgxvrKpGRQ7RZIBXmBRaL154PpjrQ3YqGrUeYnFJZ1x2@vger.kernel.org
X-Gm-Message-State: AOJu0YxppJgUgiE5VWNsiSfb7a8cIuBRaQMXu4AzuJa3y4Z5Un3ut2ei
	8fU66Zc39oozULHANuOnm5M80Ad89vWTSDJs9UTg006N9UslYU0ufrDeuCSLbJQwm04=
X-Gm-Gg: ASbGncsnJNe7MXcfV2iTTRm+Q2qNMdS22u9mddp2G46anXROz6c5Uv6lxoWEaZsahGg
	8usuMLI77yL9jgolIHNPg/zA5mngRhky7kPZIex2zNsDPdf12eUNR3B/lwmOY8Kik7aOHzmBjah
	DjEDO5WzV0wAcsimgvqOq+jAJnIUWNLM60FbAWbduVzSIFaSWcpRVkX2+8kLP799Sikqx/Uiah6
	EUcahY9Nx5XF16JSEqZkQTzZaenj+ZzMxpKaY/xAC30l2eIVxsKn/z5opgN/0O8djvbl0zucDl4
	Ds6DI+vkIDW+g8Tb1Evl5n1L4A4JsxreYpQ07BvBMLcKDvGWaR6OtzjKbf1u
X-Google-Smtp-Source: AGHT+IG7lHM8gO7TjtKSOgQg+mAp19Lx1pEqwgmpnkH4a719vOS4PONUqtAkN0R9pGn1dejyXRQUIQ==
X-Received: by 2002:a05:600c:870e:b0:43c:ed61:2c26 with SMTP id 5b1f17b1804b1-44b0c60f240mr12764035e9.17.1747925565562;
        Thu, 22 May 2025 07:52:45 -0700 (PDT)
Received: from ho-tower-lan.lan ([37.18.136.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb56sm104965555e9.27.2025.05.22.07.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:52:45 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 22 May 2025 15:51:33 +0100
Subject: [PATCH v2 04/14] spi: spi-fsl-dspi: Re-use one volatile regmap for
 both device types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-james-nxp-spi-v2-4-bea884630cfb@linaro.org>
References: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
In-Reply-To: <20250522-james-nxp-spi-v2-0-bea884630cfb@linaro.org>
To: Vladimir Oltean <olteanv@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Chao Fu <B44548@freescale.com>, 
 Xiubo Li <Li.Xiubo@freescale.com>, Lukasz Majewski <lukma@denx.de>, 
 linux-spi@vger.kernel.org, imx@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, 
 James Clark <james.clark@linaro.org>
X-Mailer: b4 0.14.0

max_register overrides anything in the volatile ranges, so we can get
away with sharing the same one for both types. In a later commit we'll
add more devices so this avoids adding even more duplication. Also
replace the max_register magic numbers with their register definitions
so it's clearer what's going on.

No functional changes.

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-dspi.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 863781ba6c16..09b2b25ed274 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1209,6 +1209,7 @@ static const struct regmap_range dspi_volatile_ranges[] = {
 	regmap_reg_range(SPI_MCR, SPI_TCR),
 	regmap_reg_range(SPI_SR, SPI_SR),
 	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
+	regmap_reg_range(SPI_SREX, SPI_SREX),
 };
 
 static const struct regmap_access_table dspi_volatile_table = {
@@ -1220,31 +1221,19 @@ static const struct regmap_config dspi_regmap_config = {
 	.reg_bits	= 32,
 	.val_bits	= 32,
 	.reg_stride	= 4,
-	.max_register	= 0x88,
+	.max_register	= SPI_RXFR3,
 	.volatile_table	= &dspi_volatile_table,
 	.rd_table	= &dspi_access_table,
 	.wr_table	= &dspi_access_table,
 };
 
-static const struct regmap_range dspi_xspi_volatile_ranges[] = {
-	regmap_reg_range(SPI_MCR, SPI_TCR),
-	regmap_reg_range(SPI_SR, SPI_SR),
-	regmap_reg_range(SPI_PUSHR, SPI_RXFR3),
-	regmap_reg_range(SPI_SREX, SPI_SREX),
-};
-
-static const struct regmap_access_table dspi_xspi_volatile_table = {
-	.yes_ranges	= dspi_xspi_volatile_ranges,
-	.n_yes_ranges	= ARRAY_SIZE(dspi_xspi_volatile_ranges),
-};
-
 static const struct regmap_config dspi_xspi_regmap_config[] = {
 	{
 		.reg_bits	= 32,
 		.val_bits	= 32,
 		.reg_stride	= 4,
-		.max_register	= 0x13c,
-		.volatile_table	= &dspi_xspi_volatile_table,
+		.max_register	= SPI_SREX,
+		.volatile_table	= &dspi_volatile_table,
 		.rd_table	= &dspi_access_table,
 		.wr_table	= &dspi_access_table,
 	},

-- 
2.34.1


