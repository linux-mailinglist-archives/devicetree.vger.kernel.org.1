Return-Path: <devicetree+bounces-127225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B93B9E4E98
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB11E283268
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2DB61C3C04;
	Thu,  5 Dec 2024 07:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cycQCvX+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77701BBBC9
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733384001; cv=none; b=U/d9FLYctoWmd9yN3DMQeiZdI58/iI9shdIMnJb0o936SnenscKdSD1/CTyWbMT1zkudVeqoG/WnFIdWSNEz4nDnnGl0M9FQXVFEidBbwY4WRY2oUjMSD8BdUMcH0CU+BKc32LzRQHF30OY4nbiF0hmw1NM/bPbn+etVrRtfbk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733384001; c=relaxed/simple;
	bh=wB85TvHGNmOfHJ/mMWKC/8ms9JuX3aQUHHifkpUaQBk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nVWc2QK16B9tbB2WRB5/J/WfpG4G9V8sCjFBojM0G7gm4KIpZqaD6R+A+5P4NohaRPyY1aDvy2IsscQRL6m7v28sF2fGhXVuaTd3kzU6LkspYQR8NDgQq0QSI6stpUOBv6OEV8C12IDNvzFZnX6Fp2Pyjb/RglmctfTXaOuBhYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cycQCvX+; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa549d9dffdso76970266b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383997; x=1733988797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6O3lCGzSUbOgWyay+aXa9djkwZjywsxQgF3zhLj0KI=;
        b=cycQCvX+0PwZJorSyfq6T5opZHAYSM61m6PVHaGqCBccztUA2aezN+r9KcLDucfbO2
         z7owfGjuB3LUtdpJ23PtkmRVYvqrDCasOP7qZS/a9DhEm0tnrYHooPU7HoX6nDBpVmpZ
         3uszl7bbHFu3NIGijAkH+mzVYyM1GfP4zsIATTdvnIxoK6uuGzsN6hDSFi7TrCd9KSob
         OfoU8+i5V7st4yzC3Kn9p+CwUtI+8fHUTQLfMCePDYWTT0Uuf4DuTqwBDvgBbO1yBmnS
         KGrJ0MLLxiUKoiILTpYPZ55DJ7IeoGc3oT66D7hf13wEVle/pdoShv9XR1WCO8eTCHPp
         t5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383997; x=1733988797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6O3lCGzSUbOgWyay+aXa9djkwZjywsxQgF3zhLj0KI=;
        b=a5GWldudV6RFJoOl+cqTpBXn5B/odAnSJw/a5U/OGGThUrI2jouybTqP4K1Da6acOu
         lIJ3XyvE2AiR6pHDy0zLIfCRhgGbp4LNsaWovaVBoOKcsOnXQShmeq+wC1EFyejHCIq6
         AiQVSYaN50IWeSROILc4/lFuYMHYjAXacwTTB5Vd7A8muFY5u3IkBQ2op2jNkRp7JsG9
         RGjRVyigkBOfkE7KZNuji207h3SPeMhxtuUV0FSnjR9p5rGJIDF/D83ZH9G2NT0TGqLp
         bAqQmXWAygT9R2zqe+rib2vAipyqkspxz/ntOHJu+f52eSzx0xVs0K7kxOiDyfAXTBWE
         raKw==
X-Forwarded-Encrypted: i=1; AJvYcCW4L619oCxg9ThslMiS6t1uQuN0fWQo61ASqw1OTP2MndIEailxM+KQsvj4G68AB1ttABFvccGx95L7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz110YlTS+mkJyJvYjpvydAu6JmNUhQkySdQz/LV1GsOqv+Xm9L
	ttf74vxZOxOktnVT7LaNV75PBjRI6FEWGejAzvE+5cZf9F7QoEbOIUJ8PazbtJA=
X-Gm-Gg: ASbGnctFjiAhjsdk9rh0Hu562IFWlsgjt7SzE1QV/z/A5tQ/IZc+iYnGMiO5rvCLjfb
	OQtNPuRqRu5Yaziva8vXNCrvC8Xy6uRyWQFp9TZ14W0bnUR1yIg6rebOh5udsw9quppSNjyoIpb
	4ksRNxXlfsbQ0iU40XLUwPm0uVff6hQFCjdBPiEUj2PhL79EbuXyBJIlMa/j+RuQ/k4KRFVC9h2
	/uawRAeZZIPE7snCzolXFqkwOzTpX1RrBfi4SBcI50m1R+uVZml29GWDEkb6gXee8SXvWbciIjW
	+2ADjyW8TDVdM0WBkQyF72D+WsKxDJRgkg==
X-Google-Smtp-Source: AGHT+IEi/zCT7Ze2IPO+Cv0zWjyb+MBILaN1VwgbSpJ0ZibfzpwTs9mA6Loh2tFdluQCoQvAqduEeA==
X-Received: by 2002:a17:906:18a9:b0:aa5:391e:cad5 with SMTP id a640c23a62f3a-aa5f7d9a2a7mr737322566b.33.1733383996962;
        Wed, 04 Dec 2024 23:33:16 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:16 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:18 +0000
Subject: [PATCH v3 7/8] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-7-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

gs101's SS phy needs to be configured differently based on the
connector orientation, as the SS link can only be established if the
mux is configured correctly.

The code to handle programming of the mux is in place already, this commit
now adds the missing pieces to subscribe to the Type-C orientation
switch event.

Note that for this all to work we rely on the USB controller
re-initialising us. It should invoke our .exit() upon cable unplug, and
during cable plug we'll receive the orientation event after which we
expect our .init() to be called.

Above reinitialisation happens if the DWC3 controller can enter runtime
suspend automatically. For the DWC3 driver, this is an opt-in:
    echo auto > /sys/devices/.../11110000.usb/power/control
Once done, things work as long as the UDC is not bound as otherwise it
stays busy because it doesn't cancel / stop outstanding TRBs. For now
we have to manually unbind the UDC in that case:
     echo "" > sys/kernel/config/usb_gadget/.../UDC

Note that if the orientation-switch property is missing from the DT,
the code will behave as before this commit (meaning for gs101 it will
work in SS mode in one orientation only). Other platforms are not
affected either way.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* drop init to -1 of phy_drd->orientation (Vinod)
* avoid #ifdef and switch to normal conditional IS_ENABLED() for
  CONFIG_TYPEC

v2:
* move #include typec_mux.h from parent patch into this one (Peter)

IS_ENABLED(CONFIG_TYPEC)
---
 drivers/phy/samsung/Kconfig              |  1 +
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 56 ++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index f10afa3d7ff5..fc7bd1088576 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -80,6 +80,7 @@ config PHY_EXYNOS5_USBDRD
 	tristate "Exynos5 SoC series USB DRD PHY driver"
 	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
 	depends on HAS_IOMEM
+	depends on TYPEC || (TYPEC=n && COMPILE_TEST)
 	depends on USB_DWC3_EXYNOS
 	select GENERIC_PHY
 	select MFD_SYSCON
diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 206483c7ca55..6dcc3c80c1d2 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -24,6 +24,7 @@
 #include <linux/regulator/consumer.h>
 #include <linux/soc/samsung/exynos-regs-pmu.h>
 #include <linux/usb/typec.h>
+#include <linux/usb/typec_mux.h>
 
 /* Exynos USB PHY registers */
 #define EXYNOS5_FSEL_9MHZ6		0x0
@@ -394,6 +395,7 @@ struct exynos5_usbdrd_phy_drvdata {
  * @extrefclk: frequency select settings when using 'separate
  *	       reference clocks' for SS and HS operations
  * @regulators: regulators for phy
+ * @sw: TypeC orientation switch handle
  * @orientation: TypeC connector orientation - normal or flipped
  */
 struct exynos5_usbdrd_phy {
@@ -415,6 +417,7 @@ struct exynos5_usbdrd_phy {
 	u32 extrefclk;
 	struct regulator_bulk_data *regulators;
 
+	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
 
@@ -1400,6 +1403,55 @@ static int exynos5_usbdrd_phy_clk_handle(struct exynos5_usbdrd_phy *phy_drd)
 	return 0;
 }
 
+static int exynos5_usbdrd_orien_sw_set(struct typec_switch_dev *sw,
+				       enum typec_orientation orientation)
+{
+	struct exynos5_usbdrd_phy *phy_drd = typec_switch_get_drvdata(sw);
+
+	scoped_guard(mutex, &phy_drd->phy_mutex)
+		phy_drd->orientation = orientation;
+
+	return 0;
+}
+
+static void exynos5_usbdrd_orien_switch_unregister(void *data)
+{
+	struct exynos5_usbdrd_phy *phy_drd = data;
+
+	typec_switch_unregister(phy_drd->sw);
+}
+
+static int exynos5_usbdrd_setup_notifiers(struct exynos5_usbdrd_phy *phy_drd)
+{
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_TYPEC))
+		return 0;
+
+	if (device_property_present(phy_drd->dev, "orientation-switch")) {
+		struct typec_switch_desc sw_desc = { };
+
+		sw_desc.drvdata = phy_drd;
+		sw_desc.fwnode = dev_fwnode(phy_drd->dev);
+		sw_desc.set = exynos5_usbdrd_orien_sw_set;
+
+		phy_drd->sw = typec_switch_register(phy_drd->dev, &sw_desc);
+		if (IS_ERR(phy_drd->sw))
+			return dev_err_probe(phy_drd->dev,
+					     PTR_ERR(phy_drd->sw),
+					     "Failed to register TypeC orientation switch\n");
+
+		ret = devm_add_action_or_reset(phy_drd->dev,
+					       exynos5_usbdrd_orien_switch_unregister,
+					       phy_drd);
+		if (ret)
+			return dev_err_probe(phy_drd->dev, ret,
+					     "Failed to register TypeC orientation devm action\n");
+	}
+
+	return 0;
+}
+
 static const struct exynos5_usbdrd_phy_config phy_cfg_exynos5[] = {
 	{
 		.id		= EXYNOS5_DRDPHY_UTMI,
@@ -1789,6 +1841,10 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get regulators\n");
 
+	ret = exynos5_usbdrd_setup_notifiers(phy_drd);
+	if (ret)
+		return ret;
+
 	dev_vdbg(dev, "Creating usbdrd_phy phy\n");
 
 	for (i = 0; i < EXYNOS5_DRDPHYS_NUM; i++) {

-- 
2.47.0.338.g60cca15819-goog


