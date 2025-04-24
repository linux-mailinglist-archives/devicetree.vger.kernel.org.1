Return-Path: <devicetree+bounces-170290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC8A9A6C8
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5E2B1B86E7B
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A27224AFB;
	Thu, 24 Apr 2025 08:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JdBbeoCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1285B221F3E
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484433; cv=none; b=ZQhLdf88M8snJbekgC8UuiAq9U39JCP4jYIE8Q1M8opTTtW37tgfFMfIhZVklpDlI4mo9C1JkFjbhFGN7/ohz1yNKCsfwNoND7FzA6i6q/vqo520nYaWnrj6168XhEIImOaR5Y5ymUEi3EIAirPFMghS0RitF/3LmbfBCcjDGag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484433; c=relaxed/simple;
	bh=szrQlU6xadPWyKkNCzJXlQqt5Pvn3jWxnIR6eR4Hu3s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Egla4kz4rLb2MQtGA3KvMFzreiAjcAJl6Vjro0QhMChtH6DEsajI2L1oRvg2AOXL0rKzt40Lc22l+Ff6yBeA6l+rojRKtDy/SEPqAsUZQ4Ok3egWz1e46Me7JyqaJnv4X7XQgfhHn9eSe1nj5ZxuFURKOf2O7S6FzkR3LegG+bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JdBbeoCT; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac3123c0ef9so7666566b.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484430; x=1746089230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I07L8B3Ds4E7gZ4sAboS30rVJP9KR1SNOC0M0BEiQyU=;
        b=JdBbeoCTqqfZ5/zT5wubD6JagdexLDiU9xlLXyuOk7KNkoT0qYTEzJ3+nZo/iVSaSt
         oDfmltUvvvcVtzFUtCo6Wnb7sOsV8JW4c0glwZWb3ReJFUwIXxF2LEp/Bfnn3e+j7icN
         iESm3CptRQhGjGp/XFd/4601nMyBduBNbKVaSHIWjuQwusbbAGH645EmmJqLpKAlxgot
         7rcY+AKrusvDeTVuokQ8I00C86F/j+7D25WFDcOIWYt8xo07BEt2lnABJ0I9brxykyR7
         VdnfwrFm2u7vJ27HjsKJF1kbymskYBeAyrDO5Io0q3t0DbxKYOYjgSLtsym4AsTgxi2E
         qlvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484430; x=1746089230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I07L8B3Ds4E7gZ4sAboS30rVJP9KR1SNOC0M0BEiQyU=;
        b=GVWfWVgJu2wkzkea/rupUhMmmQDTQd/hiOrAJHdXFngGyJEUupyAHbvAgyYRlgtAGd
         SNjf0G7aRs7Dt+4CNUjQ4F34L8bvIbT3y7XRZBe8WRy2EEvMx4ZMpTlhmDND2f/NrAwP
         kBn5nnUa6yL+WESjuQ2WqeYenbgGjH/rwUrG94eURIij7O4McA1qW0qkiHjtPNrfShv1
         2ilQ6TWv1rI/tXrrwGZgq5KBlkMj3lfT64YaKOTMO2auWq+3SpWwfQlif70ibTahOtSt
         R6Rm6JZHbgdFp24yylSWsFPd5m/bR6oEcHI1CU3GUbqau6LTWB98SUANKuoWWDgodJd9
         9IvA==
X-Forwarded-Encrypted: i=1; AJvYcCXSJzwIT3Mbq1QNKNPsA7amrVM0eEcQx3BIf0bmRUcolPpmb82aLMut0XK60TIklgvC6aMeeTPTcCX8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyzel80kriPORI6pKNwDSosYpdFGtQpWsOJKzjaUZWw+kMud9U
	YAaqcDAqZ1JVpyrF2CKLq+00jJ3Fkn+yd6OpjI0iGDWXvzYMqLJubyfDabNt4iw=
X-Gm-Gg: ASbGncuxvCVJp796Kk0GolQpf0viWxCyXnjt6vE2Rv6eWBNscEXWBTwIaUs+sFZpcj9
	6F8gCSH66ThOlUOeWnfoIpOBpG/nVG36sRm79ZS+tl+3kc3CCN0P+vttCDqw38w6+0FIIt5Sh+n
	Gt7PGdcHGTwZVBYWTAMgW+nI61YwBrjCib0pLXqm0+JWRMn35JO3ZayhB3bRNfVvf9EakmBcmfv
	ZErZPDBFyXckECE4aOnSQg5Q+kVvQd+ObAe+vYGZ4Qus/Dhw220Wtg6gDcSiH3cs/WFYHl4dQGz
	LJpFz9U4j0I8uhOLeUV7PEVUBab3GNHGqZrpB6k9FIkuKX4IKQ==
X-Google-Smtp-Source: AGHT+IG690V/118jVCZXhJGEzeHLok6tjdjixbJjju8hozYkNfl4sz7fKA7GyqSoTyecOpVPS8y/SA==
X-Received: by 2002:a17:907:2d0f:b0:acb:6081:1507 with SMTP id a640c23a62f3a-ace573af8d3mr64249266b.10.1745484430243;
        Thu, 24 Apr 2025 01:47:10 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59c22d9asm69948066b.124.2025.04.24.01.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Marek Vasut <marex@denx.de>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@dh-electronics.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: st: stm32: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:06 +0200
Message-ID: <20250424084706.105049-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  stm32h750i-art-pi.dtb: bcrmf@1: $nodename:0: 'bcrmf@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/stm32h750i-art-pi.dts            | 2 +-
 arch/arm/boot/dts/st/stm32mp135f-dk.dts               | 2 +-
 arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi       | 2 +-
 arch/arm/boot/dts/st/stm32mp157a-iot-box.dts          | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-dk2.dts              | 2 +-
 arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32h750i-art-pi.dts b/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
index 44c307f8b09c..65975ca10695 100644
--- a/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
+++ b/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
@@ -167,7 +167,7 @@ &sdmmc2 {
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 	};
diff --git a/arch/arm/boot/dts/st/stm32mp135f-dk.dts b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
index 19a32f7d4d7d..9764a6bfa5b4 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dk.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
@@ -421,7 +421,7 @@ &sdmmc2 {
 	#size-cells = <0>;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
index 6236ce2a6968..c18156807027 100644
--- a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
@@ -287,7 +287,7 @@ &sdmmc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	brcmf: bcrmf@1 {	/* muRata 1YN */
+	brcmf: wifi@1 {	/* muRata 1YN */
 		reg = <1>;
 		compatible = "infineon,cyw43439-fmac", "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpioe>;
diff --git a/arch/arm/boot/dts/st/stm32mp157a-iot-box.dts b/arch/arm/boot/dts/st/stm32mp157a-iot-box.dts
index 6a5a4af25bd9..84497026a106 100644
--- a/arch/arm/boot/dts/st/stm32mp157a-iot-box.dts
+++ b/arch/arm/boot/dts/st/stm32mp157a-iot-box.dts
@@ -46,7 +46,7 @@ &sdmmc2 {
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 	};
diff --git a/arch/arm/boot/dts/st/stm32mp157c-dk2.dts b/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
index 324f7bb988d1..1b34fbe10b4f 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
@@ -115,7 +115,7 @@ &sdmmc2 {
 	#size-cells = <0>;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi
index 343a4613dfca..aceeff6c38ba 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcor-avenger96.dtsi
@@ -435,7 +435,7 @@ &sdmmc3 {
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 	};
-- 
2.45.2


