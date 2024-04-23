Return-Path: <devicetree+bounces-61982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D9C8AF508
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:07:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B896D1C226CC
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 866CB13F455;
	Tue, 23 Apr 2024 17:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J1+LVHHG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44B713DDB6
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713891990; cv=none; b=FbB+JBGJVUJ9t6onus47JUc2lq1fCRnKRS++C60u/InliqXJdJWpogwbwEaVAutE3KThvLS/K9kxelcGk2C1P6g0zLAW8+7ZIUwBMTY4yQWYIva2FVoK1Hwud3sPeXCIOIp4YAXg1VPIx4OskrdDAInZwjKPUrv/UX0U+7DiAN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713891990; c=relaxed/simple;
	bh=lEQL4JvbQIS8+IoUWQG/7yIMLEyuerLO3fV1yFnwKN8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eCp1MSYvDt4XKBH6o7pgamcPKfbT7r8KywKWW5nOf6MzenBbDnPbp8Z0Wls6IOH200mVdUL2uT2exq2CVM6f6rYrXUA9bBQ28E+zjh+MZd327pWemHOWbrbSjv1tuWu5SFnJPlaM2nkxbPGVzuvnj+KkfAnG/5dBtcVFD2DqtSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J1+LVHHG; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a556d22fa93so663392966b.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891986; x=1714496786; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vTeJ++F/mnm19eqXVShab+zLQp1WnhObbyrG4T/vDvk=;
        b=J1+LVHHGU4fc/kJiwUkIocQCh3g6oYCGubGzapdWl277CvX3AHHCab0XHPO48nb0rV
         a/y85XwKDxsn0dJ3smjAtFj0KRCC0eGloLvJfI2OL0YduBLKDIOir0rNYmBsbEu5MsxH
         HClZQako+P0Dye1RWj0EfN0DgS9zw1LxE+J1jFt/FIGpZaZS8Lf9UfQfCDR4P8GhnsO3
         QNyt/xt5gsCsUAbO+M60veQCIR2tW5FE9ho/grpyY+EDeXES/sprO+RsBTpbsuXb9dqh
         GXev4y7W7s4LxEDCs/TyCLuuvymSAlRMaw+mI/OprgO7QLyR44SndGXsAX5z6Sh2DEdr
         Ls4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891986; x=1714496786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vTeJ++F/mnm19eqXVShab+zLQp1WnhObbyrG4T/vDvk=;
        b=pyQ/0fudFpAMTAVFt8lJMCv9vvMHi0QvXJJoI93H4jRmLSF2JMjl2DDjgp+ABtsxKK
         s8ESA+bRf/98HHskB+V5pz3zByXxbepinluf+lOuraGW/PaWBStQArRgFOlG1zOZvjNG
         pncUzGA/HQ9N3yz7puoAqpTfw0573l47kH/chnaQO2n9Jm7Yc0L3zKIAVEAMMoecMPC6
         gejbtNHOTHZxhAckuPbWvRxUDPxxeppl1F9IEDZzcGKR5cEOaYRAXViaiEUmTuNXCWLz
         gKlwkcfb4j+rckeTduXMTKuMJ4iu05eaXwi+mjJ+ZxIW+TWSEUgIXr8iECz5i6Eyuh4U
         y39w==
X-Forwarded-Encrypted: i=1; AJvYcCXwbJpkR6jPYgI7qL7GgMjAQveHlxW0XRutgAM9o1FKY8En4YGCr8tkQwR0k4otoaAMNgPjudZmUViNShjp+OceaonFNiCWpDsL/g==
X-Gm-Message-State: AOJu0YyHXv8ugV8JnA+x1HZISFXqAXR7Hq7bGp4VeddoAPAX4FkfGqPY
	TmTCjyUGYUzLt+lJ3rvO0QmUJbCfu+1HcxLG4IvLW5UxCI0mVA7nvFZTK4J7AfQ=
X-Google-Smtp-Source: AGHT+IGmX8/L0/I9Xfi/12RjpvA/XDSBEjDv0Ba0q/FGDoMM5t1bQJxoQFANCyEahhfvXPMRwfCN7A==
X-Received: by 2002:a17:907:bb92:b0:a58:7505:1968 with SMTP id xo18-20020a170907bb9200b00a5875051968mr2076701ejc.43.1713891986224;
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:25 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:05 +0100
Subject: [PATCH 3/7] phy: exynos5-usbdrd: support isolating HS and SS ports
 independently
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240423-usb-phy-gs101-v1-3-ebdcb3ac174d@linaro.org>
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
In-Reply-To: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

Some versions of this IP have been integrated using separate PMU power
control registers for the HS and SS parts. One example is the Google
Tensor gs101 SoC.

Such SoCs can now set pmu_offset_usbdrd0_phy_ss in their
exynos5_usbdrd_phy_drvdata for the SS phy to the appropriate value.

The existing 'usbdrdphy' alias can not be used in this case because
that is meant for determining the correct PMU offset if multiple
distinct PHYs exist in the system (as opposed to one PHY with multiple
isolators).

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index ac208b89f5a6..d69187c22613 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -196,6 +196,7 @@ struct exynos5_usbdrd_phy_drvdata {
 	const struct exynos5_usbdrd_phy_config *phy_cfg;
 	const struct phy_ops *phy_ops;
 	u32 pmu_offset_usbdrd0_phy;
+	u32 pmu_offset_usbdrd0_phy_ss;
 	u32 pmu_offset_usbdrd1_phy;
 	bool has_common_clk_gate;
 };
@@ -1050,16 +1051,6 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 	if (channel < 0)
 		dev_dbg(dev, "Not a multi-controller usbdrd phy\n");
 
-	switch (channel) {
-	case 1:
-		pmu_offset = phy_drd->drv_data->pmu_offset_usbdrd1_phy;
-		break;
-	case 0:
-	default:
-		pmu_offset = phy_drd->drv_data->pmu_offset_usbdrd0_phy;
-		break;
-	}
-
 	/* Get Vbus regulators */
 	phy_drd->vbus = devm_regulator_get(dev, "vbus");
 	if (IS_ERR(phy_drd->vbus)) {
@@ -1094,6 +1085,19 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 		phy_drd->phys[i].phy = phy;
 		phy_drd->phys[i].index = i;
 		phy_drd->phys[i].reg_pmu = reg_pmu;
+		switch (channel) {
+		case 1:
+			pmu_offset = phy_drd->drv_data->pmu_offset_usbdrd1_phy;
+			break;
+		case 0:
+		default:
+			pmu_offset = phy_drd->drv_data->pmu_offset_usbdrd0_phy;
+			if (i == EXYNOS5_DRDPHY_PIPE3
+			    && phy_drd->drv_data->pmu_offset_usbdrd0_phy_ss)
+				pmu_offset = phy_drd->drv_data
+						->pmu_offset_usbdrd0_phy_ss;
+			break;
+		}
 		phy_drd->phys[i].pmu_offset = pmu_offset;
 		phy_drd->phys[i].phy_cfg = &drv_data->phy_cfg[i];
 		phy_set_drvdata(phy, &phy_drd->phys[i]);

-- 
2.44.0.769.g3c40516874-goog


