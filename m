Return-Path: <devicetree+bounces-126907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5A39E3840
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 12:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C17286093
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5670F1B2EEB;
	Wed,  4 Dec 2024 11:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G8QXX9uD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F741B3948
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 11:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733310342; cv=none; b=NYdG8I3SmeXp7Z/FrOVZ4Mns5/vFy794GjrQpkJYPnrCTxEPwRKOZ24b3bNFysQhQVssIS81/7OjGNIXt0vz1Y72yTJu/S0Re5EQpTe4/jrv4h++3vMtriM5ouXnS0f1oDe4kaMfhWUuOn80z8XM64XTYeq5HVuPXXjEiaVPGh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733310342; c=relaxed/simple;
	bh=zgzaEQAYZLs92wt5M7EAoDuGBcs31mzeCPRI5Vf+jW8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=caGqxMd6JtrtsWE1DFPZ0w0DXXjFVBtJxMor7JFBGwAcpuTOm7xUDRtpKaQyLVXRBtAVqw37jcLk1a4K/vWp7ZNv/PNOUED+StTYCMv1WCfizO3vVqhm+btYOEQazFSZonnnffbdxcWFZbsgPIo3GYCDSRcJLHNABd0PsCJ1buM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G8QXX9uD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733310339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pYs9v+5xS9o1woYf9AwDTUqR002kQs92H7EyPMP95fA=;
	b=G8QXX9uDG3E5o7bbwSL5fweLLO0lSRRAdq/oCUheQdItVcDuVj0N/gO36U2RL0AQX/ahsd
	wQCwRwRqUmcO8L7dsUucI388cIt6xntbknDHzhrnyy9Z57c2Pt7Tk5fYn4aywBpE5vCi2f
	D1fv4qOHDKKhKia3CEeakRaOoifcOs8=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-235-2spGtqVGNgmXUm2ovSp2Vg-1; Wed, 04 Dec 2024 06:05:38 -0500
X-MC-Unique: 2spGtqVGNgmXUm2ovSp2Vg-1
X-Mimecast-MFC-AGG-ID: 2spGtqVGNgmXUm2ovSp2Vg
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4667cab5e1bso12097241cf.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 03:05:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733310338; x=1733915138;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pYs9v+5xS9o1woYf9AwDTUqR002kQs92H7EyPMP95fA=;
        b=HXXZ4YOr03B3FWJxEepnct9qNJPjNED/HkWh11PWzc2eR7OasmatK4vE5IiFoRvsgp
         ikaBFTjlkyij0HhxsnjtLySKD8h96KsxmNcgxBzzEKpqSzy9OxM4beKWk3ZifJEKiBET
         w/xCmQYY1njZeabqwxFiIwQIphcAFpXASb4XUrMbCji/L7a9iYj0ru5IjfVyvrwZX9M3
         CJ763cPzQzmZ7yiMN7mWlyuzD1ZTUMvKUHXPkWlSMbBtpmkaK7MK9CPKf23m648G+xqF
         9jcvjXJKOy6AEOfEy2z/VLdZHXAuhp8sOkvY7WIaXsJxPAhuRlYr3gPj5Kt1GVg2ZHjq
         UqWg==
X-Forwarded-Encrypted: i=1; AJvYcCU6uUVBYb8qQaCcEgYTquJa8qe8ybzHM6l+EVQJq2i4NlwWR+oKLhkmEjJkGYZM6dwAlFKgf+fuwX1Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxrCLdFKunmYQOvuBFTErsfeEZ6YDV7P/lJITpCjd4AWZO0A3ri
	WHdi22oqZaIhcrAObvLgE4KMt65jatIfODA0t01VP2+LRVSTvA632nFRLTohxGsQ8Uk0qOPQwNB
	Z55+QCgXBcxPtREu+k9NFI2Ln6EWOES0Fzf51VAhnAx/E6P0dgch8pN5ART4=
X-Gm-Gg: ASbGncv5ksch97VxGLHd+nxo57/BKAUkecLwb1S7mcarMGtkBHNbljWYHwU3DbEzkuM
	6ZYO0vIxSETu1HfYc3iqHWN8RjugFDwuvlm5WWfDRwJ8j9i95DP6rjah3cdgF3I/T8W2feJWilj
	sdF6ZjrQJCBcNNbm+DI6Vs19NZZcjgpobkjSIV/k136OgIMOqb8aS1enqbHM+mxa2RtHavw5HS7
	TZXC7hQgg+fdGj4ARzPPLh01IUOAB5dyPeNA1dh+XV15/GYLE4=
X-Received: by 2002:ac8:7f88:0:b0:461:653a:eab with SMTP id d75a77b69052e-4670c36962cmr38331941cf.6.1733310338013;
        Wed, 04 Dec 2024 03:05:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOpNUOSt5wAKrvynr/39CNBeGiecoP/HZQKzUprTjksMnD7nDIzipnydiPdmgrbnAKZRyvKw==
X-Received: by 2002:ac8:7f88:0:b0:461:653a:eab with SMTP id d75a77b69052e-4670c36962cmr38331741cf.6.1733310337586;
        Wed, 04 Dec 2024 03:05:37 -0800 (PST)
Received: from [192.168.1.51] ([83.45.91.239])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-466c407e11esm72245921cf.42.2024.12.04.03.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 03:05:37 -0800 (PST)
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Wed, 04 Dec 2024 12:05:26 +0100
Subject: [PATCH v2] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241204-am69sk-dt-usb-v2-1-d59b2ac45c6e@redhat.com>
X-B4-Tracking: v=1; b=H4sIAHU3UGcC/3XMQQ7CIBCF4as0s3ZMIVLBlfcwXdAyCDEtBpBoG
 u4udu/yf8n7NkgUPSW4dBtEKj75sLbghw5mp9c7oTetgff8xBgfUC+DSg80GV9pQqmY7MkKaaW
 B9nlGsv69e7extfMph/jZ+cJ+6z+pMGSotRCazHmSiq6RjNP5OIcFxlrrF8JCOICrAAAA
X-Change-ID: 20241126-am69sk-dt-usb-89180ef58f8d
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>, 
 Enric Balletbo i Serra <eballetb@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733310335; l=2663;
 i=eballetb@redhat.com; s=20241113; h=from:subject:message-id;
 bh=FMm9H6sLzpHevS+BDD1ZhChgz+IY/7iaPRnVhXYcLc8=;
 b=4mJOPQHNLdI0jquYC0yWN66Urs5UsMcZCIcQ7ufmqldmUjbtjc5nmPxy0Lo9kBftq27tGXGyv
 6Wq10Ov1mjzBotzxZIFBNGQOFnYtMXLNGUm2mAm7c483cKISscpv0Mw
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
Changes in v2:
- Set dr_mode to otg to fully describe the hardware proprieties
- Link to v1: https://lore.kernel.org/r/20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a14032ca07143230855e04b9549f1d0d1..353579dedb19a4f9809913570143666f4c4ec53e 100644
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


