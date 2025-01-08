Return-Path: <devicetree+bounces-136497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4AAA05605
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D15E7A05A5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1E21EBFFC;
	Wed,  8 Jan 2025 08:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="F3PTHolm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508941A0BDB
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 08:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736326798; cv=none; b=ITYVAiUlNDrcEYjBSKCNBIzN18tZVy0JUGPlNVEweEMQKSD47EbVLRBDQiqkVvnhIeQLO3umKGB2y+tDV1t3mp6c+3ZcPTIMGxSwrgz+VO2ZvF43RiRUMUo6moqdA0FKpcUrdt9RJAdrizcg9Z/SQNgk05RDRpdxxYLnbE4SNho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736326798; c=relaxed/simple;
	bh=ikcm9AWlbwufaaWBaeBEV769l3hfzjKWwGCpeTlWg5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=G+CAdh2JUNerJgxwifoRJ/VWkDVy2u0bl72tr3N2HS0nYFPMrl23HJ3CzVQStGiGj8GuZrXaAA1fb2ZqYg456MPs1F0xX8img1xfTT7oPZvo6DcUjMrb0nV1nsmeA/OvY0Hdd/pl5buC4jTVDdrUB11VO+344v6ce6h7lIRkERM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=F3PTHolm; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736326795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vbnp6dppOJSaD1roIEtduY8gGhYGLVgiryJd/mNBLcc=;
	b=F3PTHolmsTCdoVxxyFZTzmgu9D/Lzz6cThYmqce3d6tNdtXlP18LRPwiQn0Mso+Eb5N9ND
	MTDNFiDaD02vpvv9M1waZtGmtVaSJNYU8sQaQTicPLvCTheQr2w8+yQhlQUbOQLTXeZG6B
	wNQ214hCSkbZ8QghZMz9uMOxkkE615M=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-502-dBi65zFZP96IedKKWFFYRQ-1; Wed, 08 Jan 2025 03:59:53 -0500
X-MC-Unique: dBi65zFZP96IedKKWFFYRQ-1
X-Mimecast-MFC-AGG-ID: dBi65zFZP96IedKKWFFYRQ
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4361ac2108aso16424335e9.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:59:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736326792; x=1736931592;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbnp6dppOJSaD1roIEtduY8gGhYGLVgiryJd/mNBLcc=;
        b=aUCc0/aWrpJtezyoSjyQuQWZ/khX1veT4Z7NSds0QBX3dXCP+Rq/gHVtfL4gWIlfKX
         GiIl8wbjkkTsG1ZK3pR2pZakxW9drtfp/JIlEMwVwm5z+Vp97Tzb1ogoc9tZc2Kc46MG
         8wqzkaQUPByHanWSFnwUl8HdHlKdLu4kjhAJbP9UnwZhA/NYkSHWzzMOxu7EhBKMHv7t
         hJMKh/Lp5NgfZeuIkTCJj2TQ2RTOpzun9NrPobgJ+shdku1O3nc3R7Jh2PjcJhYpLA+f
         Fxy4/Zio/bEicP0en4xkbPQaU8xGv8ZA4dXgZ6mGGAcoSXVm1ATTLEm47chKoBadWTnq
         05Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUETtbLJDBe6PciDOZfiYp1iSiDRYqgsTe3HtaUZLAZZUziN1shhCsDJVywzmNgrNGPfiyrbkwOosyY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx79tQS8dKXLiBcWfwl4s1/McBRJWbzJu+cG/szoBnpvC3lwWgL
	ime72Z7lgq8fKcBLgXk5GP9O/6jQtybdyN43T5VY4Aq8Kk9HLoaDl/Zeu7SYLyDNvwGbaeNlcAB
	95QSJL4XJqh5chDUPNYirUcA2zWVNWfC1ZfGMKJnoBrDuaX9e9Ig6ISjvsNM=
X-Gm-Gg: ASbGnct23Br2/j/jmdH1TOe1xu5vadDxlI/ygTjaXzRQNjSGXeW3z8KP/ZT6ixsfRfI
	f/FW59eiDpb+uaCbthlMmkO6W9qSAF1i0owws2Z2q23D3ibU5U7bQer9krCpnQt8KUSv6V/uz0j
	5bLR+t+2R4jSBhPbW5lUh02vGplXGbXh1TKeZD4UwNOC3IYoyxRAdAofdy/De4Sl3akDocLIG5a
	Xipmm2S+N0xLHt/JqnmfPXtGIovvyzJqb3PbVeFWXG+twVQt6WDx7rRSRIG8o0w3heFzlclCVij
	QVzGvyILTkfdvRmCGJy7TQ6i1w==
X-Received: by 2002:a05:6000:1889:b0:385:e877:c03b with SMTP id ffacd0b85a97d-38a872c7e22mr503650f8f.2.1736326792664;
        Wed, 08 Jan 2025 00:59:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxs4nyMy+4efmQct8BG2ReZXARDKC9cyCw0D7i11y2guRVXjKoX0Z2AbGHoIJ69Iu3suyW5w==
X-Received: by 2002:a05:6000:1889:b0:385:e877:c03b with SMTP id ffacd0b85a97d-38a872c7e22mr503640f8f.2.1736326792266;
        Wed, 08 Jan 2025 00:59:52 -0800 (PST)
Received: from [192.168.1.48] (162.red-83-45-90.dynamicip.rima-tde.net. [83.45.90.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2ddcda3sm13586785e9.22.2025.01.08.00.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 00:59:51 -0800 (PST)
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Wed, 08 Jan 2025 09:59:46 +0100
Subject: [PATCH v3] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-am69sk-dt-usb-v3-1-bb4981534754@redhat.com>
X-B4-Tracking: v=1; b=H4sIAIE+fmcC/3XMQQrCMBCF4atI1o40Y1MTV95DXEyTqQ3SVpIal
 NK7m3YjCi7fg++fROTgOYrjZhKBk49+6PPYbzfCttRfGbzLW2CBpZRYAXWViTdwIzxiDdpIXXC
 jdKOdyOYeuPHPtXe+5N36OA7hteaTXN5/pSRBApFSxO5Qa8OnwK6lcWeHTiyphB+ORfnLMXOnT
 I1kS2Wrbz7P8xsFcIVJ6gAAAA==
X-Change-ID: 20241126-am69sk-dt-usb-89180ef58f8d
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>, 
 Enric Balletbo i Serra <eballetb@redhat.com>, 
 Roger Quadros <rogerq@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736326791; l=2889;
 i=eballetb@redhat.com; s=20241113; h=from:subject:message-id;
 bh=rvcFoscZViVxDaJspALFWgoUr6T2RAOAuocr/57icVA=;
 b=Qkksndjyf8mnDQ0j6z34D8nnH2YTOy/nuMBKhsg0AHf6+rTAlJeqPNLm29cRE/pbdAyTPUUHG
 oQuYFDSYw9XDRtHbgNRvRmE6E4ftT9swXLieEjDXlpgJfPYsv0kMLD6
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
Reviewed-by: Roger Quadros <rogerq@kernel.org>
---
I've been carrying this patch for quite long time in my builds to have
support for USB on my AM69-SK board without problems. For some reason this
patch was never send to upstream or I couldn't find it. So I took the
opportunity, now that I rebased my build, to send upstream.

I have maintained the original author of the downstream patch as is
basically his work.
---
Changes in v3:
- Set offset address in lower case for TIMER_IO1.USB0_DRVVBUS pin
- Link to v2: https://lore.kernel.org/r/20241204-am69sk-dt-usb-v2-1-d59b2ac45c6e@redhat.com

Changes in v2:
- Set dr_mode to otg to fully describe the hardware proprieties
- Link to v1: https://lore.kernel.org/r/20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a14032ca07143230855e04b9549f1d0d1..734d81019d286f233ac03fbaad9e80a0f7ad3ae3 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -484,6 +484,12 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
 		>;
 	};
 
+	main_usbss0_pins_default: main-usbss0-default-pins {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0ec, PIN_OUTPUT, 6) /* (AN37) TIMER_IO1.USB0_DRVVBUS */
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
+	dr_mode = "otg";
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


