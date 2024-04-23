Return-Path: <devicetree+bounces-61807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D11608AE34E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 13:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8789B2854B7
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 11:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E80757EE;
	Tue, 23 Apr 2024 11:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BIVCjGpU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E24D762E8
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713870203; cv=none; b=qY1vlqtB+P+w2GRtPECojBagmencFnUWUyrDwatiK5t7i/6XJ4jIFWqWFc7VkHltVFZh58bTJYYQmQheRRl7qcplR7a2/Gvc8Honhde/zNY+rOVOsG0e34fp3zSmDKlnXYDao7loFe+thi6LHb238IPY5SbVq4GGv2TRiITzizQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713870203; c=relaxed/simple;
	bh=sf2Cd2ifDkzY/hzqn8cpJGUWwRYjwAJ4MFw6hwzHc2U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Dsf8hoM8ypuW6OllxDh/pnijMiiusbIFk01VvyUOtFzZbC0GCyoQEvtTMuOd5XSvz2iMdE2KpLejDKNpSmEBLXy544VTz7PO2Y4hM/domBDQDo6Q0U7XBExqm3J1nNBT3dKQM3xSJtmqfRliNTiCQxaxbRbpACroshjAEV9Y8Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BIVCjGpU; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a55bf737cecso188675266b.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713870197; x=1714474997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=suQfsfx0XfDLtajJq53CjRK2qU0iyazyi3mzkZPE6Kk=;
        b=BIVCjGpUy8AaeQI7hIG5yj1mKzjqotU2HORRdIukGqXAiGcsYpfq6/F6OA0qUZLOg+
         EPiMvLUno89+Z+hAw4GuMBw939/sAABQXDM9MKsxK4mwL3mFuTbam4zbOD/Bz9R26EFL
         MTR6hJ8RG3E/l+JLWm7oVw5gceS0oBG7iYxcaGsW8VF0fe8qtvVYvg0zN9XD/vPLO2kq
         uWRXLhA5TBpZLsq3tktwW0YOuiB+wN/OXGaJjM4t6FtQPxaKOtBssW+y7ZtgFIr4ObSI
         GfpYWk9WFA34XotdNjg/SDJ9Mv6oikh7DFTXx9opPDSppd7U/yMtIw6Zkwg6/9NWDURB
         vr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713870197; x=1714474997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=suQfsfx0XfDLtajJq53CjRK2qU0iyazyi3mzkZPE6Kk=;
        b=CFsnuip46tZ4DpK/GnvWBXvMUtDQtD9ziDhcqsTQuVcr6jV303UKIrdBirdraCrfvf
         RHkO7qzsiFiY1N/bHWuy5C1Dn/llM2iaAn9Muhsuhyz/sRQEooENtD7DUFpvuu7uaLn4
         VHzGJqJcngikhQ5JOXQVzFvU4RC3QOq6KfPMqyp8zk4YFRqxnTRy5p+TcJNjGrvizXJS
         lKYla3mjqAIu1wfp1DBmlEH1Eq7DaDwam0ZxvJYeI5oe2yFzWnyd5vkgWq+o0oIfPC5/
         ShMSUsd9+P+QpmzGnZXb/FiVu2zCoZbf/wCQMWwqAqppPeDI1npkA7L+2XIZ38KJ8e4c
         xzAw==
X-Forwarded-Encrypted: i=1; AJvYcCU3Ln36TWVyJnB0zm+D0kE2OFfoCglX8Uqj0byjUjuAwxbOEzdiCNbEHvo/gLwoa+bbiAU0dyx0wFhMBWqRXCvSXCNOrhsZkWoAHA==
X-Gm-Message-State: AOJu0YxeZTb8ZoS+Xdja9+QthgY5VmXCtb4RKe35hX7P+bJ4zDq7R82d
	LIcPEc1aXjwnHbKoeZcL+00feb6C0U3mj4tw/JVwXx3n0VGqC7gw
X-Google-Smtp-Source: AGHT+IHv+P2G0OR3Cx5px2TP1AQ3ioquImCGwg6nlBqFaf8+DPNIu7+xpPJcZ8r55QAt/HjchGckzA==
X-Received: by 2002:a17:907:a0e:b0:a55:af02:912e with SMTP id bb14-20020a1709070a0e00b00a55af02912emr5180016ejc.8.1713870197409;
        Tue, 23 Apr 2024 04:03:17 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id s17-20020a1709067b9100b00a51bf5932aesm6900880ejo.28.2024.04.23.04.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 04:03:17 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	=?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 2/2] ARM: dts: BCM5301X: Describe PCIe controllers fully
Date: Tue, 23 Apr 2024 13:02:38 +0200
Message-Id: <20240423110238.32148-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240423110238.32148-1-zajec5@gmail.com>
References: <20240423110238.32148-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

This fixes:
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18012000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18012000: 'ranges' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18013000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18013000: 'ranges' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18014000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18014000: 'ranges' is a required property
        from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#

Cc: Arınç ÜNAL <arinc.unal@arinc9.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index 7c8ee2df538f..fac3e9859b3e 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -182,22 +182,40 @@ chipcommon: chipcommon@18000000 {
 		};
 
 		pcie0: pcie@18012000 {
+			compatible = "brcm,iproc-pcie";
 			reg = <0x18012000 0x1000>;
-
+			ranges = <0x82000000 0 0x08000000 0x08000000 0 0x08000000>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			device_type = "pci";
+			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
 		pcie1: pcie@18013000 {
+			compatible = "brcm,iproc-pcie";
 			reg = <0x18013000 0x1000>;
-
+			ranges = <0x82000000 0 0x20000000 0x20000000 0 0x08000000>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			device_type = "pci";
+			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
 		pcie2: pcie@18014000 {
+			compatible = "brcm,iproc-pcie";
 			reg = <0x18014000 0x1000>;
-
+			ranges = <0x82000000 0 0x28000000 0x28000000 0 0x08000000>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			device_type = "pci";
+			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
-- 
2.35.3


