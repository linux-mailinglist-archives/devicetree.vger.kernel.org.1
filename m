Return-Path: <devicetree+bounces-204774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F99B26C1E
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:12:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67F635A5B68
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51153019B6;
	Thu, 14 Aug 2025 16:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OpxXIH6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57303002B0
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187635; cv=none; b=Rga4ghHKV5ct41Px9PQ+NNKVGXpH9e+tFY+g51xVyh6KuCb5vVpDwvcEzQh9JusCkCpZUddVKF66B570kfV8Ynb3bm7KrBZRoWx8+Xx5uhDDqnwpmnqMf1YhJYu5+kx1ZmsJWQLsQ9hamE+LcW0Rh32k1Q5nToDaCXFznWzKwz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187635; c=relaxed/simple;
	bh=nLKgSvSgI7gDUsnC9ALIo8slGJAiPfy5nla9VR+CXBY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Le9TUCc7694wes4gXdYPZnoimA+tSNl+oDAdAvKoeFWNOw1xKYXqijSrBOAVigPJDMIoi6JFTt7te/c8RkIqPJFVph/Y7R6VfLmttg/vYbMsYrkKsz/YIu0OqkknwxeUZKiVlDQPeQLg0JUd8pR9NK5h8W7AXGq/p+dVa68qQ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OpxXIH6W; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b0b42d5so7791065e9.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187632; x=1755792432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4uUiAWgIv/rr4bdczjmXB0zM0zB+f4UfZqA/MDFkyEc=;
        b=OpxXIH6WnOgr9w2Rx+EIqSUiQTFtBf17ypM/jrVrZLCfamNvsf5mLZB9E3i9bGkUXy
         FZU97LRnAnJ6DbtOjjqW+hjq1D8a1qlCJStxsngTISkQJboYcY6lYoMOfVBi0dMVrR/o
         dYFXU+LNZMBDf7RH2F5ZjjLiGVyg3YWLgnEejCaG1Ewa1Y0cK18I34Jml5r5kXVISgTp
         v6kXwt6l64/2l5zilVq5nADsP1yR8BES5Ch027v+j+r7dgrvv+uDckfvSXBrWp1xM/RY
         Ido3qNvhqJrpbRcug3VZPm2kYV4Sbta6c7c/kCGPWqK8Zmmk6q+bIhuS1KUmoTCaVRji
         E8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187632; x=1755792432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4uUiAWgIv/rr4bdczjmXB0zM0zB+f4UfZqA/MDFkyEc=;
        b=ElB167eH1NpiKMWqX3jaHapAmAcVOAu9Hm74mRA3I0YKKepwxSP1Z7dkRv72gXdE32
         g1pRvH0qGuqT/aF08QnXGHmxCKRcBcdZ+B1rIF8DJ1mwdvTcNk5P/IKdiObaPw2bVXeJ
         O/3kPYLdyG4yYs4AFyU72q0Qc/9g+Ao+/FyAFtyfC71zAprUushLTi3c5i2MqKR3r0M4
         mdnh23fZEPQyc6pMpkWx+ifa+HB1u2DuVxgGKgdtfGu8210PLg6td/u5kZ+c8ceCvXj+
         H3Kl86Oo2l3/10nV/nBQSAQGYknTBg9QrvmBf/2bQ83ObjQjhEg7kuhgebnVJQYGc8CF
         ++vA==
X-Forwarded-Encrypted: i=1; AJvYcCUXIXnBzhK8zet5DvMs//uyCU1c1BfSifi/NZVmoGAiR5du3xdeXT5pp8vqnsGtPPR6FBm13k3TJZ6x@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdl4RBOgBm9AR1h2PTBc5v11YbhpH3qsHen2P+scto/hVWPukN
	a+qPP0jo4sJcDNGslu/HpmTMxx3raGMKf3QB73otbT53dgRVipuiarp0lapXS3GQD2w=
X-Gm-Gg: ASbGncs0EpvqhX4RSLGTWDTHzrSGk7A49z03QRmAsP4rW12aJCi7rlUzQzdEpdTTJCd
	rJPSrHE9GqTnp1ZGeB6SDtiXChV+ekPI+NWnMzTpcyX5OMmXFPf4CKiX2DP1FtCgKt0vMhPRDox
	PY3NOH+riOdXRP65sNyEnF98ProjVogLXtS7rKsO0EWl1rKJA5PBPdxSZApzEL5KXZbEiU+CcJD
	gH04wtwpnWBVSJ7PbhXAaMtx4mwJpUMJC+64MdAohx7l39i4cAssKyy+Lg5+2OiUw1d08uTUWXH
	mkI1qKP4Wb5bGlL99SsoG0cMfd7+u7rQXK3gfuMvP8ahylGmQC1BHmVoGj+lwlYfm0ZnQKUJBZy
	yGME5hB1NsdrAsNWtZuHFkwiXFCULsiA=
X-Google-Smtp-Source: AGHT+IFZZ/SClwkyS/5PD0FX0+0seHog/otwGwC9/uLDftMPrJiGWVG1n+A33cLiR0ff/m9sgu3Qog==
X-Received: by 2002:a05:600c:35d3:b0:459:da76:d7aa with SMTP id 5b1f17b1804b1-45a1b6758a4mr27865565e9.25.1755187631973;
        Thu, 14 Aug 2025 09:07:11 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:11 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:49 +0100
Subject: [PATCH 09/13] spi: spi-fsl-lpspi: Parameterize reading num-cs from
 hardware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-9-9586d7815d14@linaro.org>
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

To avoid adding more string matching here for every new device, move
this property into devtype data.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index 1013d5c994e9..6d0138b27785 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -97,6 +97,7 @@ static const char * const pincfgs[] = {
 
 struct fsl_lpspi_devtype_data {
 	bool prescale_err : 1;
+	bool query_hw_for_num_cs : 1;
 };
 
 struct lpspi_config {
@@ -150,10 +151,12 @@ struct fsl_lpspi_data {
  */
 static const struct fsl_lpspi_devtype_data imx93_lpspi_devtype_data = {
 	.prescale_err = true,
+	.query_hw_for_num_cs = true,
 };
 
 static const struct fsl_lpspi_devtype_data imx7ulp_lpspi_devtype_data = {
 	.prescale_err = false,
+	.query_hw_for_num_cs = false,
 };
 
 static const struct of_device_id fsl_lpspi_dt_ids[] = {
@@ -960,7 +963,7 @@ static int fsl_lpspi_probe(struct platform_device *pdev)
 	fsl_lpspi->rxfifosize = 1 << ((temp >> 8) & 0x0f);
 	if (of_property_read_u32((&pdev->dev)->of_node, "num-cs",
 				 &num_cs)) {
-		if (of_device_is_compatible(pdev->dev.of_node, "fsl,imx93-spi"))
+		if (devtype_data->query_hw_for_num_cs)
 			num_cs = ((temp >> 16) & 0xf);
 		else
 			num_cs = 1;

-- 
2.34.1


