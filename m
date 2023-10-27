Return-Path: <devicetree+bounces-12498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE0F7D9B33
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 963942823DC
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E33836B1A;
	Fri, 27 Oct 2023 14:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="TFSMo+ap"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6478037142
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:21:07 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B7B4D58
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:36 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9c53e8b7cf4so331653666b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416435; x=1699021235; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J39DU+NUP1MyDCVAW5iZmO3nnggaV9wHLOSPXyzWmgg=;
        b=TFSMo+aplrEgBdrdWMfEIzyagrImpEPR2+pC27gqzSNHlGCLc7ubmCnNujKvqU94ar
         ZSWuYq4/i61S+OFqeUyOoLxylr+G0RaCjvISbaKm380BE6wy+pkpz8KZ1IvGhs70quPX
         3tv7f8U9WDrkHajo12BMpNKnTGv5w8+aq4tkJXvXN9mK4sv3kDPYXEHcItGdnXoYxcM9
         8JcpZig12fn0C4jh100UqrKqKf/gD8V+EAm+c58SjW04/eQb58TyX7oe+tI8nHSf8YCE
         YNteagO6FPGiOVymnBsvkl6ptl9qFZ6vg4NBRe675D+rId0Ai4E1vPcC6cFj7E1r8grf
         iEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416435; x=1699021235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J39DU+NUP1MyDCVAW5iZmO3nnggaV9wHLOSPXyzWmgg=;
        b=H+7yA/OdPXO4042T6FRSltnUZVWtIMp5g4lQGg9JIwT/ZZgXTohH6WSBI8teZYc0So
         Ag1KNUvCm5+gRt8LLdoL6lP7VnDDshqt00aPAcR8qhWaduDPiBF+QlnfwRy4NB2EuYtL
         wdCcGr33lQrMcCyr754N+knmxJlZQmLLVU5iMKGr8b0VasdsZQjqSHdAj0snnRsXlE8h
         btkTAkXo2ceGUYnyG02NOPDZjRsNgWC2rjQLxq7RUm0c7Uu9fz/G9MrMO2dYARGJxm/p
         X1FVL+oLiBvzpXfBsOGfaD95K7Fag9cDnPKTq3ljrmvZujdDI6pkRI5cRRDu3Wv9m6I4
         CX3g==
X-Gm-Message-State: AOJu0Yy7OubDI9Cw7de85cCsEw5aclWQbdMKyoxcq5/KpCMmvWnBpn6f
	wviaicNHsgmFkd329PTM18yHiw==
X-Google-Smtp-Source: AGHT+IFCX4X7aZkA2nNwinau10ZEyjzPe6rcQFe9buQ4PZNCX1z1473oKHI/H/1wQEoMDf5JMksXtg==
X-Received: by 2002:a17:907:7b8e:b0:9ae:69ff:bcdb with SMTP id ne14-20020a1709077b8e00b009ae69ffbcdbmr2575725ejc.31.1698416435247;
        Fri, 27 Oct 2023 07:20:35 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:34 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:29 +0200
Subject: [PATCH 7/9] arm64: dts: qcom: sc7280: Add CDSP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-7-05ce95d9315a@fairphone.com>
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
In-Reply-To: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3

Add the node for the ADSP found on the SC7280 SoC, using standard
Qualcomm firmware.

The memory region for sc7280-chrome-common.dtsi is taken from msm-5.4
yupik.dtsi since the other areas also seem to match that file there,
though I cannot be sure there.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |   5 +
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 138 +++++++++++++++++++++
 2 files changed, 143 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
index eb55616e0892..6e5a9d4c1fda 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
@@ -29,6 +29,11 @@ adsp_mem: memory@86700000 {
 			no-map;
 		};
 
+		cdsp_mem: memory@88f00000 {
+			reg = <0x0 0x88f00000 0x0 0x1e00000>;
+			no-map;
+		};
+
 		camera_mem: memory@8ad00000 {
 			reg = <0x0 0x8ad00000 0x0 0x500000>;
 			no-map;
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index cc153f4e6979..e15646289bf7 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3815,6 +3815,144 @@ nsp_noc: interconnect@a0c0000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		remoteproc_cdsp: remoteproc@a300000 {
+			compatible = "qcom,sc7280-cdsp-pas";
+			reg = <0 0x0a300000 0 0x10000>;
+
+			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_LEVEL_HIGH>,
+					      <&cdsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&cdsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&cdsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&cdsp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
+					      <&cdsp_smp2p_in 7 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready", "handover",
+					  "stop-ack", "shutdown-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd SC7280_CX>,
+					<&rpmhpd SC7280_MX>;
+			power-domain-names = "cx", "mx";
+
+			interconnects = <&nsp_noc MASTER_CDSP_PROC 0 &mc_virt SLAVE_EBI1 0>;
+
+			memory-region = <&cdsp_mem>;
+
+			qcom,qmp = <&aoss_qmp>;
+
+			qcom,smem-states = <&cdsp_smp2p_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			glink-edge {
+				interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
+							     IPCC_MPROC_SIGNAL_GLINK_QMP
+							     IRQ_TYPE_EDGE_RISING>;
+				mboxes = <&ipcc IPCC_CLIENT_CDSP
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+				label = "cdsp";
+				qcom,remote-pid = <5>;
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "cdsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@1 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <1>;
+						iommus = <&apps_smmu 0x11a1 0x0420>,
+							 <&apps_smmu 0x1181 0x0420>;
+					};
+
+					compute-cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_smmu 0x11a2 0x0420>,
+							 <&apps_smmu 0x1182 0x0420>;
+					};
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x11a3 0x0420>,
+							 <&apps_smmu 0x1183 0x0420>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x11a4 0x0420>,
+							 <&apps_smmu 0x1184 0x0420>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x11a5 0x0420>,
+							 <&apps_smmu 0x1185 0x0420>;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x11a6 0x0420>,
+							 <&apps_smmu 0x1186 0x0420>;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x11a7 0x0420>,
+							 <&apps_smmu 0x1187 0x0420>;
+					};
+
+					compute-cb@8 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <8>;
+						iommus = <&apps_smmu 0x11a8 0x0420>,
+							 <&apps_smmu 0x1188 0x0420>;
+					};
+
+					/* note: secure cb9 in downstream */
+
+					compute-cb@11 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <11>;
+						iommus = <&apps_smmu 0x11ab 0x0420>,
+							 <&apps_smmu 0x118b 0x0420>;
+					};
+
+					compute-cb@12 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <12>;
+						iommus = <&apps_smmu 0x11ac 0x0420>,
+							 <&apps_smmu 0x118c 0x0420>;
+					};
+
+					compute-cb@13 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <13>;
+						iommus = <&apps_smmu 0x11ad 0x0420>,
+							 <&apps_smmu 0x118d 0x0420>;
+					};
+
+					compute-cb@14 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <14>;
+						iommus = <&apps_smmu 0x11ae 0x0420>,
+							 <&apps_smmu 0x118e 0x0420>;
+					};
+				};
+			};
+		};
+
 		usb_1: usb@a6f8800 {
 			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
 			reg = <0 0x0a6f8800 0 0x400>;

-- 
2.42.0


