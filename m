Return-Path: <devicetree+bounces-161384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7A3A73E31
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09986189A924
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 305B721ADB4;
	Thu, 27 Mar 2025 18:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="McMQtbx6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6507F1C5D44
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743101792; cv=none; b=ZsLmtYVUmLCG2RuDGgxTMN1seAFuSmo8bT09CuOhr7sxZZoJ/vP0tJd5F+hkEL+w7Y4OfskHF4HbbStpKWjtLQtwV7FX/zLTLDOnDFqwtPc5AUFTMtjhG7bOegQWUO0s75Q6Su+meSepAvevBuCbkHO9P3/2H7E8UUIIKx+gmoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743101792; c=relaxed/simple;
	bh=jVdixIfICLC62RKY7lVRIMFHwQAdfyCfBhZ7OlsxJH8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Dh2XFxIfva08NY+VZCi0A6Lb0Dr6LGDS2qKkTcLNSjHCX9Eb+g38huyu5hhz0iHV3X+zMvcrNIilqEMT/K8P4oQQus+2brspppOl1R5/ZX2zpR0n6oSFKRSIsVzT7vHyr7oU4WIo/7ahAJxScr/BvMfTkKVrcPUw/95EiRN5RB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=McMQtbx6; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-6021d118877so727982eaf.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 11:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743101789; x=1743706589; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pC89xsTA3P9IUFJRwEIvyPFg1dVGPyboyapluIQiVZ8=;
        b=McMQtbx6wSTTlSxrU/JFJAqs8qQ1taN6d36rdOkdd/j+J65tVk8dDR4qTXgg53Nn0l
         x+sz1QVUrLpN2sQ99R6l1PIDYuCDnPxIwnOF1yEYix+AXcJxqTPMy0jXM0TT8nVuEV4E
         jNyIyAidvB6elipBCRsPKV+LhenLyvv+XX3cY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743101789; x=1743706589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pC89xsTA3P9IUFJRwEIvyPFg1dVGPyboyapluIQiVZ8=;
        b=AhMopmSouaFA2WfOH0efM7DZ8ZjurzIsh24muJyutFKzkVTqwN/ZTukykm5uIjob/+
         gzbLTDq/SIQw0h1Fd0BlBU0c2YcOgJ76TssQVv3OtdBDJuCYTpRSJANcHoA1GrDtJF22
         RS88emD4V3UgYG2+xYxahV/x+0LS+p03fXXXLCO4sgeuZZpqh6OuKU7e9cQLVd2swYFS
         vW2esDF5b9lPzpAceS/XFw1hkifvFay/pbQ2P7w7nrI/gOH5GRhWIsRFSikIceRzUBgK
         pkz+HpXSZQEWG+CEIBSxJ4u19LbNM5xPaQw09nQLDldH1q3iVmY7FtVdxVa97ag6pbH0
         dN1A==
X-Forwarded-Encrypted: i=1; AJvYcCUm+fdvS53l7iT58Rn+1hZgd6gu7FsMV5KeXr2ofX/0UmFJrrtjYsKY2p1a0qpE0RWOnLuek7AnyjWo@vger.kernel.org
X-Gm-Message-State: AOJu0YxfKWu5svRNo6sH1MalZxHyqz+rR3MrKDQWLYLN6Hk7yZKNMxwA
	7rXT/8QK1q07u/fYLYUaGGLGdaUq5p+87R8EQFZOX5u/IS7m2kLZFTZHm83u6A==
X-Gm-Gg: ASbGnctolyUEumqnDheMcgOjy3Z3GuIFrqsfkc1vtjq6IRvHjKSjF4YArtjzoEzz9cO
	O1AMHY7IBw+4tWole9OFHGCVbtwc+oyUO7OLb4bx6fm3lE+8tvl3Wpujlr1/+P/D8on1BYzfYKb
	Fmb9Kig9fv2onAFTI3JqM4S7HB/ZcmUJTdjGCiZzSDXlLEYD+h11b3JoVimkISJi4Ey4YmMhKvk
	4i3KQfvvkNFWUqUYPRwZGPigC6QcEhzhpiM+2+Bq1uZEuKed4s/ADPKkXpuoBD2vD6MDcmO1Bz/
	RI0pOvpcQk1dCDn3DFaTXnzfF7U5uQqF9ElfiXLP2LujSJJEXLRaGm/nmgP6SIzm2p/eJ+/cowF
	jQEuKv6b15gHD44Gg0eR6rPPBqq79UlYg
X-Google-Smtp-Source: AGHT+IFu0LUc532MnKu8ZBSXV1P9eFadHQau51Efxxv+U2s09qdxwjmqdbL/5GnIxfJ2bMZFSFmNoA==
X-Received: by 2002:a05:6870:5150:b0:2c1:6948:d57c with SMTP id 586e51a60fabf-2c8481d6cabmr3067699fac.28.1743101789220;
        Thu, 27 Mar 2025 11:56:29 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a3f3db1sm77997fac.4.2025.03.27.11.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:56:28 -0700 (PDT)
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
Subject: [PATCH 1/2] phy: usb: add support for bcm74110
Date: Thu, 27 Mar 2025 11:56:22 -0700
Message-Id: <20250327185623.3047893-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250327185623.3047893-1-justin.chen@broadcom.com>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
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


