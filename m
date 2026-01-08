Return-Path: <devicetree+bounces-253030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 387FFD06736
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 23:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D70953015845
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 22:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A17322C73;
	Thu,  8 Jan 2026 22:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ncVStB51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9D92D47EF
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 22:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767912076; cv=none; b=jR1EWhYe3a90Q57TgpuyfKrSwWX8Gvfaef2/GrjmoW2l4VWaywRrExLiVN/CKGGV/LvD0uM/saacMTtnpG2h5yUM/W9aafIr+KqWRkwVtoatRCWo+kIZNpv3aJL3TBlvhEaKoIv8mMQXEX5aDyQvCKeUx69814Zw4jwRSGpndBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767912076; c=relaxed/simple;
	bh=HaJ8SmuvfrcYVPaum+ZN6XNiORau1YsD/rCAbNW3leY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZBMIUTl4YYxXs5y73IX7UDznY01eSWubIrNbTmnI5nLeEAIQI5uqpHk9tIb4SRbkZFIRTxzALkLq6ABKB1BorzhrxwO8/uIW/gtkoSsRrKySahh/Pnv7iQ8J8W0RQynoO7cPEIiCohAuNFhk+MGwiItcH76D5IG2vs5GwHz+l6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ncVStB51; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64dfb22c7e4so4202964a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 14:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767912073; x=1768516873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oATgDoCwLXOHXgXZE3iEsYFQpUgOK5EH/SSem16BDzo=;
        b=ncVStB51YJ47DBSxRKLL4T28/8lhuuV5vyYwM4CEUeb9PbFU5lzyuPzUzjD6GRjs/e
         UGgC3zvKTQ0D3szIppiBXQyARJhM35yXTMt/2ueyFn/MthRwkwDvv2phGXgzAA3LtibO
         IEypJE+HFtUg52hpSh93Anh6ALJPfuPDVdoe140j6fFGI/8uzq1AwlUR0uKlKSCJMe13
         ub2BrXDXdsv0Occm1OI1qLEKFuZ+MEiZuxXtJLLsF9fTps1062UqzABkjmQp24qy415Z
         X37CJg94KoR83tM8X0MGSOLWG7U5U5tAVCv3RfK3pB0DBdQ35O69Gip1tm2mfriISbnp
         qKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767912073; x=1768516873;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oATgDoCwLXOHXgXZE3iEsYFQpUgOK5EH/SSem16BDzo=;
        b=YlUw6No2nD72dKLyYKhJPmJC6veh2xZCWFRWD/OijGVXdE/fnKbeqb5z4n2eeLE5TZ
         NRWgiB4hPq6CTYtR1/j6TTnMrv/HRpmShHj0qrEztyme/4SJXit0ywPM1fStKIT0ino5
         M8sAAksXb/IWTymURrn213luvxWcQUIa6VIAEx7PaLvYdZTlXCoRJVm4WVMPszCg/6YL
         s11y5/eZYkwIiE9xCP4JWYL74n9yU96O2wzmVvPG6c83dblIatdnVlGENUExzs+YMFKR
         ev2Qo3KmBUzoT744BMBsoAqBc66wQxLHsy1AmdmC7b1QrCEVMgtzfO7K8GynV/jjH2OC
         LeiA==
X-Forwarded-Encrypted: i=1; AJvYcCVRDoezWQE0IZUAkVNxNNkgtsYJDy64Z7FBomvUD7J4C05IA0nHroKv8wwx6409vu40aUNYMaCjMKLN@vger.kernel.org
X-Gm-Message-State: AOJu0YzfRO4SnsaHcWUxD8OMISiK1JXCfp4xlc/I/iJyxg2uKKuehu1Q
	QUKYkQWE/vk1xTnKyhvu+0mL0V7lWM9WYw7j2rhOdQVXJE5DYJek8YeK
X-Gm-Gg: AY/fxX6E7QX/PbGRwL/7TJWtVHz+ztt02rQvS7wDnaM7mgD6+9FSAIuAGy32WreMXdH
	1xfZaM4mTAw1IVmqF43DWfUFSuodPs2CrMrLynULcyYqFif2sMTg+b8e5uX9PSaXS5Q/8yYBcmr
	43yz0lxtB/reyUYP8CW9Z685CaMLPPjCOymLiQdRt//LQ6mAcLBntE7M5mZTLCx50BDxrPhtDa8
	eVi3CXi8ipzLdyMKHE/AkJGJjlXQ2kRJUV7BCELmVOwOUt1B1wc8UXA8zsW2hrnY3u3wj4002u4
	JHNPYxB8YghBKbA1jGjt3/c+EvhQ4qNj7MCuKEdBrTJI4cIVipS1euM33m+bxVkcu6/5UbHTP1u
	pc3gRLjZHQtEsTakt9IvK7V09nCSo6hjFSbaC6nChKN3Av8FcbP6NbhrSniVvaCa2C6D/RAJMQb
	lzU0yjwymR/WUOV85k3UCB6oiRdorBsBoBReXBk7VW87R401BEObg2EcIA0kz/UGs=
X-Google-Smtp-Source: AGHT+IEIySNhvB3/9Gm/O6TMgyh4jbvwuFra0kpG/d3v8dv7VzlHjXM8k2siKcmcz5dw+lFkdZFAsQ==
X-Received: by 2002:a17:906:d54c:b0:b79:ea1b:f13d with SMTP id a640c23a62f3a-b8444c59a0bmr896144866b.2.1767912072715;
        Thu, 08 Jan 2026 14:41:12 -0800 (PST)
Received: from localhost.localdomain.pl ([89.151.31.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a230db0sm933547266b.2.2026.01.08.14.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 14:41:12 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: bcm-kernel-feedback-list@broadcom.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] ARM: dts: BCM5301X: Describe PCIe controllers fully
Date: Thu,  8 Jan 2026 23:40:26 +0100
Message-ID: <20260108224026.3550-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Tested successfully on BCM47094 SoC using Linux's pcie-iproc-platform
driver.

This fixes:
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@12000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@12000: 'ranges' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@13000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@13000: 'ranges' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@14000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@14000: 'ranges' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Adjust "ranges" in bus node - thank you Rob!!!

 arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index d0d5f7e52a91..cee08c8a9d72 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -95,7 +95,10 @@ L2: cache-controller@22000 {
 	axi@18000000 {
 		compatible = "brcm,bus-axi";
 		reg = <0x18000000 0x1000>;
-		ranges = <0x00000000 0x18000000 0x00100000>;
+		ranges = <0x00000000 0x18000000 0x00100000>,
+			 <0x08000000 0x08000000 0x08000000>,
+			 <0x20000000 0x20000000 0x08000000>,
+			 <0x28000000 0x28000000 0x08000000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -182,22 +185,43 @@ chipcommon: chipcommon@0 {
 		};
 
 		pcie0: pcie@12000 {
+			compatible = "brcm,iproc-pcie";
 			reg = <0x00012000 0x1000>;
+			ranges = <0x82000000 0 0x08000000  0x08000000  0 0x08000000>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			device_type = "pci";
 
+			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
 		pcie1: pcie@13000 {
+			compatible = "brcm,iproc-pcie";
 			reg = <0x00013000 0x1000>;
+			ranges = <0x82000000 0 0x20000000  0x20000000  0 0x08000000>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			device_type = "pci";
 
+			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
 		pcie2: pcie@14000 {
+			compatible = "brcm,iproc-pcie";
 			reg = <0x00014000 0x1000>;
+			ranges = <0x82000000 0 0x28000000  0x28000000  0 0x08000000>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			device_type = "pci";
 
+			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
-- 
2.51.0


