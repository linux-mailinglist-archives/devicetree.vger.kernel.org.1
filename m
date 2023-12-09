Return-Path: <devicetree+bounces-23480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EECD80B59A
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A9D5280F8E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39D518E2C;
	Sat,  9 Dec 2023 17:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BbI3AqKd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C58F51FCA
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:11 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54f4fa5002cso2034551a12.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143065; x=1702747865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9G7cpU+ukIu1B7V2qz7kc1RiGDNV3d/6SfmS5MXR3hw=;
        b=BbI3AqKdoF5ucHA6mH67VF12pIDIkHmMWQnKebBNT8GKCQ2JoIc9UkjTgRx8EJhz49
         mqIKHtNfd5p2tuR/qK0Y7msaRxssnOYQNTZfiAPH4BGjCfW63C1o9t4K9gYjxbLcEojL
         70pyG2ys9fIPel/MRBp5XEYtP32kYr1FIQVm+me4Olmnl7k59IBeRMd3LVud0/rCeMpv
         Kg1KSD4iEQW4CR1/rfEH6l5Cfb0zdyB3gSfQWyKe0lZ1nsyg2L5sgCIC46lw02nKriB6
         GwaSifMS3fcwK3tGU7gtOpZaIiYRdQ9TB17+mNLaNH29EM1LdX6kOyxD6NTyBQz53i1c
         NwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143065; x=1702747865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9G7cpU+ukIu1B7V2qz7kc1RiGDNV3d/6SfmS5MXR3hw=;
        b=PXzudoJio6Qzg/lYTh/p8RrTc+T8vkRaDGiL08J43UUFi8lKuXOjN9+Dur7eThuRgn
         l+OSXvqdddOe/Dnhq5PIX8JyPg7tl5Y39YqNNFMSBjN/NxR3hoZblWeoGI6eouJO/Tnr
         VbObdzxvycgfnCS070oKYR5dpVCyq3ZxRahg+qABPhhGtKguo1m3pfzMPJlwEhTxFu8M
         opTJriKEkc54kkJws7UhP004U87HOQBDtSF7YmId86ry/BWgfb2Yq20vpwFB/RFm7+r6
         1NZUxEUaFGqKAUKMxSWxQ5q0mWf/TqSPe3bjRi0Rc9fQc9qqn8uIKalNgKRKJL7AiRo5
         B3yg==
X-Gm-Message-State: AOJu0Yz3cPKt75f+xR2vhxq67dok5Pt0sj802q9IxMXG+MkM1LBCk8tK
	BjCSUH5sURyzSt8XTZT54KLKlM/jaoE71prU2A4=
X-Google-Smtp-Source: AGHT+IEzPWkzMki8q5Ome70IpK1Tv91BRZgLtWdSdQNa/CjTLYydcL2Yznp39cwNh2g+fdJIMXDhIw==
X-Received: by 2002:a50:cc99:0:b0:54b:3edc:180 with SMTP id q25-20020a50cc99000000b0054b3edc0180mr1342713edi.11.1702143065319;
        Sat, 09 Dec 2023 09:31:05 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:31:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 14/15] arm64: dts: socfpga: agilex: add unit address to soc node
Date: Sat,  9 Dec 2023 18:30:43 +0100
Message-Id: <20231209173044.257684-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "soc" node has ranges with addresses, so it is should have unit
address  to fix dtc W=1 warnings like:

  socfpga_agilex.dtsi:152.6-674.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested.
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts | 2 +-
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 8792291a0175..76aafa172eb0 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -149,7 +149,7 @@ usbphy0: usbphy {
 		compatible = "usb-nop-xceiv";
 	};
 
-	soc {
+	soc@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "simple-bus";
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
index 1a32840c74e0..d22de06e9839 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
@@ -26,7 +26,7 @@ memory@80000000 {
 		reg = <0 0x80000000 0 0>;
 	};
 
-	soc {
+	soc@0 {
 		bus@80000000 {
 			compatible = "simple-bus";
 			reg = <0x80000000 0x60000000>,
diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index de82a552dc26..f2e2346dd3c4 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -25,7 +25,7 @@ memory@80000000 {
 		reg = <0 0x80000000 0 0>;
 	};
 
-	soc {
+	soc@0 {
 		sdram_edac: memory-controller@f87f8000 {
 			compatible = "snps,ddrc-3.80a";
 			reg = <0xf87f8000 0x400>;
-- 
2.34.1


