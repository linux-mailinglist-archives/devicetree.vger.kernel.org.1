Return-Path: <devicetree+bounces-168094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3642AA91652
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 10:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 332477A3AF5
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47C1222E400;
	Thu, 17 Apr 2025 08:18:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E132F205AC2
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744877903; cv=none; b=eyRkjpAEV1Mmen8C2Z5OMZLD/3m1nIE1MgK2q9HcLh5vOZ8peF86IJ4PuNRU2HN00ediXT/Gtq+E6QBnbUl6eINHF5OvEFiSi15pI8eA3E/T54yG2EDL4ElWnkd2t2U/im5dV+CASK0ixD52eBpbXykU1X0IT3CBBt/BUgY1Bbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744877903; c=relaxed/simple;
	bh=fW0TQ8nOnU4Jx4AoHnkaEvv/lfcuryOc9/dByg6Axvg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IgbYQTT6EwpH1JafXU7QjLYznywOUmQdxTkdPJwrxclmMZl6JJED6d/hXD8cU5q6b4xYaX3PH73VYGl3lzzAKeLK4E1gBFkUVJ0uckwMxL3dcmeMqLNUPzt6p2a7RYmDH9GhkUwkU8Xm47mZeh9hJ+azlGKsQ102nHfRvfZ3CPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tlvince.com; spf=pass smtp.mailfrom=tlvince.com; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tlvince.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tlvince.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c1ee0fd43so423639f8f.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 01:18:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744877899; x=1745482699;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vhbx+bCAusBuhB4YSBmCMqVpTWQm/Knsl3YIFunD95w=;
        b=Wei8GFxttmNTUaHH0jhU/4BXpZkRRtDqNc6wtvDHSSC9fVMQTbeT5kX0PILtUEPkc2
         WlKkXHBssUi8vM3LMOp5xKSV7g9YUYqumS+NYZjuVa0VouWB9puLF3U465mBqlseM95M
         EsG8ewqOYGDnsyB5yuZFolohVW6k9d2ViiqVVdY8030lt0t1WldWm/L83I1jBDlSizkZ
         Qqxai1o0mg1HhDGHd+ft8sG/e5TJWJ1ZapdjDIwKBT+YCQcY+q7Cm7m5cKm+D7r9jBHk
         Ngx3oE0nsE/VLV4dta5wKcMRjt7PYFCG2rIksUhcjgpZZB5pXNaUSR8RvzEhtBVyTca3
         B3pg==
X-Forwarded-Encrypted: i=1; AJvYcCVfQd3/eUnObOtp7tXQjv5ex3Mgy8nP88SBRwKRKWNcn26+GVGwn+vsIyUkRSxmoBe1esYViAlMTjNJ@vger.kernel.org
X-Gm-Message-State: AOJu0YygnCGwdfTz0/JpbVRlL3dS/lH5EsoPMJWw6hfnPwctAUTseQw3
	/doC2wh9JEKfj51/DycOlWYn/zGf7B8gf5n7ZDAopzSvAlfTooth5FmA9zDy2WY=
X-Gm-Gg: ASbGncvNmpOTWPOG6ZwmtVsy/sUUzw1WccrvKwWExDT0u4+jPhyswbP86o54lHFkLJg
	68921em83Ky63/V9iAg2bZrmFLzA+3Dn/70omMzbOE2R3UnXzte2trelhfEAVSuQLlp+EM7/wCD
	27VAl3GT8gICWiMFOKHh7zifyiB03fMu9XlFAnorYd49M28epIOaCAMYitQtqKieFgkJQZN9BOE
	YQ8+M7nlCQ71CFoauWan18eqjmCy89xoUFSq2lyZ8nU+aBVW8SbhP3o6qMWXH+86XLTdm7SlhSG
	XGN7hXsc49DhJ+9FH63fGfd/H4JjR8CbUe8MVODUguqf8FyOQBljvdgBiEqlaLUAogKQI050Hn3
	MjxLSniad2NGh8g4/NS1I+IrnFHDghQ==
X-Google-Smtp-Source: AGHT+IGvy0Cgkf7H1TJZ2HluLS9omEvNiYqpVykTs/EUqIvX4ArBY7w7s0uPn7G1fXY2icsH1GaztA==
X-Received: by 2002:a05:6000:1a88:b0:39e:dd1e:f325 with SMTP id ffacd0b85a97d-39ee5b3623cmr3756603f8f.31.1744877898995;
        Thu, 17 Apr 2025 01:18:18 -0700 (PDT)
Received: from framework.filo.uk (lewi-26-b2-v4wan-163478-cust494.vm4.cable.virginm.net. [86.21.73.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae978018sm19055720f8f.49.2025.04.17.01.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 01:18:18 -0700 (PDT)
From: Tom Vincent <linux@tlvince.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Tom Vincent <linux@tlvince.com>
Subject: [PATCH] arm64: dts: rockchip: Assign RT5616 MCLK rate on rk3588-friendlyelec-cm3588
Date: Thu, 17 Apr 2025 09:17:53 +0100
Message-ID: <20250417081753.644950-1-linux@tlvince.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Realtek RT5616 audio codec on the FriendlyElec CM3588 module fails
to probe correctly due to the missing clock properties. This results
in distorted analogue audio output.

Assign MCLK to 12.288 MHz, which allows the codec to advertise most of
the standard sample rates per other RK3588 devices.

Signed-off-by: Tom Vincent <linux@tlvince.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
index e3a9598b99fc..cacffc851584 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
@@ -222,6 +222,10 @@ rt5616: audio-codec@1b {
 		compatible = "realtek,rt5616";
 		reg = <0x1b>;
 		#sound-dai-cells = <0>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
 	};
 };
 
-- 
2.49.0


