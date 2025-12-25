Return-Path: <devicetree+bounces-249658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E747CDDA8E
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 11:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F86F305A818
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1331A31A053;
	Thu, 25 Dec 2025 10:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gCj6forG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EBC21CC60
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766658382; cv=none; b=ftmdjb4oCWio6AjAb9Qi0KvWhJrKsFnrB6MF2rG89wmTqnza7nPeKe9LtsOE+tWayBvpabDbXsZSyiD0OoJt7GWjtv3ZVtPb6yfDTfb0iM8CLu5rsCejhdHHX9OmYHDMpqNwZeY7pNi0rJaDD4QXGS6WhijH3SS9BnpDdCVlXPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766658382; c=relaxed/simple;
	bh=XgiT7o9sIoPT2NxgqWtaJ1fVJAjUOhvncV6lWTyMGlA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZpTj9luXMdo74UGS/HDrf2bY4nlhI4MeRZfO1kPVWOnyxZFsTH6NvGx1Nc3x6RnQyLgY1ij/b6pJzemXwJp55TyFYArrGAKOCl53JAmcAKblj5hwN3P+7nV0iwRd20UdnJQ8sqpRdizlUChhaBn8jZ6Cj180UuXazUnRUcSOeMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gCj6forG; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64d02c01865so6963569a12.1
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766658379; x=1767263179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p98EHDrlfxc1Mpcl2fjHHNglQmuITwMNLij1fvJce3I=;
        b=gCj6forGu+11yn43QRuT6IyURWvReDv1Bn+YPennC8x1qFCWP6Qp1klTSeNCutp5d4
         epSLvsRu7KD8H3ktxllN9YrgGQsij409W/x8GCp24dlD4gpIo+LFe6Res0/q+SW6GruL
         ygsRd6MXc1nYJhv38phU0JPs73A/173q+4Da1XYPuYnxW7ZhYxBDX5odnR9lBPprwwFO
         9+XO9ICBcYIKlRnwyMy3iK/P3rftcfocLGnrvHwlMkrCx6VXgrFPSi5ziASRnchncLrM
         2wrnfDhHBeleTJXjyrXJKspObDr4spuxsWH6I1CATjYFRBRaFu5BwD7ZzFgZsww5AL4t
         miug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766658379; x=1767263179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p98EHDrlfxc1Mpcl2fjHHNglQmuITwMNLij1fvJce3I=;
        b=Nv0ooVtHgrqG/w33Se+f0FSjpBpHW/onYWNUbua1eCyu4pRkEK5ewItHvqzaROke3f
         pwHnsPLA8Ji5Q/gKF/oS1fmXIshcNNT32jkKNjaN+KBu2LW4H4acWIAXxJJse73jOUmD
         rbquyLiChJPDu7JnV0ukR80mXvgbTgZnmnJQaZzKX3g6xCxFuDLXQcRrReNn2aZPzAhL
         TURzr0VF9D5t2iQSLtgh9NL96IHhDL2cjgmVd3XvKTYiGxQ3tZp3ZbCq+2/+kW4q+LOh
         39eqKG5iSzK3z/o2W+9e+JXucco5h6z8sUf7JWPQcnbebY7ouH+Z72i1/8e4rwGfRNmG
         czXg==
X-Forwarded-Encrypted: i=1; AJvYcCUOvcTf3Yve+gD7jHW4IveMOqPgfm7WLC7uJR5opPtvJH3q8WeLQnKZ+rddQmOuvRS796vU7TVP99sK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhdx13h7vbefRJLIdE5XOxMlxLy0lTTvzntBY81VYVDuBkZVeH
	jvNw+HjdxQGki24xRAIhw/3/Jx10o9jyIN7WUR6QIu+M1XivOoPgtQRS
X-Gm-Gg: AY/fxX5nsPXWglq7QVzmIWT1VjTv+hC5Uhg0xCqJ2omtFaXXUJREW6T/K16nVeSyMTf
	Y2yA995IozukJSdBpemXaAT/MaKGE/oTBV6A03DX+a6ROU8LLnrhqE52GM7YW7BLTxr61tChGC1
	gVEL3fSIRtpZFjkp7c3RzaFuzp5No9tLv60j7dsDSuRClMHQY49WPA3a95J/keZDhYDsM2owqRv
	AO4AxHZK6b25h0iTRzF9L2hZDE3r8GcgSQZWL3m4qTKYV09914uIozDMpwCHiNjJhLrxmD5N/C/
	a9US1og7Ktp9I+hsUiHecepnwrA7PMfQWq81L0Zvd86r4bkU8/NeaHJsDRCs2NoNF/B3S8Ts5Vq
	fBO0Q8mNq/hnZzY1zEajucfUVQsECrRAQJmL55QQcoCtGhkeuEtqefhSdH2d5NXCR6xYqjuELE4
	LtsP12aMOtQHZqExMEZdvmtSKo6xNKfE4x1BNexAuOXOwo6dVDBP7QmwUn9RuNvj2F7aU=
X-Google-Smtp-Source: AGHT+IGYBVpw0kYjxRt40avCFzl/pEbNgLZr1f0D8xUD5sov7X5pMtkVIPJug9QMK9TGrHu2t5/Nsg==
X-Received: by 2002:a17:907:7f89:b0:b73:8f33:eee2 with SMTP id a640c23a62f3a-b80371d3877mr2123485766b.48.1766658378448;
        Thu, 25 Dec 2025 02:26:18 -0800 (PST)
Received: from localhost (dslb-002-205-018-238.002.205.pools.vodafone-ip.de. [2.205.18.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5c4dfsm2028659666b.14.2025.12.25.02.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 02:26:17 -0800 (PST)
From: Jonas Gorski <jonas.gorski@gmail.com>
To: Kamal Dasu <kamal.dasu@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org
Subject: [PATCH 3/4] mips: bmips: dts: fix qspi interrupt order
Date: Thu, 25 Dec 2025 11:25:32 +0100
Message-ID: <20251225102533.30772-4-jonas.gorski@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225102533.30772-1-jonas.gorski@gmail.com>
References: <20251225102533.30772-1-jonas.gorski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The binding for brcm,spi-bcm-qspi requires the interrupt-names in a
certain order, so reorder the interrupts to match it.

Fixes warnings like:

arch/mips/boot/dts/brcm/bcm97435svmb.dtb: spi@41d200 (brcm,spi-brcmstb-qspi): interrupt-names: 'oneOf' conditional failed, one must be fixed:
	['spi_lr_fullness_reached', 'spi_lr_session_aborted', 'spi_lr_impatient', 'spi_lr_session_done', 'spi_lr_overread', 'mspi_done', 'mspi_halted'] is too long
	'mspi_done' was expected
	'spi_l1_intr' was expected
	'mspi_halted' was expected
	'spi_lr_fullness_reached' was expected
	'spi_lr_session_aborted' was expected
	'spi_lr_impatient' was expected
	'spi_lr_session_done' was expected
	'spi_lr_overread' was expected
	from schema $id: http://devicetree.org/schemas/spi/brcm,spi-bcm-qspi.yaml

Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
---
 arch/mips/boot/dts/brcm/bcm7125.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7346.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7358.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7360.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7362.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7420.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7425.dtsi | 10 +++++-----
 arch/mips/boot/dts/brcm/bcm7435.dtsi | 10 +++++-----
 8 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/arch/mips/boot/dts/brcm/bcm7125.dtsi b/arch/mips/boot/dts/brcm/bcm7125.dtsi
index 92963a1998b7..dd1cc3cda694 100644
--- a/arch/mips/boot/dts/brcm/bcm7125.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7125.dtsi
@@ -252,15 +252,15 @@ qspi: spi@443000 {
 			clocks = <&upg_clk>;
 			reg = <0x440920 0x4 0x443200 0x188 0x443000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7346.dtsi b/arch/mips/boot/dts/brcm/bcm7346.dtsi
index 42125684b523..21c7418aaf0d 100644
--- a/arch/mips/boot/dts/brcm/bcm7346.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7346.dtsi
@@ -476,15 +476,15 @@ qspi: spi@413000 {
 			clocks = <&upg_clk>;
 			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7358.dtsi b/arch/mips/boot/dts/brcm/bcm7358.dtsi
index fdc52acab8c8..63b3a42a8dc6 100644
--- a/arch/mips/boot/dts/brcm/bcm7358.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7358.dtsi
@@ -344,15 +344,15 @@ qspi: spi@413000 {
 			clocks = <&upg_clk>;
 			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7360.dtsi b/arch/mips/boot/dts/brcm/bcm7360.dtsi
index e8b0b0ff7588..9d89da400104 100644
--- a/arch/mips/boot/dts/brcm/bcm7360.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7360.dtsi
@@ -395,15 +395,15 @@ qspi: spi@413000 {
 			clocks = <&upg_clk>;
 			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7362.dtsi b/arch/mips/boot/dts/brcm/bcm7362.dtsi
index a1ed0b193389..a0d15fcd3b81 100644
--- a/arch/mips/boot/dts/brcm/bcm7362.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7362.dtsi
@@ -391,15 +391,15 @@ qspi: spi@413000 {
 			clocks = <&upg_clk>;
 			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7420.dtsi b/arch/mips/boot/dts/brcm/bcm7420.dtsi
index 62e7e1602d4e..a38041451faf 100644
--- a/arch/mips/boot/dts/brcm/bcm7420.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7420.dtsi
@@ -313,15 +313,15 @@ qspi: spi@443000 {
 			clocks = <&upg_clk>;
 			reg = <0x440920 0x4 0x443200 0x188 0x443000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7425.dtsi b/arch/mips/boot/dts/brcm/bcm7425.dtsi
index 71422fd2ecc9..c2b3ea21410d 100644
--- a/arch/mips/boot/dts/brcm/bcm7425.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7425.dtsi
@@ -487,15 +487,15 @@ qspi: spi@41c000 {
 			clocks = <&upg_clk>;
 			reg = <0x419920 0x4 0x41c200 0x188 0x41c000 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
diff --git a/arch/mips/boot/dts/brcm/bcm7435.dtsi b/arch/mips/boot/dts/brcm/bcm7435.dtsi
index 38eea5373b66..826731515f0b 100644
--- a/arch/mips/boot/dts/brcm/bcm7435.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7435.dtsi
@@ -503,15 +503,15 @@ qspi: spi@41d200 {
 			clocks = <&upg_clk>;
 			reg = <0x41a920 0x4 0x41d400 0x188 0x41d200 0x50>;
 			reg-names = "cs_reg", "hif_mspi", "bspi";
-			interrupts = <0x0 0x1 0x2 0x3 0x4 0x5 0x6>;
+			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
-			interrupt-names = "spi_lr_fullness_reached",
+			interrupt-names = "mspi_done",
+					  "mspi_halted",
+					  "spi_lr_fullness_reached",
 					  "spi_lr_session_aborted",
 					  "spi_lr_impatient",
 					  "spi_lr_session_done",
-					  "spi_lr_overread",
-					  "mspi_done",
-					  "mspi_halted";
+					  "spi_lr_overread";
 			status = "disabled";
 		};
 
-- 
2.43.0


