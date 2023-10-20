Return-Path: <devicetree+bounces-10501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2E37D194A
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 393372826B2
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 22:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12B4249EF;
	Fri, 20 Oct 2023 22:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="tB6X0bM5";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="gpGvhK4d"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED32233D
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 22:44:57 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2412919E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:44:51 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c50906f941so19879361fa.2
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:44:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697841889; x=1698446689;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOWDIY6nzbPN7SfSuuu/ehG8xBxls07tFimOVKc/JDQ=;
        b=WC/FYMeYYTRvZCpQWblgEeqi/Leaquy2wo92yduHoqvUcBmd9c6eeJN6SV3QEBgitt
         pr8B8dr4ylrBMlTdJHUQ+s/i5Hz3tkT/7i4Q0PcYT6tv/p8cVCACQVpAjfNGo5FS9BXR
         iQpoCK5l624kk3q5yk5aYnI2kH6RMl7zkA3G4FVEUF0qJbKWIDspki9wvdrKFaU+UAO/
         J9vwaDDERShyGGQB3No6JRbvZbuJH2RXrlSl1BewhF3UIaQqSbfNpbVkMrAqGSLoNs25
         fUy9vXIQwR5vHSX3ensTslVq6/br0ShDF921cQuSWjn5WU8KGCu3comXsRDVs9P+4WZq
         eRmA==
X-Gm-Message-State: AOJu0YyEg9iX2J0So/PJ91CADkrxyMx6dnYs2Xvbtccw1bvryxDdjkBq
	T3T9C9D2OuvKddxpj5mx4I6wY53aSr8R9A==
X-Google-Smtp-Source: AGHT+IEOtiqgWCEeEda1FzyOfdDqpHGFcIT+hHFr4olh7qltDgKct7e15ahGSvCdOYEGvtMQzMHSOw==
X-Received: by 2002:a2e:bc22:0:b0:2c0:17bc:124e with SMTP id b34-20020a2ebc22000000b002c017bc124emr2882695ljf.38.1697841889287;
        Fri, 20 Oct 2023 15:44:49 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id a14-20020a2eb54e000000b002bc3fbe9fd5sm556848ljn.55.2023.10.20.15.44.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 15:44:49 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 486131372; Sat, 21 Oct 2023 00:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1697841888; bh=xZk22towdhIlWka7yL48w/UBUdZHB6iALebFJYrh2C4=;
	h=From:To:Cc:Subject:Date:From;
	b=tB6X0bM5UB2XcTWDAI71abeP82is+fysIlY5NvUQU7WL0sORLDqWxwmMBR+8CQAHO
	 quqXWQTDPb4fsbAiS7CvpW7u87CYFnrIx0tTNZZznI2ZPHmb5uTjMRQrE8hs87qsWF
	 2QlZTlDOkiAYaO25P0Hipz0Mjbhc+VR3230TV+y0=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 72BAF746;
	Sat, 21 Oct 2023 00:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1697841865; bh=xZk22towdhIlWka7yL48w/UBUdZHB6iALebFJYrh2C4=;
	h=From:To:Cc:Subject:Date:From;
	b=gpGvhK4daOW8V5aafvKYcGum+3fxow84CUMaqOea/yLJBjs6e5zAKYVRwTPH7ZNmZ
	 yfqzb9bfFi8i06UN2CWZk5jDO87rqudIzSFQobWkzfX6iNQrsXmkU1D+K8nDL/mCR2
	 0k0WZeEnfYQdz3TB0b0I8mHz9r2NfjThNlowAxwc=
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
Subject: [PATCH] arm64: dts: rockchip: add missing rk3588 PCIe dma properties
Date: Sat, 21 Oct 2023 00:44:11 +0200
Message-ID: <20231020224412.3722784-1-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
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
Note: this patch depends on:
https://lore.kernel.org/linux-devicetree/20231020125221.3564951-1-nks@flawful.org/

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


