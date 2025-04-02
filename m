Return-Path: <devicetree+bounces-162673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DC3A79579
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3873A3AF4B1
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 18:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A731DD873;
	Wed,  2 Apr 2025 18:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="fkL/6cpc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12D51C8604
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 18:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743619934; cv=none; b=Kb+npXc6FIMR+IROrvPqieIBpjz/qfWW0pUqV9S15PhWbxx80do1BI3iNMY1d9Yvu/7b9pvAwobfCofS56fpiCRyO/C4/lBgrKW/hmVJVQe/RtTPKXa05QcKq4DM85gKKZSmFsDVBQwatbHcb2ll9dwTMME8ut/o4AhiFFXttuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743619934; c=relaxed/simple;
	bh=jVdixIfICLC62RKY7lVRIMFHwQAdfyCfBhZ7OlsxJH8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NZBMUYn2+Vr4oCgBbGEEc3GdUMtN1S7CTkhWW7l3W9CWWsLqLiT3eCBfKB21StZRc9zlHJRg3lVAe8s6pM5QQdAV2DxDRMb7F4HwxeFHs5Q/UAmI+/pZJYWHk2VaWIhfnlNktakK1eZYvqDlqgwX9OwiNmuXQFns2jpz3akNtMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=fkL/6cpc; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3f8d2f8d890so70650b6e.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 11:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743619932; x=1744224732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pC89xsTA3P9IUFJRwEIvyPFg1dVGPyboyapluIQiVZ8=;
        b=fkL/6cpcr1wqJ6lSY2eMutImxr5strtqKbHpYSu/+Kov97HK40qV8LLmO/GttraMvA
         KFCKQOFQSokrpgZEVwoM+9G68+lLy8CgvY/OBBUaggkNnCftXEBm1r/MZt3opv7rfJCz
         RpYzQUwUQ5+tDQ4PBQ/mP1eH8rziwSFhJNHZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743619932; x=1744224732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pC89xsTA3P9IUFJRwEIvyPFg1dVGPyboyapluIQiVZ8=;
        b=doQ0OdhlOjiR26QXK02ol8Rks2DxXs1AMHoEfaEVTFsTrczogYnF7ZyWDVPSAORm2s
         4pFyT5cf7ykfwqMwQloFiHFDXJUfaRnfwn+S/Gs5LeTTCYX7kcFSIJ6R5AXtUlsCE9pv
         mW3rv4R824mv/kE/U3qoC0xbrPtiOYyvOYl7u9ytJV89AXpYTqXhXxx3wsV+51ApLYLu
         oX8EawZdHXGU3CZNe2pjSRVBReD0kAH+erb4YayFVGFiO3OsJ8hL2bseobyyGC3LI50/
         0X6RTxj9B8LlO1Rm9H/lavrto2UEmmdivyY+U2WAZNkXquqeKJkcoSmdW7XgEUmOIXCP
         OqoA==
X-Forwarded-Encrypted: i=1; AJvYcCXnjc+A46dCy419oswxcAa7TIntvsBksp3/7TRRJUfKp6Xd8IJ3MpOz6Wzm1pbgkFWvaQ9NA3PVdzYx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz80MsETxlEDBSUYlUL1MomCdbeSlBJwQByp9lH+hell+T5CNY+
	08A7nUSEgb0B/3he7EKNLQ3fMWJ6NPo6avU8bKcBCwUeQ4Y8lNYKRoIjH9Yj1g==
X-Gm-Gg: ASbGnct0FC2Gd7BaM+rgUstjyk/+cxEILl2eiMJLyhvn0QitdN5jiCTqprzizaahAAp
	1bAdAXkT5Bfi5teIPDZ8uxHzr5CEmjz0ydGpGw3QossB8TH4VNxWdvPLpxZbgSHCAhKc5+CYefc
	ECsMYcY1QyEBaa5IATl9hkZ8t+GpFZtwkVnigotfy9pXSq+2nl4VaAXXe/BKw6CXlJ/53F04jPt
	BnGDb1uBLZARHoc/CJMt6V+PH4/B8i3t7LDMSQs9ZfdFVDtj/xMKTVZAt2GKB7YKfECfrlMZFjH
	tEY1kyQejV1jWwlBBZbi243XkNJpwyyo5LQ+zSJBsYJbX3WjtZZbjay5eZe+u7T/UkBvBiIpcHd
	dfyN3hcxvujKIEX4jP1RJlw==
X-Google-Smtp-Source: AGHT+IEsmqOHB5gS1eO00vX+adpCsduyiPqTQoQz9A0b9vatapqVYnqJpz+KZ7UBWUUYEebCPIuu+A==
X-Received: by 2002:a05:6808:2e45:b0:3f6:a400:8216 with SMTP id 5614622812f47-3ff0f500249mr11232579b6e.13.1743619932128;
        Wed, 02 Apr 2025 11:52:12 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051aaf60sm2470462b6e.28.2025.04.02.11.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 11:52:11 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 2/2] phy: usb: add support for bcm74110
Date: Wed,  2 Apr 2025 11:51:59 -0700
Message-Id: <20250402185159.2976920-3-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402185159.2976920-1-justin.chen@broadcom.com>
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 adds a freerun utmi/ref clock that saves further power during
suspend states. A tune is also necessary to pass USB compliance test.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 3 files changed, 76 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index dc452610934a..8a5ed50f2da0 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -43,6 +43,8 @@
 #define   USB_CTRL_SETUP_tca_drv_sel_MASK		BIT(24)
 #define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		BIT(25)
 #define USB_CTRL_USB_PM			0x04
+#define   USB_CTRL_USB_PM_REF_S2_CLK_SWITCH_EN_MASK	BIT(1)
+#define   USB_CTRL_USB_PM_UTMI_S2_CLK_SWITCH_EN_MASK	BIT(2)
 #define   USB_CTRL_USB_PM_XHC_S2_CLK_SWITCH_EN_MASK	BIT(3)
 #define   USB_CTRL_USB_PM_XHC_PME_EN_MASK		BIT(4)
 #define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK		BIT(22)
@@ -61,6 +63,13 @@
 #define   USB_CTRL_CTLR_CSHCR_ctl_pme_en_MASK		BIT(18)
 #define USB_CTRL_P0_U2PHY_CFG1		0x68
 #define   USB_CTRL_P0_U2PHY_CFG1_COMMONONN_MASK		BIT(10)
+#define USB_CTRL_P0_U2PHY_CFG2		0x6c
+#define   USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_MASK	GENMASK(20, 17)
+#define   USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_SHIFT	17
+#define   USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_MASK	GENMASK(24, 23)
+#define   USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_SHIFT	23
+#define   USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_MASK	GENMASK(26, 25)
+#define   USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_SHIFT	25
 
 /* Register definitions for the USB_PHY block in 7211b0 */
 #define USB_PHY_PLL_CTL			0x00
@@ -369,6 +378,42 @@ static void usb_uninit_common_7216(struct brcm_usb_init_params *params)
 	}
 }
 
+static void usb_init_common_74110(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	u32 reg;
+
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM));
+	reg &= ~(USB_CTRL_MASK(USB_PM, REF_S2_CLK_SWITCH_EN) |
+		USB_CTRL_MASK(USB_PM, UTMI_S2_CLK_SWITCH_EN));
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_PM));
+
+	usb_init_common_7216(params);
+
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, P0_U2PHY_CFG2));
+	reg &= ~(USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_MASK |
+		 USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_MASK |
+		 USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_MASK);
+	reg |= (0x6 << USB_CTRL_P0_U2PHY_CFG2_TXVREFTUNE0_SHIFT) |
+		(0x3 << USB_CTRL_P0_U2PHY_CFG2_TXRESTUNE0_SHIFT) |
+		(0x2 << USB_CTRL_P0_U2PHY_CFG2_TXPREEMPAMPTUNE0_SHIFT);
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, P0_U2PHY_CFG2));
+}
+
+static void usb_uninit_common_74110(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	u32 reg;
+
+	if (params->wake_enabled) {
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM));
+		reg |= (USB_CTRL_MASK(USB_PM, REF_S2_CLK_SWITCH_EN) |
+		       USB_CTRL_MASK(USB_PM, UTMI_S2_CLK_SWITCH_EN));
+		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_PM));
+	}
+	usb_uninit_common_7216(params);
+}
+
 static void usb_uninit_common_7211b0(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
@@ -426,6 +471,16 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params)
 	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 }
 
+static const struct brcm_usb_init_ops bcm74110_ops = {
+	.init_ipp = usb_init_ipp,
+	.init_common = usb_init_common_74110,
+	.init_xhci = usb_init_xhci,
+	.uninit_common = usb_uninit_common_74110,
+	.uninit_xhci = usb_uninit_xhci,
+	.get_dual_select = usb_get_dual_select,
+	.set_dual_select = usb_set_dual_select,
+};
+
 static const struct brcm_usb_init_ops bcm7216_ops = {
 	.init_ipp = usb_init_ipp,
 	.init_common = usb_init_common_7216,
@@ -446,6 +501,12 @@ static const struct brcm_usb_init_ops bcm7211b0_ops = {
 	.set_dual_select = usb_set_dual_select,
 };
 
+void brcm_usb_dvr_init_74110(struct brcm_usb_init_params *params)
+{
+	params->family_name = "74110";
+	params->ops = &bcm74110_ops;
+}
+
 void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
 {
 
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index c1a88f5cd4cd..4c7be78d0b14 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -72,6 +72,7 @@ struct  brcm_usb_init_params {
 	bool wake_enabled;
 };
 
+void brcm_usb_dvr_init_74110(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_4908(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params);
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 6362ca5b7fb6..0666864c2f77 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -283,6 +283,16 @@ static const struct attribute_group brcm_usb_phy_group = {
 	.attrs = brcm_usb_phy_attrs,
 };
 
+static const struct match_chip_info chip_info_74110 = {
+	.init_func = &brcm_usb_dvr_init_74110,
+	.required_regs = {
+		BRCM_REGS_CTRL,
+		BRCM_REGS_XHCI_EC,
+		BRCM_REGS_XHCI_GBL,
+		-1,
+	},
+};
+
 static const struct match_chip_info chip_info_4908 = {
 	.init_func = &brcm_usb_dvr_init_4908,
 	.required_regs = {
@@ -325,6 +335,10 @@ static const struct match_chip_info chip_info_7445 = {
 };
 
 static const struct of_device_id brcm_usb_dt_ids[] = {
+	{
+		.compatible = "brcm,bcm74110-usb-phy",
+		.data = &chip_info_74110,
+	},
 	{
 		.compatible = "brcm,bcm4908-usb-phy",
 		.data = &chip_info_4908,
-- 
2.34.1


