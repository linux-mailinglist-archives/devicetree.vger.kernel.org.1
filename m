Return-Path: <devicetree+bounces-209940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A609B39957
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BDF91743AE
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 10:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0A830BB8D;
	Thu, 28 Aug 2025 10:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FSb9LhC7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DEA30AD07
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756376133; cv=none; b=SZ3KmO3d2m4wYMqPgrT/XRyN60AgpWo7Qu8ECzTBV2iqHT/cPL63QowhKrFcQY4Ye37QruZhpZh06FyTj9q7GxuXkwqRyJVKdsZh/AIzwAbgXOzleOZWF2U6br/gLMIZlo9hVWMdlhvFLPzuCSX+hSelg6ntJLPTT8F0KDTpxjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756376133; c=relaxed/simple;
	bh=fm/irSgzzRUae8EgpEM+Pogy/qYxrilpCYg6GpKRXl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eS0dzaxgYLdrFCW3fg3mQPtnzzM0U1i/L55byNM783kJ3114NMIhndFQff3Ec+6AKOkDs8saXVpCrK2OWECgmn1bsq3dmeMI9F7qbzsDyyI0lQ6SSkqfd20SpyK4wT85vamVXcC+ysH3uShHW1Je6JDGLl0kh1s0cFnUvnVVd8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FSb9LhC7; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3c6df24f128so482506f8f.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 03:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756376130; x=1756980930; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XiQVBV7G4LRmwXHt7vlktdEd7OWZj1eSrzy2LZFlNd0=;
        b=FSb9LhC78QdRuo5WHbka62WOQQWZdfTK6w/rFBC1vPf0xeJkpKDDn8AA+7CSDWeSeK
         Uti494v7VSkSsmRXPDTOdHt5o0lDM+iq5TyvdXdrS8X9h94soUPE0bigDfXOGb3V83zt
         uDssx0NJJs83RJ4DQm5PsNoOV+tI7XAQTZzZRhA6NP+nG/Z0s+7jiXRDbOYmycPWrf37
         s1U3c34hnisavAz8VFogHlbenuncGO+i9QNRZuTa4z4fwSZGwrl+dVUuB+40nTiMBctU
         yHDOSNaFwABv4joEY3VxNdLrFRGH3318ph7sPo5yqux5NVOjuwnhJxA+FemNUifM4WBQ
         qeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756376130; x=1756980930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XiQVBV7G4LRmwXHt7vlktdEd7OWZj1eSrzy2LZFlNd0=;
        b=IfeSZGl4OM5uXXgsu3WiZHL8tZJ7DonCWZiYFZXhJ4iF41/zQ7AmOXsFI6yrTwmPBh
         2KZqd2zlRV7bHcUZuES/Mkx9/lexWl2egcScD9SRBv1keCgdg6jvO8IhzhTZDHlVkVx3
         V/q2kVYTeEDrx4KVm1pm+6PHx7dbuH0ps3ie9+QwdSIxtHWdPkBU73iglz/VsWodDFNT
         TwhusquYW622deAZrtFPxHKkbM5Cl7I1Ad7bqhwyIK6eZweD9IoOoF/7mmfOzybt59zU
         v8ElN0+mEcu0hdrYAC+MBs/tqujl7aXbA8o7EDcGs07IEM+FAUBlYv+1AbmKIKEnoHJV
         qcCw==
X-Forwarded-Encrypted: i=1; AJvYcCWjCk/HqPYus6wkQbGLsOu01Qssxa6BvLCtXVZJonSjCtyfUROL+R+PKBsypD2a3ynF8aVQCJBEDpct@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6k76rZ+cZ6gxO+I2MD4v1Ny3R4rsYTrr33FdK4BD8FlZW+Z0G
	FIlog84CfcWpNXzIr35E3TeUcAAWt930yr2S9WY4UIBRlBYbzkLhLVxZ1Nikr5wuCc0=
X-Gm-Gg: ASbGncvwtE2VS/QBf1MWAoKEsSqh/8TYjrhyQV5ZdwQdaNF2AVnMupShZaMKKqMgXSM
	x1arshm1kE/IVc5Cj2JkKxVYdW3S0RR++GtWqm5/RRzn+OM0+ztrVktzSnfkEiv8xIlakkeVlEe
	Esbstzo9cwxcZqECL0f5JxWGkX3iUfGQy580+k5D+aUfubHPsu09V/jKnsOIkUn6U1FksQFmoH5
	TXqEjVAB+cTZphn2/PmRmcoWqg5L3UeOYny/F5dYT3YCemYvIVXradKJWsWfspOIAahSq44WnFK
	9oqp85VJ4A6H2RdaLOKsP6/t6Ovl4zyRjkSmET/SHaTyF6cj/hp7xjuo7sCYiEe8q2mfjZeLXY+
	zUar/0x0HKgaTT2MUcQgpRO4SBvy0vF2XJbmHeO3+2/BMyrV2q4UO
X-Google-Smtp-Source: AGHT+IGuIIt2MipEGX75tHuVYdu+fYH1fy/yLSbgALOvLFpEQrFBLgKzzW8donfheTWMs1EJa6U4aA==
X-Received: by 2002:a05:6000:200e:b0:3c8:5b40:dea2 with SMTP id ffacd0b85a97d-3c85b40e7f4mr12640141f8f.44.1756376130407;
        Thu, 28 Aug 2025 03:15:30 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b66f2041fsm49976305e9.5.2025.08.28.03.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 03:15:30 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 28 Aug 2025 11:14:43 +0100
Subject: [PATCH v2 4/9] spi: spi-fsl-lpspi: Clear status register after
 disabling the module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-james-nxp-lpspi-v2-4-6262b9aa9be4@linaro.org>
References: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
In-Reply-To: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
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

From: Larisa Grigore <larisa.grigore@nxp.com>

Clear the error flags after disabling the module to avoid the case when
a flag is set again between flag clear and module disable. And use
SR_CLEAR_MASK to replace hardcoded value for improved readability.

Although fsl_lpspi_reset() was only introduced in commit a15dc3d657fa
("spi: lpspi: Fix CLK pin becomes low before one transfer"), the
original driver only reset SR in the interrupt handler, making it
vulnerable to the same issue. Therefore the fixes commit is set at the
introduction of the driver.

Fixes: 5314987de5e5 ("spi: imx: add lpspi bus driver")
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index e50261e9a1fa..fc4d49f0717e 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -83,6 +83,8 @@
 #define TCR_RXMSK	BIT(19)
 #define TCR_TXMSK	BIT(18)
 
+#define SR_CLEAR_MASK	GENMASK(13, 8)
+
 struct fsl_lpspi_devtype_data {
 	u8 prescale_max;
 };
@@ -535,14 +537,13 @@ static int fsl_lpspi_reset(struct fsl_lpspi_data *fsl_lpspi)
 		fsl_lpspi_intctrl(fsl_lpspi, 0);
 	}
 
-	/* W1C for all flags in SR */
-	temp = 0x3F << 8;
-	writel(temp, fsl_lpspi->base + IMX7ULP_SR);
-
 	/* Clear FIFO and disable module */
 	temp = CR_RRF | CR_RTF;
 	writel(temp, fsl_lpspi->base + IMX7ULP_CR);
 
+	/* W1C for all flags in SR */
+	writel(SR_CLEAR_MASK, fsl_lpspi->base + IMX7ULP_SR);
+
 	return 0;
 }
 

-- 
2.34.1


