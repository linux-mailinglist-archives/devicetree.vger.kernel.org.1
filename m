Return-Path: <devicetree+bounces-201185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94879B17A2E
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 01:45:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0BC862557C
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 23:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C0D28A707;
	Thu, 31 Jul 2025 23:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vAIALMc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F8C289E38
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754005535; cv=none; b=dqEWCpGVNW1heenX8IC4ZBL3P4+TjtHv/n/Lk0ukm1GReDJG7Dd+g7OYEwj6TvzKx3acVcaucVnsnZMqq2Cm1ODZN5hGRpIpeWbbmJ4B6o+6xSMeMybcC+Iz03PW1CKlPuvZqe0EnWF/3ZiTHZmGPa/JSZi41XNj79Lli7m/lWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754005535; c=relaxed/simple;
	bh=2gt6Nxed+AFerebrJU3TYDHkF7LsDAD0OfwSV1lcaH0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T1c9JbKf8SQrYfFx7MACuO0fnF7YNBr03Jt9ih7jLY8QWxbce8lV3oDQs6w3PylwOyn+XTB1iX4X3xOUtFYXAyLVY6IF0S8WWq3GNPn77oRZ8YdMSM+SFmE3jDltvM1HBBICH+yi5EgJFKXgT0L0yShm46xX5N67p+CpW3jbRB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vAIALMc9; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-61591e51092so152376eaf.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 16:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754005533; x=1754610333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o5aj5vUWJXyfqyhprLvdwVUEl/uN3d7BC1IvykTif/4=;
        b=vAIALMc9cvDdQUpfHCK3eqpWjTikpAvTOsGZ+naGN3sJbFs73TobHywPpbzhpdOZNK
         zXKsOuJhniq89roybImciL06q8G0SOfj0NRTT6AkF8c4S7L3dE01/c6yl3HKiNBxtaQ5
         U/sMUfJNfjsgnM7t1zeJqd9xQcmtU6NGjo/o8E6CxuUjLyQWhxfd5EjyuSL0rYjFsxQr
         CFdzR6HJHaXFmFOq0Z0D0Jpku/Upx/LAsjWhi0EdShL4+0Bf09PewGPyNncqDOuFWgs2
         ib9B7pxPsxk4FA5DytchSBZwQuQceBaJbw2rDbypduCpUJ3NeH2moNulu3cT5EGBGuWd
         dcsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754005533; x=1754610333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5aj5vUWJXyfqyhprLvdwVUEl/uN3d7BC1IvykTif/4=;
        b=NRBoE3bfH2RxQoHtRzXGocgU2coEhlXXg6GzYTuzJu1JfVI5R/vfMrJX4nvYGcDzRI
         s0KF2PC9X0eEDsx+zD93okHeu8y79/H6JYTSnHOU/5jNPC3WSlxBpJOFChRct32gJPMR
         RfWNnr1tV9ZMkEF+QV8CFBbGOxfL2s24C10b9OiBSSvmqOKvY7xmrUr3YF5cEXoGFFZz
         LE3ylQmJKmZIGwChOeDcyRW0f4F0ZQ2NOOa4is0+8HSnGC912N8BahbTS91lYa4U1rDO
         iJ9NUq3uq6i4r6QzLRFZxHYedWVm+IwgZQ7zGY2fDH2+omivK/sOpXfSu07J8TfgWzy/
         gQKg==
X-Forwarded-Encrypted: i=1; AJvYcCUUkgpegNkOklT0CNxD5j7HdfbwWI0TmnUxm20Row7SCoRnBfN8bw+W2zEtYB2xq/gwDhAXkjsr0fjn@vger.kernel.org
X-Gm-Message-State: AOJu0YxB44VxcAvfEcTtrNMPdAIJGpMjQxFzYpvYc180Zbs7Vdf1Bg3Q
	XXHBmdf42DpRMbVY2fSRxznRrPeL/S90H8lpIK3dPgsRS/RPGWG02Ec3DnczPS9uwX4=
X-Gm-Gg: ASbGncsH3q3Xa6IphlFrAitcJiLELXacxGAukqht5heZCHHm3DlDp54cCnHBUfluiIw
	ekt26peQ29Tk7cT4BbXQftiwbnsi+2GChSXKT0GgZf0ESVMAFaCoeSwYdKjBEBq5h7aeZQ6fzw7
	d8DF3NKWILwNKQjOQdxZA3nFqasx7vfLdNHBx1TlOD1E3KjryYeThsJEbsflNfScNI70wLI6kDi
	H2SOusic728aFpwebYEQI7LGmZrmx993EYXeHNdh38TAdnMjs96IxMy1e1YsXJJPa0WiJjhOzlv
	UPcQZSMPMv4sZ3xh3ZCGN45wuWpNZ3FZDIyjCf6UPtH6xg+uedFm/sslycbft49cLKNp/0iSD7W
	3K6B++gYTQL5g0nUUAUp477gmmw==
X-Google-Smtp-Source: AGHT+IFuo3EccWt2eqaswL/GXTzhTAtiWo9RPTumIYwjblTx1Ehjy9OmBX7qt65iTSqVmlJ1VnsAJQ==
X-Received: by 2002:a05:6820:6682:b0:619:7ffe:b0af with SMTP id 006d021491bc7-6197ffec3b4mr712572eaf.8.1754005532733;
        Thu, 31 Jul 2025 16:45:32 -0700 (PDT)
Received: from localhost ([136.49.61.16])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-619704e167bsm373502eaf.4.2025.07.31.16.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 16:45:32 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: exynos: Add Ethernet node for E850-96 board
Date: Thu, 31 Jul 2025 18:45:32 -0500
Message-Id: <20250731234532.12903-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The E850-96 board has a hard-wired LAN9514 chip which acts as a USB hub
and Ethernet bridge. It's being discovered dynamically when the USB bus
gets enumerated, but the corresponding Ethernet device tree node is
still needed for the bootloader to pass the MAC address through. Add
LAN9514 nodes as described in [1]. 'local-mac-address' property (in the
'ethernet' node) is used for MAC address handover from the bootloader to
Linux.

[1] Documentation/devicetree/bindings/net/microchip,lan95xx.yaml

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850-e850-96.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
index 7d70a32e75b2..ab076d326a49 100644
--- a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
+++ b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
@@ -21,6 +21,7 @@ / {
 	compatible = "winlink,e850-96", "samsung,exynos850";
 
 	aliases {
+		ethernet0 = &ethernet;
 		mmc0 = &mmc_0;
 		serial0 = &serial_0;
 	};
@@ -241,10 +242,24 @@ &usbdrd {
 };
 
 &usbdrd_dwc3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 	dr_mode = "otg";
 	usb-role-switch;
 	role-switch-default-mode = "host";
 
+	hub@1 {
+		compatible = "usb424,9514";
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethernet: ethernet@1 {
+			compatible = "usb424,ec00";
+			reg = <1>;
+		};
+	};
+
 	port {
 		usb1_drd_sw: endpoint {
 			remote-endpoint = <&usb_dr_connector>;
-- 
2.39.5


