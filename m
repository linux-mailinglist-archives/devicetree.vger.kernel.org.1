Return-Path: <devicetree+bounces-130819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CFD9F0FB4
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62C5D165836
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B056A1E25E8;
	Fri, 13 Dec 2024 14:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ru3/IYcq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AAC1E1C1B
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101667; cv=none; b=PvMYK9nV0dfPgyjQaGD+8vVzjqG1c7+mYB71+u71fFAOKWV5hebUAEWNFor362Skspg/PzTCxrPokORUN0MZyecwfKIjQ6SRvIDJW37ZUmqXeOwlQMmhFs92z7hGf7T01kCmWRLrsjmtHDLcV8a8u1V8X+yAaLezjFaG47JLyIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101667; c=relaxed/simple;
	bh=2Z7rlZ8KnIbtY9crod+Oqe8Ow4JgBajXrBH2UgHp4zw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UWPk8S6Tc/M39Y6ekzzaYWIv/HbkvEYDSCqHVGoRob5frDl2s2mY+dracZ3Ghikd0clPiiA/YY2FWppE+YrPrnfv7s7P2elCzJhrhtOXkq9PxIwVQdb8zFi2pL1ZGAvLK+CNpairrrwCF1Pvq0SnrfWkSWlzZPqhXR9r3bSXxUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ru3/IYcq; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385e44a1a2dso171174f8f.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101664; x=1734706464; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qp8DHezHQjmX4URQ12rjx/9mdAe/cabXONMMNGG3es0=;
        b=ru3/IYcqYibmgilVvEkxYYbRsrGvhHjijXbbkIwU6IolJYUBzGE/Kq1HtMEQldzqj7
         ok8LwRm3R8DqsO/m61jPn7emICYVj0QFpsG4VVNeC20brOPHYgmctL6+dJZ0tx0ARf7A
         wx8gBiBRq04ZIKcRz6G4ekNh5+E4ybtqQ9gglP/BipPPGOJUh0Jsii5pE1sla5KTjdyG
         yPFsRwoQS4zxn3HIIRCUjY/xuNBblzqe0h5Ss3t6fRKB265Z9sycPsl0W6DW8a7qx5L/
         ZMMVCKw1RLPu+3feCwia08yGKBaT4AEq+QYAJ9G7NnV6PS1euyJWJYuKfIIbVG+UWZig
         zVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101664; x=1734706464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qp8DHezHQjmX4URQ12rjx/9mdAe/cabXONMMNGG3es0=;
        b=mkjtQ9lZ7c3sRa3JA29im4LpgVXh3EK3VyXLaJ7Gr8ByMHzmL8LHVRXJcKbdDldmJO
         7NBbPKHT7Wnykls5d4WQGkj7X2zSKyCKmn+79Q5SbaLaObSxN2Wn4K7bNQjr/8q6SqZ7
         vghtGRo9oM2BPrV84G4u7Zo8OV801qqPrc7ViqJ1xZMroekk6zh0PchyHqFUVX4+Re2R
         7fXYvMSE/g/q5Ki9dM1lMLyHNH/In5ELkE6RIBU6YB4LOzwC2V5AyNUORf8++uls1Ay2
         8xbfnm0aWdMQ8jNvhQcIQLZVb27X9Zyc0zBX451JAyhk9ixYzC29ToqAd+RUMprlIB9c
         vjdA==
X-Forwarded-Encrypted: i=1; AJvYcCUYyV8cqDiSq26ksb3AduJ4Kh7HzdicBKicT6Ru6xm6qhCmTnsGKcnC+KzhCkYeB/P2UNvf9tkvjfJG@vger.kernel.org
X-Gm-Message-State: AOJu0YwobzwwEnz9anj7cVH1+AjULNIL8edTfDJvak63sXQKkeXvvfOY
	DMd9YZgsou3Motorp6bK/1NPGdqUZsiDFFYQcGC/Fir3J67WLpRfzjx5YXPTYH8=
X-Gm-Gg: ASbGncvHJF5z76N5auCAIwCQYES25Ut8NfHXQpfXKqR0tD6B9JXWB+3g2PfJy1cQeA7
	U/Vi0GqslSNGpx7OwSaVi8qbeT5pm/No6ncNfUH9xvqEw14SfKdQq24JmeQa7k8/AOo9/Ws6bLe
	82y8bUY0RlsYj8RgHc2+SjH1uDjXTdLG0iW5BoTqyCZxGq9D9p23ZbVcFWTbPxukxh4FPaFlxVh
	jsvDMjVDPq70gVrDQr5j8wbWfx6v1ck64+itAAnlew8HSzeeI3QjtVvXhCBXkmd7IcyJAtS
X-Google-Smtp-Source: AGHT+IGlQJCWPBdzvowciiADLBr74y2Gno+/9C6IZnOnkHlonlslL6iwnAa4Gp/yWKuDDl0X+h31iw==
X-Received: by 2002:a05:6000:1886:b0:385:f479:ef46 with SMTP id ffacd0b85a97d-3888e0bb633mr889734f8f.13.1734101663868;
        Fri, 13 Dec 2024 06:54:23 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:53:50 +0100
Subject: [PATCH v3 01/23] arm64: dts: qcom: sm8350: Fix ADSP memory base
 and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-1-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
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
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8792;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=2Z7rlZ8KnIbtY9crod+Oqe8Ow4JgBajXrBH2UgHp4zw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqIbs/B40RcMVl2vPIFOzT1aP8ppeIxICb/W
 HqJfCn6L3aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKiAAKCRDBN2bmhouD
 121zD/45niGFok4o0YDpNlRAq5kA3DKetzS0k8hriSKbFE39aRfVwRaJ0IOHV6EuR4eQEzESw2K
 rfYCRxC1pPDY3+5U/2odibwWFLXBLag9p+iSlA024PrJni9H4hAEFRVvYT/bmNM23a5M7N+nJOf
 nRSlVQx2RiWgc1QxRv1z/pCkcYf0xDG2t8z+oR7og1zFrPiD19WjWEgg8tv5BnMZVgAYKMmdEzj
 BAa+IpqpMitzpGp0p2RFAIVkMMrm1vpkoSf0VWoc031+17u0ZRrmXxj0+TMR6wJXt1KdOjelz7S
 /EWyh8ZXNbD+e39MaHXhxCRbLK5agSD/8c5CEoIIoKeRgxDv4FIb6DLmmOSAY5Rrenw0PMGTxDe
 3GAJwR4ciaLUvYbtstAEbV7sbZjvG3tE2RN6NoM6OQG5ErDBBkC9FAASfTjYKYWvpruEmUKNtY3
 SqTaP9VpEvao/X/DBVfXQTgEI201FPIOTS4Y/64joV24FyD0/Wc5az11TtRCFPdpNxx9k0/e5hE
 aJHpUsWgqkG/YemFem8BTnL0ojqm3m15f1S/sW+nCXYi+HG83yjAxG1mpgBhdVT3YZa1fWH5loT
 XmlpvHPHWYsS7oFpJYyHcK6rgkfrXSaGs124NMwaRaFUcA6/QmCkWQxzw62ixFoQ+EO7gH74Wu4
 YfsBfEZjyzO4T2g==
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
Cc: stable@vger.kernel.org
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


