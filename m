Return-Path: <devicetree+bounces-7023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C787BEA94
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:28:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA2AC2814B1
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41763B7A3;
	Mon,  9 Oct 2023 19:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=6tel.net header.i=@6tel.net header.b="G6KQNUVH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9FB3C686
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 19:28:22 +0000 (UTC)
Received: from forward101a.mail.yandex.net (forward101a.mail.yandex.net [178.154.239.84])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30293A6;
	Mon,  9 Oct 2023 12:28:21 -0700 (PDT)
Received: from mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net [IPv6:2a02:6b8:c1d:3e8e:0:640:2b73:0])
	by forward101a.mail.yandex.net (Yandex) with ESMTP id 90E26608C8;
	Mon,  9 Oct 2023 22:28:16 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id cRi0fk6DeCg0-P3KRCj0L;
	Mon, 09 Oct 2023 22:28:15 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1696879695; bh=Kff/5COVR/DN1EcqDEcpGH9rcYf2BJlkCWi09bhh0iQ=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=G6KQNUVHI45o8Q4aVsFyqMHK638jFUE1jspH+xZwQwUnXwGNmH+92NL3W0sWiCiwB
	 ALV8kzIfH3YjQM2fJvhx3CxcDw2Nyv32I3CNevgFg8fhOedOXOjhEQIBJCIEySd2FS
	 oDGXbvLxBM7MpHuAAykNGRA0lMr0SBeEfS0Izu6c=
Authentication-Results: mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	megi@xff.cz,
	d-gole@ti.com,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v4 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Date: Mon,  9 Oct 2023 22:27:26 +0300
Message-ID: <d36a64edfaede92ce2e158b0d9dc4f5998e019e3.1696878787.git.efectn@6tel.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <cover.1696878787.git.efectn@6tel.net>
References: <cover.1696878787.git.efectn@6tel.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,T_SPF_PERMERROR autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add SFC (SPI Flash) to RK3588S SOC.

Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..1a820a5a51eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1424,6 +1424,17 @@ sata-port@0 {
 		};
 	};
 
+	sfc: spi@fe2b0000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe2b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	sdmmc: mmc@fe2c0000 {
 		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-- 
2.42.0


