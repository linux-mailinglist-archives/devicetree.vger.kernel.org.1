Return-Path: <devicetree+bounces-15404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAA67E9EA6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17EDA280F70
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96FFD210FC;
	Mon, 13 Nov 2023 14:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="JKEFIsKB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2FE21115;
	Mon, 13 Nov 2023 14:27:07 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498BE10E5;
	Mon, 13 Nov 2023 06:27:05 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4C9EF1C001D;
	Mon, 13 Nov 2023 14:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699885623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xSePrEltdrZVOTvOhxdlRrK/qcL9Ks2P2izMU5tje1Y=;
	b=JKEFIsKBpS7AxZ3+kCpMqv8P5Lm/HTtIKtvBs8c7H0q2fKGbGECmfrHKImDfvuhobhcZ1u
	Gev9AUbdxWIBRLqbHb9k+OlVwvxQ+DY57PY32FuoA6asoyuyGrY/3aU1cw9zXPwh40A6Fl
	GkGACM+hTd3rwNT/kPle3JVOlWyYr2W7uGhaaJ0LHKZIJRVeUdOzSgyQm4/QJvm8+TYPlJ
	6zPY419LPYhfOWk8JRyDs1PWuCrxJXCxFtTxK1QPgkK2j2S5NxvA9kO5dbHI6Fl56yOGMF
	IXVctc1Up4doHSAd2pWgQRfsBDo87v3jFFRcn3Zy/HQI2ZibhVwnDVX29lxXVg==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 13 Nov 2023 15:27:01 +0100
Subject: [PATCH 6/6] arm64: dts: ti: k3-j7200: use J7200-specific USB
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231113-j7200-usb-suspend-v1-6-ad1ee714835c@bootlin.com>
References: <20231113-j7200-usb-suspend-v1-0-ad1ee714835c@bootlin.com>
In-Reply-To: <20231113-j7200-usb-suspend-v1-0-ad1ee714835c@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>, 
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: theo.lebrun@bootlin.com

On our platform, suspend-to-idle or suspend-to-RAM turn the controller
off thanks to a power-domain. This compatible triggers reset on resume
behavior to reconfigure the hardware.

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 709081cd1e7f..581905d9199e 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -788,7 +788,7 @@ pcie1_ep: pcie-ep@2910000 {
 	};
 
 	usbss0: cdns-usb@4104000 {
-		compatible = "ti,j721e-usb";
+		compatible = "ti,j7200-usb";
 		reg = <0x00 0x4104000 0x00 0x100>;
 		dma-coherent;
 		power-domains = <&k3_pds 288 TI_SCI_PD_EXCLUSIVE>;

-- 
2.41.0


