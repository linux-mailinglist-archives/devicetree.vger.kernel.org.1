Return-Path: <devicetree+bounces-99026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 804BC96865E
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 13:40:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A15EF1C22403
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 11:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656BE1D618B;
	Mon,  2 Sep 2024 11:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mcr0MeAc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740E01D6180
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 11:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725277252; cv=none; b=gmiL9reH/AWbd8Limw9AYpm4xew91ks4zf+FGf8MbFwm8IFYlSazPuRw8aGM77xFhDj1XKGhnepijQboCbg7qHNt3qh1HuzvwSaz/xsHf0VnSZ7Er4uiT34nTySLy4h3M+jKYau9zLzUV7ZfGO2QJD96W3I9Ns8f+b3wAf4GoRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725277252; c=relaxed/simple;
	bh=GqYwfy3C8buj3wjtrDwLQoBSAzkARfETSztvR9cAM1w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=i5rRDWfdZxBNPCncGMOL01Ys2SePO5IimNd3NNKt/FYWDsMuOumFDJpmlN2mEXReyYlXciLObsfcvZnVZZ0NIOHySZ0K6WtHO5mlxl1wVbIcB++kpWwuSmkvSK04FnqNnKSZh7pH+Bt0AEpeGmXxi08vzE0rSwzXulmhLaM76NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mcr0MeAc; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42bbea92505so3955395e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 04:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725277249; x=1725882049; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0c87l9HizZr/gVCQ7mdytqHKt3WBojzubXbqdO2h8ME=;
        b=mcr0MeAcLAO1L6HX5rYzFVdAN0n+A0GDN13jNf7hbeq5/14HW8VOA+I89bisnioexs
         EcnKq53HWTdzeu9LsYyJRfC644lCUqDCoheYo0qTyKtwszm4+S9HiQN1hyX3c2F/tbe3
         3b7TAzopRrKF12JqA9XAckdWcFJRAkyHOypJ89gqA4LpAmPtD6zDvfVuAVyPLaWy2fKQ
         yexpGSLVL5UPy1L3F1fZeInf46llGQqWs7YfLVvHlhl/LXqrcjFp6eVflEolBpjC7tZX
         OtX9aKSI3VM0NE859tuEPOoNoQvwRaClMh/AOAhM4UtzP+CVQB2D+1tyAMyVIDNmr7r8
         gYiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725277249; x=1725882049;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0c87l9HizZr/gVCQ7mdytqHKt3WBojzubXbqdO2h8ME=;
        b=rO7YBCL6lEqqi363sYHNHZ2nZ3WjILz8mlvXFdg73PbGlykyBlfL7sQDJ+1gX9l7B/
         QIOCk8XV/WWR15aVpLXldVeYRrwoq7T/hoWn09tzyWP2MHX0Z1ofr6iAgJ++NyN+D1a5
         pWnVgDK6Hu6cTe7tkl75fjnvHrDjvSKwi4d8I5JXmhGcIld24ixM2P9drLnIqblBPn/U
         9GG1lS4EC0cwmihCC6FIc+3qegGAk3jpU1tyzUzbvFR6HAJ2q/MN4wLKhLpsBIoLpQb1
         nLdSNPY7MKQMjCTBSNjLceIKuzO6ZFvEPpwZb9nWu866fOOkGL8WpLma4eBjAFbbNBOw
         ymxw==
X-Gm-Message-State: AOJu0Yzb+UQiVR/N+KnyCVL2wYLDqixCd2X0ndn1+u2kMpy8V8lIEJIW
	ExZUWI2SdlDC957zHONdSb7tf9btvBVv7Ht4bVmF5RJQu7FJQABZ0Q+4vKCVFv1EwF0eljmhk+M
	AgNE=
X-Google-Smtp-Source: AGHT+IG/7KS8r0mZp+XmomeF1weh0MUMEE3dkcvGgU+H9bSVTStWXW3sU0djdrdQP34ZuMuWHPw7pw==
X-Received: by 2002:a5d:6d8c:0:b0:374:cd01:8b72 with SMTP id ffacd0b85a97d-374cd018dd8mr738256f8f.9.1725277248541;
        Mon, 02 Sep 2024 04:40:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba642594dsm171515245e9.47.2024.09.02.04.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 04:40:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/4] ARM: dts: nxp: imx: mnor pinctrl node improvements
Date: Mon, 02 Sep 2024 13:40:36 +0200
Message-Id: <20240902-dts-nxp-imx6-pinctrl-v2-0-ab8196baa07a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADSk1WYC/22NQQqDMBBFryKz7pQk2pB25T2KCzVRB2wiE5EU8
 e5Npcsu34P//g7RMbkIj2IHdhtFCj6DuhTQT60fHZLNDEqoShh1R7tG9GlBeiWNC/l+5RmNcNr
 qTlrTlpCnC7uB0pl9Npknimvg9/myya/9BUv5P7hJFDjcjJSiVJ2tRD2TbzlcA4/QHMfxARiZ/
 s25AAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3142;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=GqYwfy3C8buj3wjtrDwLQoBSAzkARfETSztvR9cAM1w=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm1aQ3qDxf7xFAdwIWqHV45pdOryGWihIIjK1y5
 Zm5akcFgFOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtWkNwAKCRDBN2bmhouD
 1y01D/wIWcdUSsQ3C0b8PZEcXW2ROSbq9HCc+rilGVcppDS/RPKWX6NM+cMAf0EvgCPCE6/0Yik
 FQcPnkIL3OcnQY8ATyYwDyx1p55lG2oGbutTFJ5GqjBa4/bgWZpi9O3aEAU4vsm2D3B6QqlJkjD
 VGxI2lNrYDOosTz9crGVucNSrura0+w19AvuETGSd4r0f6BUTm2EKzsKc1pZ10xUGyBaeHCtkvC
 5TqAWoMY7j3SoMgAQa7FVCDiNZRYmYM3fTadgbJeBMuJF/d9/kzKePsY6ecduX95BUms5Mrv7IU
 e3rts3OO+Aq19T1X8U/UE5rsmG+R9JTBbLq7235Ovz/Ob68LfiopGVsHWhutjVy4eWbPo7eqrcM
 HgzJCUE94ulMDJX5To7FpEx2sg5eAr6lwQziDyDIg3sxrlBdTiMf3xdUdsp9znhsh1mAMrY8Grf
 IxoVtxChrH4K4FOXy1TyKYE5JEj3EgkRvcWy6e8RZG4tDPjVBH/Zo1BDrbStL5sv0ltYQS4039R
 T2TpNlCQ0IwUUx1d6pcB+xIsDnHsXlBcKF7Wqq1oGb0raFHucA2vdyVK3AyvjSwVppHO6YoS+MX
 Z/2ZgTtU9Tu/6n38e4LN3rHFMaDl5qDTG3GusBwWXxeZssWmM/Q/kT/cD4PMvLJuVlRmE18vXvI
 /6ITc8HwzeBLyyA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Changes in v2:
- Fix "grpgrp" -> "grp"
- Link to v1: https://lore.kernel.org/r/20240831-dts-nxp-imx6-pinctrl-v1-0-f5811032bd40@linaro.org

Align the pinctrl node names with the bindings.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      ARM: dts: imx6ul-tx6ul: drop empty pinctrl placeholder
      ARM: dts: imx6ul: align pin config nodes with bindings
      ARM: dts: imx6sl: align pin config nodes with bindings
      ARM: dts: imx6qdl: align pin config nodes with bindings

 arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi   |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5903.dtsi          | 10 +++++-----
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi       |  8 ++++----
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi       |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi             |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi        |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi         |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts               | 12 ++++++------
 arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts              |  8 ++++----
 arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi        |  4 ++--
 .../arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcexpress.dts |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts    | 14 +++++++-------
 arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsom.dtsi      |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts              |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi            |  4 ++--
 .../arm/boot/dts/nxp/imx/imx6ul-kontron-bl-common.dtsi |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-liteboard.dts         |  2 +-
 .../dts/nxp/imx/imx6ul-phytec-segin-peb-wlbt-05.dtsi   |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-phytec-segin.dtsi     |  6 +++---
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi   |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul-mainboard.dts   |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi            | 18 ++++++------------
 arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi   |  8 ++++----
 .../boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi  |  8 ++++----
 arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi.dtsi       |  6 +++---
 arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts       |  2 +-
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi                 |  6 +++---
 35 files changed, 91 insertions(+), 97 deletions(-)
---
base-commit: 07f4822c25a849fc553d74e52c7b0c6953fd230a
change-id: 20240829-dts-nxp-imx6-pinctrl-80e6d6b1d8a3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


