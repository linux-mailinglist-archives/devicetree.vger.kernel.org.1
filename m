Return-Path: <devicetree+bounces-271499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPSRKDxeqWlc6QAAu9opvQ
	(envelope-from <devicetree+bounces-271499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:43:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA1020FE32
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:43:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B04F3078FF5
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C973822BC;
	Thu,  5 Mar 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kb0Zo0oG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BiJeOQn1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31381378D9C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772707235; cv=none; b=gFTNwqLeUraFXolQwQzE+t1lDzncLYSaZYs5xZmeuxWTIn/Bhvsvu+KHZGW2h3Vwo8e1vaLfgy4RF/c+WE/zVRvdIOAZ805lnyKxmBRaYztsMQeY1o6c8SALu20bUOnTpALhloWOfsxp/Lt3vc9PSEG7zhp5fFqO7airTPz772U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772707235; c=relaxed/simple;
	bh=mZK39g9gjW9EHbVEu2dfWnHrL2lydmkpD07vprS1plo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E0VSdrzP8hbiWryKEV8L5mEghHd5rnXdFyHfMKnKCC3hER1JJB3N0TpXqQBr2640IaHFHuoC2sKuMehXCKXAaa55j3GSj2CMlRt79H7KIPsvxhBNR17EB/xoqzZfw3jysXIds6PCkOY3dWysC69/cmzffh8UdqNPtPUttwS7qjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kb0Zo0oG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BiJeOQn1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AG4Rx2118292
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 10:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MxEuAKUU1/RLa4q/g6rvek8enXSBSN3O3+sCkdClNRY=; b=kb0Zo0oGuLbsYFt6
	OG/5CP2Ljx2J7XX99du6rgKdt22I2tGEBg8+/74sMEHkmHrSA5b5uRys5Cy9wD7H
	31Bc4lx/Kun3g+ROhgkkvyI/Fz6j1Gv/xjzly8CuTvNyzffNeyG3gMGDxvuX6OyA
	fAdcRAoznSXQaZQZr2/WyHUblBBs8qHp602zlplSJxCbHBPns7d7tY5THQ45Pcjc
	jn8S2LxRZ3k3sEvk9G9o3NbkOMXXfIaZybGfpp776aKgEH4ApM2+06a3X4wiFhc1
	nDLbNXgBhyfGy1JwkAs6Ka/dRpk9IxESfkfJm3mBlzmvZO8AjI1ZU25NdAONhapK
	HmCJdw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m2yhe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:40:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae50463ba8so201045565ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772707232; x=1773312032; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MxEuAKUU1/RLa4q/g6rvek8enXSBSN3O3+sCkdClNRY=;
        b=BiJeOQn1Y88kPqzvkKm2CzVwKBTPBB8tNZi3A90bxHg3JX61JxdnC5pZI/bEHfxeSP
         ATobq0cgfaDzDsbOWVKUQM65/tPshP2VLlqGBIG0KH8fmaZUp/GKGIq7WLKLpN/nyJeo
         /JItCAuHQIBN3ooHQ+qdjOrZ6zhGS/knAI+0uM9wiUTVkoE7YYPNXYWcgLHXp0DZuZ5X
         ER02awhW9/buI9n2saB6h1GOhQHbJ1T7ewYX9T9Vh/HTd53pVPzB34TVdKCOtwJm5+s1
         KkteGDLV8yA9DQ8v7ejqDXJ7h0RSLOWt+sXJdGfZJ8Z7o9RharJ9qGnaiMz2tFY5VsA2
         mQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772707232; x=1773312032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MxEuAKUU1/RLa4q/g6rvek8enXSBSN3O3+sCkdClNRY=;
        b=EHi1p4LjlhVTZBgZ6waYG4iTFxkpiGQSePDBJmkbJyWz7WgRWEnHpy1izU3kgrBrdQ
         QI/xD6CYHp5Qz1h/FsRrdBcnourpkkuPT073UuXRb378tcwBafQRetNgmSPhXeiONt9Y
         JhGeRJ7SFzPsImWiK1JTmEtgt9zxiyXUhTtGJ/O+WVZWyGBuM+Bz/qy+4jszu7Yfb/Ga
         0G/mRFaj9V2FWj7tc/9FaRx0bul7a3+52rSChOn7HJHMSGMCa3joPTdsa1kEsg8GYTqM
         PwpkzTBv7Y0Tq13mh4R3VqpYCfuxrrMWj4H2Qcb665QNk7amBX2CGLnfkP6wuPpuxc+c
         7aDg==
X-Forwarded-Encrypted: i=1; AJvYcCUKbAktxongLHDJM4lTvmA0dpbNT7SAeG9YfMkfc/Cn0qwgxw2hTN2p9xZWEcU/IMCkoE8bz8+gQQ2s@vger.kernel.org
X-Gm-Message-State: AOJu0YyP97G4zGS/eSrtN0J7QET6Zh+DY/+0c0c/dzrq+IqjOTSwYqSE
	kkQ02ARtHDwkxBVoH4+gurMhl//WoyJHZDRaD+v0kNM1H0Ey8OqBtuiQPj9cznI8AUpRV4ULAaV
	0zCZJkTqY9orMSZcSBbQaqsf6EJRxnXCkwzuW+gXBhLpowyMthWzDqB4xI8dbM8B8
X-Gm-Gg: ATEYQzyl7x9orHMz/Qipzls3jioer0viKQ9CYLoXoLOzbkOwDMqlsc6Cc3eEBBeGKkF
	c3XOT5sxTG23JsDokakfBfy3t/QNSbDinMZtBLiJJmDPtGVGSVyc7n+RFOK+PedhPaqsRsNwXMk
	0rsvbblMdcd/nEcIVP0deCpMwhVYyaGqzMxRBt2+JThHSTX2dXYqIHuPzeexV47o7xKv+I56FAA
	FV9tYsAcKTXNwZNSHRFLns6vtKrwFDzJc4liWkPD/tTY+B0Bl+O3vmu3Q4Uto7caI5jME5eCKmk
	rmTM6lgAMQktYLEpPI2rkm+oGGU5PMMGb2B0KurQJTdrlLUB61hDKhZvmKtLwELN/b9B/wRehz4
	zcoHP8BAx3gJIZ4RcgRo93go88QRhCGl0f+0bYqYjdRiZyA==
X-Received: by 2002:a17:902:db0f:b0:2ae:5745:f0e4 with SMTP id d9443c01a7336-2ae6aa0207bmr55854475ad.2.1772707232457;
        Thu, 05 Mar 2026 02:40:32 -0800 (PST)
X-Received: by 2002:a17:902:db0f:b0:2ae:5745:f0e4 with SMTP id d9443c01a7336-2ae6aa0207bmr55854145ad.2.1772707231966;
        Thu, 05 Mar 2026 02:40:31 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4650000dsm134429325ad.54.2026.03.05.02.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:40:31 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 16:10:10 +0530
Subject: [PATCH v5 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-gpucc_sm8750_v2-v5-3-78292b40b053@oss.qualcomm.com>
References: <20260305-gpucc_sm8750_v2-v5-0-78292b40b053@oss.qualcomm.com>
In-Reply-To: <20260305-gpucc_sm8750_v2-v5-0-78292b40b053@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a95da1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=CyMIzFe51rGKrm3YhSgA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: nIK5Omox1h7-JvLLAlNC9RiduKJ2XO4p
X-Proofpoint-GUID: nIK5Omox1h7-JvLLAlNC9RiduKJ2XO4p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA4NiBTYWx0ZWRfX+vLwrQEsBOE3
 2ZMIoV0qFZPG+5Vv+cQ6ruYcwJMAkCEi9XJovCnRIdSqn2ldnfUqnRKoOG0zXzrn2GLJX57ktq0
 /1BbTr2GQcw502gUjSbXiWR0ziU9ZU0lvj8JoCtCexzyjSd/h/Ve3fONX83umr97UfvGLgiGj29
 qOZUGy2ifGtAgV0mLMB02FgMlC66Gv/m1xx9JphekpibI0MqcOv4Dzp9REslOg4yCi06jucLiSK
 PqYjrtSCcdVbZ/C4gaUxK+fvuM72wkC2GZQc1sHRgyIanTQSFTaJWkvB4DCBz+1968gT8c1n3QD
 CN6BJZHhauldoj9pmr+A/+KVIqNAN+CGuHunFFYShnEHY4E7uIIUKNA274vH99b0CxSGbU7WHEE
 ILJwR22OsGWvhHjir86cnycE7zbbHFCgdx+TgB5RjUj9IkrgBZVCKMcJzCT3yk/03B8YqufK55n
 Q2fEyHPY8nJjDS2DZ5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050086
X-Rspamd-Queue-Id: 1EA1020FE32
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-271499-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,3d64000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,aaf0000:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,3da0000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
is simply a separate block housing the GX GDSC) nodes, required to
power up the graphics-related hardware.

Make use of it by enabling the associated IOMMU as well. The GPU itself
needs some more work and will be enabled later.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 68 ++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index f56b1f889b857a28859910f5c4465c8ce3473b00..0e7a343297e3f5d7a8189f50726dc6279078c21c 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -4,7 +4,9 @@
  */
 
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
+#include <dt-bindings/clock/qcom,sm8750-gpucc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/clock/qcom,sm8750-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -3001,6 +3003,34 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		gxclkctl: clock-controller@3d64000 {
+			compatible = "qcom,sm8750-gxclkctl";
+			reg = <0x0 0x03d64000 0x0 0x6000>;
+
+			power-domains = <&rpmhpd RPMHPD_GFX>,
+					<&rpmhpd RPMHPD_GMXC>,
+					<&gpucc GPU_CC_CX_GDSC>;
+
+			#power-domain-cells = <1>;
+		};
+
+		gpucc: clock-controller@3d90000 {
+			compatible = "qcom,sm8750-gpucc";
+			reg = <0x0 0x03d90000 0x0 0x9800>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+
+			power-domains = <&rpmhpd RPMHPD_MX>,
+					<&rpmhpd RPMHPD_CX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
@@ -4515,6 +4545,44 @@ tpdm_swao_out: endpoint {
 			};
 		};
 
+		adreno_smmu: iommu@3da0000 {
+			compatible = "qcom,sm8750-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x03da0000 0x0 0x40000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+			interrupts = <GIC_SPI 674 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 688 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 574 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 575 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 660 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 670 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 700 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+			clock-names = "hlos";
+			power-domains = <&gpucc GPU_CC_CX_GDSC>;
+			dma-coherent;
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,sm8750-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0x0 0x15000000 0x0 0x100000>;

-- 
2.34.1


