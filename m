Return-Path: <devicetree+bounces-167584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F93A8ADB9
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 03:59:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D87A43B0786
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 01:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E183C227E86;
	Wed, 16 Apr 2025 01:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="bMYlXTot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D42F1DE2CA
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744768750; cv=none; b=o7ms2umdyApYJkryGXtKsm1JIe3XlT9W0PBFMkPQSTxNbFvlJkDFOkCOXuacwlgQUKp9VjORpuXMJj7TYWR/bjmmGcXGs9/JSf5hyZR8sbY11KSM3gJza9H2Nu2kEtMaIJhc9Tz0qmCqU6oPBQ0S7QI61cCkOBjcJTxGmnb4hso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744768750; c=relaxed/simple;
	bh=cCgFpxiwJ0gCPdeUMaKHrmAET+N2uNHpi4SiNW037bI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZscuDptMOEt3Igm4AhbODa1Nf+Oh0bUmGZ4ngXwivK3ReX7XjD4+MVq45sHaD0g76fOwET+AaDkT9nmY2Qc09SR5MKBvVGQGVPxJHgQfkdLCDg0zkvIMcUjIfPt93TBIXWEFx6wjc7kcZTkoLhGA/EQz4s4r/MVuAxBVOHc+kQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=bMYlXTot; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-22409077c06so82248325ad.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 18:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1744768748; x=1745373548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e82Zj2e4FwI3zvSpsxcQPHmRy7+tI4Kl1Q4Ap45I6sg=;
        b=bMYlXTotE6hDi6j3SdG3PUqI8e3rTKsB+hGofqJl63fdBK4aLbA1C8ewXyQHHF4hlc
         Ulmy/4qk35QXB7Geg7wIX2D5AxzbSFaFIwRkETba58nCeFVl98ScuAD+uWHWtS5f2fmA
         I+yZbVnxP7TqP0fek/40fb1pC35lGrpb2FbL7sKjeC+xeoGiHacls4XXCI7MiBUiYXK2
         QwWHuAalt7D5zBcQrobtlG7Eh07W3epVm9VTlgw0A3tlOL3CYRmjo22VKeKHOp2C4w89
         1/Cj7UrzaCIXs/Idyws/334eVHxSossn5z2ZwsKdMfVMmE7l2BcVHcSNHp+/Q5FJkrDF
         eG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744768748; x=1745373548;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e82Zj2e4FwI3zvSpsxcQPHmRy7+tI4Kl1Q4Ap45I6sg=;
        b=TW+uPKJ13vlJo7Ofu8alR5l1WxW67Bmtbb3e8bQI7hcth5gFY1yo5Uu4HGZan9dqpn
         DuHN4vjc3hiz6cLP597MrKsqZZXsqjx/tDxcCrZ30XtlUR0vAbobXYqVyYfYW/k5xH0i
         Noqr2iq4Bbtoz9JO1HC0AsXivIZvI9tnBooisOz5ooxG5Kh81wD9o/NpwH212/jX3BPM
         EStgTRwHGQoJbPiaSD90z3t6mKJom8DJeldfBGXNLa8chnPiRXSxu9wNg/r64aSP3ad/
         LJov5QjFEcT520JblvqBbTlO7zJXhsIwsoF98rpLSCUB2zTLyT1TE4Ajhn3ABuurfzxp
         qzeg==
X-Forwarded-Encrypted: i=1; AJvYcCVBPqHvTFg5LbgusXWu4liBimRXhauc3kl/dXCJOf2mh8bbnkLlN74Bmk07jioO1YJ3t+R//xI/ZABD@vger.kernel.org
X-Gm-Message-State: AOJu0YztO4qwEl9rAOZE85h01BYXBQMKVHsv/JwjehGAJpwbiDWR96PG
	utxyk/ocjsdayhcaPPerWk0us349ieFGZW1ZayLrFB1ZUrunjdV2nBgmcZ4il79yyeSD2bFrpus
	TPXM=
X-Gm-Gg: ASbGncvKeTWRDer9NB7dz6JRFECDuKrMVse8csn/XYsniTPlyWJxoZQrmXEyfTxBlcd
	VuYJ0+lYY78nFKkOemZKfd2+aVD9f8kW6cnYzUdohBUZksnDBuHi4RC4EUQT3xDYBj84qPW/t2Z
	r5gpue38bPSwmuna1m9pnt7IdtrtWuvJsNenq1AXvwtjdWbOAazQ6MAwMLcvvxuI6PewmfVmLl1
	5CIGrUm+w+5yLjExwkkrxD1MKTQBRCReVq6yzwr8xfJ84oes1dThs2MUQhawdVHvYV8ZgsXGnwe
	DxUOQ+mDeMxBkgLjonpY6MJ4BH2qX4KoUwoS7tBB/mJEx9/eqRpgka/WPjugkf5eLGT8bBSIZKp
	389gxGpgqPf5kxhlNxK6/xDq4j/w=
X-Google-Smtp-Source: AGHT+IEbUxLXqkmN9eB9Y2TwjT0iKR4gtJC2qNjvOo3KGkymZjh0chvXTjMdxbdfvQ9cGDKgkpZyGA==
X-Received: by 2002:a17:903:2c9:b0:224:194c:6942 with SMTP id d9443c01a7336-22c35973f06mr387275ad.34.1744768748194;
        Tue, 15 Apr 2025 18:59:08 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:ef0:9d76:c8a5:f522])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33feb116sm2279845ad.253.2025.04.15.18.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 18:59:07 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH] arm64: dts: nuvoton: Add pinctrl
Date: Tue, 15 Apr 2025 18:59:02 -0700
Message-ID: <20250416015902.2091251-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is critical to support multifunction pins shared between devices as
well as generic GPIOs.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
 .../dts/nuvoton/nuvoton-common-npcm8xx.dtsi   | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index b2595f5c146b..dd1351698e77 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -207,4 +207,69 @@ watchdog2: watchdog@a01c {
 			};
 		};
 	};
+
+	pinctrl: pinctrl@f0010000 {
+		compatible = "nuvoton,npcm845-pinctrl";
+		ranges = <0x0 0x0 0xf0010000 0x8000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		nuvoton,sysgcr = <&gcr>;
+		status = "okay";
+		gpio0: gpio@f0010000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x0 0xB0>;
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 0 32>;
+		};
+		gpio1: gpio@f0011000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x1000 0xB0>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 32 32>;
+		};
+		gpio2: gpio@f0012000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x2000 0xB0>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 64 32>;
+		};
+		gpio3: gpio@f0013000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x3000 0xB0>;
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 96 32>;
+		};
+		gpio4: gpio@f0014000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x4000 0xB0>;
+			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 128 32>;
+		};
+		gpio5: gpio@f0015000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x5000 0xB0>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 160 32>;
+		};
+		gpio6: gpio@f0016000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x6000 0xB0>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 192 32>;
+		};
+		gpio7: gpio@f0017000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x7000 0xB0>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 224 32>;
+		};
+	};
 };
-- 
2.49.0.604.gff1f9ca942-goog


