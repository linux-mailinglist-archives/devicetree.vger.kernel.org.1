Return-Path: <devicetree+bounces-167567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F48A8AC8F
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 02:18:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FB073B937D
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C9C157E99;
	Wed, 16 Apr 2025 00:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="KQo1zEY+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109E9EEA6
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744762704; cv=none; b=jARAzXQDww9VAvjRKxmwYdzLe9TWGl7EbVIvvzg9/u76DSaYnJq4qzLKFXMth34kthi97ERwnzCEGP1JTFlh2pAKr/+bULNIHAaGp3GFkKyz1kBNTNyuZTSgAYFSPplgF44A37Xe/4tDSDpgl0uAaKUQ5dkbjPIt7eLs+5UCH6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744762704; c=relaxed/simple;
	bh=Wqjf8MiF/JedM/GbG2WBnj+HTu47AspLOdmi+obilKs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qDrIDZ1XPeA8yrpiMwD9vc1jbKjVie9+4gVkzrXULUd9Cc1ihYefKMMne2W29I4peLWmQBjj/faPzF136d/QHYvMP+ZvrvwYn+vbX8RN2UiIN6aHd/ymhzKNIAVlDVkvTzOZaRMJYBy/MBGP99wo/IyYgyDIWYREvD9bFR+7PYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=KQo1zEY+; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-af9a7717163so6383262a12.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1744762702; x=1745367502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FHHVQpsIbnuDeKLq5XWbb0Gf2JvVP4rP5NZ4ZE1yCzU=;
        b=KQo1zEY+kE2r+jVTshUPdSf5jmwM7BpyzoXO4X0vbLuVGm4IFY+uxE5jBHJGt37B+x
         8uXk5sFZ6L2tRieyKj3SWjqLfaLlnIt0rzO4ogDPIMtKp0KaRnFWdbEPMIj5ZGtDteEy
         Not8M6sVnxpSCKDzUDUpXvbNh+2TM1i8wH1RQ7pfI8dZmxjuya19MtNtt/7ru/QcfsR4
         46fq3PYYjw7CCFUy+HU2teyoqgGmfpXlHQxG7pDM08uiXYoQVnkGPjeXGx2rG31PQOIV
         DiD6Mpk7rj97ctpQytJK0DbJnXXjMClusp4M/LW2sZab/of8qz5DX5e8IoFEcRHnNYmt
         38ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744762702; x=1745367502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHHVQpsIbnuDeKLq5XWbb0Gf2JvVP4rP5NZ4ZE1yCzU=;
        b=mr5wMChq2gyJtFWteors9Weg/qwHW8EqfNkry5JB+iKWa69bVvNGWzH01D35xNja4s
         ABeKhdVvfTmIVbG/xQRMWriNtC8VMzE2FuuKLxd6JOPpm77EA1HhXDD9UwStkGEzYG4d
         yMGBdcrXfIM3Mgcm/f17NNq46ehDCDoe6VlRVPm2XbQ/CBepUoQ7kTlqkZxBhsqmQir4
         82cM8BcIM9m07Ep7fP/4W7s1OOM+0FcVzvoAOmwZe8HKjuL8+18Mn7QOh5TeEzMV0F3S
         UV+wdPBXAUIx3Xz2IxSQlM+oln7SzWIOPSJvWdTyGLcQ81tiWJfWKDdr3or7xsiYx28b
         Czyg==
X-Forwarded-Encrypted: i=1; AJvYcCWXSRIaDiw4edmEhmK62yJO0befFuSWZw3fu1T4pQaZaczlZ4dTjgwzUlaQrXtuheZopGHa9nT2gWOK@vger.kernel.org
X-Gm-Message-State: AOJu0YyhWUC1QjVGs9ppmUQuTArgkGYWvRFsE2M0Aq0PCpn03A/a0sjF
	n/3/xL9Btg6THh/yTooFNMuO/xs1dUsetxHAcmeWlBY+oVvBfDk+Nf11/PN1S6Q=
X-Gm-Gg: ASbGncsSKKhgzGXeeZgT7tAFuYOh8TeQXUoclxnyrKEmGDXeSJly/A6tAY0ibUTS3FA
	CH3zhz/UWcADXeB3SUbQvhjz1fbhcyFAcrr4jXK0d/DOvTh80Vs6gBKi7/w14hE9hh+RFF4I7Kg
	in7lUsqN21KfkmgO4zrPMIwQB0isvKwxMZW3zKRtTP2X2/XkynfiUrRuU7NMj2Y8KtfRUXSf+DY
	lLai/yPvR/oev6gdloWAmT+/B9jwQ8YKnvz6e15jGFPObAd4DuNch2OaIT8WHt1+2dFPDdvSjDS
	wi0pJuI+GLFTNOxwya+SdP+9asT5xuxmQmaXU4OxW5FcGeHBZ0K6rGUjFOwBRNleANa360ERlGc
	DIwB9ezKf7dkK69IxxgoaxiuIem4V49mjtYfYUw==
X-Google-Smtp-Source: AGHT+IGQXrJZHPMM6LWgvsAdy/QqF14UAcREUTDQh9qmmvkciafZVu0XO4QDGktN8+p6wVAyj4lUMg==
X-Received: by 2002:a17:90b:2b88:b0:301:98fc:9b5a with SMTP id 98e67ed59e1d1-3085ee93fdcmr1396898a91.6.1744762702268;
        Tue, 15 Apr 2025 17:18:22 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:ef0:9d76:c8a5:f522])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-308613cb073sm211726a91.45.2025.04.15.17.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 17:18:21 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: nuvoton: Add USB Hosts
Date: Tue, 15 Apr 2025 17:18:18 -0700
Message-ID: <20250416001818.2067486-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The npcm 8xx chip has 2 EHCI and 2 OHCI hosts with driver support
already existing in the kernel.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
 .../dts/nuvoton/nuvoton-common-npcm8xx.dtsi   | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index ccebcb11c05e..b2595f5c146b 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -63,6 +63,34 @@ mc: memory-controller@f0824000 {
 			status = "disabled";
 		};
 
+		ehci0: usb@f0828100 {
+			compatible = "nuvoton,npcm750-ehci";
+			reg = <0x0 0xf0828100 0x0 0xf00>;
+			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		ehci1: usb@f082a100 {
+			compatible = "nuvoton,npcm750-ehci";
+			reg = <0x0 0xf082a100 0x0 0xf00>;
+			interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		ohci0: usb@f0829000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0xf0829000 0x0 0x1000>;
+			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		ohci1: usb@f082b000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0xf082b000 0x0 0x1000>;
+			interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		apb {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.49.0.604.gff1f9ca942-goog


