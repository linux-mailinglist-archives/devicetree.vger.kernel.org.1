Return-Path: <devicetree+bounces-180529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC033AC3ECA
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 13:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7757D177475
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 11:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46B11FC7C5;
	Mon, 26 May 2025 11:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aySdbvSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC471C8601
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 11:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748260003; cv=none; b=b6MpXqzH30qDjlQEpLFR57VYXnlzkbqOt9B1XSg560m4uIgGDq1WiVKk6bVxG2D3gBm+F9S9v+l3nwnbp8sIg06dD3obp6TKaCXFfDt4/NUU6qDHGQdufjPeGYAD0yS0VBR9kKmQp8eUP2/nsdnw+CL16K+MUv1LXhgsv1bxDzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748260003; c=relaxed/simple;
	bh=jjd4GeBbAtuwlRPuLLleMWt4peQC4Vu7ly9/mKRLATo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gI2KwWQWFT5+Ok5iA+v6dmhQtU48M+b/gaGXiMVDvS/tqaZVTiEn/ZRFQo3fTSX6ZqZ3xEkIcHAR8lsKEEbRTJ+9TN0uocYzGU3a17FnUAqeF5y45NKirpU8qofSM3xPrymi8QfBO38wobODbLX7BrQq460jzI3truc1m73/ir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aySdbvSw; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a4d10fecd4so44916f8f.3
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 04:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748260000; x=1748864800; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I1OmNo2Qm8ZDm0Bz1e9gms44TxcRGKOxtlMto4OxWLw=;
        b=aySdbvSwSywhsP24JK0MpeKbHAfQNa6imkZLeUVlNGX3Mj6/z41LHRFbDyqXPwNOdE
         JDzEgLfFXjzUK0+aPjvrSsY9oMLw3gQ1LcaTWp7lVV3Oh1IkQKatO38nTvXfbrY6Tzmd
         geqg4p2fGBG3PBfAmPV04UBJgv4C943Ekcuaki47b/q+DHCcWCj7/WkKQrSMcJVRpu8R
         yvOss+NCOA7WuXPIiyqeJDUkXUFEUw4S2ocS66rd/n3LSlURym3GP3IeC1k9a32TUOhx
         NfwqeX0qF3BZtP4ycecdbBIWUDSTEB9l2UBrfKl2LEc7qByTbrro0b7B8MtJur9nJlVE
         1lyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748260000; x=1748864800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1OmNo2Qm8ZDm0Bz1e9gms44TxcRGKOxtlMto4OxWLw=;
        b=MW6DiQExpGvJ1X5xJ4qxxvFmUb3lG8h9ywvAUM+qEO76JYZv5FTzaERgB9qC99zb1k
         SineWfxVOG+pf+1WmvmCq8B6EgpfwPsQMAcdslh1Q6SczXOxjer2/2UY64EYsdW9Q02t
         B53bXdAn7pgfaZgg3lq++zUQHE3xARslXXJWYYGwjYLB4AFF/hpKYfmC/dpQesOMa1eg
         D1j1X8/xy0fCTRdo9TAb7/DsnzGE+RWJEHAk5d44rE8UVv09dVFyD5USXhlssk4W5wPP
         5N5fJNavZDOSyxq7QeRKihrca8yb9BhDSNJpS8r4Q8dXKiyonFEuLvLZcSqvX7V+IY/J
         JATQ==
X-Forwarded-Encrypted: i=1; AJvYcCVI5yD5e2SHrXYfyAdapGHMVEimpGWxm5Rr7aK/nuvgEZodtsH/qV58nAX6c0uA0j/Vw4hWoxwhvwd4@vger.kernel.org
X-Gm-Message-State: AOJu0YyCO9lYdm7UL3SNfRJNl3qru5ywXF6Ne/iYxpC6D9PNNHh78h11
	JK7gOFwTRCsw1bmxgzLJcqWNdiA8DxIhMG9NxFNy/Ph6IbUMbr7/mATlXFdubsdjMg4=
X-Gm-Gg: ASbGncvLqYFSOXt74QKsMKA59K0IpTO+j0vX1yZKNXfM4els6jrbX3EVPaIJdoi+Lw3
	T1rtypeG7Kogp9T1CLOr05uUG84A5sRbraOOq/bM/DOsSmA89vIgPEew+UlyC9jiUxO3VREx+HJ
	MzzuPymlhoEYDUkM0FYoQDk9mIOGvISsBw4CphRaxtAzScX6r8EAYUwNcuidB6p1KgliCP8U5em
	ztMQzqAA5D4si58tNiil1tr959ORQG03AGQm+wY3DITN4eiZJeIceXnJvWc1CzhjEog+mhVyA11
	gTgWJgzJt3YQhic9B2FWOQphoGctzafF/LeUUErqYyjxkfUJ5NKqFgSoHJixM0tu4GweMyI=
X-Google-Smtp-Source: AGHT+IH0HEEI5Y3c9wERynZXMmGvEnsD4iAVhZwQNb4LD/V/a6G6+ztZI5SPNKq1HgnPFLDXB5nrPg==
X-Received: by 2002:a05:6000:240d:b0:3a4:d6ed:8e28 with SMTP id ffacd0b85a97d-3a4d6eda6b3mr1253598f8f.8.1748259999906;
        Mon, 26 May 2025 04:46:39 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4cc52ab88sm7592310f8f.11.2025.05.26.04.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 04:46:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 26 May 2025 13:46:32 +0200
Subject: [PATCH v3 1/3] arm64: dts: qcom: sm8750: Add Soundwire nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-sm8750-audio-part-2-v3-1-74429c686bb1@linaro.org>
References: <20250526-sm8750-audio-part-2-v3-0-74429c686bb1@linaro.org>
In-Reply-To: <20250526-sm8750-audio-part-2-v3-0-74429c686bb1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7310;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=jjd4GeBbAtuwlRPuLLleMWt4peQC4Vu7ly9/mKRLATo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoNFSawL3MsJn5R4OszQcefmLWhjODYNPKTRj3f
 QjiTsd2uJOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaDRUmgAKCRDBN2bmhouD
 1+rgEACac7dFXAfLbbCo3fGIcNoE3TiKSJl6ozgEUbLTnQu0VtLboNPa6NklpHay0T2MpfDKppw
 36q3q0VCHGJQlh//Vw/+cLfEWylrO7C2S+lFThTccQmPDm7TZSCE2RN275Y3QTb87HLZMBQ+pPn
 N2wi8Y5DP0I4onMI2DypQukfz2JqKMEga1+YSPW+WukPTrbZSNheeSYJIMWj9t9C/fzTeubp/h5
 M7NIOpmGB2BJ1nmpaHccVpB0YjxXcY2DnbpQ7wotDKTBKTQ7KdaWHYsi/kI0jvtgB/bLw1tQ1Ax
 xCu+dQTpL2cN/tm0WvplC6Ulgoi1A8vaPSuqCFXjRM6SNf5WKX5TPUZfpa+w5vpviB4NBSb40Xm
 BN+y2peTrxMzhKfGrsACtyPvIaNJ9moR6hHM5OU5Y6Xo1CsVRu9raoooFT04+j/P+0pH11PN4nJ
 vrym8gZ3nc+calCSqJX6RvaXCYdJNXqjss6/ptzBZhwXIltKHaxG5kHV8U0jdden9tSjQbJaoPE
 V/wlmELVqV+KeVRGuyz3mMjIRM2ucR4vpFiT9Z++bRAp166SuLNig+Dk+zJgHVoZ0CD5PdgMgnS
 4cnUuxCNCQTohtlakfeK3INSwRzeZJ/hgcvJaPBzh5s+TF33i9W3M5GhNB/wQkWLr5X32A/q3aU
 4PFeoPe9Ui/yFdA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add Soundwire controllers on SM8750, fully compatible with earlier
SM8650 generation.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Bindings / new compatible:
https://lore.kernel.org/r/20250519080453.29858-2-krzysztof.kozlowski@linaro.org/T/#u
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


