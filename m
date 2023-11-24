Return-Path: <devicetree+bounces-18681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 400137F7CCE
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 19:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFF652820AC
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 18:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A8439FF3;
	Fri, 24 Nov 2023 18:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oVRMlGNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 961291BE4
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 10:17:23 -0800 (PST)
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-359d796abd6so7685755ab.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 10:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700849843; x=1701454643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tp7fD3jlV/6F46fUFoF/9D+88c9HNYfiQpt93xcwl4k=;
        b=oVRMlGNX+DaJ7+n4Lri6vDn4PsuJDSoJ/MAsglsZb5zerw2SVxp4EuR+ApjeZ3kcpA
         x2Haaprxts2MfameXInDPXSDSF+KadI+p2bOz4sxDWpMDeGSDmmhNQ6pqot830aodC72
         Lwb3l+CXdC6kMe98mtMCRMpfY3Rt3qRq9EnUeMJyshbW92Gw/ST9NFnBme91j23MeB9Q
         1rqyQtWEJBZ2YM3kROpHgViHbMFJqG1kKuoh8HMyvJEEGRZzDOj6nK8Rk6ajcHBdbs6e
         XGxaPT4HU9uv1vjlGAlIO+COlpbf8weJ0IKX2TToLn9DW2iZqWN1qVDPRfFmG04FQwNJ
         YDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700849843; x=1701454643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tp7fD3jlV/6F46fUFoF/9D+88c9HNYfiQpt93xcwl4k=;
        b=G6bnr24hzdYJh05KL6mCGsebUZayq76ywcT8ohrGoIqM/oYirw4TckgSsZ3noIyZiF
         o2zX9CYWhWG0XE/t2fl+jNDD9T2yekQ7btQy7mp0ev2DkV8MM4bm/ShZ5Q7M6w3ZLc/M
         dfxRIBSBzvalVH/eVgJafOA0M0HPifGnsrJyhFUmMJ9tuaELD2kdPHP3IIyjJCI8CDe2
         5QryUfvatCjJQKvcEbgEoTHUBqVfCMJv5JSol56uO+hoZM/GIv5t+qi7eYNrb8XU35q+
         lIHNK1F6hWOU9jF0uBBPLAS0AYfZ4G2Tk+4G/VPY3PxwqGDKSFKzlCETTf6qdQEppjIg
         37jw==
X-Gm-Message-State: AOJu0YxohLCaej7YRNjJkRlmOyWO6tlDhvbEhGgq43pYSi+xZ1300U23
	kKy0x3zDiQYj2D4ixzsjiJ47cw==
X-Google-Smtp-Source: AGHT+IE0SEY3bBNErebJtlWLkaiO2fbuTA0XUbvSq+EA021neFWDA20xaC5wf9UNknQJxXVRytecgQ==
X-Received: by 2002:a05:6e02:1d8c:b0:35c:2ffa:4525 with SMTP id h12-20020a056e021d8c00b0035c2ffa4525mr6320284ila.4.1700849842935;
        Fri, 24 Nov 2023 10:17:22 -0800 (PST)
Received: from localhost.localdomain (c-98-61-227-136.hsd1.mn.comcast.net. [98.61.227.136])
        by smtp.gmail.com with ESMTPSA id et21-20020a0566382a1500b004665cf3e94dsm937031jab.2.2023.11.24.10.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 10:17:22 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	agross@kernel.org
Cc: mka@chromium.org,
	quic_cpratapa@quicinc.com,
	quic_avuyyuru@quicinc.com,
	quic_jponduru@quicinc.com,
	quic_subashab@quicinc.com,
	elder@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: sm8550: add IPA information
Date: Fri, 24 Nov 2023 12:17:17 -0600
Message-Id: <20231124181718.915208-2-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124181718.915208-1-elder@linaro.org>
References: <20231124181718.915208-1-elder@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add IPA-related nodes and definitions to "sm8550.dtsi", which uses
IPA v5.5.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 39 ++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 7bafb3d88d69b..4d28150c985b5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1995,6 +1995,45 @@ gpucc: clock-controller@3d90000 {
 			#power-domain-cells = <1>;
 		};
 
+		ipa: ipa@3f40000 {
+			compatible = "qcom,sm8550-ipa";
+
+			iommus = <&apps_smmu 0x4a0 0x0>,
+				 <&apps_smmu 0x4a2 0x0>;
+			reg = <0 0x3f40000 0 0x10000>,
+			      <0 0x3f50000 0 0x5000>,
+			      <0 0x3e04000 0 0xfc000>;
+			reg-names = "ipa-reg",
+				    "ipa-shared",
+				    "gsi";
+
+			interrupts-extended = <&intc GIC_SPI 654 IRQ_TYPE_EDGE_RISING>,
+					      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
+					      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "ipa",
+					  "gsi",
+					  "ipa-clock-query",
+					  "ipa-setup-ready";
+
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
+			clock-names = "core";
+
+			interconnects = <&aggre2_noc MASTER_IPA 0 &mc_virt SLAVE_EBI1 0>,
+					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_IPA_CFG 0>;
+			interconnect-names = "memory",
+					     "config";
+
+			qcom,qmp = <&aoss_qmp>;
+
+			qcom,smem-states = <&ipa_smp2p_out 0>,
+					   <&ipa_smp2p_out 1>;
+			qcom,smem-state-names = "ipa-clock-enabled-valid",
+						"ipa-clock-enabled";
+
+			status = "disabled";
+		};
+
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8550-mpss-pas";
 			reg = <0x0 0x04080000 0x0 0x4040>;
-- 
2.34.1


