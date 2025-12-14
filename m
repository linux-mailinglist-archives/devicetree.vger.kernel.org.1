Return-Path: <devicetree+bounces-246294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5B0CBB99C
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 12:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8C9B23000B29
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 11:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0E22BE621;
	Sun, 14 Dec 2025 11:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KAx5FOtS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BDA272E61
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 11:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710351; cv=none; b=KmYbTk3eNWBrXco7hwM+aGFUgKppAZWkyRaGOd9fysKBOzziuW+Fc9d2/3nh03txpzg1ubulG9lI0mGZHSJGDuKGAQYkpTAy/N8ewFGvUAhv4Drz+0niz1+7Ia0BFQMtvMsugxjqSWckBsVDqGBSKZXHCF23gHdYDbHss3cnVsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710351; c=relaxed/simple;
	bh=3w0jWvbK+rTHWt5ZzaeVvtNMSp8xGYHosN/3BMwLrAc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VzAt+WwDjN3aB2I1HQ8V9TSY4TdvmfbARflZmd7+L551USDwCBtW8lwn2ud3JfKc2oWQDIHpmne51m69vSMu1g+YTOqksDvZhBEagqPTOJTsjQRZ2WFYekyo3gCXAOgu+S+adCQj5efbyug/htTSykHtmVaphiXLOULqdNuJ7FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KAx5FOtS; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42e2d5e119fso1133455f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 03:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765710348; x=1766315148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OhdeJ/LLR6L2VR6ptJ7b8rQmhPTTZ/qiN+icdGZwFSY=;
        b=KAx5FOtSNOSOwwFgKPdD2DL20d+c5RIKERq+7xXKBh7+25+J0waSYm70zmTYba37lm
         DSGOZWj2PPMV2TJ/Sq0CvcMh3TpzFKBFaBwstVyROxUp01I+WiX46kjaB08ZdjpKmnA0
         A5e/62TfAzjG0BV2wL8ifAry5GfN3BFg3GlTvRmECdMAqk947Kv0Wp7IcoeQshej+WgH
         6E02sfELYkKFr3s7fn4YNehQ5hb4ePJsWDs6I6p8e1vaepZAhWAq3TmMo201wItrS0d+
         dYopBQROymJe/cHjMdwZ+ZteHob2Twunom+iCZdP2NElR2CIMo9CAbi/7gbV/GHToATa
         N+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765710348; x=1766315148;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhdeJ/LLR6L2VR6ptJ7b8rQmhPTTZ/qiN+icdGZwFSY=;
        b=BVwiStgpvMMPmyQ676mazJPqPkS/0swJ4CWVQyk4id8fjLmdIS/PCelRwndMyVvUAl
         B4HEdskmLqOXFMJqf5FWkm48r9qQ5zx8mpTaEQNoMVJu5odCzsw0kMSvmIkoKA+3svlx
         UP6eLC1GuxTxyNBmHH7OYdH5LQd3QovtP2hdNyMFGLV9MNKtuxWxGJuMEyYc58Lp+num
         kbRrnzvTokhoTOYhqBPAE2DGguia7RFgDEaeUNIVNgIAEruwcyqpOSniZAvN4hsdc1SZ
         5dAcmQvlIaTgNBynMuz9S8mxECdk/Ijbfq6fK/VSObWMweMfwJ+PpABv1zeJJNVXD44h
         RK2w==
X-Gm-Message-State: AOJu0YxOkMLjqRZ6N+fzWBSQKtbcSiMehX5uVPQx0O34kO6DRR4HFn1h
	Ap2dKtVopbxH2UcDXGexZezrsMljH9ap0C+dKK+TBI7tw4Q3v+Hh0X+YllwpJp83
X-Gm-Gg: AY/fxX4EJrJDyOl5f64/XEmoKDSgh7Sx1IZJ2XMyaaxPOleL9b1gVzhXAElA7lu4klO
	ssMHX/7uZTADnba/k5R3xF1FxsIPsae2NquA+9CrsizeaT1WtoFbSgunXUoUaukM0/MTHrCGY0a
	MIADZYSk90rt8dp2jFTDhKQryB4H7zEJcfnDZX4DdOBzMhk3/kF15n/JSqdCGy2vSFMQMVc3MLX
	7/FzgGfxu08Bb2lOmyIIeoGnFrGg+lGEKBsK6ofu5nmF+LEdSRVdl7OymoIa63My9dc5Zb4BNxe
	qhRp8+5I+/77LzOSuK6pSvBuVpFTxpzxZXPFLzCQwZ9YLaYHM8rqkokq7+GhOFuszRYkdVTNTcC
	2YKTU2lYmyNwrrxsqTv6sWN1R9xwaAPpJQhuUM5xuqPDCq03wEN9p+d+1FpnR40J12ZQm6nDE3M
	iDXjJ3nlW69AdLUercEFK3de/8gXIyLcyiIfDZbzT0UBIS3t9siQTjK6BfWdspE+b4QfCaSr2o/
	jRWB6yPbjtC210=
X-Google-Smtp-Source: AGHT+IFTnNafx/D6K29dLM2hhJp5B/QbGCDyXRNcOaZQ8W5V4WHYPBO/c41/tJWjVv0ztKQKXFtfFw==
X-Received: by 2002:a05:6000:2f83:b0:42b:3e60:18e9 with SMTP id ffacd0b85a97d-42fb44d4426mr7867198f8f.10.1765710347568;
        Sun, 14 Dec 2025 03:05:47 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f36b6a19sm7823660f8f.38.2025.12.14.03.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 03:05:47 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/6] arm64: dts: imx8mp-var-som: align DTS with hardware revision
Date: Sun, 14 Dec 2025 12:05:23 +0100
Message-ID: <20251214110531.9475-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series aligns the VAR-SOM-MX8MP device tree with the actual
hardware populated on the System-on-Module, and separates SOM-specific
descriptions from carrier-board-specific ones.

The first three patches move the USDHC2 interface, the PCA9534 GPIO
expander, and the UART2 debug console out of the SOM dtsi, as these
components are not present on the VAR-SOM-MX8MP module itself and are
instead routed on the Symphony carrier board. Their descriptions are
therefore provided in the carrier board DTS, keeping the SOM device
tree limited to on-module hardware.

The remaining patches add support for peripherals that are populated
on the SOM and commonly used across designs, including WiFi/Bluetooth
connectivity, the WM8904 audio codec, and the ADS7846 touchscreen
controller.

Overall, this series ensures a clear separation between SOM and carrier
board responsibilities in the device tree, avoids describing
non-existent hardware on the module, and enables key on-module
features.
v3:
 - Remove unnecessary status property
v2:
 - Move deleted nodes from SOM dts to Symphony carrier board

Stefano Radaelli (6):
  arm64: dts: imx8mp-var-som: Move USDHC2 support to Symphony carrier
  arm64: dts: imx8mp-var-som: Move PCA9534 GPIO expander to Symphony
    carrier
  arm64: dts: imx8mp-var-som: Move UART2 description to Symphony carrier
  arm64: dts: imx8mp-var-som: Add WiFi and Bluetooth support
  arm64: dts: imx8mp-var-som: Add support for WM8904 audio codec
  arm64: dts: imx8mp-var-som: Add support for ADS7846 touchscreen

 .../dts/freescale/imx8mp-var-som-symphony.dts | 145 ++++++++
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 331 +++++++++++-------
 2 files changed, 355 insertions(+), 121 deletions(-)


base-commit: cb015814f8b6eebcbb8e46e111d108892c5e6821
-- 
2.47.3


