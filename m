Return-Path: <devicetree+bounces-233211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFCFC1FEA2
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EBD314EA815
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB983314B70;
	Thu, 30 Oct 2025 12:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UM+pbYlH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1167C2DCF46
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761825766; cv=none; b=IEU7v75SF04OtV/jv5INVArz5GXITKv8gpaahO+8VhPZBVupJTGFAst2q4Omhn2Fx2A2IlBHoQBK/c+TgISE00XN2adWeoOaTc/OlYPdp1Mk35T3/ZYWHecYI2UzBaoo5/rgm6MIVf2eJV33RVltNgk1w9fp8+lG7avc4LhaCUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761825766; c=relaxed/simple;
	bh=2wqxvv1LyQFzj8yk+I9X6hMiGmB+zBuKRmM0nZOP2cs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I0qszVugnRzUQUo6DkPL9DjPKsDkD3F0GSzTUjv1hJ3SEDnObs32Vt3pDS8M7AIJSBazAjJENDjJmsdJLY3WFiy1AyNjRgbyxFXBimxlBtJHPdV2Vg8n7+Mzu0QOi9129ip+9g1eQrr7xMjG67ktYxcrIbqU9MC71j7SodT++gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UM+pbYlH; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-427007b1fe5so759494f8f.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 05:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761825763; x=1762430563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NKKJA6fRomltCp481BiLWPXK7LT4XBfRN+VIaJM7fMU=;
        b=UM+pbYlHnUIzInvqsPW9Qf5Yys5Qs2ZO7H4pQk2LVCtO70iJtqNjvge+5dfAMAuJ+8
         MZVAV2ipFDKy3dvc08osdR5saIy2ZwBJMO+I/vwMfJN9fMbGbFWIKkOYJmHEmi/cWqCM
         ZJ6Tkjne64CCLm5NeN5Os9a/BM14ftZD7CZIfaAPQgWdR5lke6EFLL70Jd0mB6L6nIeW
         GsTbbu9AxFHTJxpINB07PmSam17kYqh1ER0cqcc8tko6eJyqkdTLNtFgulaCRDC7cilA
         wdIEusGAIMLEhiscEce2qSBjchjOGngpbBEPOXAqPRbzpvycO9jqrtqpiYVk2VypNe16
         oN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761825763; x=1762430563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKKJA6fRomltCp481BiLWPXK7LT4XBfRN+VIaJM7fMU=;
        b=NxZx+bUORcf3X2FZH8WJp2kTkRbQyff3Nzxfp2k58k8gQVxOhm6YTx3x5neyqcL9Ex
         cAvC/p/ddWqi7CqHe/uK89a2ZsqL6mOmWwZuCePhkeb3Ev98ZZBeADEYCW513mRAdyr/
         cY0fTWm1zOCMFRsX/ASopnLFKRBx0RBJn5gRVjUVO3KTx3Am5cw8vhgKgGAsO/JK/Y4F
         X5HKMLpoNZUNYv6KizpaZ1yod9OMjJJ0fot2MPFRW67EwarR8zrerKVjxNxly+9LXdbG
         k4ygRaSsqU+ft1+oi1WsZZe8maWA2K7DIUTZbuZX74rE93J9YSoUmzniN8UOfw1nPrtO
         bFMA==
X-Gm-Message-State: AOJu0Yy7CsnxdWXQXoZ6hXu96N47oyTQiXymeO7/04rCcIByG/0FV3ii
	PX88T59skQpyR1enBdkJmKpSkqhUO9OHeGz1uanPSOAXBeGVNOHKyjEGgEf7+Pbv
X-Gm-Gg: ASbGncsHno2knEu14aNIJqiDj0KVeM/Bun3FuunM4t1eR6hLs8XBmO7c5Rl1EoH4Tcg
	jlvXZgubykz2WxMLmHAviQB9hLCsp0C2rI4za4YiNl4Q5oZXF+WES9NEjeFGmPmCCmr2Hx2IoXd
	v7YmsYY/vtze9rHphiA7z7V0E2pEvwHZ7iqylM7bNMwFc6tdo8U8psigmj+u488JQagM+yssHjy
	ug5LalgBBtnAwP1uz0kjJ7XV1Xz94f0deglNJCsvodfCQ/Na4e9N7HoNl2DO3qeH68McKmIrbhI
	3eK9Ipdz+54zvGdKxNDcDb9OFgJPuoiqX1rTfwqQWROi1oFUo3zFx7La2oPf/nEIY7RCrnn3mcs
	Jcvrp49Or+OvPYYNhHajJ7wDmXUm1IHqG4XO3u0M/p0hTnlG043YdFNM2jvYNQu2MnUDHyrzqs5
	dlxR9gGqFVFxeB/LVO0Rcjy/Ff8BENMfCtz7ze0vtlU2hNQiMc5absL8JNe7hYx9q73GbWdJFq
X-Google-Smtp-Source: AGHT+IGkEzWaIhOle1zjpMnONwufJ9WytmJCNBOpcHQt6RREK2pdj8LZw4LmLrh8QmCmDfNohShFNg==
X-Received: by 2002:a05:6000:26ce:b0:3e1:2d70:673e with SMTP id ffacd0b85a97d-429aefb2a1fmr5378560f8f.37.1761825763215;
        Thu, 30 Oct 2025 05:02:43 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-146-98-100.cust.vodafonedsl.it. [93.146.98.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429b9b436efsm2399848f8f.23.2025.10.30.05.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 05:02:42 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] arm64: dts: freescale: imx93-var-som: Align DTS with hardware revision
Date: Thu, 30 Oct 2025 13:01:20 +0100
Message-ID: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series updates the device tree for the VAR-SOM-MX93 to align it
with the latest hardware revision of the module.

The updates include the addition of missing peripherals and devices present
on the current SOM version, namely:
 - WiFi and Bluetooth module (NXP IW611/IW612)
 - PMIC (Dual NXP PCA9541)
 - Audio codec (NXP WM8904)
 - Resistive touch controller (TI ADS7846)

These changes ensure the DTS reflects the real hardware configuration and
enable full support for the mentioned peripherals.

Stefano Radaelli (4):
  arm64: dts: freescale: imx93-var-som: Add WiFi and Bluetooth support
  arm64: dts: freescale: imx93-var-som: Add PMIC support
  arm64: dts: freescale: imx93-var-som: Add support for WM8904 audio
    codec
  arm64: dts: freescale: imx93-var-som: Add support for ADS7846
    touchscreen

 .../boot/dts/freescale/imx93-var-som.dtsi     | 332 +++++++++++++++++-
 1 file changed, 331 insertions(+), 1 deletion(-)


base-commit: e53642b87a4f4b03a8d7e5f8507fc3cd0c595ea6
prerequisite-patch-id: bfa4df6e3787b415218cd441317fb838824e06c3
-- 
2.43.0


