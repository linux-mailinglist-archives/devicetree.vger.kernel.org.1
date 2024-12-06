Return-Path: <devicetree+bounces-128014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E459E742A
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F2D51679FD
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4321120C483;
	Fri,  6 Dec 2024 15:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xBNYbe4d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DA3207E17
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499175; cv=none; b=OwFMDh8hlx9IbqnMHLIglPheUcmcBReyDMuoZ/NsiQsQbtDiHJF+fPFpulc2JXCvFSTUhuKUaHSmZpbXr2RvO3QntsUB1HJuGvEg2HuQoUIme/hTjUEwNK/IY0od2JD8KHCrEIEMNdXqRu3rxvFGODyBHoZUanAqymnfLTTRRNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499175; c=relaxed/simple;
	bh=BmeLBSD7e/5702j3yO++zDTzKsDBRH4GtN6Tw8+69y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BykUVEVi2bTtRQSgceb37NLbUDy2yYaxpbkBkcvMJhxm7p0HB21mYUQLZSGGPYnC4HFOIeMvm2Zp5CbMkzJeFLHn7NImEBcSR+AgS2K9iCsHC1clOJnOLanrpHfg+4OqLrD5haMGodk0dUtnSfWImsSP+iK88sHCdME/7mftFbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xBNYbe4d; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43499332f7aso2346535e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499170; x=1734103970; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/fP5kZHXhj/8NE4k7+vfB0C5FDMhhdszC9LncVHhIgA=;
        b=xBNYbe4d0fN5c5z4Bbwe/J7K9rA8Lal7zcS3vvVmufQJBMisp2bVuCAAP1LVvW1BZC
         8WlxTMkKGSlZLZNH31AKdzbvlMsVCBtACOf4XwEuq9Lbn7GkhLqo8dQts8Jo3dA+DpEH
         8wja2Z/aygMk5oUHlKPl3QlmYhIY8DaLkSxXHG86smCuClfRDiIMIUXjgpccHUgObCFp
         xBHZrdVVNrZcn9GhXYx5auM9LQjN+dztAa9wJFsOCO2VuhB95tzPigzfG6w+plZQmJda
         49W6JocTsO8hYNmdUJJtJukWcJ/RVfYUDZLbdqsVfS0t4r8UH1FBfX0KiqoqfmgdPGN+
         P7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499170; x=1734103970;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/fP5kZHXhj/8NE4k7+vfB0C5FDMhhdszC9LncVHhIgA=;
        b=LDdMOe1VRK5wNkL7zKtrn71ZaRaje7UDOnqzkCeLyc2P6TFFE7/4hETTcbADB75+U4
         aSpoQ2657dCGazr1rhBTbEhYfS07jlum/WHUehKfRALGW/Zdppd61VUvSbZfhljGAQYQ
         DRGtPlQIa9+al5TU0630sJUrKVM318ibragzS7VRIyqf4kZET9txfJSrIaomsrX99n31
         x6PNXsQuLHLJEh7CQ4Qj5desPB/GoFf1d9E94zXpEGLTalS9DseOlwM84leuccRyW060
         oPUcUVIz92j4fETFPfAFknEEyj4IuTHCGus9otpbQRQ8Q9oNNUK0EHd5ummFETvN1rXa
         Ypyw==
X-Forwarded-Encrypted: i=1; AJvYcCVky0hvpUbexREbOgfg1JcSTz4BAZR4Z0Mw2uqhWSzi1CTCYl+1BjkVvMbmVUS1Uaa6B3m9L7uxWo0w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Th4LMcvvOtD/hhCuHYT16KuLTyGlv1ia13ow3vB1+XEpe0af
	hIJMl7HzRWs5m5mP0bpdIMT053sHRBm+mdZ7q/SYOHx7t/zuzhznkyQDHcfS+LQ=
X-Gm-Gg: ASbGnctXybKJnnCGSw3pf+eIkjX56j6onpMBppdZtNgE5zxGbq70FSOOEGZZxug8pqo
	9Cm5lU1GNzLDOUZZx8IN2S63O//Qf7Lv0h421+1v26vSPPBxi5a9CSiXI0avCY5LZBpRxn3teQu
	XKwobA3l9lAPrPXUtjrKEK4GL5/igTTRkOqkbu6Hc9R2q5XCnf2Ju4F9jpwueT5STy4cJuZk+b1
	WB+/Lr23gHD+49XU7qCcdJ8yW3nHH3as0YCuiBlAn/fDTclf5wKNpN8t4Tb8Igpvg==
X-Google-Smtp-Source: AGHT+IEqk0JEuSuJAZ3heowJQjuPLLGytVEwtun1KUqwa6iUVud58u9HPAElPZ4dtUN4QPdjtHAasA==
X-Received: by 2002:a05:600c:46c8:b0:42c:ba83:3f08 with SMTP id 5b1f17b1804b1-434ddea6713mr13067285e9.2.1733499170271;
        Fri, 06 Dec 2024 07:32:50 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da113580sm61158035e9.29.2024.12.06.07.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 07:32:49 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 06 Dec 2024 16:32:25 +0100
Subject: [PATCH 01/19] arm64: dts: qcom: sm8350: Fix ADSP memory base and
 length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-dts-qcom-cdsp-mpss-base-address-v1-1-2f349e4d5a63@linaro.org>
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8733;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=BmeLBSD7e/5702j3yO++zDTzKsDBRH4GtN6Tw8+69y4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnUxkOAMkm6xnxUhXCe02+km9UVDnpihMdnKqLE
 xwMWb6ZnoqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1MZDgAKCRDBN2bmhouD
 1x6EEACSiePl2lgyuzmXQEf3BhHdsMHIOl46AtpbPde51y6Rf3nkYLIPlY5bZL+XmST7f388VcD
 HHALgya33hOLdDi2Kfy55944R2fAGVehlypMqu/kbw5USowpPNFgbGQBF9NpUx3MFE2EUz6eo8a
 drLjV/1wR56fEegzMTaXPfVivRF2d71JbpPeXHc0Kzj+m0QpRy8pgghwqulAdlbCIGBEZK7+moR
 m509S+ZnOASWInsW05+IyskY+3LVoOsjNwCURj4J7RYW9oay702dFHJeGI9GFPI8/7PVKN3vnUn
 Yi+tawfwCO/08b1vc8VoawxnEjGd9a+JkCLhuiCkFE3YCGpm953bZhNNZU/mzEs3vbduKyDtes3
 Qwolvmvhz59pZc7mDIBY6aaCvllVjux+mrhUqWFa6rnUOwihrkvnwmaD/LEXCTLk+6rDx3D2H9o
 ztGDAiodKOvcTnXBSrVyA0+yPD1XE7b9k2e8xoDPGhPIpf2EEby7r/TnrfCdTDhOXEvTuJ3jIZo
 iqYp55wtSLNhDRMTVig+hb6wvZk/AklvIwRV7VyHJ9y4JizG4SyYzHM4/iDr8ew7j5Ej4yq1k3I
 sJAEfQycBS6dMJWJcdTvdY4RAliP8tQIuspQJYtVWll7HlZ4JMMYVaJ13jqOzSf7pOVjWIGeFe9
 tPGgA7Fs83OyzSw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0300_0000 with length of 0x10000.  0x1730_0000,
value used so far, was copied from downstream DTS, is in the middle of
unused space and downstream DTS describes the PIL loader, which is a bit
different interface.

Assume existing value (thus downstream DTS) is not really describing the
intended ADSP PAS region.

Correct the base address and length, which also moves the node to
different place to keep things sorted by unit address.  The diff looks
big, but only the unit address and "reg" property were changed.  This
should have no functional impact on Linux users, because PAS loader does
not use this address space at all.

Fixes: 177fcf0aeda2 ("arm64: dts: qcom: sm8350: Add remoteprocs")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 272 +++++++++++++++++------------------
 1 file changed, 136 insertions(+), 136 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 877905dfd861edbcd083e6691a7cfa1279164ffc..5fae676af3a3da21066d01092b6b24fbc4ae4a40 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1876,6 +1876,142 @@ tcsr: syscon@1fc0000 {
 			reg = <0x0 0x1fc0000 0x0 0x30000>;
 		};
 
+		adsp: remoteproc@3000000 {
+			compatible = "qcom,sm8350-adsp-pas";
+			reg = <0x0 0x03000000 0x0 0x10000>;
+
+			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd RPMHPD_LCX>,
+					<&rpmhpd RPMHPD_LMX>;
+			power-domain-names = "lcx", "lmx";
+
+			memory-region = <&pil_adsp_mem>;
+
+			qcom,qmp = <&aoss_qmp>;
+
+			qcom,smem-states = <&smp2p_adsp_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			glink-edge {
+				interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+							     IPCC_MPROC_SIGNAL_GLINK_QMP
+							     IRQ_TYPE_EDGE_RISING>;
+				mboxes = <&ipcc IPCC_CLIENT_LPASS
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+				label = "lpass";
+				qcom,remote-pid = <2>;
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
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+					};
+
+					q6afe: service@4 {
+						compatible = "qcom,q6afe";
+						reg = <APR_SVC_AFE>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+
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
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+
+						q6asmdai: dais {
+							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+							iommus = <&apps_smmu 0x1801 0x0>;
+
+							dai@0 {
+								reg = <0>;
+							};
+
+							dai@1 {
+								reg = <1>;
+							};
+
+							dai@2 {
+								reg = <2>;
+							};
+						};
+					};
+
+					q6adm: service@8 {
+						compatible = "qcom,q6adm";
+						reg = <APR_SVC_ADM>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+
+						q6routing: routing {
+							compatible = "qcom,q6adm-routing";
+							#sound-dai-cells = <0>;
+						};
+					};
+				};
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1803 0x0>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1804 0x0>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1805 0x0>;
+					};
+				};
+			};
+		};
+
 		lpass_tlmm: pinctrl@33c0000 {
 			compatible = "qcom,sm8350-lpass-lpi-pinctrl";
 			reg = <0 0x033c0000 0 0x20000>,
@@ -3285,142 +3421,6 @@ apps_smmu: iommu@15000000 {
 			dma-coherent;
 		};
 
-		adsp: remoteproc@17300000 {
-			compatible = "qcom,sm8350-adsp-pas";
-			reg = <0 0x17300000 0 0x100>;
-
-			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
-			interrupt-names = "wdog", "fatal", "ready",
-					  "handover", "stop-ack";
-
-			clocks = <&rpmhcc RPMH_CXO_CLK>;
-			clock-names = "xo";
-
-			power-domains = <&rpmhpd RPMHPD_LCX>,
-					<&rpmhpd RPMHPD_LMX>;
-			power-domain-names = "lcx", "lmx";
-
-			memory-region = <&pil_adsp_mem>;
-
-			qcom,qmp = <&aoss_qmp>;
-
-			qcom,smem-states = <&smp2p_adsp_out 0>;
-			qcom,smem-state-names = "stop";
-
-			status = "disabled";
-
-			glink-edge {
-				interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
-							     IPCC_MPROC_SIGNAL_GLINK_QMP
-							     IRQ_TYPE_EDGE_RISING>;
-				mboxes = <&ipcc IPCC_CLIENT_LPASS
-						IPCC_MPROC_SIGNAL_GLINK_QMP>;
-
-				label = "lpass";
-				qcom,remote-pid = <2>;
-
-				apr {
-					compatible = "qcom,apr-v2";
-					qcom,glink-channels = "apr_audio_svc";
-					qcom,domain = <APR_DOMAIN_ADSP>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					service@3 {
-						reg = <APR_SVC_ADSP_CORE>;
-						compatible = "qcom,q6core";
-						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-					};
-
-					q6afe: service@4 {
-						compatible = "qcom,q6afe";
-						reg = <APR_SVC_AFE>;
-						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-
-						q6afedai: dais {
-							compatible = "qcom,q6afe-dais";
-							#address-cells = <1>;
-							#size-cells = <0>;
-							#sound-dai-cells = <1>;
-						};
-
-						q6afecc: clock-controller {
-							compatible = "qcom,q6afe-clocks";
-							#clock-cells = <2>;
-						};
-					};
-
-					q6asm: service@7 {
-						compatible = "qcom,q6asm";
-						reg = <APR_SVC_ASM>;
-						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-
-						q6asmdai: dais {
-							compatible = "qcom,q6asm-dais";
-							#address-cells = <1>;
-							#size-cells = <0>;
-							#sound-dai-cells = <1>;
-							iommus = <&apps_smmu 0x1801 0x0>;
-
-							dai@0 {
-								reg = <0>;
-							};
-
-							dai@1 {
-								reg = <1>;
-							};
-
-							dai@2 {
-								reg = <2>;
-							};
-						};
-					};
-
-					q6adm: service@8 {
-						compatible = "qcom,q6adm";
-						reg = <APR_SVC_ADM>;
-						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-
-						q6routing: routing {
-							compatible = "qcom,q6adm-routing";
-							#sound-dai-cells = <0>;
-						};
-					};
-				};
-
-				fastrpc {
-					compatible = "qcom,fastrpc";
-					qcom,glink-channels = "fastrpcglink-apps-dsp";
-					label = "adsp";
-					qcom,non-secure-domain;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					compute-cb@3 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <3>;
-						iommus = <&apps_smmu 0x1803 0x0>;
-					};
-
-					compute-cb@4 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <4>;
-						iommus = <&apps_smmu 0x1804 0x0>;
-					};
-
-					compute-cb@5 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <5>;
-						iommus = <&apps_smmu 0x1805 0x0>;
-					};
-				};
-			};
-		};
-
 		intc: interrupt-controller@17a00000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;

-- 
2.43.0


