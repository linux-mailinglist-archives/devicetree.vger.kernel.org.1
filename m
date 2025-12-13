Return-Path: <devicetree+bounces-246270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E01DACBB495
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:09:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AF84300A87A
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C25C2BE7C3;
	Sat, 13 Dec 2025 23:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ObUxzlLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3831F03EF
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667371; cv=none; b=ubw/gi/CyHv59HSOQw/KFFG0Geojb7o8+7vvyN4P3R6v0hzQ1VrAFfN5a9vQlpz70Vap/w4iETd6T2UzC64ge4KCTFI/g7Qmtp11PacNnfAW5qdIXujZZscNkTiGKTfSiR1v6VAorM9O5yYYUsnk488YpIzpHQmvMIzkS/JTltE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667371; c=relaxed/simple;
	bh=i0X8e/yGdKsmn7X2rh4oVkde7JIZGAI919kdToTsHkg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A2pXkJ0SR1SSdErPUBn43LbTqn8Osk5lBmElIFBIWqTu5xt2iu0NGKGiWXgPk6+S1Ujp5kSXCFyfHoamo+TF8O9lmlfQrjmcZ9TalO8wF124PyByoiEtmCfIrUpVT1aHeQtcTp3iCOI7nOs8+YQVF9n9qUMhitXeWMVGtOW0UX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ObUxzlLx; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso5732295e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667368; x=1766272168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t9yoT0f7ot31AnsAa6tAG2J9yqkpoDFMArAPTB0wTZw=;
        b=ObUxzlLxFIDRGFgoBlZVEUX4n2GsZG71TgiYLjcGezjbJPmi+AAxF7vF8TXr+njTl5
         tNMk/CmIdo56Vk5hHAOLnGnU9v72LnrFT+PPa0r3O8dfRyz6rM2vMBiwK1VpsHIQ0YYf
         m0R5IwmXobPvCnXtqEVyklLeE0f0qSieWdGORY8aiTsSxAGbi5fCWI0pXCdAkXsxfZZy
         97vSkWM4mV8drdxL6a+IW9bKuvgw4gHZCy2ke1RTw5w0LMy4S3RvS6g3y3fDFGEQJsQK
         +QKHPC6GHQQdMiBbP8zwDCh9y9sBIzFjoNRCA5NxhN6Gzl5FyIWe2iU6m7/RR/i9QOgE
         ZJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667368; x=1766272168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9yoT0f7ot31AnsAa6tAG2J9yqkpoDFMArAPTB0wTZw=;
        b=UNii0Uej5yry/Xaki1BlryMkfPrbZg4fvEmofhh7f3CiZS/Bh4JgfY2JfyIqreWciU
         np4PBTEjuIKn/v3vLwMflq0zeV1/MMYEXf6JYGkMsLZxvoQHowRkfUXgru39lcazveiH
         UM+UMJyS3x972L1FHniaijey37C8WmDHaTehTpPJZXzHa60K2yhbKOjDsuB8LsTzgbba
         6oCfZ7CBV0PLyafgeCgo5H5ArGxKhEl6iT7tRALuMdKqwMO/1XDDaBDW0EG3etBgg9+t
         3jeRaIQ+ARqWG+jecwgTlgXfWR/BK3RtTvWkW/sbLdlw5UfCAlGTx5LN9vYVTo+OSKhI
         8w0Q==
X-Gm-Message-State: AOJu0YwaUmOoSsQ1BdOQUvEaojY9H93nF3cTjfoGX/tEA8NbtafCDyMy
	5g9Og7vEwCXKN7JMbu0Y29qJ8rqddjBvpBZ1o+SU1DL8awAXrfTAqVUo5IU1RdGu
X-Gm-Gg: AY/fxX469JWe0xAVPxTBZUmD0SRoX+clfHxqxkVlvRItmrbaKqdxPYCP9xaLqSIEKo/
	q+hiCYQ4sl46AFIP32fsfB0JoQTEyFLgBljEpGNc/GC9gercEao4SUCzuRi7R6ZRrD1vL78ne4t
	IZM4NQl628Tk1b48x04/W+PtWbXFKnBE4jOY7c1xFo8FI6Ek3kTzIrmWkZ1pfTidIaVR02nnP8a
	g2/oJB8SN7kAJCpXytNhA9ofA6cdNOMYJbK1yOIrPPEdQBajUuVETKjBpTR9MIXzjVvUB114L3t
	I3rFyDiANojzOTdlDiPbnZJ0RALIlOyzHDk4yDS/6SDuucj0tD7LExuHf1tY0FEQSIqmymvGlc4
	NxnY9I4c+TgWud+SO4eUQoSg6zZpb6Cm+/j0D1HkEDHp6BUI4tYx2Qbngm2SkvtyuhwGt/AZVaK
	JIbEt4bmlDZHe0wH3cMyWmcAUaz1wjssl/xTkcvcDbpTWwoDyQGGwJ7ZVGNciIjL/Kd43ePc8yN
	QMhPQrcUSVcESbn329Hv6pmwg==
X-Google-Smtp-Source: AGHT+IGpEJxMWXJK0Z6xfBN3FbA9kMxSjh6i9r8YNRiqMHyGuLBmu3GkO2YQXNG94dpdEIrd70iVbg==
X-Received: by 2002:a05:600c:4f89:b0:477:7cac:508d with SMTP id 5b1f17b1804b1-47a8f8d22b4mr78828565e9.16.1765667367837;
        Sat, 13 Dec 2025 15:09:27 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:26 -0800 (PST)
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
Subject: [PATCH v2 0/6] arm64: dts: imx8mp-var-som: align DTS with hardware revision
Date: Sun, 14 Dec 2025 00:09:00 +0100
Message-ID: <20251213230909.16810-1-stefano.r@variscite.com>
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
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 332 +++++++++++-------
 2 files changed, 356 insertions(+), 121 deletions(-)


base-commit: cb015814f8b6eebcbb8e46e111d108892c5e6821
-- 
2.47.3


