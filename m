Return-Path: <devicetree+bounces-209676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AACB384FC
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 16:31:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6EC97B0B72
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 14:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537EC1DE4CD;
	Wed, 27 Aug 2025 14:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZhmAznIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6E113D521
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 14:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756305049; cv=none; b=sMC7onxfxOMleusTkFHocwo7ZI1L+leUNAguPWTncC2fmDBtnt7Bg4z6wsur7NXV9UdPMsibrfVZkVf7lc6QYq/DgjFmbtzOSo6IpHopKoVoQYNDiFVzezXoMsLatyok8tLq0hG5Oc9ggMJOhGzmRRW1r2S68btN0yQ3OCnzWVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756305049; c=relaxed/simple;
	bh=eI/ul2rAM+x0RT9Cki7AfwtqG5Z2d6SyY0TQkKjuxKA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k+PzShQ1U5uTX25fMGQOFBu5cEFoKe88OlLknrrLLWjozLJcS+7V2nzzo1ilFFaMQcQVPZPOZ9fTvgpgGwgNHvnw8sA1nQ+l4wGT131iqSsnQdCbza9K9xSpRFtHUSNBKJmFBztUYzlXEh8/ZhKL7zPOmX5XhcKIIGXMksY5/G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZhmAznIt; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45a1b0bd237so52166285e9.2
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 07:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756305046; x=1756909846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mKoGceCmZdjqtVEaWnOyGysDqJrMVQCO6tFjFTxYS8I=;
        b=ZhmAznIt+o1DVJ60cbR6MUinjl43QoFvYSJYojkLTzGNB30yguOl2Abo4ACbS98Ms2
         50P7GTPbAVIaQN9Ee6t3w2ryDHm/AO47CRp32xodRfwvQlPXSbOnHIKbeA69tDtR43OB
         AQDqsjyTQTRHwqAMoHiunhhYOn0Xynl6FU7AXziI6kVHsVUsK66pK44k/G+/lIp82cUl
         OeZboOYOnujRT4I4lG+TtNoaprjpmKNnsT3W8jgi7C9DJcdcE5rTLd4UVw3dKtZXCEjp
         lx3toaMl+TJZcceVMaCAF8HzHBSUJZ1V3rdW7m721QP6ZsK2s7vhcDLbmk54YXyqjEHt
         P8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756305046; x=1756909846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mKoGceCmZdjqtVEaWnOyGysDqJrMVQCO6tFjFTxYS8I=;
        b=dUXpfMGWj6Mq6Q5UV0wCmyII+1Biad9FWVkoDwtQ2hIJ2futgup8YhGHY0oakG60RC
         HfmMVLCU5AYC1cOv8t1wu2MMSu5aOk0SIAi2+mz7Bb9UHQRNCW3L9POt0GZLADVvY/jD
         Dg9wxQMby2rLleF0ceVCDFwovdFJM0mRSuoKbmNFPMb+QCIJnGblQM1Uy/bbC5cjXCFI
         lze9ORMEjbdaq8vm0j10iEThFURB/WDzKOsseJnc47mAdk+5bOiOGWY180u5by7TNl5p
         CBNjZP/PNFy1CSRN0bThO5wh/fs77z4sX343KwJh5aDagxRU2EVDPcoXuWKhswfQTnXG
         5NcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuVk5VjgShZBmk6x1hMWhx9A1eELnGgANJV3MhT0/nmJszCj/HlUdPae76vUztLqaZ09/JgBD+790C@vger.kernel.org
X-Gm-Message-State: AOJu0YzrT0V04ttQmhzRlHYApnn/uKJMPACBgrv8ooFz4vPvRqerbwg0
	xLT9mUanTyKbD7bfD1LC/JL3+U4KiqHzWYgPQGTDjPzMcApydZCn700G
X-Gm-Gg: ASbGncuNP6G/EPaG2VZBeVHrdmwhY2x2ZEt4teIb56mEaQHgpzBc+Xm1yLciJM02uQm
	w4baydorN02cIFHeKynyH9r1hHpdl+DIKGu1tjye8SaAqOSQqEgiqPuPLQWosGPxotKfE6QDZRD
	aoKEtc63j2b18IARSjYgaQ273aw1D2Ll6/9Eq36pBCm0IXHvl3H4iwRcW8gkYf9RWJbZgmMqFFx
	ZCTHq7rAN0Bh+7f/AOyTbGXnhpeRgSF5t+DnNTaCqtxChO4c6m9hnBaLzmJqwBeb6Bg7BzrJqFO
	0Vu0IgPQcYedklH910lFi7Td2JzpVoI1mvMd5T2A1EsAbA9C0gNSScFbK8jlSj9qfPlyZFTa2n2
	7HW+GsIBgT4uu0AZfc0gviN5wcE/moPLFiYBvrdutwZmlFQ7EzymrzUzoNBDMhYdzN0EGf9+tZy
	IVdQ23hfRs8n2wJbySv3mxOwRduIjznSRy5wc2vMYVdumSmWOoadoSPPnmohlsi6c=
X-Google-Smtp-Source: AGHT+IGNhmnIOlvZDXgwDv5jAIG433hsvRYz0Ropb3hEl0pCqcmWeivCqt/d0LGNJ8lPoTcbNrh8og==
X-Received: by 2002:a05:600c:46d3:b0:459:dde3:1a56 with SMTP id 5b1f17b1804b1-45b517d2ab6mr163378945e9.28.1756305045443;
        Wed, 27 Aug 2025 07:30:45 -0700 (PDT)
Received: from cypher.home.roving-it.com (7.9.7.f.b.1.3.0.b.8.f.0.9.e.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:e9:f8b:31b:f797])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3cbc6a5da6dsm6421531f8f.63.2025.08.27.07.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 07:30:45 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>,
	dsimic@manjaro.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
Date: Wed, 27 Aug 2025 15:30:37 +0100
Message-ID: <20250827143040.1644867-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the wake-up pin and associated interupt details for the
Pinebook Pro WiFi module.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---

v2:
- Drop alias
- Tweak commit details

 .../boot/dts/rockchip/rk3399-pinebook-pro.dts  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index b33a1509a8e93..2ab416f930274 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -883,6 +883,12 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
 		};
 	};
 
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	wireless-bluetooth {
 		bt_wake_pin: bt-wake-pin {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -940,7 +946,19 @@ &sdio0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
 };
 
 &sdhci {
-- 
2.51.0


