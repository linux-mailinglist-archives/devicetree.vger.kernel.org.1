Return-Path: <devicetree+bounces-124594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B24B9D9538
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51E19B2186B
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D7B1B85E4;
	Tue, 26 Nov 2024 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ccVSqWg1"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6461B4F08
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 10:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732615714; cv=none; b=s4PQ1lV9aMb3IK38gPuQItGXBm79Yhh5d+QKU9PxXSo+T0xNwB8IdEQbHV4eFeNWNu06ofyW5NsmzB/b1NjGwdd4/wObDga4Rd/hLev1rDn6de0gOpNar2/UjcRvyRPQM7VBjdUCJbl+O+w+XZHW91awolESRvn/lC72TJar+Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732615714; c=relaxed/simple;
	bh=5lJZ/nF8cuFm2xPe38in1zalOui1QM9koL2E5RnWTsI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=e+i+Z/02jLf+jtxamhcU1doRgz7va5eQOAJMW3jDDhWhCr75NJCUcvR8JvTiiB+wUYh5m/R0GoH2IhoMYcBHW0GLcLJN8OCvQRLIc3p2P+D3xJXaUWRzgfe+vNlr8P9seZWUDFkl5rhnRBgdooLvx7/3r4k5I0oGrTWz60L8wag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ccVSqWg1; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732615710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Fq9q0biky9OpRw0dbtbwOh/TCxHi9sqzOOofCo6yTKw=;
	b=ccVSqWg1KGbR/okYZTBXmZb0lHW0hZdUkBkfBwqAT5ATPCXIHpU2m9pWWgPL02W9DvFIe/
	D4zBTtvMMmDijYDum7h2v9+CWfHzhzpJcq6UbN6VwU8Fgs1xKsfsQihmwbGnKKZLWjCID7
	btD0r37CvmOP8K5jqznDoQcG1RcHsOY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-371-OcYkdmyLOwCku0eyWy8NNg-1; Tue, 26 Nov 2024 05:08:27 -0500
X-MC-Unique: OcYkdmyLOwCku0eyWy8NNg-1
X-Mimecast-MFC-AGG-ID: OcYkdmyLOwCku0eyWy8NNg
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-43493335c55so3289095e9.3
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 02:08:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732615706; x=1733220506;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fq9q0biky9OpRw0dbtbwOh/TCxHi9sqzOOofCo6yTKw=;
        b=TwRwG0qVgAw8/VjfXFHW1DPN6gAA8yv5rljYTH0LvFmPbvUWPwY091R8fDC43B3Z1y
         QlQU+o0ME9645tYDdn1kyRxVUJjPv2LBZANShCy6+S1YbR7hcJ43hm3+E/FlG2k4pX4B
         M+Olufk1D42xkA//1yVOsqAAEmJ6iFll0E/lfVZd3Bnn+JZIzT6ShxfBveXF6XvRL550
         wOw+6LIk5WiD3jXE9uaxdoRoA4qzD0ZwyjXNuYCV08AdN2wRq63DiBLtrrtYG+bfyVwm
         MDUujN7+WVOlNfDT9gE7ziGJCexzIno8G4CiFRtOl9eN+rkuKr3YSy0jK9xJqdfYZg64
         c1vA==
X-Forwarded-Encrypted: i=1; AJvYcCU6YJmgmKuwmFt6se+Ah5F3Bsq9Sl3vYdP7fsiMlLMDhLlZPf0fOzWuQWP5+saiVATojnjTHVi9xhN8@vger.kernel.org
X-Gm-Message-State: AOJu0YwYxi1F8y2PCn9A8Lf6UZAhnsSju85fEAJR6AKPNDPc3FtVPxnS
	QVb4PxVD9E5DegyjaxPvpZwM5DEyv6VlZXxNl/+7QBkfoiOFmSNiGWHKobp8H/xvwnjo4UaTTfZ
	bbPP0KeW+K845VLW6vCVk34grICmlcSy4Pp96OT2B5Jh/vbzZVjTlCjeWzsk=
X-Gm-Gg: ASbGncsyTw+MIPsHFS+P+71oYpvXddZnTCsy/ago7AF1eWdBYwspKRAbePSJmCKNoE3
	fekzgSakNEdyWM1YQn+jCe+cCmwHSx5XMqVgQhm0wWVbyjFYJsFSNVNrxxiLhEZaYWgy0bkBEIf
	FoWJNcAjrNIEy2aXsSiND9Yrtyu7MVgvyRsH617uijEdRNcaHOXkMrdN2ysnlhI/s8XaVcc0I61
	3Sn6v4+sB89vc9YwR0lgqRP/h7wqP0JmE/bgxhuLzxou6vqdeecg6kCWahcvVhetR2uaFeNN6yd
	xW1jjCKssPIJJ2bC
X-Received: by 2002:a05:600c:5490:b0:42c:b63d:df3 with SMTP id 5b1f17b1804b1-434a35089e5mr13353365e9.0.1732615706556;
        Tue, 26 Nov 2024 02:08:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcdvb3S8cnPM7PxynTPeWCPWcNAxtPzHc8ZlB/++BpaqHt+EG4RUx3doFnbJGVCosm9yICXg==
X-Received: by 2002:a05:600c:5490:b0:42c:b63d:df3 with SMTP id 5b1f17b1804b1-434a35089e5mr13353195e9.0.1732615706130;
        Tue, 26 Nov 2024 02:08:26 -0800 (PST)
Received: from [192.168.1.51] (50.red-83-45-91.dynamicip.rima-tde.net. [83.45.91.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fb4ecd8sm12851203f8f.60.2024.11.26.02.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 02:08:25 -0800 (PST)
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Tue, 26 Nov 2024 11:08:19 +0100
Subject: [PATCH] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com>
X-B4-Tracking: v=1; b=H4sIABKeRWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQyMz3cRcM8vibN2UEt3S4iRdC0tDC4PUNFOLNIsUJaCegqLUtMwKsHn
 RsbW1AD6mwZFfAAAA
X-Change-ID: 20241126-am69sk-dt-usb-89180ef58f8d
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>, 
 Enric Balletbo i Serra <eballetb@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732615705; l=2485;
 i=eballetb@redhat.com; s=20241113; h=from:subject:message-id;
 bh=bT/35JMF1+qLpDfXB2Q3jx1Ol/t4nxsjkwGX8bY51Jo=;
 b=7jrfrXs1ya8OfzpPtuUbESrW1gPpkkr97NF+q5NtsQDPkoHtxktfWvCWP3xFRyuifAGaqF1sa
 CY6Hs9aSQoPAGPlL1ge9DEYSisj6VWHBHQ2Kv9gb5vkRvlYiHceUzg3
X-Developer-Key: i=eballetb@redhat.com; a=ed25519;
 pk=xAM6APjLnjm98JkE7JdP1GytrxFUrcDLr+fvzW1Dlyw=

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 SK board has two stacked USB3 connectors:
   1. USB3 (Stacked TypeA + TypeC)
   2. USB3 TypeA Hub interfaced through TUSB8041.

The board uses SERDES0 Lane 3 for USB3 IP. So update the
SerDes lane info for PCIe and USB. Add the pin mux data
and enable USB 3.0 support with its respective SERDES settings.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>
---
I've been carrying this patch for quite long time in my builds to have
support for USB on my AM69-SK board without problems. For some reason this
patch was never send to upstream or I couldn't find it. So I took the
opportunity, now that I rebased my build, to send upstream.

I have maintained the original author of the downstream patch as is
basically his work.
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a14032ca07143230855e04b9549f1d0d1..72797f4b689c1d069bf395d6d4fe1846dc4e4297 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -484,6 +484,12 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
 		>;
 	};
 
+	main_usbss0_pins_default: main-usbss0-default-pins {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0EC, PIN_OUTPUT, 6) /* (AN37) TIMER_IO1.USB0_DRVVBUS */
+		>;
+	};
+
 };
 
 &wkup_pmx0 {
@@ -1299,6 +1305,14 @@ serdes0_pcie_link: phy@0 {
 		cdns,phy-type = <PHY_TYPE_PCIE>;
 		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>, <&serdes_wiz0 3>;
 	};
+
+	serdes0_usb_link: phy@3 {
+		reg = <3>;
+		cdns,num-lanes = <1>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_USB3>;
+		resets = <&serdes_wiz0 4>;
+	};
 };
 
 &serdes_wiz1 {
@@ -1339,3 +1353,22 @@ &pcie3_rc {
 	phy-names = "pcie-phy";
 	num-lanes = <1>;
 };
+
+&usb_serdes_mux {
+	idle-states = <0>; /* USB0 to SERDES0 */
+};
+
+&usbss0 {
+	status = "okay";
+	pinctrl-0 = <&main_usbss0_pins_default>;
+	pinctrl-names = "default";
+	ti,vbus-divider;
+};
+
+&usb0 {
+	status = "okay";
+	dr_mode = "host";
+	maximum-speed = "super-speed";
+	phys = <&serdes0_usb_link>;
+	phy-names = "cdns3,usb3-phy";
+};

---
base-commit: 7eef7e306d3c40a0c5b9ff6adc9b273cc894dbd5
change-id: 20241126-am69sk-dt-usb-89180ef58f8d

Best regards,
-- 
Enric Balletbo i Serra <eballetb@redhat.com>


