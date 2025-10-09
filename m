Return-Path: <devicetree+bounces-224830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B70BEBC8363
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BBE01A61785
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C08B2D8DA4;
	Thu,  9 Oct 2025 09:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TcyBtmJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9302D7DE9
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000957; cv=none; b=DfoSmtUFN3obX7emHJi/4ueawP6paTzCySB0ktuk6e+PqTFr/NwoeBJYz6kBENHzs/eNdV1RvDhYZ0sVaL2pYireDQ79LIKN5MSMrxSxdlHgYZ9le4+Yp+V2FtMOIE0qd1wvu0Y60VgBUC2Eufg35zByusO3jdM9cRTFn5ZKuV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000957; c=relaxed/simple;
	bh=G1zpfekdSZiJev6eJRsTbPMg2jybnP7AgkcQCvR2kig=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BtDiZhfgOqS5+SNlftSszEHyBWdk7dZxkJpSqhweM7OFFfXgiYkyEYKVI2CNIra1D/K2cF4s/gN21PB9QJ0QI9cg8cuQd4PMzYta+wD0p9ZiMhtetyiddoIyStcBgjQqnCySnq5wzNYwq2Mk423lZJsDCbb5CHOLSed2SU6WMhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TcyBtmJy; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3ee12807d97so817992f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760000954; x=1760605754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4BUoKX4aVGGfhuI/7/g8Joz07QJoCyb8Bx4xh94QPeQ=;
        b=TcyBtmJyxtf2puvw6sLHoJqgWDItSaLKf2/GtLPpgh7ITbk7k6tJ13tDx84zIxhxKo
         foUtHfJ0+kjxb+jueHNnZLxq8wcDlgqQNoiQfmnMdG2CncKwRRrsQGNyYbX4m7q0BQTe
         dPEpcVp6IJxV5N2aRGiLTQLlE4qH3iqMtRAy4nyO2aBlsM0N1Ek6htn6LznJrYoU8pdS
         S5G/4IWnJR7nA5PWO9b9/n7/PgUO8XjZMY0iJLQMHuMW97A4dg7PRMqcKYgN4EwAefMd
         dH80l0vHD0ZyDlMf0Ok9bTeBQEXVK6t2Vg1Hzx3b46TQCSlu5vYBj8y0wqREgv6gBcRD
         ImRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760000954; x=1760605754;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BUoKX4aVGGfhuI/7/g8Joz07QJoCyb8Bx4xh94QPeQ=;
        b=dFaQZuiR+N7kwPF2q28sOabGlTRK8olHCgolWDPqPHEhV0HU3NBVJpy9VRBFCNYbeW
         hI1xb4c9Vf///uG4trF5h0Yr+tP86VKl/1Nf9TozLcA70B8ZCjNtsN90d45RlyiXWN1y
         PBvn0GRjoKlcF69S4WL8QYBq37kwPevZ3vgbxzLnKroB8P1M0bAWRCBd96v4RC/c2PIA
         PrpAPxJb+lB7nn5imNcw/m8wp2YmYglO0aUJp+g3yb/9O1euOuvMRzZdsP50mQHfJJIp
         F2doZEIJQS9fp0jfex1OO0WiUH2r9CtuQ6nJbgAKn6f4Lw/B97SkbQAFn+FtyRYUUGTW
         fbUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUc6p/mUDjbLyM2c84Q+6DLX3tSvdXNa+1vRztmL6mYhnfJjbVVlHkvu/AQ8qUbujyoXg/luaSp1P0R@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5N7ffcUp5VS3foQrs0mP/3eVzx1po6mO0sIRrrIAj7sgSageS
	NGmOG7tlgcwPUOk8p+JQevyqxGrBgHraZcHI/PXDclNOg1vRL67yB1rp
X-Gm-Gg: ASbGncvp8xeKkAzsT44J73HLiZLkusJuUciYf/S15stzzlSOjTai+oKWr/6MXKnL8Ix
	E9/VIX8kcb+9N5U1pnAi/OeywXQVFeiDtnCCSV6yDQo0tmYJh26kznwuBsx8uCZso3K8QTxUIFj
	e20886Laj84GKS/1pMhxnV1mFq2Z8Z7hO4uGBlrOsUjbqxqxX7ZMZ4TArCoTAzyayDQ83i9NCxr
	BjkWJnvR9XBpznPY5Ycvx92lxNNZ4GKmTlsRF4//kIVdfWKRSqJ/cjIfl0Ic7HtqoxhvQrbji++
	eeQSWFXS34TeJCbdb17cYp8HG0AqCTkwcU098Y7IuAa1oKc6VoquwqiCaCBluJkoBJV/ByDS9ed
	HAkD3+lx5Gu9czb+x4ldt9knKbw/RiB10bmhCmv+uM5t//Q==
X-Google-Smtp-Source: AGHT+IFyY+f5ZToAadYUxQOq+QbU8cB77hd8FOC3v5od7uiITs2vrOIfXoY6winsFAgzx+4BRB+/Ag==
X-Received: by 2002:a5d:5889:0:b0:400:4507:474 with SMTP id ffacd0b85a97d-4266e7d66e6mr3748282f8f.18.1760000953958;
        Thu, 09 Oct 2025 02:09:13 -0700 (PDT)
Received: from T15.. ([46.175.113.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e970esm33802278f8f.35.2025.10.09.02.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:09:13 -0700 (PDT)
From: Wojciech Slenska <wojciech.slenska@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Wojciech Slenska <wojciech.slenska@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcm2290: Add uart1 and uart5 nodes
Date: Thu,  9 Oct 2025 11:08:58 +0200
Message-ID: <20251009090858.32911-1-wojciech.slenska@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add nodes to support uart1 and uart5.

Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 48 +++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 746c49d6e0fd..ffb194be7b01 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -552,6 +552,13 @@ qup_uart0_default: qup-uart0-default-state {
 				bias-disable;
 			};
 
+			qup_uart1_default: qup-uart1-default-state {
+				pins = "gpio4", "gpio5", "gpio69", "gpio70";
+				function = "qup1";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			qup_uart3_default: qup-uart3-default-state {
 				pins = "gpio8", "gpio9", "gpio10", "gpio11";
 				function = "qup3";
@@ -566,6 +573,13 @@ qup_uart4_default: qup-uart4-default-state {
 				bias-disable;
 			};
 
+			qup_uart5_default: qup-uart5-default-state {
+				pins = "gpio14", "gpio15", "gpio16", "gpio17";
+				function = "qup5";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_default: cci0-default-state {
 				pins = "gpio22", "gpio23";
 				function = "cci_i2c";
@@ -1197,6 +1211,23 @@ &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 				status = "disabled";
 			};
 
+			uart1: serial@4a84000 {
+				compatible = "qcom,geni-uart";
+				reg = <0x0 0x04a84000 0x0 0x4000>;
+				interrupts = <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
+				clock-names = "se";
+				pinctrl-0 = <&qup_uart1_default>;
+				pinctrl-names = "default";
+				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
+						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
+						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+				status = "disabled";
+			};
+
 			i2c2: i2c@4a88000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0x0 0x04a88000 0x0 0x4000>;
@@ -1418,6 +1449,23 @@ &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 				#size-cells = <0>;
 				status = "disabled";
 			};
+
+			uart5: serial@4a94000 {
+				compatible = "qcom,geni-uart";
+				reg = <0x0 0x04a94000 0x0 0x4000>;
+				interrupts = <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&gcc GCC_QUPV3_WRAP0_S5_CLK>;
+				clock-names = "se";
+				pinctrl-0 = <&qup_uart5_default>;
+				pinctrl-names = "default";
+				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
+						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
+						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+				status = "disabled";
+			};
 		};
 
 		usb: usb@4ef8800 {
-- 
2.43.0


