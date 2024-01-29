Return-Path: <devicetree+bounces-36263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFD484054F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B146B21FA5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61647627E8;
	Mon, 29 Jan 2024 12:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v1jR4bnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A1E6168E
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 12:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706532367; cv=none; b=hDmNHKQKCPnTcWf14HxaqhrOq95CtI7ah3L+Zg22gvHj7kCfgStRY8IP3Z17AuBloKeaqtqXEzFZiw3xompHxVwspZoLgkQaNMc3cuqFNVPWT3DNG3t5z7O0LAaPihzlTD52GaqI7N0lkuOFcpw0fDM0mc91MWkhYMna7ifP9yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706532367; c=relaxed/simple;
	bh=9lrK39yGWz+mMVNX3fo7mSMQqmbiZ6p21a+lgh38MTs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QvWbfRtrAF+ce4JFOkkkySPGn22WJi2HWNs0xvZAJNXd65PFiWzQAVD7BKFDqb4wJa86L/HK7q2j+pvsHtOzG1tdPMikWZcSBHxVfFqcsxHeqMxnX9oH+51CU7Gp2Jxl0lA3q1s4pXgOWw99/yxoCN5nzSwTWPl1noVGuNd9XKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v1jR4bnS; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a359e6fde44so123395566b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 04:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706532363; x=1707137163; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOMNM1cIuCUaGhFmJAiF8twDPA35g39fPAYJ946kJ00=;
        b=v1jR4bnS2Kv0ftRMiwMa6HPnCJRltCZdWq2O1gDuSr2FD3SElRjJD3OWRkfxMTffck
         RX67WbBFwjyfqX5eBARIb61fZO0P+JotPTSXEN28zCoubX/+OXeEaGnr0GkB3kBEyYFc
         BvJvGDbU1lCIf2PD+8q61AEl7xxPudxraMyPPqQgEDbN4mTuUvWDuPs/DDUsF6KoVHna
         b8UtApVGPJKIYHhRW2XdZkwJnyCLYQlQJTF2s4K6iTaq9cRa0P3oY+DxabuimDUOqD9a
         J0+KDOAE8vwO5+Xv/162TwjKhM05v/ejrQCQx68dkqrmK6BqoV6Ac/CzBZfjvX/awW7P
         7Ezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706532363; x=1707137163;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOMNM1cIuCUaGhFmJAiF8twDPA35g39fPAYJ946kJ00=;
        b=XbzD5o+d2wSjlD65E2RSfiDCkcS/MuCKaI55aDfZvAwLixX9FIlIgQb8zTj3Ho1q/V
         1OWXz7zrlRP7ZwqkWgEU5bWoVtO3Qfv9x0KCFp/zPWPsZXhl3tt1dOWF0qlRycQWYg/A
         SHjxPMXFK6uxZLDiHOthDiCJrJkJPl409biN2Nm3wlFWjPEh2uF9bP3e37QulEYDZujY
         YUFxD3jGV4SWyOJ0mbVMVNSCv8ZIvBknt6Jq6IRbOn3+y2zzAdncQjV7/7o1gXX8he7j
         Yo/0bJGbnNdYnOPATi5KiQ1F8M2xh3GdFma9iSjtsvP3DXn5IdhoszsvZR0KYcDty/8I
         lDdQ==
X-Gm-Message-State: AOJu0Yw4NA4leQLT+gE4HABzKw5bXUHokbCMNgurFKkojxLxBSoBTJTk
	RA1fdGBZw/CTeCKZMxVu/Pl1XFZGTq/x1vhP4uEIMx7x0V6a3qcbNdQJ+5baYlWEPR9jyTxRp01
	s
X-Google-Smtp-Source: AGHT+IE/xnMvPe29TkcqFpwPP8bs4ej4VImwX/JJTz51AdHdHMEKH8UzH8CSIj+/FB+AyqO7nY07xQ==
X-Received: by 2002:a17:906:3c0b:b0:a30:b7a5:c34e with SMTP id h11-20020a1709063c0b00b00a30b7a5c34emr4627918ejg.17.1706532363428;
        Mon, 29 Jan 2024 04:46:03 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id 20-20020a170906329400b00a3527dba974sm3041495ejw.35.2024.01.29.04.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 04:46:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 14:45:36 +0200
Subject: [PATCH v6 04/11] arm64: dts: qcom: x1e80100: Add ADSP/CDSP
 remoteproc nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-dts-missing-nodes-v6-4-2c0e691cfa3b@linaro.org>
References: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
In-Reply-To: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3499; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=RU2sVakWDTM6FIOT1mP+9fDqahd9wnJzAdPildXmazk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt537i8X4nTI8vcgj+0wmx+56mXLNXwLzgYKw4
 yAoKfQ6NkSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbed+wAKCRAbX0TJAJUV
 VnZMD/kBhJFWFCWUCC3LH18ZhG7DX+xmln+vTWLI/b5Jf15S0JGus0+LW8W5pLE3dNRiEkTFFJZ
 1j3rvRjk38ZbwFRo9pufWjqFu6o1ShsrLY6bR7c9+RWeY6mNql0WHaQYBzDSF7xLgWfokbScVa4
 Rg79i7kWbARKQwBG7gOR5THgpD3yRZ0nfR8szp8qvdno+XwP41vE9wJMmlSAE8eBYZ8R4OLllcq
 L1U5IdO5n1gQRvDyzr8lIX9/k/eYmXEcF+rxtu70b21nwP+EJsvDwBGHg481Nfxo3mmxqjzKUc5
 wZJ7eIGQuAncrXG8/EzR0p+oA8OO8H/RmrI7leyQPz4BLnOcLenhjQQDSbyEEnq8qNEMiHgW/Sq
 PGaBLb+ZKCvIKSYZasWKexhOfTrTdAIDLkpAk5EpQ0w99/tMer2sR51JGOMrPrdgOiDcxUmNOiC
 K/IhhRdaKBh7AC3AhV8+vdnH9MElTXsjS/VU9iq1/UDjI7OQcMpo7JFjpEv+x8C0e4wIa4vwTDz
 gCW4ArvYWUat1Ko3gJF+twE4edrFYxpH0NOXe4QlsPfAPL+qzKbSveVP71jq9yaMNogAK8hNrKS
 /14kwfr39uehNRIAuR3XbMxTQhxM87nY+frQvKK54Ge2Dsk4GxvnUURa7K0ujLtUop+XUWT0dS+
 Fwdhsr4spaFBJqA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Sibi Sankar <quic_sibis@quicinc.com>

Add ADSP and CDSP remoteproc nodes on X1E80100 platforms.

Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 98 ++++++++++++++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 3790d99eb298..be69e71b7f53 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3590,6 +3590,104 @@ system-cache-controller@25000000 {
 				    "llcc_broadcast_base";
 			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		remoteproc_adsp: remoteproc@30000000 {
+			compatible = "qcom,x1e80100-adsp-pas";
+			reg = <0 0x30000000 0 0x100>;
+
+			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd RPMHPD_LCX>,
+					<&rpmhpd RPMHPD_LMX>;
+			power-domain-names = "lcx",
+					     "lmx";
+
+			interconnects = <&lpass_lpicx_noc MASTER_LPASS_PROC QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+
+			memory-region = <&adspslpi_mem>,
+					<&q6_adsp_dtb_mem>;
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
+			};
+		};
+
+		remoteproc_cdsp: remoteproc@32300000 {
+			compatible = "qcom,x1e80100-cdsp-pas";
+			reg = <0 0x32300000 0 0x1400000>;
+
+			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_NSP>;
+			power-domain-names = "cx",
+					     "mxc",
+					     "nsp";
+
+			interconnects = <&nsp_noc MASTER_CDSP_PROC QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+
+			memory-region = <&cdsp_mem>,
+					<&q6_cdsp_dtb_mem>;
+
+			qcom,qmp = <&aoss_qmp>;
+
+			qcom,smem-states = <&smp2p_cdsp_out 0>;
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
+			};
+		};
 	};
 
 	timer {

-- 
2.34.1


