Return-Path: <devicetree+bounces-24350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9939D80ECA5
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 523CB281509
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:56:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9E460EE0;
	Tue, 12 Dec 2023 12:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PlRywCK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 809A9EA
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:56:41 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-33621d443a7so2020137f8f.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702385800; x=1702990600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4N0v3imWf1OYAsmzG2UKw5cs9srUvcWyyKbdVfI72rY=;
        b=PlRywCK8cJXxloAp4BzyJUH17FE2oTHi9F3zrQGh3qjA3wPa2zFgpIdwLNcl7vtTlP
         kZ3HvK2gGoq/qEzw79sueBCgJ3pYdKUw2qIku2XicZQgEeA4YBkOcEV7gpBHVlzucr8g
         F2ijAB+L42wR0eKi7kkw78l55Nw2G9BcuCegSWPMaOeXuTH/lqOCJPlqNzH5GZag+aA0
         y7DIFsdhvMw+9LDR+GrxKsfG4eOCwKcnm0ivonrTsO0GM3jvZvYpqtyfU8yuOC7IVI6j
         iYLM4jZJIirAaPRaQN7vJmFWKmXv/hEY2SKexvRQGcs1v6pAOM2SqOG/yMxn6MhZ8kwG
         EC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702385800; x=1702990600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4N0v3imWf1OYAsmzG2UKw5cs9srUvcWyyKbdVfI72rY=;
        b=KwhQ25cjSMiXTaSVhZTZu8ZJAwsUBqroVBAnDSOZEcTk4l39yfhJNArVlFBa4teArT
         /3hHv/S+1+ykJxIquyFXSDg6zdMhrPf8DfSW7tE+Ctm2Qno55GXW9BA4xxR24lpNNQiy
         e/cHGyuusCsuVulhAj6EAA4LzDsjAijMyixCa7DdTFwfjxhrnH8xVV90vFben7g84VGW
         nIxLCHCbut4oy97PPq5nI4O9vwCQ1eLzse7uGsTyCWM9WCknosovne48m5syqActX9lc
         6gnG4VmeYCGUNdE+e1Jc3zCIsLooMvDJ5Mi9RMgNL+Y6kJwofHVV7hk0pDNyZvFsScMR
         krlw==
X-Gm-Message-State: AOJu0YzwdQpcwHnJMmI6c9oOJUMXp32MQapPXPRiS+Pe5wk16yV0bRN1
	GklekyhzONekLWMBcdm1zwUNlA==
X-Google-Smtp-Source: AGHT+IFunWxkiQ2aVhqqxF+oFzxLRtmVehWOCvtJCfpZPl0jgQlZKE906u949b5MWMHfUsm+gl0V7w==
X-Received: by 2002:a1c:4b10:0:b0:40c:32d5:18df with SMTP id y16-20020a1c4b10000000b0040c32d518dfmr2977861wma.182.1702385799919;
        Tue, 12 Dec 2023 04:56:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id e12-20020a05600c4e4c00b0040b398f0585sm16820693wmq.9.2023.12.12.04.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 04:56:39 -0800 (PST)
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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: x1e80100: add LPASS LPI pin controller
Date: Tue, 12 Dec 2023 13:56:32 +0100
Message-Id: <20231212125632.54021-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212125632.54021-1-krzysztof.kozlowski@linaro.org>
References: <20231212125632.54021-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
controller device node as part of audio subsystem in Qualcomm X1E80100
SoC.

Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index aee3dbe753b1..8c18d7f82166 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -2980,6 +2981,20 @@ nsp_noc: interconnect@320c0000 {
 			#interconnect-cells = <2>;
 		};
 
+		lpass_tlmm: pinctrl@6e80000 {
+			compatible = "qcom,x1e80100-lpass-lpi-pinctrl", "qcom,sm8550-lpass-lpi-pinctrl";
+			reg = <0 0x06e80000 0 0x20000>,
+			      <0 0x07250000 0 0x10000>;
+
+			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 23>;
+		};
+
 		lpass_ag_noc: interconnect@7e40000 {
 			compatible = "qcom,x1e80100-lpass-ag-noc";
 			reg = <0 0x7e40000 0 0xE080>;
-- 
2.34.1


