Return-Path: <devicetree+bounces-152994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFB4A4AEF4
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 03:50:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D19D618946E8
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 02:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290331AAA23;
	Sun,  2 Mar 2025 02:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aHCHVrwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332831553A3
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 02:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740883810; cv=none; b=ba5FnO+5dOtdgtKX2A9SrTlXZoxcSNclvEp5jBcZdQsc2vGQ9Sv3gxJ0ctTVyy67L1VjHp2o2lUUytmFAGXkiSCXkTCJ5Ngzien14tOziExTgN3yamos8+0g0gu1VLulOLUnHiwZ+N4lwyL21SniXRGGUuNnxXSbDyWwlA296jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740883810; c=relaxed/simple;
	bh=wQ01J6D4oNUO/j4ZKHOnBEmLwf4ywfjNUsETE7Q7ofw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HRxFkxq5oqETwVTXULmrcVyhNNTHbAJIxk0A+gpD6RrksiiugMsZg7fkujiPvCpkGguCRPfg+rsCViBnpyeIx40BhG/i6zKfK/orDY5vP9UCeLYDFNC9ZUO5KPODsYU4vXGhoSKehaa91V/7x0RWlmyC160U33i9SL4Ao7iFWf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aHCHVrwG; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-439946a49e1so21054385e9.0
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 18:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740883806; x=1741488606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nmdfEHpxLSmQg+isrOnjjS1H9iCmEJAPxMrM+k2a/mo=;
        b=aHCHVrwGzq/xLs8/ZsdMpBXuegrMAzW0NZOTw0LnJemTY6u86lP+j2BeUlYMuDw6Zq
         qksz+XvWevxDjgZAf4PFvlwCeaJD4bgdpBm09UWYCRBmCEkYGVgHmvzowPkwZXLdEap3
         ymyxbMn3HFYKw35yYL2dbo8/1peo0UXhkLPZWNGb9YAIIfjaavM3od7INV1MVpgu9H/g
         vKzQ7wSRIi5mHNdt0oBeHqxg52wsvT9wF7ShkmXKmdJO9//BwwsNh346m/Uyu5icPlta
         8jJD+FPhKSHyoRynv87v9k/v2YmjVTCrr1EyNjtq5C64Cnh1ohw9xD1IF9uhPL53rKfL
         JpcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740883806; x=1741488606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmdfEHpxLSmQg+isrOnjjS1H9iCmEJAPxMrM+k2a/mo=;
        b=YCwK6oomKoHUigtwDC/c7ygDRrvrA085aiPzLJ06QLTaHaWm++ToWEs04fSUNhbDzu
         PlWEx+Re1x8EX+XSi5jS+7Z7qpk73YzmxaYaq9TRtY4HyB8UDB1BEZEq3wIX8PEInjyb
         CCqHU47/Itfp2IzFyGeMXUcAesspRV0d/oyPLSVK1Qdu1WnLwFCl8qeDbf3alCZutTH3
         rXR6SQNximfkDQFsBnvefz0zQGLA+x6yBaj+hviGglyVWWbw7wY63Pc1YWg5aP3y3XHg
         ULqGB+Cuyq/9XCDbMmPfs5xddPiXMowbKRw5VfsnqlRBcszRHpXKptIAeR6w3zSnijcw
         0pzw==
X-Forwarded-Encrypted: i=1; AJvYcCUQmVVSik68Yze4b2mIwNXZMYdH4yDAt8saXc0t1fGgqTQNcOVlrt2dAsOHRPfvwiQ4kZADaxhE++rc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8xI1YKFpOU4quRBPqA7gKd0mB8UIqxQYxbL0cPdDabhZnAH9K
	wtKy+pI5MNwxTFsD83GrTC7GwesaFs9Z2wU3Vu82jg9W2SNfr1zpoL4pG2GkvJ8=
X-Gm-Gg: ASbGncuAyBWSXg0SoCcGYwlCxGhjrhoxp+aKVYxgDs2AQcIlCPtUYGDvMwdSgsaNaZA
	z+kv6Z8199SwvTcDxLSmqgoyNJ8LryuoHA0K/fBBtmcPNapTPVURmDKLR58R5HMMLrmP+CDH41p
	pwRHqLt+nYarcJnJWMhnFcF4zlFl5CM29kQOAOvX2riBRDS4L0w/wboVoXISOTw/4IqcjBAVwMw
	P1yK1UGKkDJanJiR++i/Zypl3i5Qsa39uzLuMfnzWzWDHsfL8M93sz9zOQk8NMPljsU/u0O/j/R
	UFoE+heGWx7Zury7vuQN7V6V7NeFCT4ZcgMvoHEY4lyrCCFtZRln3w==
X-Google-Smtp-Source: AGHT+IGpybvE45hfiU4SR8oSm9r2kkh3ze0e3IKrTgUQU7lkfSzFWQu/64T/KmNdqENi7cRLhMWZaw==
X-Received: by 2002:a05:600c:4f16:b0:439:88bb:d024 with SMTP id 5b1f17b1804b1-43ba675a8a9mr59723415e9.25.1740883806571;
        Sat, 01 Mar 2025 18:50:06 -0800 (PST)
Received: from [127.0.1.1] ([2a02:c7c:7213:c700:e992:6869:474c:a63f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba532b0dsm137845975e9.13.2025.03.01.18.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 18:50:05 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Sun, 02 Mar 2025 02:49:53 +0000
Subject: [PATCH 3/5] arm64: dts: qcom: qcm2290: add apr and its services
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250302-rb1_hdmi_sound_first-v1-3-81a87ae1503c@linaro.org>
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add apr (asynchronous packet router) node and its associated services
required to enable audio on QRB2210 RB1 board.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 72 +++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594d5ce5cc314c956eaca11556a9211..2c90047f7dd867580836284721c60ed5983f3f34 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -16,6 +16,8 @@
 #include <dt-bindings/interconnect/qcom,qcm2290.h>
 #include <dt-bindings/interconnect/qcom,rpm-icc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,apr.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1868,6 +1870,76 @@ glink-edge {
 				label = "lpass";
 				qcom,remote-pid = <2>;
 				mboxes = <&apcs_glb 8>;
+
+				apr {
+					compatible = "qcom,apr-v2";
+					qcom,glink-channels = "apr_audio_svc";
+					qcom,domain = <APR_DOMAIN_ADSP>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					service@3 {
+						reg = <APR_SVC_ADSP_CORE>;
+						compatible = "qcom,q6core";
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+					};
+
+					q6afe: service@4 {
+						compatible = "qcom,q6afe";
+						reg = <APR_SVC_AFE>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+						q6afedai: dais {
+							compatible = "qcom,q6afe-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+						};
+
+						q6afecc: clock-controller {
+							compatible = "qcom,q6afe-clocks";
+							#clock-cells = <2>;
+						};
+					};
+
+					q6asm: service@7 {
+						compatible = "qcom,q6asm";
+						reg = <APR_SVC_ASM>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+						q6asmdai: dais {
+							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+							iommus = <&apps_smmu 0x1c1 0x0>;
+
+							dai@0 {
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
+							};
+
+							dai@1 {
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
+							};
+
+							dai@2 {
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
+							};
+						};
+					};
+
+					q6adm: service@8 {
+						compatible = "qcom,q6adm";
+						reg = <APR_SVC_ADM>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+						q6routing: routing {
+							compatible = "qcom,q6adm-routing";
+							#sound-dai-cells = <0>;
+						};
+					};
+				};
 			};
 		};
 

-- 
2.47.2


