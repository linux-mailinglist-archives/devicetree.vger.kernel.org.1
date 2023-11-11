Return-Path: <devicetree+bounces-15164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8D97E8BAE
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 17:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0092B1F20628
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 16:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96C4918E2A;
	Sat, 11 Nov 2023 16:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eIKK1R08"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7850219BD0
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 16:42:40 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F83B3A9D
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:39 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53dd752685fso4744990a12.3
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699720957; x=1700325757; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZtZpqpD7PI5hInoKuA8AJf2BgTNbdfTd6JZaJSUskY=;
        b=eIKK1R08q4FHpu5Gm6lTseOE0osL7GrTQFJMw32k8W+FI8ED659t7KY1BTuwChPLmW
         C4ZdJGgjXHczdPbBv+0YpmKcpDGRDvobhv+XvkDyyLHtAipMsbfF929OeOhfiU0JpuAu
         zytR+djXVUD8SozMmT7PBFP8ghUJQi+oqcE17wnvtsVJxqFPr24cSpRSuQgoaK4Uk7Fw
         /wvSvk5ByGlROvuBINvQNs9ZJ5PRBpgldm+0lO8B1eGUiKOKSCSybBTm1QCUjdD33yB6
         2JG6VvHohuawx38e22UAHKSQDDTew91VHPasAcK4+hHil7sHCAXgaG2VaRPCOOiF4zQ2
         1ANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699720957; x=1700325757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BZtZpqpD7PI5hInoKuA8AJf2BgTNbdfTd6JZaJSUskY=;
        b=srTI9QBNzyOypOx6VBwl0haezF+DFAoRrX7s/c1NcFGUsdeaMonLcyZEeaQ8dRtf6M
         8vhLZBa7BUw5tF22+5TcBZKtlJj4xK5QsxbrPA57EAWDiBboBotR6cRe4xUQjwsZxOFI
         c1PTPQOrybHdBRA+kmTd9BH59BRC/5D9QCFdpE8qTZENn0LV8ZA+InHxsG5GCJSaZ/R6
         KZnH4jo3gK3Jn23G6VraSy5Ggjp4B5jT9ASS8qDeERrr7WAE8oizYskPADysgSXmV7sD
         /LekEMVEzoUf05W4mj2fodYuM4ja+K7mhpeX8tAwvGf3uIMIlbNS68F7YrFL2GcvDDhe
         7Cnw==
X-Gm-Message-State: AOJu0YwHPyMyTyDUSwC7vN7cBS4+g4kTQ+wsdRGkjuBonxZm43/lE6M9
	pJfJjO4Y1kkKraeV4StaRM9jdA==
X-Google-Smtp-Source: AGHT+IGAtPcwRvSatgGms7htwrIxAVeJwcy61t1r/5P1aZ1Z1l/XVtxkY39FmlIle/QrmM2KsCXaOg==
X-Received: by 2002:a05:6402:1001:b0:533:c75a:6f6 with SMTP id c1-20020a056402100100b00533c75a06f6mr1813319edu.12.1699720957548;
        Sat, 11 Nov 2023 08:42:37 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k25-20020aa7c059000000b0053dd8898f75sm1161917edo.81.2023.11.11.08.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 08:42:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/6] arm64: dts: qcom: sm6115: align mem timer size cells with bindings
Date: Sat, 11 Nov 2023 17:42:27 +0100
Message-Id: <20231111164229.63803-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
References: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 70d1e09ebf19 ("arm64: dts: qcom: sm6115: Use 64 bit addressing")
converted all addresses to 64-bit addressing, but the ARMv7 memory
mapped architected timer bindings expect sizes up to 32-bit.  Keep
64-bit addressing but change size of memory mapping to 32-bit
(size-cells=1) and adjust the ranges to match this.

This fixes dtbs_check warnings like:

  sm6115p-lenovo-j606f.dtb: timer@f120000: #size-cells:0:0: 1 was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I hope I got the ranges right. Not tested on hardware.
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 20dec687fa3b..ed6065ccd214 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -2559,54 +2559,54 @@ timer@f120000 {
 			compatible = "arm,armv7-timer-mem";
 			reg = <0x0 0x0f120000 0x0 0x1000>;
 			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			#size-cells = <1>;
+			ranges = <0x0 0x0 0x0 0x0 0x20000000>;
 			clock-frequency = <19200000>;
 
 			frame@f121000 {
-				reg = <0x0 0x0f121000 0x0 0x1000>, <0x0 0x0f122000 0x0 0x1000>;
+				reg = <0x0 0x0f121000 0x1000>, <0x0 0x0f122000 0x1000>;
 				frame-number = <0>;
 				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
 			frame@f123000 {
-				reg = <0x0 0x0f123000 0x0 0x1000>;
+				reg = <0x0 0x0f123000 0x1000>;
 				frame-number = <1>;
 				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			frame@f124000 {
-				reg = <0x0 0x0f124000 0x0 0x1000>;
+				reg = <0x0 0x0f124000 0x1000>;
 				frame-number = <2>;
 				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			frame@f125000 {
-				reg = <0x0 0x0f125000 0x0 0x1000>;
+				reg = <0x0 0x0f125000 0x1000>;
 				frame-number = <3>;
 				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			frame@f126000 {
-				reg = <0x0 0x0f126000 0x0 0x1000>;
+				reg = <0x0 0x0f126000 0x1000>;
 				frame-number = <4>;
 				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			frame@f127000 {
-				reg = <0x0 0x0f127000 0x0 0x1000>;
+				reg = <0x0 0x0f127000 0x1000>;
 				frame-number = <5>;
 				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			frame@f128000 {
-				reg = <0x0 0x0f128000 0x0 0x1000>;
+				reg = <0x0 0x0f128000 0x1000>;
 				frame-number = <6>;
 				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
-- 
2.34.1


