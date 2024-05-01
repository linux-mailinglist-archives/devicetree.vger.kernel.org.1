Return-Path: <devicetree+bounces-64209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 296038B877B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 11:20:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F566B219B2
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 09:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306D251C5A;
	Wed,  1 May 2024 09:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZYsX4ZNo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1C7502B9
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 09:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714555182; cv=none; b=CfPpnjExcIhTyohUX1J0tSugUwKDJyoXtEHnGndNEPlm1Y9wzO0uanAysXYdvo5WphN8+Lcy7iyITPTQaligfdnB3VeJiov93+JTkSB8M3o6aLMTvyXjrdUz0EVV/TzTtsNDCkVIRiJNwgTMZAFG23Eluzbg5A64gvyXPMHy9tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714555182; c=relaxed/simple;
	bh=KpfDv8T8GPdkTM/o5AVXMKtY/HGMxXQrxrLNHuTsEG4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kh5unqckz3j10UZ4ZK+fbffS0qjuSLdkls8rzlpVBtOSl1wHD0PUkqOINgjQ7pmwAOJgN7RfCW7LfeAo+4Kbc3PEPKIqj4Rem4bMx/Ok3TPyhNpvtHhR/vJQqf7uF6EUTwvrkXgAC8cYai9rM2x4QifIulLKkcNoxrhoRoRuc+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZYsX4ZNo; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-572af0b12b8so224966a12.2
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 02:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555179; x=1715159979; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ge1XBY1iFiQ1LgGiL0ReMY1iuzn74SrGJNOcVuZ28A8=;
        b=ZYsX4ZNo5QlGVtv6PuVNbTSBDTSPHYqAWjsde3+ilJsrh6GXPnisE/CghMNMX9Avv2
         hVcNchqUBWoKC2cxE0P8fyBUq1qwyjFuWv11CFvLuY7F98Y/OvWvs7x/mTklAPiWZjS+
         DOJneedmnRRpEnujjs5Z8CzmMLINgc9OYy2mdTKCkd6joUaI5Byv2vipQJEcZqOMSMry
         GpdDKpkOPRVHFJd8JaIEBNuLq1rrKyTgyyrWh7K6B7unC3m2DPMZt3jhdzhiuc9UafP0
         y4Qc+k+wl25KPTYUgwngg2ywlXtdER4lBFtZBH9Pk40sjoeVpgenD1jax5E+tuIu0yCx
         RfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555179; x=1715159979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ge1XBY1iFiQ1LgGiL0ReMY1iuzn74SrGJNOcVuZ28A8=;
        b=eXs0tctq3EeaISxf7rfcKiK1MPuli+cqsvx8ieJM69ylAPsUZB9rMD/IGFvb3k7PML
         Vn1mL/To+syh3NCbGe+tpUmTH9FlQrTjdCTc0PXbwo7ry4Ix3gtRqpxFLU8U0eplPOd5
         QJ7zizpGaYnJYTUI9bNvQZ5hsNlS0WucZQ4ObbHaUkNl0kRE5LpPcHGu+fMXofv7EtQW
         QWbz61k1gbrjlJwRJZ4w9Dn3esFCx06NTaLqlp8DjOjeiBg6NBCc/roBQXNCJLDUhjUb
         j4G5/WuAudE4rW1XHUD8LVh8v1jijIddOf1WozTY8VhFaaxCzQiOr/hwV6V2cOsK8XWk
         C7Zg==
X-Forwarded-Encrypted: i=1; AJvYcCXPV0jGdIHp8UJqXPbencg7JfhtXumrrSoo+Me6cetkWh45RqxRHKyETsN4kZxFBcrnRhvQx08QmQeJwA/aqmETJjKz6XINljjKtA==
X-Gm-Message-State: AOJu0Yx1EJ+DyYbFCK29TYL1Z4a8GZGvcw6L2mxZMMtnC27p9vTTmorV
	iutRHSWFnHwd84Vn53OxAowLoBpzvYXuvuiLcA8VfU5XyS8nBuaeLGEYaHTmSTCiC1k6gCpQyI6
	O+Y4=
X-Google-Smtp-Source: AGHT+IFXnHDIFgKbGwf/ndb2lV/dTNtH4A6FDxdi7dAgY/FQO/V4J/B3Cjb0Xx5+y8cR0YlXsanYKw==
X-Received: by 2002:a17:906:da04:b0:a52:62a2:d727 with SMTP id fi4-20020a170906da0400b00a5262a2d727mr1540329ejb.52.1714555178841;
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:38 +0100
Subject: [PATCH v2 3/7] phy: exynos5-usbdrd: support isolating HS and SS
 ports independently
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240501-usb-phy-gs101-v2-3-ed9f14a1bd6d@linaro.org>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
In-Reply-To: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
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
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org, 
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
2.45.0.rc0.197.gbae5840b3b-goog


