Return-Path: <devicetree+bounces-204775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 625B7B26BFE
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 791621B62AF9
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2C2930274B;
	Thu, 14 Aug 2025 16:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ScnZ+PFe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB83A30101F
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187636; cv=none; b=AJIHSfzngjiVtbjRZlw1jng2UCMzZQhnMRru/S8dYoibfijQ31iwhl34bdQPSKU8BQRj8q+ZF8TuNyb14brmMJvxzEDtHGhDAranbJt2lLW7fxjUHN/5CS6qe8jJlaI+4GSGg1ORmtt3CoYVC4judL2n6/sgSx6Bj+ZK7iNZ1Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187636; c=relaxed/simple;
	bh=SFon36ABMtRsmD5ilgjDyUKNSBjeuJpo2bI25Qgo1Ko=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b7vQwVohM9WtDV7688oM1PeGDppxNo+C2Wr+i9668AWdXPKuMxDdpiEObjSw8+tQTs3WQR5XoTIwOvFxUuZl9DVGBXRjY7GXiDvcCQksM/Vck5GgUuIM+Bhw4DQFibcI7WZW8FmzG/3b0xYwASUmA/s3ru/PRGXxG+23GVtCc4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ScnZ+PFe; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b9e41101d4so642234f8f.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187633; x=1755792433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VfumknsBYh2IzrO2lYrQcKgYbnTHwmFJ/9yneF90CH0=;
        b=ScnZ+PFej4bEDz5jrt5paBeDqTfU3Kyjynh1fiNoccfwnZzrqyiE8IjfzCyyMoNft0
         Yh9UbkvqwrFgNDmuh4cul4+F66PZjwNxuj+pn6hSrNuTB3fyIBGUQew7XQwqJrSgij2y
         SxQE1tdRrp9cjPqYanTgxn+AhAZZcwSohXmQrJT0DbuWaFv2qsbcta2joamRhdzSnA3L
         xGOaiJ1cqoGFVhaYI0FTl7w9z1R1incFngchKy9hIHU63xC8pGwg8aSOsU01ai4v+TG2
         8V3rMHP1PA9IzpGKSNIEwKFR/X8jdVlpMvGtViAM43omFIeNLjOzw9JlOBfbfMBsE8no
         B1tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187633; x=1755792433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VfumknsBYh2IzrO2lYrQcKgYbnTHwmFJ/9yneF90CH0=;
        b=mFAVbmxBH+xSaq9xK+shAqJUQN4NJfd4QhNege2o3s8wkcWa+hJcSaDyb+H48+gsdB
         D3e761CCxZfj2S7VRKEHXmXZAO+EdPw+RvFJ48ot05jaHPkmRA2DWrHUuHOldBQMAgao
         Yyw5Qr7M11i9U9xpvj3qz9nODbLPGUU5qlER2SnDsfrBvNj9r3P5y0tsWFtrN8+ZWGsb
         mAYJYvLKgE1YerTSoeU7fbndHLAKcMQxnkkGUBUOBSR04TOw+/xFxZsr3OIyNr6mS7v2
         Pd2J/zRH6EeOIVBkJ4o72FWYrd6/rdHYaHWRg8bNld+/aYddKD6iv3ZZmdJ4lDbPQ0qY
         dz1A==
X-Forwarded-Encrypted: i=1; AJvYcCXOMYr4by05UfmnziRBlFfp7QUJDdqdpEdn5nrT3+xDG4WmS3T9BXm5x8ZypSA2FWAHK/VBlbu3rHKO@vger.kernel.org
X-Gm-Message-State: AOJu0YxmZ5NXU/3iDZKNm/s0YvlV+V/s1GgjtsvW70RElPlzXF2+vPln
	FgelLmgmcMW7wYNSX30E5JmEnh7iwqn2C2P6GuP8aOJ8uG1qC1OhuBdR4NfEsGLRBh8=
X-Gm-Gg: ASbGncvARxwKkZ3YoaSku5V68bwy6d0x+rDgsJIrXKuv7uEYDOk4hIzmRbyghUWcYbF
	vz5cHhZuGIty7ogsLxRfL+X1Y9YO78sOXCwCJNY/E0VnbhZwx6Z+N9KskRdsenAzMhg3C1aOxgz
	lYAIP4FQRh3whBRTjRmnTpPSTZNEnnTSo4l7k95m9sL14PCc2zexWEiuqf8KG5Obgawv9Kx9qOa
	JRVhJiq2QYT1sgm4o6fHth7NRrMNQK9ZbAMosUYVgx/ioQ7Q1LV/XkEtNWHWHJrEXclxZ850C9/
	R1oIWp4MuvQ0C033+ZqGQ+jjuHhZql9BhAai4Am53mKTJVOQgBs76Z7o0/phY1lyP2WKdzWhhyk
	v9dB4yTf8CYyCeK9l8fA9pVMEqvZ7pwHX0Kw4zEQe0A==
X-Google-Smtp-Source: AGHT+IGmcHiTNvo2snzvvx3pgNCl27xtRPoj1Whp77k0Jwwx8FV68OpPTATGMjohvUNhCC5M4Zx3aA==
X-Received: by 2002:a05:6000:24c2:b0:3b7:974d:537b with SMTP id ffacd0b85a97d-3b9fc3597c2mr3324954f8f.35.1755187633092;
        Thu, 14 Aug 2025 09:07:13 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:12 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:50 +0100
Subject: [PATCH 10/13] spi: spi-fsl-lpspi: Add compatible for S32G
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-10-9586d7815d14@linaro.org>
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

From: Larisa Grigore <larisa.grigore@nxp.com>

S32G doesn't have the max prescale erratum and it can query the max
number of CS from hardware, so add those settings.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index 6d0138b27785..a4727ca37d90 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -159,9 +159,15 @@ static const struct fsl_lpspi_devtype_data imx7ulp_lpspi_devtype_data = {
 	.query_hw_for_num_cs = false,
 };
 
+static struct fsl_lpspi_devtype_data s32g_lpspi_devtype_data = {
+	.prescale_err = false,
+	.query_hw_for_num_cs = true,
+};
+
 static const struct of_device_id fsl_lpspi_dt_ids[] = {
 	{ .compatible = "fsl,imx7ulp-spi", .data = &imx7ulp_lpspi_devtype_data,},
 	{ .compatible = "fsl,imx93-spi", .data = &imx93_lpspi_devtype_data,},
+	{ .compatible = "nxp,s32g2-lpspi", .data = &s32g_lpspi_devtype_data,},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, fsl_lpspi_dt_ids);

-- 
2.34.1


