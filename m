Return-Path: <devicetree+bounces-249777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9088DCDEE96
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9E50D3003FDE
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38637277013;
	Fri, 26 Dec 2025 18:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXUWgU2J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QgZ9O0AL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBF126C38C
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773849; cv=none; b=FbVX2lGR2WnhXdP1KIoGwQBcR87JdTM0C0Bug+roAU2jBgxpoe7dAJMz54C3QFGcg1XtYoF8UfuNSLT+6qbMgVoWodMfSSbvzw+yr8kk1l6SgUquxTOySnrceAuiSU5sy9Ir4OUs79rvR5uGuaIJExBrWZPC8q8K7ibKQA+Af38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773849; c=relaxed/simple;
	bh=MHrvTu7/8qNQc0daC7QAY1RnVJSYBL5V+AMbLTuWEFc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BTs3owwB98SnkvabASSZ5OVy1NI0bsIVorJ5sMr6Hc3N2Mh+4/katU3svz8lI9a9sitr2TXMzc/kTWbFhK7RMEewJOpNabUYMdpM6V4Zj6z09NZX/orpXQh0vGemwqyR/jqg+eWcbQug7mjKaw9x3RJJjFYYndq+xRbBSaksNqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXUWgU2J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QgZ9O0AL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQGI7bx2223156
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IyKbMEU7RDCEwbjehbdfTgNXZEiXM/MoJRl3Or3JxNA=; b=fXUWgU2JJCcwiRqc
	T7eQ7CzOk1aO7EoPZ9uIHsuhvC/HH4Ltk8CHP97CtBdo52nqWH+5SpDoKNXZzueh
	bf5kUpfDRY3abMVHY/tBTxwcCZqzCBq6EjpgGSwCPd333InSAuBHh7QuSDF/benO
	B5VE1bx/1vgYMNEOAkFRRxzmm7r8P8yq6mna9yN9L3CcqZyF9x44O3+Kgiv5ZYmF
	Qc2BWQSSamforomW0uwtwnwi+//gxpwTV2qsyHfDcQFbHYsIzF6k1w0baN253vLV
	SftUqgNVuNmNh4Qsp3TiaNCresh/Gl8yGj2VItNsyxex18ih/IGLRCq6qzQkMKBa
	eRcVpw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8p4946vb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:45 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso16157444a91.0
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773844; x=1767378644; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IyKbMEU7RDCEwbjehbdfTgNXZEiXM/MoJRl3Or3JxNA=;
        b=QgZ9O0AL2n/Fntn34+py5KtSH3rimfNgwjxSC/4m+W+X8ouUG40kPRLTdeCwizK5jh
         //9QTBS6HsZWpTwlsa+P97eu1K3uGxr4lZPazG+ghYrFKRjH3h8O+AsYAH4qOjM4XHW9
         ooefNSGcjhrybDZd8T/6Xpars/nqjwaIju9F537sv58myHt1PJxD/VaU2v9HwRSjFI82
         JFhtrk29p7mCHT8PGfmhqNToJGFYubF+P7H4hBIjOZlSh6vtiWs9RMNLLNPHGGebl28x
         adO84ItRH+bTd3sbcFV76lclaYtGBeJpKCmNd1DQreSkjluSmz45tyvUesB5p1q+HtjL
         Pybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773844; x=1767378644;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IyKbMEU7RDCEwbjehbdfTgNXZEiXM/MoJRl3Or3JxNA=;
        b=fNKCUXvMbFLsHDfts+MsdZuW1vX0fO6rNBOIFcMfCtU0e+1TjLfdLl3scs0W2AhsRN
         Et6RDL/DAKfjo+Z4k644TBTJeJJsSHH2MjJeo1aOanx2p9k/LwJKRYhcY6mIxlgwkpzj
         ThYVTa4acjTmjyduWZl7id1rHGNnocbAZY9eQQWuR64LlVBItureEEgLvQ7AybOCCpaZ
         VN8Iq2+X3++0f0sIqWBmbDrOycOGrNe8j/ZwcEGmVo5DwzVEWFoVLgppgxnE+ylYejG5
         cc9R2UONYQOK8H6d4jTrV90zCmsA6DDtkDklSFv5ki4tH90TYvmIMxKvcESs++oyVMx0
         L6cA==
X-Forwarded-Encrypted: i=1; AJvYcCVEmGmHev4lne3hNpswoCxCc/1te87hbsg0KO1sdEO2eqlViwcF/ZSPxbWKrjtbZUgou9GQZrI/i5k3@vger.kernel.org
X-Gm-Message-State: AOJu0YyVQkugrkb/N99k9eBVGUxXLoc6UtL32TagxyW7vEOhMkX3vivJ
	R2y/Q36FC/hA3kTeTy4QSoo3rGm+2uOAC30n1x5/qfE+/MnhxZyqyZBZVEWaYQOWbnW+6inB7rN
	g+gwJRddnk1E6u1oXmVEM44FsCirTth1Vk5VHYThzaXOZc/b912p2QhZ3qfLrOiTW
X-Gm-Gg: AY/fxX4SPdX9ynuWYQ/Ut/iQDZtT9v+N5icLaymaWrlu4oMyF40KI0l5YCACsGWz5mN
	BZwEnWzQSsg9/cAYErcsBK/aeCY698c45agMQuG9DKeyKAOxMirllsdJF/Jo0e2iVz48KkgwBoX
	0JubCuvILdDVuz6Q4Ww3c9soS6XAVlMnkK9Q0UIs/P16zHDmw1hQvGNBjY9sP8ThxQoJQiskKXF
	EH4n0pvgx18rcClKs4wh/ynKW7Ph8eOZQRfhEz/eBczHrLzUe7NfLhgwjOqGooao2T2r3zZrQEW
	pc/MhS8oD5R8TnjNX5jOqXYCARiGL5RnlVSzZ6zoQQwlOnr6ltyrU09QxIURuDaGRz7yr6z6pdo
	fzvg29sLEGCcKKakycMQYOo00qEtynRQnkA==
X-Received: by 2002:a17:90b:52:b0:34c:94f0:fc09 with SMTP id 98e67ed59e1d1-34e92139d60mr20093564a91.10.1766773844245;
        Fri, 26 Dec 2025 10:30:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsISMnhPRANRV8HGLXZG9P12WKnd6txaK1ZJfD8PdYetiEIEZ2uKy0+fbOWtVju1/nWgVE+w==
X-Received: by 2002:a17:90b:52:b0:34c:94f0:fc09 with SMTP id 98e67ed59e1d1-34e92139d60mr20093543a91.10.1766773843749;
        Fri, 26 Dec 2025 10:30:43 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:43 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 26 Dec 2025 23:59:39 +0530
Subject: [PATCH v5 6/8] arm64: dts: qcom: talos: Add gpu and rgmu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251226-qcs615-spin-2-v5-6-354d86460ccb@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=3724;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=/Ic4dCF9kYuINmZwU/AYUbdQteygU/T9WSrlkoT+d5w=;
 b=Q0bKa3g7tTottDF1rl8WZKZP3QKMRcDiKitHVNeE4RofYvkg1E7VGFCt6h4RgZ9tqfFfG2ljC
 CsUZfS7k1mhBsjxpPNO8JcBzeLnrYifehFu1H39ZVFn3+WIoofM1sjC
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: 2mlYjAQWZuWQMhou83opybhlko7jUMzm
X-Authority-Analysis: v=2.4 cv=esbSD4pX c=1 sm=1 tr=0 ts=694ed455 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=j4o8-IGns93TBVLKZIsA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfX8juYwT0lmOx3
 3OvvcCXJ+VeqlJRQk8m5XngCGblFJwR2go19W5T2QYU8JTN6mU21o0xlontPs38Spe4z/IoOtFM
 qMKOwobkwwpo1/jxLgOqAAjKydl59xwW2rzsBZnof41lHTEkN3QQOGXk/EP61J9tfapzd7ChYi3
 ZHCkCI/tA/LkA7KSL2ZKFbW+97Z+6mW/PJUUGFlTJXpVQIvAjBpNiWFnYDKHmqYwgAz9yFjnIuU
 +izbGyIOvydVwjhUFiwbWd3fDQQWdB4dy19ufXPULZwtibmXWdByTfptxDF0fUy5E7pzVsavAzw
 4hohiJ9mTLCKjT2y1KmyYuOjXI+lJUMxbjG/iPjXwGxNigWO9OJJ4qwIVy/F2P7uC3GeJUolXUW
 S3Yg83w6lz0jDEpixHHR5lQd1KIQxNZXO2v86x0CxaLbINJVvI/nuvCDAwLKJEchUixpd/b+jhT
 2f1aDMAJ5Fe9odgaUCQ==
X-Proofpoint-GUID: 2mlYjAQWZuWQMhou83opybhlko7jUMzm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

From: Jie Zhang <quic_jiezh@quicinc.com>

Add gpu and rgmu nodes for Talos chipset.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 110 ++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 743c840e496d70133bf82928e9e0c3da9653a5ee..effaff88df83d5e6a0aab45a2732a00cae11e83e 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -647,6 +647,11 @@ rproc_adsp_mem: rproc-adsp@95900000 {
 			reg = <0x0 0x95900000 0x0 0x1e00000>;
 			no-map;
 		};
+
+		pil_gpu_mem: pil-gpu@97715000 {
+			reg = <0x0 0x97715000 0x0 0x2000>;
+			no-map;
+		};
 	};
 
 	soc: soc@0 {
@@ -1826,6 +1831,111 @@ data-pins {
 			};
 		};
 
+		gpu: gpu@5000000 {
+			compatible = "qcom,adreno-612.0", "qcom,adreno";
+			reg = <0x0 0x05000000 0x0 0x40000>,
+			      <0x0 0x0509e000 0x0 0x1000>,
+			      <0x0 0x05061000 0x0 0x800>;
+			reg-names = "kgsl_3d0_reg_memory",
+				    "cx_mem",
+				    "cx_dbgc";
+
+			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>;
+			clock-names = "core";
+
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+
+			iommus = <&adreno_smmu 0x0 0x401>;
+
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&rpmhpd RPMHPD_CX>;
+
+			qcom,gmu = <&gmu>;
+
+			#cooling-cells = <2>;
+
+			status = "disabled";
+
+			gpu_zap_shader: zap-shader {
+				memory-region = <&pil_gpu_mem>;
+			};
+
+			gpu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-845000000 {
+					opp-hz = /bits/ 64 <845000000>;
+					required-opps = <&rpmhpd_opp_turbo>;
+					opp-peak-kBps = <7050000>;
+				};
+
+				opp-745000000 {
+					opp-hz = /bits/ 64 <745000000>;
+					required-opps = <&rpmhpd_opp_nom_l1>;
+					opp-peak-kBps = <6075000>;
+				};
+
+				opp-650000000 {
+					opp-hz = /bits/ 64 <650000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <5287500>;
+				};
+
+				opp-500000000 {
+					opp-hz = /bits/ 64 <500000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+					opp-peak-kBps = <3975000>;
+				};
+
+				opp-435000000 {
+					opp-hz = /bits/ 64 <435000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <3000000>;
+				};
+			};
+		};
+
+		gmu: gmu@506a000 {
+			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
+			reg = <0x0 0x0506a000 0x0 0x34000>;
+
+			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_CXO_CLK>,
+				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+			clock-names = "gmu",
+				      "cxo",
+				      "axi",
+				      "memnoc",
+				      "smmu_vote";
+
+			power-domains = <&gpucc CX_GDSC>,
+					<&gpucc GX_GDSC>;
+			power-domain-names = "cx",
+					     "gx";
+
+			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "oob",
+					  "gmu";
+
+			operating-points-v2 = <&gmu_opp_table>;
+
+			gmu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-200000000 {
+					opp-hz = /bits/ 64 <200000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+			};
+		};
+
 		gpucc: clock-controller@5090000 {
 			compatible = "qcom,qcs615-gpucc";
 			reg = <0 0x05090000 0 0x9000>;

-- 
2.51.0


