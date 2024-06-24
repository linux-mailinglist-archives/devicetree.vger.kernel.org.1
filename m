Return-Path: <devicetree+bounces-79265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D879147EE
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFAB11C2153F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564CF13A3E3;
	Mon, 24 Jun 2024 10:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aDrUVMsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6BA137C34
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719226556; cv=none; b=JePaUJOsJv2tIzBbK2hG6NEwHrnDz1xa16QtFvFsbJ9NRWmxZCxpwuOR74HDQRKCy6CMIT+3wFruSYB+ThkZeu/0GHopTEHFS3MootVZXtdID7E9goyyBIx6O5C4zZp190knwSg7FvFOVU4ciOaJIx4zp/O1SLZcGZ4iETgqwP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719226556; c=relaxed/simple;
	bh=eN0nSauQHWzcpR3ztkX7wbxGkq9GOgpa8mxkvBiq8XY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=byedk9eK4pz7iXWiEHfdcNgVQMAmtpw27VAw8KFQKmMSv2iSn4fRNxJazhd1GU72H6pIAPgXVzRJwWKNkyYfipCU+OGMKlIZLvwPw0Nhc3j6cTf0qxFnXNqn/3dONuj5rPEcHrInnVhpWj6ZxCM5ZdZxB5iw+0ZJyIrpyki9MWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aDrUVMsX; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52ce674da85so846833e87.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 03:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719226553; x=1719831353; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vw7X1i/YW4Fd35XXIuhTMVk8l2VygEA6NsiqdF81ctI=;
        b=aDrUVMsX1+kHXl5UtWe7xBUKNqU39cZNvksQ4eOzByM/DmdmsrRlmikQ1Zz5L54F8l
         9yGVn3TKN7Y/5O5IlrgI8JEuJ5YVkVPx6J4Mcf0ITWkivzSJvXMotoWYH0eItpQ/Vuf4
         tQzAIHsOfu6qR2gPlCazXzt8QJr0S6oeqyvoddQDLowIFU4w3VckvAShdCxz3x8zwSSl
         tf/fFU8pw9eYLrwb/fPJujwFt1qy/y0z9KzR9cQDZHFD3n8nBPl/AHxVR4T9Ala7CRiQ
         45HO6oC690QXMVNymWukxaoWfWZMkbHipBBzFwfU87704B9jlFQWMKmt5KBLAd8BvJnW
         ZtUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719226553; x=1719831353;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vw7X1i/YW4Fd35XXIuhTMVk8l2VygEA6NsiqdF81ctI=;
        b=eVRIS+1TVRLLqTHys0Y5wZLfL6VaIprHQ/JpTW5ifF6gHBAmCMpthcjOPUKYItlq5r
         pHNwHswfBv9kavnUl6JtTK7Vr5JOdFrp9EqTVNJDSqsKWdHk6ezGQwb8sAN8XIBhDyv7
         dM6vAEEf9iEPAHuCZzcZtnrwIx4VzZQe7mMJylhRZAhkzuhntEbu/KLShS/pe0u3tm9p
         Jc01BFTtuzAiHIxeQa8aLst1bvU/gSgrBSyrJwEcRgdVT0PqHo6bZrufBN18OE5fVhA0
         prAdeLJ/T7EPkr+KJxFL4SCd7/Igj1c3344+it7709DSUhNNmxJEv8FqjzADy9a/E36o
         h94w==
X-Forwarded-Encrypted: i=1; AJvYcCUXbNHP2KW86nYs1tyLlQdW7zhTJrTEThWFtVmig3QsTvRdaARn2IFEPnVvlPFJiyfg7/iXSbl4SdfEGgu0qiTSozu5AEMsNYLT6Q==
X-Gm-Message-State: AOJu0YyK4t8Q0CZynTBxUSbrug2bllVJLJlXZ6TtI+XbAol+eUGSJTek
	XXg4Jl2bJo9RZ47YfYpGJnXKUa4Cbp1SF/EYEAsF5SPxTJQ/dJQOfKLQUdFKyfc=
X-Google-Smtp-Source: AGHT+IHOcp5tf8fAOVkV5QK6fvlUJTLkRoDLcluVbNV8P6vD+BtVUiFlh40iHx6m5tkPhE9cC23jFQ==
X-Received: by 2002:a05:6512:1cb:b0:52c:dd59:6784 with SMTP id 2adb3069b0e04-52ce183c00bmr3375347e87.40.1719226552761;
        Mon, 24 Jun 2024 03:55:52 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d208b6bsm172479595e9.32.2024.06.24.03.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 03:55:51 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Mon, 24 Jun 2024 11:55:32 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: x1e80100: add soundwire controller
 resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240624-x1e-swr-reset-v1-3-da326d0733d4@linaro.org>
References: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>
In-Reply-To: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2919;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=eN0nSauQHWzcpR3ztkX7wbxGkq9GOgpa8mxkvBiq8XY=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmeVC0etr46PFmqC8tcv68s/rrRR9NINlx8eGLk
 Ko5+v6MPriJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZnlQtAAKCRB6of1ZxzRV
 Nz/HCACTQTILhlLBUNy/vu+8U+Rv3PS2fuTGx5AyFGtUyb/on0bVtUxUkxvNT1aN2aLxhLaB7Jm
 mMKqd8F9a31VGal1C41nY1XztbOoTBafahLkCv6pk0VYqHDAmiujSV+sCxWiofG3xocAlSwh01p
 tYTg6Lg0i2QTGUNR6ZNLpISHyk4G2lOznGBbuQZDJxDr9ay0QxE9UIYxSRfQavFkcMaEUMmbB3M
 T7PXm4sYj4Bx9rH+5YUYfCfjHsQZ2SZIFDHNR1dfSnlxtG/3rdrbL3E6dO4eLd3AsNdFqEmn5TV
 TRyPEclDSP/+R69ZvPVxAuIYvtOkyNe52jKX0v3c4AsPPXU8
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Soundwire controllers (WSA, WSA2, RX, TX) require reset lines to enable
switching clock control from hardware to software.

Add them along with the reset control providers.

Without this reset we might hit fifo under/over run when we try to write to
soundwire device registers.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 09fd6c8e53bb..fa28dbdd1419 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-tcsr.h>
@@ -3177,6 +3178,8 @@ swr3: soundwire@6ab0000 {
 
 			pinctrl-0 = <&wsa2_swr_active>;
 			pinctrl-names = "default";
+			resets = <&lpass_audiocc LPASS_AUDIO_SWR_WSA2_CGCR>;
+			reset-names = "swr_audio_cgcr";
 
 			qcom,din-ports = <4>;
 			qcom,dout-ports = <9>;
@@ -3225,6 +3228,8 @@ swr1: soundwire@6ad0000 {
 			pinctrl-0 = <&rx_swr_active>;
 			pinctrl-names = "default";
 
+			resets = <&lpass_audiocc LPASS_AUDIO_SWR_RX_CGCR>;
+			reset-names = "swr_audio_cgcr";
 			qcom,din-ports = <1>;
 			qcom,dout-ports = <11>;
 
@@ -3289,6 +3294,8 @@ swr0: soundwire@6b10000 {
 
 			pinctrl-0 = <&wsa_swr_active>;
 			pinctrl-names = "default";
+			resets = <&lpass_audiocc LPASS_AUDIO_SWR_WSA_CGCR>;
+			reset-names = "swr_audio_cgcr";
 
 			qcom,din-ports = <4>;
 			qcom,dout-ports = <9>;
@@ -3309,6 +3316,13 @@ swr0: soundwire@6b10000 {
 			status = "disabled";
 		};
 
+		lpass_audiocc: clock-controller@6b6c000 {
+			compatible = "qcom,x1e80100-lpassaudiocc", "qcom,sc8280xp-lpassaudiocc";
+			reg = <0 0x06b6c000 0 0x1000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		swr2: soundwire@6d30000 {
 			compatible = "qcom,soundwire-v2.0.0";
 			reg = <0 0x06d30000 0 0x10000>;
@@ -3318,6 +3332,8 @@ swr2: soundwire@6d30000 {
 				     <GIC_SPI 520 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "core", "wakeup";
 			label = "TX";
+			resets = <&lpasscc LPASS_AUDIO_SWR_TX_CGCR>;
+			reset-names = "swr_audio_cgcr";
 
 			pinctrl-0 = <&tx_swr_active>;
 			pinctrl-names = "default";
@@ -3474,6 +3490,13 @@ data-pins {
 			};
 		};
 
+		lpasscc: clock-controller@6ea0000 {
+			compatible = "qcom,x1e80100-lpasscc", "qcom,sc8280xp-lpasscc";
+			reg = <0 0x06ea0000 0 0x12000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		lpass_ag_noc: interconnect@7e40000 {
 			compatible = "qcom,x1e80100-lpass-ag-noc";
 			reg = <0 0x7e40000 0 0xE080>;

-- 
2.25.1


