Return-Path: <devicetree+bounces-178390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF8BABBA5C
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AE713A01D6
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 09:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FDC26D4E3;
	Mon, 19 May 2025 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XdPqcYHT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FA62063D2
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747648494; cv=none; b=FFmFI2V/BJkiXI6FQTQBvN0M/TGSiVSr66EXuIXHUiU78yji75bCqrC6gr23Ao7O8ISUdjGRbnHnBrcqt7qRQnjLVVUP5UjTDt3eXI2bqyiPakOqt9FTvMS969t8TEnyPOTa11xA8jDWaZFxejNasXm6YA9G1pwOkFqLNjtD0ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747648494; c=relaxed/simple;
	bh=5IzQO2W9y3AReFkI22LxozTjcVm+6tQWchN1ofB7LYU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W79+Y+ecy0oSPkleKcmk6f12Nudxnj4K7oXv9tkjKZAYrXhC2CYlmubLtBLEqyHqhx89xq6ceXSSbEHxPop7YvLVgh2ldkLU+xQdlIJyPN4syFyBq48gnunqy5Oy8XYF3xwQXr9E1PFqg+DIcT6UONIGWfm3Yy74+c3masjy9jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XdPqcYHT; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a365bc0af8so262994f8f.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 02:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747648490; x=1748253290; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JTY2lLHiJfzC0bXx0w26HcpCndBQvAil7DOu/C1/+Wk=;
        b=XdPqcYHTERVBAF6L4AxBC4QtKOb6ljZPB4rSzGl+jPA0n+9Q3A3tHZMolm+38AhA9X
         nzygoAVKYgprNhken7LUdQD2l4p5dvLitrskCPYcpMwGZ3KqZi/O9c8K8VLR4x4PGcWl
         0fg+YzFTvp/quuRZQpyCxWDbPh+qSeA5u8SOmKwkuJvTZz0mobmwXCXoV4WQGwFrMeh9
         tfQ8lRQA2+4JlsDVRuBgpJnFMjIaszDp5+5j0NHKku/Gs6UBSQ/VmDiBPNs3e0HHdQf/
         C1e1M1+iv2MOPB/QU3uoNuAD7Z0eU6BuCVJRn4OwjkLYjt9SuEbi+MYaAZU/8ixdORZI
         aWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747648490; x=1748253290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTY2lLHiJfzC0bXx0w26HcpCndBQvAil7DOu/C1/+Wk=;
        b=WqOroYs2RSgN39OvgCNMSiH2gbhorOJMXK1BhFMesVHtlOTwxP/7pEW8Lj8ulR5Zzw
         D0d8rq2PwVhp/YC38+zg9TxUGfXN6P38C7f2H84zzi4yBeM3w2xdYpoQbZ4081/YoXUr
         CISfXYjtXt/6by31yAMTFlz5/tXh2jZK3MYMDLz2/vINQ8M+EXw8FGqpo6Z88kBdzI7j
         J50SUudv+mwg+1c/xEqTt19NS8XmqPp8o3E66onj1pe+1DMtJv1pcZuJNFPKazgSHN80
         J0R1k6Zi6cvhGoeg1AXgwMCNxWU2dZFeYH+s26iSxUSJv3//ov9e95J5Wxft65V+iid6
         kUxA==
X-Forwarded-Encrypted: i=1; AJvYcCWgvysdY5EIvprml5FnyeZGFbC1j8DEly8W9VhlHzeBeZAYMwTTiwh5G4Oy1XbbjK4XDYEAHxG9JWwu@vger.kernel.org
X-Gm-Message-State: AOJu0YzAknam1Nop86cxQv1bIjb8byaXByK2z/30vKMLusn7lZF4A94H
	v++b8s+P2/ZRY2jbf4UWtGvO0muAp9xkRHSaOWPoPnBLDvdupjKVbL1kRnDqk+++4UMGVYsqjoe
	Ap80C
X-Gm-Gg: ASbGncvhfrnMbB9Vo1E8ygFWYFPc5yEcDpBjBmqgQXSf8/hRXUSmywEZGWSt9TfXYG8
	FD6lpeZSdnQ1QC1SucJ283cs4c1bzil81Jak7OtjfwbcBbMAXyb5Yjbl9ufQex4KsQbypDVhL4s
	zNDu+rbbhLKgbM7cOAVHnK75O1CksGj3j+w9DwMvCDdva5pDT9dQsdSzBrQC59W3IRUAhfHSn63
	fqu6oL417CGyVk7VUs7GD3/nVGo6rxMop0RucXETlZpWtztgsnlV/2U5SLoztwm2IGhnK8HHrt6
	R6cmGMGJCGsmKnBUk+GNF+QOwwmEgSCMIqVovrRX9bbhN1FrMAtORHH4DDzuNnPPCxp9t/7CAQg
	X8pK2Fw==
X-Google-Smtp-Source: AGHT+IGcmqizIC0RoKHIp6SBn8x9mgarafCXx814XBWhIc2c1OVtjGEWpNh7ym9DuOgvgXLvh/0Xug==
X-Received: by 2002:a5d:5988:0:b0:3a3:6a77:3388 with SMTP id ffacd0b85a97d-3a36a7737c4mr1496447f8f.10.1747648490556;
        Mon, 19 May 2025 02:54:50 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca4d0fasm12282616f8f.8.2025.05.19.02.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 02:54:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 19 May 2025 11:54:43 +0200
Subject: [PATCH v2 1/2] arm64: dts: qcom: sm8750: Add Soundwire nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250519-sm8750-audio-part-2-v2-1-5ac5afdf4ee2@linaro.org>
References: <20250519-sm8750-audio-part-2-v2-0-5ac5afdf4ee2@linaro.org>
In-Reply-To: <20250519-sm8750-audio-part-2-v2-0-5ac5afdf4ee2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7128;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=5IzQO2W9y3AReFkI22LxozTjcVm+6tQWchN1ofB7LYU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoKv/m8MEHcTmdAvrWGeUyuEm5df6vR+xCbhdBs
 m1DIco4OYKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaCr/5gAKCRDBN2bmhouD
 14cND/4vjfmKdTCRmqPwvghESR3N6nWv3AVn3Us/+MpHz7LkElmPcCXuNxese2h1wohQcre1bcf
 zXaaDDy1x38W+Qd3FWiSfYJ13sqF4uuTwzecIhDlLymK1md9TdXcrvasDyR1S1iNNqnVImiSt+z
 DhOWPjYzQP80o5HPt+1TNvx5vYSbSqwtkIpynu1w7hAgZ13goXwo68jF44btDo6t4xWg9lknlsP
 /U5IqCkbiOsIcd0w2kCDQRbIau47AGyTFd1UZMeIbUSMw+LE7TopzJYQs2t7iZ7mUm1SQ1ubU0G
 p8Er6jCTH6DSAUGcNcx+HWKxIt/hRLA+aH4DNjOB3s4SLwtTl3Yy1CjDoT6OegKS0DTEIiTHXhV
 c9stupxWesdVOA/dkoiWxkM4zXU0k1dwZU4OtFW6Sz+RZPfA8F6rBeD5tqCen+cti3MrYnpGjD8
 QopunImGM+KMdbu82j+IKu74yz16Zv9EBAPWFFRWX6Iwzr3WHhniXXBk5GzbSf6UgJxMEYRka3l
 uPHwtvDCzOXuhknpfjCMOWia26r/1RA0bWJ59ZyJbNn/I/AZbqaM5HZUlFkub+PAYY6Xs8449GI
 fJcuYyXRGt1u/6Nui0B/orSDTXsg5T4pvcs6/du0JCFAfvIo8SLb1mhj+qZAPPi3YHrw21zHpza
 4S9ZrClH+tWd2SA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add Soundwire controllers on SM8750, fully compatible with earlier
SM8650 generation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 122 +++++++++++++++++++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 149d2ed17641a085d510f3a8eab5a96304787f0c..68ea48854c61b3aed6e089afaebe9edba7a1475f 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2257,6 +2257,36 @@ lpass_wsa2macro: codec@6aa0000 {
 			#sound-dai-cells = <1>;
 		};
 
+		swr3: soundwire@6ab0000 {
+			compatible = "qcom,soundwire-v2.1.0", "qcom,soundwire-v2.0.0";
+			reg = <0x0 0x06ab0000 0x0 0x10000>;
+			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_wsa2macro>;
+			clock-names = "iface";
+			label = "WSA2";
+
+			pinctrl-0 = <&wsa2_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <4>;
+			qcom,dout-ports = <9>;
+
+			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f 0x18f 0x18f 0x18f 0x0f 0x0f 0xff 0x31f>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00 0x00 0x00 0x06 0x0d 0xff 0x00>;
+			qcom,ports-offset2 =		/bits/ 8 <0xff 0x07 0x1f 0xff 0x07 0x1f 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0x0e 0x0e 0xff 0xff 0xff 0x0f>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0x0e 0x0e 0xff 0xff 0xff 0x0f>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0x0f 0x0f 0x00 0xff 0xff 0x18>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0x00 0x01 0x01 0x00 0x01 0x01 0x00 0x01 0x01 0x01 0x01 0x00 0x00>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x00 0x00 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x00 0x00 0xff 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
 		lpass_rxmacro: codec@6ac0000 {
 			compatible = "qcom,sm8750-lpass-rx-macro", "qcom,sm8550-lpass-rx-macro";
 			reg = <0x0 0x06ac0000 0x0 0x1000>;
@@ -2274,6 +2304,36 @@ lpass_rxmacro: codec@6ac0000 {
 			#sound-dai-cells = <1>;
 		};
 
+		swr1: soundwire@6ad0000 {
+			compatible = "qcom,soundwire-v2.1.0", "qcom,soundwire-v2.0.0";
+			reg = <0x0 0x06ad0000 0x0 0x10000>;
+			interrupts = <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_rxmacro>;
+			clock-names = "iface";
+			label = "RX";
+
+			pinctrl-0 = <&rx_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <1>;
+			qcom,dout-ports = <11>;
+
+			qcom,ports-sinterval =		/bits/ 16 <0x03 0x3f 0x1f 0x07 0x00 0x18f 0xff 0xff 0x31 0xff 0xff 0xff>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00 0x00 0xff 0xff 0x00 0xff 0xff 0xff>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00 0x00 0xff 0xff 0x00 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff 0x08 0xff 0xff 0x00 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff 0x08 0xff 0xff 0x0f 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff 0x0f 0xff 0xff 0x18 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff 0x00 0xff 0xff 0x01 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0x00 0x00 0xff 0xff 0x00 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00 0x00 0xff 0xff 0x01 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
 		lpass_txmacro: codec@6ae0000 {
 			compatible = "qcom,sm8750-lpass-tx-macro", "qcom,sm8550-lpass-tx-macro";
 			reg = <0x0 0x06ae0000 0x0 0x1000>;
@@ -2308,6 +2368,36 @@ lpass_wsamacro: codec@6b00000 {
 			#sound-dai-cells = <1>;
 		};
 
+		swr0: soundwire@6b10000 {
+			compatible = "qcom,soundwire-v2.1.0", "qcom,soundwire-v2.0.0";
+			reg = <0x0 0x06b10000 0x0 0x10000>;
+			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_wsamacro>;
+			clock-names = "iface";
+			label = "WSA";
+
+			pinctrl-0 = <&wsa_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <4>;
+			qcom,dout-ports = <9>;
+
+			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f 0x18f 0x18f 0x18f 0x0f 0x0f 0xff 0x31f>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00 0x00 0x00 0x06 0x0d 0xff 0x00>;
+			qcom,ports-offset2 =		/bits/ 8 <0xff 0x07 0x1f 0xff 0x07 0x1f 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0x0e 0x0e 0xff 0xff 0xff 0x0f>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0x0e 0x0e 0xff 0xff 0xff 0x0f>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0x0f 0x0f 0x00 0xff 0xff 0x18>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0x00 0x01 0x01 0x00 0x01 0x01 0x00 0x01 0x01 0x01 0x01 0x00 0x00>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x00 0x00 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x00 0x00 0xff 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
 		lpass_ag_noc: interconnect@7e40000 {
 			compatible = "qcom,sm8750-lpass-ag-noc";
 			reg = <0x0 0x07e40000 0x0 0xe080>;
@@ -2329,6 +2419,38 @@ lpass_lpicx_noc: interconnect@7420000 {
 			#interconnect-cells = <2>;
 		};
 
+		swr2: soundwire@7630000 {
+			compatible = "qcom,soundwire-v2.1.0", "qcom,soundwire-v2.0.0";
+			reg = <0x0 0x07630000 0x0 0x10000>;
+			interrupts = <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 785 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "core", "wakeup";
+			clocks = <&lpass_txmacro>;
+			clock-names = "iface";
+			label = "TX";
+
+			pinctrl-0 = <&tx_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <4>;
+			qcom,dout-ports = <0>;
+
+			qcom,ports-sinterval-low =	/bits/ 8 <0x01 0x01 0x03 0x03>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x01 0x01>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x02 0x00 0x00>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
 		lpass_vamacro: codec@7660000 {
 			compatible = "qcom,sm8750-lpass-va-macro", "qcom,sm8550-lpass-va-macro";
 			reg = <0x0 0x07660000 0x0 0x2000>;

-- 
2.45.2


