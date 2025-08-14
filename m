Return-Path: <devicetree+bounces-204770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D78AB26C0D
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:11:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16A5E5671CC
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3870E2FCC14;
	Thu, 14 Aug 2025 16:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P9aCuss5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D082DAFCE
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187631; cv=none; b=av1SH88EbDtDEpJghfLAWcdesD0wWiNoGyKqngqEOilnVmWnKqwpbgOl2XsrH92Xm3/DXzPl84cNB5XqbyO/fyutf3D6JXolb/k58ocEMe4Qkr36JsOrYkTXP7QbQ1YvzWJ1C0xa1GUTbe8XG+GAw/VZKmffUxveB6J2AzCHAcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187631; c=relaxed/simple;
	bh=bWgha+DV3Wa1id7olbSo3Evp0auMrFKcgECRKOQUQgc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YT+edwnNoh4BzanVaVQYMrrzjrpWAbV8XaBWABJ6e26Cb34m7wAyyZ1qeJZn/e8FUk7lcmLHDA9P7sQ8CKnuZSN6mRvIdHMof/qSZq+nc6B8k4tmzbIsrRVR/S9Htn91HBbMejKHYCpLlakoYLYX5BluPD3q8ieIlxBbwuUV6XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P9aCuss5; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45a1b0c82eeso7633675e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187627; x=1755792427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aHOC2LGUA3QZ5xVo8Zfg2sW76sxCAGlwB+vvvOMaDRw=;
        b=P9aCuss5GWNAaIEB+fv6LqR/58JZdQZrv/nST6R96+8+k3wevXNIKvJgIyDQVODDin
         V0CFZo6tZIW5KjS7Y0z7VfnJ9YVTD4yC6hCxv0Qb6gP3ZvN0nqEA07nbr26CNHzyH0bT
         aFgWF/886mDUWG3qrswUlrSK/K07Cp7LlDMviRlirpSCiXYUAxBR+WX8npUn87Y944e/
         Nxbz3zl06AwMT4m2NejoBMV4mEDi32Z3VO/02neGg5i7ajZ23ccRJuDfNSX3E+ozaEnm
         nW0M+HHqrM5XpImSgC21o9judctusg16jYMqe/lhjNpdDlnJyimPpPlHLWMyirI902v1
         Lh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187627; x=1755792427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aHOC2LGUA3QZ5xVo8Zfg2sW76sxCAGlwB+vvvOMaDRw=;
        b=wQR0tGmEj4BFwIS8cvdXkyZjOKJCXCcXGW36nDj/uyBl5r2nFvF1NY9s8j3k8dFdpO
         jOtjvM/wgWP3N6xvtLfyLBvrkif2l8buy/MgPV+iVnAxPauSTHAvf0SMdFS6toXXlNYg
         zGSq+1cxqwD7dT4UquTf7kJmgqpbas9y+T20WULVysf8Odpg9pN0uznMN7+BwGp3eV05
         GD40ZKjdEN+iWm7kJwz5Wg320aKfr/UzsOZcU8f3c9mzB23TLeUf+TQ7KJ1Dwun8gtko
         YEOGQh/OR6sDa9/wxEJ3JeBx+me4b6R+2jUtokCC4vWrLGXndeCIO33ta4R5OyK5IjHK
         oHIA==
X-Forwarded-Encrypted: i=1; AJvYcCWLqy7QeRZCuT4kgbQr1NMqV6/iN9PBuiQHtVk3FrvFBsli++SOtLg4b4t/F9U5BveTodGtkS2MHkuM@vger.kernel.org
X-Gm-Message-State: AOJu0YzdA9L787xpUEAM58FwUOaanq4JF9bV72Dk8BkI14c2EOjaV5wI
	rGKEMT5Sctx3P+AGAsUN0LF36IrN0ZQaB6vUEnieBnVpgmnOZQTt0WX9lRo9p6TYvZg=
X-Gm-Gg: ASbGncs0bQQe9Pr8dRRpyITIvT2X9xOrjDWaCdPgqfPRuurkMqkmxDadUYDmEYUZDEH
	/4JaXGi/jp0pdH8Y6Orct1OBUCHTjo46K6tpNHkiqNVmD0T7N5Wn3NnKY0hKkzgsmWnJ0axjhKM
	XDcQzXkFcQZjDaMnTzERsxzAHXjMBBVlh+jXrMQQxcXtHw6MSvMeTt4d7dZ79dgUOiCFQMOv73l
	oTmXWyIvRnxYryA2LO3f64PU2ml++7AWESdXWRyO34KTs8Gs0Ea1WzW5f0W8Pc0GqKDqMGddHVG
	clOUEfC1vlKLbq9w++R1qsCHqiNbIKg1/WvDqbpR82E/7nhBeJCo93oigudzhso1S+/lZUlNMhC
	Ni644dOpFCWuGXXsQlj3xQiclcZhJSOA=
X-Google-Smtp-Source: AGHT+IEUHsQ0l/NtdaJERHq/WSd00uZIkZVtp4OgX2ON8GYUOwmRShR360uVb0ELZ0IKVWDhUp1roA==
X-Received: by 2002:a05:600c:4e88:b0:455:f59e:fd9b with SMTP id 5b1f17b1804b1-45a1b6707e4mr33074545e9.24.1755187627290;
        Thu, 14 Aug 2025 09:07:07 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:06 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:45 +0100
Subject: [PATCH 05/13] spi: spi-fsl-lpspi: Enumerate all pin configuration
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-5-9586d7815d14@linaro.org>
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
In-Reply-To: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>, 
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

Add all the possible options, use names more similar to the reference
manual and convert _OFFSET to _MASK so we can use FIELD_PREP() and
FIELD_FITS() macros etc.

This will make it slightly easier to add a DT property for this in the
next commit.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index 79b170426bee..816e48bbc810 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -69,7 +69,11 @@
 #define DER_RDDE	BIT(1)
 #define DER_TDDE	BIT(0)
 #define CFGR1_PCSCFG	BIT(27)
-#define CFGR1_PINCFG	(BIT(24)|BIT(25))
+#define CFGR1_PINCFG_MASK		GENMASK(25, 24)
+#define CFGR1_PINCFG_SIN_IN_SOUT_OUT	0
+#define CFGR1_PINCFG_SIN_ONLY		1
+#define CFGR1_PINCFG_SOUT_ONLY		2
+#define CFGR1_PINCFG_SOUT_IN_SIN_OUT	3
 #define CFGR1_PCSPOL_MASK	GENMASK(11, 8)
 #define CFGR1_NOSTALL	BIT(3)
 #define CFGR1_HOST	BIT(0)
@@ -411,8 +415,9 @@ static int fsl_lpspi_dma_configure(struct spi_controller *controller)
 
 static int fsl_lpspi_config(struct fsl_lpspi_data *fsl_lpspi)
 {
-	u32 temp;
+	u32 temp = 0;
 	int ret;
+	u8 pincfg;
 
 	if (!fsl_lpspi->is_target) {
 		ret = fsl_lpspi_set_bitrate(fsl_lpspi);
@@ -422,10 +427,14 @@ static int fsl_lpspi_config(struct fsl_lpspi_data *fsl_lpspi)
 
 	fsl_lpspi_set_watermark(fsl_lpspi);
 
-	if (!fsl_lpspi->is_target)
-		temp = CFGR1_HOST;
-	else
-		temp = CFGR1_PINCFG;
+	if (!fsl_lpspi->is_target) {
+		temp |= CFGR1_HOST;
+		pincfg = CFGR1_PINCFG_SIN_IN_SOUT_OUT;
+	} else {
+		pincfg = CFGR1_PINCFG_SOUT_IN_SIN_OUT;
+	}
+	temp |= FIELD_PREP(CFGR1_PINCFG_MASK, pincfg);
+
 	if (fsl_lpspi->config.mode & SPI_CS_HIGH)
 		temp |= FIELD_PREP(CFGR1_PCSPOL_MASK,
 				   BIT(fsl_lpspi->config.chip_select));

-- 
2.34.1


