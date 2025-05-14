Return-Path: <devicetree+bounces-177015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B53DAAB63C2
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:06:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8D8F188C764
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993FD20D4F4;
	Wed, 14 May 2025 07:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="idrn8WeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE690207A26
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747206356; cv=none; b=L13C6DqrIyMDDjtsdli4XhVrR/QrgSTzExFE+f5M/a0vmGAWD/nasr2CWuOdWD7WtQJISPs6IxKWYno3vfifS7536b8TEwK5xpLQRS/NwQ1WR8MwATJAs1Co+Y8LKUDsrdkV5B5ES/28OZgQnDG6mWS4dcrvlxMagbmvavuU15c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747206356; c=relaxed/simple;
	bh=grtG+Hf36RQgBxi3RgtBygizeBbvhLU0VbgEFlTLRYk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oT+E2u2ZKUO7LKbEHNDcBF+lgof41sGb/2vLUxZmW7s/Dtd+kCydKi7XFR9JlMVEwaDI/W/vNbCyA4h7skp4vtOqPwMo8GGKxt6xrfIZ7abj+dhhI6N3qBkfYFmnWw76YjWrii9ARbBLpgqGm/Q6XKk+glmRMUhynOVKJ0lpbc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=idrn8WeT; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so66860365e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747206353; x=1747811153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=asjqK4k1HFHU07fICU4xAQQF9W8B7Lab4LvrCMUtqn4=;
        b=idrn8WeTaI1bn/cTuLzet0q9+OYqNFlEGbzUyvCfC9Cq0fgzY2gmgmzkr24/slKhcg
         fTo28sVuR0H96z9nFWfoKtNUNaiSzgQMx/sFaO+6V2PCs2bWOKHeNfwullB1fhllstxW
         b8AG5omhCRiT3m1kgHuMZ1QD6uTXpFuCtSKt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747206353; x=1747811153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=asjqK4k1HFHU07fICU4xAQQF9W8B7Lab4LvrCMUtqn4=;
        b=B9J/DIyzEKGEpfe2uAPLotiEFGZkGViaSi6kSYkJcl8McoSiwoaN04iFAtKthwCqMK
         nrFNwpybG8e7Dqu4q5LIcDFVJurmhi8co3LA6/5bddEiiE4x1YgYQERPIvRZqVZ86l6U
         YOYX2QI/63QIiCDr5JmtVMgvP6tvDMN2AhYfFNLWIaIlCwVh6e+DKdcjUaJE6OOW2VCy
         p+rrawH+TWupMTch5E2peS+9vGM0ogvA3jJDIpIhHskhJgQAo4zX3dYbQGfUXPJVutNg
         a1B8rBdgvXAcOdbOInoCycxEwVOwiVz+VIaLpFdsSzOP+avxHHx5+Sh8Wq524aESLLjK
         2q8A==
X-Forwarded-Encrypted: i=1; AJvYcCUkKROKebF600pxQKmFHxPmoNfWfosok6HHNa7ilPxd8pjmxR8pXfMTJ2brlQnxc5MaehNXGXv0lUqT@vger.kernel.org
X-Gm-Message-State: AOJu0YzwBcynQvMY4nF5OCORywJp858so2JAmO3WjJLGo4pFVPpBoIpT
	jH4jwVnpcV/R4RSavXCyfsdt65lc8tb1eetDXyptPo5CcM4L01+xTHU8daGB/p0=
X-Gm-Gg: ASbGnctS6c4iuEUCVHmhW6Nr7At2SH3fKLcTyIb4/C3H+R9MlaRrXBJsEdRGhfTfrQT
	Yc3cAd/dI9/GDlTyLT/hePPdIUBQhKOc4nd2TzPAMB/xK3AJL3pxp0awLQ3V7EjjN0Opa2ZU2dn
	eS0mQlLeUJpGdW6xT08Wlsuw2LtgjQc8mwN1DXSvjwree6Jp+tzQ0ec/4IBpun8NFCRaiSHtQuf
	ad1fKKwEFFOb48otXbFVoG4OHr9YiqPMJngdMIbksB3Sre+aCiHfJoRdlQ46JHVL4fvG9hQhOKM
	NghKBygbd+tcm4uS/MzJ02D/OrOx2sTFFJ0bQAdXRaHntW1gYzpVXjtpZbft+pbEby+Ih2AV+/h
	6R1VOFMVUKeJVi0u4J/UpYeb06NSsbSfBVhVeZmUAh/g=
X-Google-Smtp-Source: AGHT+IHc0QtO0MfClvGYtNmSS0trJ59pgTJOhiVrzxjClwg6I7hvnE7Dqyuc9UcLulozaFc4dOaubg==
X-Received: by 2002:a05:600c:5125:b0:43c:ec97:75db with SMTP id 5b1f17b1804b1-442f20e3e9bmr15676275e9.11.1747206353147;
        Wed, 14 May 2025 00:05:53 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f396c052sm16688175e9.29.2025.05.14.00.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 00:05:52 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Leonhard Hesse <leonhard.hesse@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: imx6ulz-bsh-smm-m2: Update wifi/bluetooth pinctrl
Date: Wed, 14 May 2025 09:05:35 +0200
Message-ID: <20250514070545.1868850-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514070545.1868850-1-dario.binacchi@amarulasolutions.com>
References: <20250514070545.1868850-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Leonhard Hesse <leonhard.hesse@bshg.com>

Adjustment of wifi and bluetooth REG_ON pin settings. Align them
to the production kernel

Signed-off-by: Leonhard Hesse <leonhard.hesse@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
index fff21f28c552..6e4d09bf002b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
@@ -128,7 +128,7 @@ MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b099
 			MX6UL_PAD_UART3_RTS_B__UART3_DCE_RTS	0x1b0b1
 			MX6UL_PAD_UART3_CTS_B__UART3_DCE_CTS	0x1b099
-			MX6UL_PAD_GPIO1_IO01__GPIO1_IO01	0x79		/* BT_REG_ON */
+			MX6UL_PAD_GPIO1_IO01__GPIO1_IO01	0x100b1		/* BT_REG_ON */
 			MX6UL_PAD_SD1_CLK__GPIO2_IO17		0x100b1		/* BT_DEV_WAKE out */
 			MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x1b0b0		/* BT_HOST_WAKE in */
 		>;
@@ -149,7 +149,7 @@ MX6UL_PAD_CSI_DATA00__USDHC2_DATA0	0x17059
 			MX6UL_PAD_CSI_DATA01__USDHC2_DATA1	0x17059
 			MX6UL_PAD_CSI_DATA02__USDHC2_DATA2	0x17059
 			MX6UL_PAD_CSI_DATA03__USDHC2_DATA3	0x17059
-			MX6UL_PAD_SD1_DATA3__GPIO2_IO21		0x79		/* WL_REG_ON */
+			MX6UL_PAD_SD1_DATA3__GPIO2_IO21		0x3029		/* WL_REG_ON */
 			MX6UL_PAD_UART2_CTS_B__GPIO1_IO22	0x100b1		/* WL_DEV_WAKE - WiFi_GPIO_4 - WiFi FW UART */
 			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x1b0b1		/* WL_HOST_WAKE - WIFI_GPIO_0 - OOB IRQ */
 			MX6UL_PAD_ENET1_RX_EN__OSC32K_32K_OUT	0x4001b031	/* OSC 32Khz wifi clk in */
-- 
2.43.0

base-commit: e9565e23cd89d4d5cd4388f8742130be1d6f182d
branch: bsh-202505-imx6ulz_smm_m2

