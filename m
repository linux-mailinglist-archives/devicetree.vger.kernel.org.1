Return-Path: <devicetree+bounces-11347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 682C07D54F8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:13:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 988AC1C20B4E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C2D2E654;
	Tue, 24 Oct 2023 15:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="XX4+RIdQ";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="YPetIezb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992132E65E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:13:05 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3A0293
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:13:01 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso64459301fa.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:13:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160380; x=1698765180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fs5BWqZ4KWd4eF9fOCTK8GAB1nXsPd0oZ+/iEQRlIeA=;
        b=Cid/dwyqzHK76cDQAiq5rH5r3RbKt5jGVOfpGm2zTcLF0KeiTSDWhTnxSRMXArbSYt
         ZAsl2q0Bw+ipAv0Fphpc4AF4NrNNzX0o9JwisX/aR0xWwNbOAyX4x3Jb1ZYLYW1cbFMd
         YdtElpoRsutieYkCoGdtie3H1AzgiauOjl5zA+Z2MTCJxzcAVuzPdE8mFp5mbNMJHH10
         3BL5unXceNMxdWSekG4NtZtnbih2/HSQxA0S41KrAnfx7oDum67R0Qfn/0QWGUCjwUKS
         SOUwAi/J2d1u19KMXb3uVL0Zg/I9pFAYf/DUqEFNaCU28Dr1uvEyxtXaQhWW1RU3urAC
         F+5w==
X-Gm-Message-State: AOJu0Yx5Nf1bBHcKCB2Zs/MTkRIKEgfygXjEzuP1pLLevv8DceuLzVoP
	d5YU6kp05UTT9pwkRSbi0psCRFYw0IUJ1A==
X-Google-Smtp-Source: AGHT+IHl71uJGbEbXc3w8oVa2Mg/uvQXyiVqTw/MvYHeGU39r5d4sVSBsO6Db8ed/fm0SJEcqfiTvg==
X-Received: by 2002:a2e:81d7:0:b0:2c5:3a9:7467 with SMTP id s23-20020a2e81d7000000b002c503a97467mr8710099ljg.8.1698160379925;
        Tue, 24 Oct 2023 08:12:59 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id q24-20020a2e9698000000b002c12c2094e4sm2106927lji.74.2023.10.24.08.12.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:12:59 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id CC3F514E3; Tue, 24 Oct 2023 17:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160378; bh=ErqCJiP8U44ISh4Im9EcpFWgOzEosEpfBHoDJ+9Kgdw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XX4+RIdQqpwcgiSk3keVVRMKdRRL6KvGkN9SzivO/Leac6WITW3z5iIDgSEAiD8se
	 ggR8vd8W9LNeDKYsXoPfZg233lGpDSxYTBxHRubh/9dQhIS3PJUSzxakpHYm0nGokn
	 GxkzAi6NtUZmcpjU7D6mvxICXdBDPYUoetIwmgbw=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 14D5015E1;
	Tue, 24 Oct 2023 17:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160247; bh=ErqCJiP8U44ISh4Im9EcpFWgOzEosEpfBHoDJ+9Kgdw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YPetIezbIGPz/6ySQtofIO1XKUtjvcIGK/RwOaRqbMiPAspV+G+wA19XlHTfwKvMH
	 k/lMSgd2DckEIDOIiVS1bMBWcP7XbW5zAbz7sqw9MpjZnpQqKtAbhr90knfA8lZo0u
	 s9tgKPeOxCbawAWwZVFr7XzoLGyJVZHmuyY/0MeQ=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add missing rk3588 PCIe dma properties
Date: Tue, 24 Oct 2023 17:10:11 +0200
Message-ID: <20231024151014.240695-5-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niklas Cassel <niklas.cassel@wdc.com>

The rk3588 has 5 PCIe controllers, however, according the the rk3588 TRM
(Technical Reference Manual), only pcie3x4 supports the embedded DMA
controller (eDMA) on the DWC PCIe controller.

The size of the eDMA region equals to:
0x200 + MAX(NUM_DMA_RD_CHAN, NUM_DMA_WR_CHAN) * 0x200.

Where for each 0x200 region, the registers controlling the write channel
starts at offset 0x0, and the registers controlling the read channel
starts at offset 0x100.

pcie3x4 has two DMA read channels and two DMA write channels,
so it has size: 0x200 + max(2, 2) * 0x200 = 0x600

On the rk3588 based rock-5b board, when building with CONFIG_DW_EDMA=y:
Before this patch, only the iATUs are detected:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G

After this patch, both the iATUs and the eDMA channels are detected:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G
rockchip-dw-pcie a40000000.pcie: eDMA: unroll T, 2 wr, 2 rd

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index d7998a9c0c43..e072f5fe655d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -101,8 +101,13 @@ pcie3x4: pcie@fe150000 {
 			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
+				  "dma0", "dma1", "dma2", "dma3";
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;
 		interrupt-map = <0 0 0 1 &pcie3x4_intc 0>,
@@ -122,8 +127,9 @@ pcie3x4: pcie@fe150000 {
 		reg = <0xa 0x40000000 0x0 0x00300000>,
 		      <0x0 0xfe150000 0x0 0x00010000>,
 		      <0x0 0xf0000000 0x0 0x00100000>,
-		      <0xa 0x40300000 0x0 0x00002000>;
-		reg-names = "dbi", "apb", "config", "atu";
+		      <0xa 0x40300000 0x0 0x00002000>,
+		      <0xa 0x40380000 0x0 0x00000600>;
+		reg-names = "dbi", "apb", "config", "atu", "dma";
 		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
 		reset-names = "pwr", "pipe";
 		status = "disabled";
-- 
2.41.0


