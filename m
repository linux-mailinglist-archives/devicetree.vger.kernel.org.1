Return-Path: <devicetree+bounces-12520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C037D9C61
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C7B3B20B7F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20B737167;
	Fri, 27 Oct 2023 14:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="g35Hu48E";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="QE2O+xAw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4543716B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:56:52 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA831BD
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:56:50 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c5210a1515so32581331fa.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698418608; x=1699023408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VByCdrnxfHtWnoG6F/mfiuk5IYGo5RVATzD6olInWaI=;
        b=l1omvt0RfG/JRXacYspJWsd3wrl4VZhoSMS80dsSKqPWKkq0M3zM5+Ta9344ubwiNp
         /sAQQPQuSm+J/rg1sjV5TZx1st525+73fG5rJl8dYoCje7K+wLZ5CXWH9ES+YYqNCmF6
         w4LS3Iu8FhT1FLFL0rL+i0eJCJP3gRHkvwRDaDc9PgqFHA0nYkWYMbfc0zjf6iT5pz8e
         +Z0zj5/teYzdDt0G+MvbAjHrvVly2kIl27uhfgFzIdl7wFdElSW20j4FePXz0ppspIBc
         AEcX1vwgIUieIgrD8rwOqDopASAsFvuobPTyX7zhC8E390KmwNDXtWaKnvwJp02BApmd
         bGeA==
X-Gm-Message-State: AOJu0YwVgmnmCRjKjx4jQC2Zd3qYsbalmTrN3OoVpmpPi6allYxqMrjr
	JCFFUhq6TDW2AaP9tYVg/jWJ2DqtOnY2AQ==
X-Google-Smtp-Source: AGHT+IHkYaeH+G4ozwGDpQeIrNPuakWzE6x3raj5dJAeoMXbCjqlHP3Z0+LQ+8X7u5jfOIDxK+2Ong==
X-Received: by 2002:a2e:9246:0:b0:2c5:724:fd64 with SMTP id v6-20020a2e9246000000b002c50724fd64mr2241684ljg.46.1698418608440;
        Fri, 27 Oct 2023 07:56:48 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id h13-20020a2ea48d000000b002c032e54948sm306735lji.117.2023.10.27.07.56.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:56:48 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 4B7AA19B4; Fri, 27 Oct 2023 16:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418607; bh=Rp7KWQac6gUFe8TYFMn8pC3WDmrRdjX9taxMlR96q6c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g35Hu48EANXABrZ6M3Nrttjk35lDoq2prmZppXbPVLC3AUqgq+wHMTolDKgS4ZVeJ
	 sxqbqLIQxXJlZgv3tRHShzgmH626mI3eYeDUdlenk/S90QzNi6CvJHjCBvWpmohdQe
	 9yObDj4LEWHCkBXl+N4DBldb8OJ7G2OLgEyiGI9Y=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 8BBA51AC3;
	Fri, 27 Oct 2023 16:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418484; bh=Rp7KWQac6gUFe8TYFMn8pC3WDmrRdjX9taxMlR96q6c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QE2O+xAw/sU/KIAlzREn9Ucmw8e//JD2iog+F+brPVEGRyFdg7ejPCMIZz3OEJid6
	 cz/UE55hyEvDV7nEkik6pIIVRImNWvygAy+scIO/n6IqaK1UKgZTj1Ci2RR9wwpTni
	 Pc4+6VcxJiOkFhhHYdE0d3FAkZ8NyvjFxaIvdbf0=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 3/6] arm64: dts: rockchip: drop unused properties num-{ib,ob}-windows
Date: Fri, 27 Oct 2023 16:54:15 +0200
Message-ID: <20231027145422.40265-4-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231027145422.40265-1-nks@flawful.org>
References: <20231027145422.40265-1-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niklas Cassel <niklas.cassel@wdc.com>

The properties num-ib-windows and num-ob-windows have been deprecated for
a long time, and since commit 281f1f99cf3a ("PCI: dwc: Detect number of
iATU windows"), these properties are no longer used by the driver.

The correct number of inbound and outbound iATUs are now detected at
runtime. Thus, drop these unused properties.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 4 ----
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 --
 3 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index b6ad8328c7eb..da4927a35142 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -102,8 +102,6 @@ &pcie3x1 {
 
 &pcie3x2 {
 	num-lanes = <1>;
-	num-ib-windows = <8>;
-	num-ob-windows = <8>;
 	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index f1be76a54ceb..4487754065b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -84,8 +84,6 @@ pcie3x1: pcie@fe270000 {
 				<0 0 0 3 &pcie3x1_intc 2>,
 				<0 0 0 4 &pcie3x1_intc 3>;
 		linux,pci-domain = <1>;
-		num-ib-windows = <6>;
-		num-ob-windows = <2>;
 		max-link-speed = <3>;
 		msi-map = <0x0 &gic 0x1000 0x1000>;
 		num-lanes = <1>;
@@ -137,8 +135,6 @@ pcie3x2: pcie@fe280000 {
 				<0 0 0 3 &pcie3x2_intc 2>,
 				<0 0 0 4 &pcie3x2_intc 3>;
 		linux,pci-domain = <2>;
-		num-ib-windows = <6>;
-		num-ob-windows = <2>;
 		max-link-speed = <3>;
 		msi-map = <0x0 &gic 0x2000 0x1000>;
 		num-lanes = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index abee88911982..e2d99613109b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -985,8 +985,6 @@ pcie2x1: pcie@fe260000 {
 				<0 0 0 3 &pcie_intc 2>,
 				<0 0 0 4 &pcie_intc 3>;
 		linux,pci-domain = <0>;
-		num-ib-windows = <6>;
-		num-ob-windows = <2>;
 		max-link-speed = <2>;
 		msi-map = <0x0 &gic 0x0 0x1000>;
 		num-lanes = <1>;
-- 
2.41.0


