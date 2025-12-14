Return-Path: <devicetree+bounces-246335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1766CCBC090
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 840A33007696
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1278B29ACCD;
	Sun, 14 Dec 2025 21:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ERe9paV5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF4D2652BD
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749183; cv=none; b=TizKvW8VI+2mTzInREyA2YQeD6ussr/8FTMaPrlsZp1b0HeDzKWMrAldGaCQlkLugvAp2r3HHAofNS88wpRVzTjcv1/iZ8FdkarRMCjZu7EEOnttsxFGLtuXifsxsCAPC1pLwKFDVJEYFgyBFWlmqqCBY/G9YDdy/N2gz++k4ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749183; c=relaxed/simple;
	bh=RMxNctEsO6J70ux8k7C+hUjHqJidoRMFtC9l0gH4pEw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AfMZ84vIrMEDjlafw7PlGKARwQlfJlns0Gu5nKv/kQQ1sGy/TuFn+QbgF/8tRfgRFrCO7vruhA75WbJDVtRcI1L67fSskhsZtSVwDLF1EG64GtB4TLs/bxP4zuG4W2TaSHG3hXVrtX4RlflVoZl+rNJbVa26ucVtjgVdvceo/YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ERe9paV5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477632d9326so17904955e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765749179; x=1766353979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nRhxsDSnBcu0kxb3BQ79sAL2tYyaxkbiHw7liK1hHM4=;
        b=ERe9paV5nFoGPExa4/AUMeiJxlmF0NfeciAXIsVMj8vRiaxnulQzAiuFvMICTwdrAI
         tiVtKkmAFAsYPpFDiNHTctUbAX6oL0E2ZqG38kde5hV4bN0EALHBdOf7WCUHZNEEkma8
         fhtJfuu5OZ3JACudrccrjKj+9FxPEKUawapAlP0+Iid3NYDhOn1rU9o/MN6hfZWWwFVe
         T7ZgH3Hr4IdDlqsTGyEPwcCpMpvmGrb7+e8rsEQdzesOyFllzVZPWCNydiseL9cLGkpO
         K3nddHlNgkNnAyNNMEiuI8R4g0QooKf9VxhzvXtmcFW0wWtipgquThHDBLzrub69XW5v
         3s4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765749179; x=1766353979;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRhxsDSnBcu0kxb3BQ79sAL2tYyaxkbiHw7liK1hHM4=;
        b=RspapLHSPoemaAzsY5/Wf8TqEGg52WwPWIyhi3cGmoqyUvTZ29Xw2kuTJosCPmbnN3
         EddZTsby+4eu/GzE6/Do28P2nSaWVQkI6GAcGlkzqLqEpdG5kOnP/bRqcD93HpOqHWB2
         5f5AqtZxnZIJg2o5jCmZZV1123fkJ89LiHocO14OcHDmFN1HHW+jRCv15Gx31jV7m933
         jJsqUMzfYcLww9vBoXJ+cfg8FzVy61/SWhc48ybpcUaSNGg+TaJeJhs1yseyCAtO/Dxl
         +m3myMGIZ0Wi6NBvUfhpYHK04kfqsAzrUJ5E5ZoPuExm6H4en7W06Bl63JDUay2foNt9
         J+Mg==
X-Gm-Message-State: AOJu0YwE2kb+RfBnudLM0MvrcJXb5TIkOiz5gVBo5KpP4V3k4Kovci99
	tUzGMIm8C5UNrc+l1xUECy50bSl4LM0XRrluOcr0ErQ5pvyR7Q8RvWe88oCGqNmP
X-Gm-Gg: AY/fxX4IOstZFWP3XqtcO7OBgdQuqLJsXBbuHocYXxMR8O7HNETW8mm/ypuVdGb7bs5
	V+v0puzZZVMF0voxVVx34ixKvQeGZerCgSwy4H/mPWJp1jJJnIobfEWK8B+mmuLK83undnLRK1X
	kUR4+C/mNkXfhC1ngA8JngwMxK8kctNfUPUoBZnwrGqIijF+Lfdp7lm7Cxd/YvEZsji150Y/8Gh
	Qtz1dgdQD4tiA4d1CxeaSPzMlbSScG9EOYTm4Z3xD755WBSz1H2/J0R875wijtfOeEiQMDW/JdE
	axcMA6nz44EbhEn4FbhD7lY3qF5VWQr+O4VpmxrZ9txceje4J+2TZYvzKRza9lUKq6/sd6k8GVk
	Ay0STGsT4Y88BP5AxqkUxTP7SJIt+1lKJpfNzoG1GjZ8YWl/SLqwl5UY6Ug3HgL1nQkQw2R+i8Q
	lmk5IwlgS27hYcGZOvnEZdwiZC5MygmJ5qBs3ijbzEwIh0UqizuGF8K77YkSgcnCem+9HJ3RZdU
	EdbBl9e3iBzrEw=
X-Google-Smtp-Source: AGHT+IGVF+JuPVqrMiFOoXCrZyreYbmCiKRs6E7j6+fCdSvfmBW907Gqxw2wCR/3a2VIVjaT/n59HQ==
X-Received: by 2002:a05:600c:45c9:b0:46e:35a0:3587 with SMTP id 5b1f17b1804b1-47a8f90c516mr92963995e9.27.1765749179466;
        Sun, 14 Dec 2025 13:52:59 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6a42c8csm7625568f8f.16.2025.12.14.13.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:52:59 -0800 (PST)
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
Subject: [PATCH v4 0/6] arm64: dts: imx8mp-var-som: align DTS with hardware revision
Date: Sun, 14 Dec 2025 22:52:47 +0100
Message-ID: <20251214215256.5812-1-stefano.r@variscite.com>
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

v4:
 - Change touchscreen label and compatible string to "ti,tsc2046" to
   better match hardware revision
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
  arm64: dts: imx8mp-var-som: Add support for TSC2046 touchscreen

 .../dts/freescale/imx8mp-var-som-symphony.dts | 145 ++++++++
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 331 +++++++++++-------
 2 files changed, 355 insertions(+), 121 deletions(-)


base-commit: cb015814f8b6eebcbb8e46e111d108892c5e6821
-- 
2.47.3


