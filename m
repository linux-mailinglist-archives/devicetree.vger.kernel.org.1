Return-Path: <devicetree+bounces-124959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBAB9DA64E
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFC97281C32
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88ACD1E1C17;
	Wed, 27 Nov 2024 10:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="salSG196"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1BD1E0E1E
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705100; cv=none; b=LfmQ8bAV7O38OE7a9P6QfWjDEtdYl1skB0dEZvdxd4phsBK7MashWp38AW4emoXghdh225POrGypxjk5bw+0wswl9SytDzUkOsinRK7NH5mzbTT9pmbPpqJtVtkmADG40pgVubNWbA8ElWCwrrM8kYfTsAWsjK9mAYXZBHAHUc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705100; c=relaxed/simple;
	bh=vk7GIuuXZP08z7cZz70iwdNsc2i3/+3u12QICuVoPos=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xi0cclNOOjsHkEYBOafepemTT5E7+eeMRLLlmdfbgMCBEVgJwHgH/9i46oKv0E4DaqY3myRBK3EMlJIUiLdi2W5xe+L+Q7aeIpllWBXJJrQQ9VUkPYfRweiTbPfse8TL1BScW13Fu/19qTtkHMt23xnVH3eXut8ibH6aSnEOY20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=salSG196; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa53ebdf3caso621942666b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705096; x=1733309896; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d706DhbkVyX7Vrt0xFDuDzjHOlFjZMBwKWZfTRMnyD8=;
        b=salSG196y6wK2I5JWoLs//OavpnukJ2L/bH6L4E1B1wi1RL89W8m2ACS8GrSYDHlKg
         CP2kak4ZZ6DMmdtPe0dSz1PeODSrfw15oPzyAXydGaOuidIl/zSvDrpbphuv1pdmPdAd
         Ba8drnvW4P6Ds6cEka9KQKAspONxwX4X6T+UPtQizC2iBhztGnI10fEJjEYW22HATLhU
         UCSiS8GPovq8fpgoqSvO2KmnrEGpjuEB1jjw9nRC4q/La0/VGB99pZXEndlcMULpP6zq
         9EtW+JxUvUoUzBSwFz2WtmdWAyrng911vugz47g8tQATq8S0svlUo8F1Pt09ch94/Cam
         OLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705096; x=1733309896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d706DhbkVyX7Vrt0xFDuDzjHOlFjZMBwKWZfTRMnyD8=;
        b=Wobvj0CmCCR3utwymjw5EMjhposlfFpEGFURYt+Dg1LSMxmC1yv0g3a6M74LQDVpP9
         yKrGGl3sZaHbgd07Rr96kK5iWVXx4C/nM1O+XLJJlylM0AGV7ZLsefaMpkcUi4UlEKFB
         TnAlyzFIveeSiLXkW9+QOkE0En1eWReO34g2UVHqNjK2TMIdv4pUbVR7Pxgu/igXgdwX
         TvSL3f0LhHG8rsvM3JsYPtRkZCtf0Z26sXkTZbByA7Im8HtnTz+892SXsmzcTjZoGqjL
         LuCiDSyzB3zxLc3Qmlr2PRjeF6q+N7AF3XNLBcgTYNZHFQaxinq+8qIr+P4peM3gkBbq
         pstA==
X-Forwarded-Encrypted: i=1; AJvYcCV5aDxCfl7s8jL8oktNY/MOf8JKePc7SGoCYfjBIIACWtaxpjwn5Aqz7SVc8fXfI4yDo5WEIi66Qqcg@vger.kernel.org
X-Gm-Message-State: AOJu0YyTw164Io2CRy3vnlrtZkyhvBDAv3sq9X/6iNrZ4lrMsxsj8eJ7
	4m8IfPfOaS7nLEvYaoYF50wTiSW3G/bwjYW1YK6ZkYldHGxSLfG1k4XXUkWebMg=
X-Gm-Gg: ASbGncv2NoaQQ6nwHTeSJRShBgGP2/yDL03UdX0lbelcaEZpMqX0a8mPkAgVPTfVR0K
	HiO7akospCmRIFwn4B9+0GANFYrP+Szkgmj92tc/QKfRSQJ5Vv5HlslIswzkhIoUQVAa6TbVIlV
	iEwOpSbsGV6K2zmFsdMtXBuVfpRr8ndmhU6oopTJQk71Grvk6f18uNyAXVC1/fXOKx8ihrBQ6mn
	ByhJkmXmMoPm+hpbPRa5FHumGNF/pCfVhFP1ec3NhbjgCUSgVhAroi8N70Kpjr2VexNbSqFfT89
	UwULKtBt7HUqGP85GHNE9A+xEBG9FEnPAA==
X-Google-Smtp-Source: AGHT+IFxyNLQvFsWnKU+TtOMetky+Uzt8fcx1BHPsN1RlACtIuFqEyfUvWmlfpzjndBcHn9MinYV7Q==
X-Received: by 2002:a17:906:3cb1:b0:a9f:508:5f5a with SMTP id a640c23a62f3a-aa58103dcf8mr225475566b.40.1732705096199;
        Wed, 27 Nov 2024 02:58:16 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:15 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:18 +0000
Subject: [PATCH 8/9] phy: exynos5-usbdrd: subscribe to orientation notifier
 if required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-8-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
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

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/phy/samsung/Kconfig              |  1 +
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 60 ++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

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
index 1a34e9b4618a..2010d25ee817 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -394,6 +394,7 @@ struct exynos5_usbdrd_phy_drvdata {
  * @extrefclk: frequency select settings when using 'separate
  *	       reference clocks' for SS and HS operations
  * @regulators: regulators for phy
+ * @sw: TypeC orientation switch handle
  * @orientation: TypeC connector orientation - normal or flipped
  */
 struct exynos5_usbdrd_phy {
@@ -415,6 +416,7 @@ struct exynos5_usbdrd_phy {
 	u32 extrefclk;
 	struct regulator_bulk_data *regulators;
 
+	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
 
@@ -1400,6 +1402,60 @@ static int exynos5_usbdrd_phy_clk_handle(struct exynos5_usbdrd_phy *phy_drd)
 	return 0;
 }
 
+#if IS_ENABLED(CONFIG_TYPEC)
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
+	phy_drd->orientation = (enum typec_orientation)-1;
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
+#else /* CONFIG_TYPEC */
+static int exynos5_usbdrd_setup_notifiers(struct exynos5_usbdrd_phy *phy_drd)
+{
+	return 0;
+}
+#endif /* CONFIG_TYPEC */
+
 static const struct exynos5_usbdrd_phy_config phy_cfg_exynos5[] = {
 	{
 		.id		= EXYNOS5_DRDPHY_UTMI,
@@ -1789,6 +1845,10 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
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


