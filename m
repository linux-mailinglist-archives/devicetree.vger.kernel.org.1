Return-Path: <devicetree+bounces-61983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F158F8AF50C
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 251C01C22D92
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 141E413FD7D;
	Tue, 23 Apr 2024 17:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UAqppM+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6283A13E058
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713891990; cv=none; b=vCoOVDDAGeAuvGXvm3w59U7QQAS832k7BlOthAicwujQbBZbWZ3TltSwFS3b4/i79YVlfkvY5JGyr+4p0QcU3+Dew8gIDZ8mjgI7waaVeVMTybTAfJRb0oLtKukO1TvcUoDRTlb7R0TK8QZmP3LdCS1VVwB8EoJLcsyBYOPtazw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713891990; c=relaxed/simple;
	bh=1BGjDVhru+5/yOFEbbagkzyjgP7K72hcwEVM+kRJzS0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=STFTW4woucYPvaTxi4hcKPS6FEAs9nJylvep5enEeo9kzX51ooOnO+2+JxRrCvjanxLQ/JemTzN3rNuLbWfGkB8dpIYiGYEaZvzSB1j1b7BIi6mVhU7iXeYWuVybRZA2Kd8Dl4iz5WTS/ipxC46P8NmiV0PaWRe4wdXI4n+lIkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UAqppM+c; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a5878caeb9eso150893066b.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891987; x=1714496787; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7PAyFdu9H0sY3Lt54kr3wrNBIQI45vetjxyjmFr1cOo=;
        b=UAqppM+chKH61EnIriaFT5as5fVionuFjUPlqsXg2Rq9sX5XOusjfwrgw6UF8puq5i
         RGVe+p4t2j4t+Vec8GJJNgva3//nTLEV62ZxLgZfnehH1QzP8QnHGA+qbU/v2K6IDjxH
         TtyM2Eraufg+dSNsGSmpLIYSUJjvdCOc7GmQ3S3q8ZV8NgPL5gsenop2VjtqxkXfaE8r
         oM6CEhfPfT+zQEV0Af/y0ddFV5D+uM9kExv9Gib56UDK3/kiFvV6ZUUe+AfsSVj0GyPl
         nQiZjDIus5VG41JZhqcuGZZ9ku15n0lVN8nuBc0KNWU1JAkfgPQ53DXG+DWXIHWhadPj
         BdRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891987; x=1714496787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7PAyFdu9H0sY3Lt54kr3wrNBIQI45vetjxyjmFr1cOo=;
        b=JnMJEiNyW1f3IjKJ8Xq2chv/D/vU1dYAjlcQIRyocHau3/E9HGT2nBFYXAYNhnLg9O
         en9iJrkaNNWkqUzLuBXhptc0vP2G0A46aeudh18B0zXlMq0bZBzhxLpUEU60j0D38WaG
         q6v2UKJU8NKNy6xbMPojj0rD5mn+I/bZpyzvXbLSIoytF7z2vjkOvKJwH2Bav7Y0FP1k
         4OYSe/ZzhMa4OPolWt8kqz432bK7oHQ7sWHT5VKzyg5exuA+5DdMhQHgp3trb3+NzzsA
         D4hI1GUaR89zi3EQbSYCh/aGDQdHOkjy3T9v3UEhU6tkN8A9RKJ4C9Zc10tduynIyyD3
         bflg==
X-Forwarded-Encrypted: i=1; AJvYcCUBGHMGA3FNmvpTSUagl5Y2Yzfb+76Pp1oCRRxBbPd7oUsLniegtkIL0wlNzqtmpV/0cQQYN5A/Id9V9ThGO3J00gaICYsWT6RfJQ==
X-Gm-Message-State: AOJu0Yx6g+u/hC6ATWZ9PmWWveBKB2oMSAIn86czDPiVBAMZ6kLDKCPH
	+Scgt8neoEgVEp06k+fQ3Tyd48j0usisBbf8XSHWPMMv//QBFMGdLFQHRoixX6A=
X-Google-Smtp-Source: AGHT+IEY3fEkZYym5AetXKUhc3n7D5n6/HgpY9y7SZRytgjmS2FxWFGvhQdXsj4H4Kyog2WyOktaKw==
X-Received: by 2002:a17:906:578d:b0:a58:734d:f111 with SMTP id k13-20020a170906578d00b00a58734df111mr2664615ejq.11.1713891986669;
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:06 +0100
Subject: [PATCH 4/7] phy: exynos5-usbdrd: set ref clk freq in
 exynos850_usbdrd_utmi_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240423-usb-phy-gs101-v1-4-ebdcb3ac174d@linaro.org>
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

While commit 255ec3879dd4 ("phy: exynos5-usbdrd: Add 26MHz ref clk
support") correctly states that CLKRSTCTRL[7:5] doesn't need to be set
on modern Exynos platforms, SSPPLLCTL[2:0] should be programmed with
the frequency of the reference clock for the USB2.0 phy.

Do so.

Fixes: 691525074db9 ("phy: exynos5-usbdrd: Add Exynos850 support")
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
Feel free to drop the Fixes: if you think that is unwarranted here.
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index d69187c22613..0f9078689856 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -155,6 +155,9 @@
 #define CLKRST_PORT_RST				BIT(1)
 #define CLKRST_PHY_SW_RST			BIT(3)
 
+#define EXYNOS850_DRD_SSPPLLCTL			0x30
+#define SSPPLLCTL_FSEL				GENMASK(2, 0)
+
 #define EXYNOS850_DRD_UTMI			0x50
 #define UTMI_FORCE_SLEEP			BIT(0)
 #define UTMI_FORCE_SUSPEND			BIT(1)
@@ -788,6 +791,31 @@ static void exynos850_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
 	reg |= HSP_VBUSVLDEXT | HSP_VBUSVLDEXTSEL;
 	writel(reg, regs_base + EXYNOS850_DRD_HSP);
 
+	reg = readl(regs_base + EXYNOS850_DRD_SSPPLLCTL);
+	reg &= ~SSPPLLCTL_FSEL;
+	switch (phy_drd->extrefclk) {
+	case EXYNOS5_FSEL_50MHZ:
+		reg |= FIELD_PREP_CONST(SSPPLLCTL_FSEL, 7);
+		break;
+	case EXYNOS5_FSEL_26MHZ:
+		reg |= FIELD_PREP_CONST(SSPPLLCTL_FSEL, 6);
+		break;
+	case EXYNOS5_FSEL_24MHZ:
+		reg |= FIELD_PREP_CONST(SSPPLLCTL_FSEL, 2);
+		break;
+	case EXYNOS5_FSEL_20MHZ:
+		reg |= FIELD_PREP_CONST(SSPPLLCTL_FSEL, 1);
+		break;
+	case EXYNOS5_FSEL_19MHZ2:
+		reg |= FIELD_PREP_CONST(SSPPLLCTL_FSEL, 0);
+		break;
+	default:
+		dev_warn(phy_drd->dev, "unsupported ref clk: %#.2x\n",
+			 phy_drd->extrefclk);
+		break;
+	}
+	writel(reg, regs_base + EXYNOS850_DRD_SSPPLLCTL);
+
 	/* Power up PHY analog blocks */
 	reg = readl(regs_base + EXYNOS850_DRD_HSP_TEST);
 	reg &= ~HSP_TEST_SIDDQ;

-- 
2.44.0.769.g3c40516874-goog


