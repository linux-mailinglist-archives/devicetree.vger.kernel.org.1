Return-Path: <devicetree+bounces-250756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A36AACEB958
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:46:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87AB430230EA
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D96331281E;
	Wed, 31 Dec 2025 08:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pF+YKv56";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gHEJgACM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691E1314B6F
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170784; cv=none; b=IHh7fjECe6/Ul9gCzVuI6D3QsGhDPn85t2hm0Yv7n5Wg/G3hGwdrmotwnCkRsOdNhitWuy8myznXGBz4EpYypwIdqyVAmbGvB+LgT5dqIRmh6eOBwaerb61mwW8c9mrt6bzPTXtUWEamH+QSGRseh96yvwnWdDVPnWhZsVCmSoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170784; c=relaxed/simple;
	bh=wmxQLQzqTrIEKVmuP+8lLmL1OzedZ/M1FswO71PAtyo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=skNCTHS98FTOC32tNHT92/d0BtGPhEAIm7oZsBsgPE/UO6UCSlOOWF2EnnfhnoOg4Mt+cN7pS9ZrGQGZmVzBP0z2GGn4XmkdyiGRcUDWPeph3l6VMXr9XpQ7TWJ1nrcA/sMBwjZwGlNIHZTrbVYhCE/HxMQ/Y9kGZYFPW6S2Ssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pF+YKv56; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gHEJgACM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV0DBKn2089447
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z9uVV8hUF4H/djwv9vyhMlIx9KwoZJhi1N9BMP7GhX8=; b=pF+YKv56ovktUjvj
	PlUNGOK64hhPbgzgKXiF5urL0QklA8wFFLw9Y5pRN75aa+nRIafbKlYoObaDjWaI
	57tpbOZCuLL7nrYY5PYj0m/wANvLrxFX21s9kEGEsYAqz2WvlCVw5PgRR3RRksGx
	TIs9biLwcCKlwln5PM1mHatDuNq27QHSrBG2H6IdGKfUiODyegqcPHvUlypeHEln
	whYfvZlFKU7yzn5hpRDSv8DhmUqcdcRLmiTAdC8X2flHeXFOgJSzzBnCwMDW6jsI
	QmbWrvchACityEqTAAyG/9+uVDbJ4C/0YVpAIrYmJxDsX4116waHUd3LekiNn20W
	AHqc6w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yt2s3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b80de683efso19714761b3a.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767170780; x=1767775580; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z9uVV8hUF4H/djwv9vyhMlIx9KwoZJhi1N9BMP7GhX8=;
        b=gHEJgACMaXUwMbFFn8MJNurMBRj4+BPzbcMrFs0I8/P9uAf9g9kY2sYQj4veG9xdJU
         vedgz2e/oJnAuUEndr+aLRy0T0oc2VAsd3/MY+9CBLHSBfagUyVp9rXqNOwSw8XxN2Jj
         Q0yGGU2aMOjgruZYxW7iPbw4c7QWRSnP85vPyIDgfguKLDBhj0ACgs8CJK+kRsqnigoa
         pjqJG7DbG+qbnkvHaAHCgfSS+wf8wgeQ3aYiO+FLPLHfU2i95ok4HGQ9vmTF1jGCTyNH
         C70yNVJ9VOl8hV3Q9Xv4RtqNEtoCiemzU4Z0ruMqJFgXyQUBzfUjGOYcSKt5/W+04JR+
         NsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767170780; x=1767775580;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z9uVV8hUF4H/djwv9vyhMlIx9KwoZJhi1N9BMP7GhX8=;
        b=srK5ZACTjxI3odhLiEmiNW0mwYzWguOvsm3X7+8O/zOax2xxNGyAnQfMGYanS3ZwV4
         aGYY6bitAsaUahp0ItKHvxPMTDYbECLc72LqQkp+ejdFByHrQ3yKknvCWJVafgHpLplG
         ytOhyGPYykpsobeMpmgmRe3npWoHJjvXZJkMecVsWUcPU9L1YW9yJ5YwMErepXScMg+x
         pN2u8mzJa7xQX6j3qayLNZP3IVVHf3fsTW26GSRvgxIMDurYtzy3A1NFTfDaTjNmx2gH
         mmfu5yMnJdZlJj6cQPj92lNMggRUBFgCWoHHxBiiiJrAKLOO7hey7J4JMhB4/x0I2pbO
         H+Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUn6cdEjr7CNi/OjWuzrkjE+P1SG/JEu09P6mHxaCJ3v/txhx2UhVoQ6b3QIsyriGurhcQLzm3IpaG5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj/2A09ZRkcc2xvPX528wfQJ8wm4jsdxdNb+IU0XTgB7RGOD/v
	MN7zVC8pttCMyKZyJzv4+wLJkTw8vpSAl7eogVtUN5eDOOk8GuaVImHYhsdBj3z7PGOtGKdosG/
	kkopZY4HUQ2I6XJi2dDJ/l+JDhlDWeGnB9lZamaxfgoramhFVDQEpbHCQLGSebPwa
X-Gm-Gg: AY/fxX5xE4GuhXhNG426ES+5oHbWDRekVIkYoLUdh9x/wW87rOA/Jg6wDuDfAqSgkqw
	uVATadI1BQRCC4JNRpscIUjYlRuMG/I5ZPUjn0sZrqmT50lI0I92nTsnjF87C7j+L6BAHRW+tLR
	zI0Gpczli0hA832b469bvaWTTZTg21pbfMIUhDQB8i5Ga85//V0fuknVhgHikhOYxzmnQXeYaVG
	omk4IJYdiiQIaLFLSMWWzOmJppgNnK0krLiDqsX77qnreuTbGnrgL4ojg9CtnNsxfCnprsEGfdQ
	Wvmo8yxh26JYu5RHw2FgJTHSRceKgs0jjUGoUCQr21SEet6+QtQCqlXwzkn+J8QF6/GeYOSIRSN
	yE+raEyWr88DXTr40ilJMN1U15lfg/iOEqg==
X-Received: by 2002:a05:6a20:6a06:b0:366:19c9:b6b6 with SMTP id adf61e73a8af0-376a7eed348mr34371658637.11.1767170779926;
        Wed, 31 Dec 2025 00:46:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG4+U2IkeBbX1/HcdXdKHMw6H4Izq1KXCINrxp8/XdIyrK9NSakGnoGoG6MHo680vuefgtD9A==
X-Received: by 2002:a05:6a20:6a06:b0:366:19c9:b6b6 with SMTP id adf61e73a8af0-376a7eed348mr34371636637.11.1767170779449;
        Wed, 31 Dec 2025 00:46:19 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018eb5sm31356070a12.16.2025.12.31.00.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 00:46:19 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 14:15:26 +0530
Subject: [PATCH v6 5/8] arm64: dts: qcom: talos: add the GPU SMMU node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-qcs615-spin-2-v6-5-da87debf6883@oss.qualcomm.com>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
In-Reply-To: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
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
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767170740; l=1827;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=yR8XbebGeiFEFUR19ke6y8GDTrPRoDL3ArbsouLBA+c=;
 b=gVetoMqRIqng8C/NpS/bZq3/41+ll+ihCsglRNgtftrruiHgsQEU8Ud2tMG8XCMpraLa4gaQp
 j/6cnOmAKzLCZ0aEKk/XzX6/CpW0DEzrPav/DrV8M3Lif69rf1ryTy/
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA3NCBTYWx0ZWRfXy5ZxNdoYhL1S
 eTvijncmS6oOK7C5Yxo4fyK2gEj6qVMd1DJrrC0saOQiQyMuj6RePkzWnE5iyxJ+q+8omLpBuMj
 48beny/2W2vX+AE8HDx6fL360utS/Y/KmrguAErZVeOCrqDhbFt6JijBqpf6SU8mUS7ixbEYJ/V
 NArlvOWWHAcPtvGfkCT3zJVF7Xj2YJKZyq0/IYKkCdODbJyeL4jqZOBhjMvmnwypr1vu/T/AhMw
 t4bsZD/mCsXSj98bB75mfO4NBMd7jAnKccnTfI//u3hTdRgO3p+uL2Trtd5gZKIG1nhsWJ/kpdD
 zDaSm04gigJCL+v1sOnKBfmsRvbKIYsDGMU3TOk/AEsDj7QmbUrB+ct/2Zo3h6ll+m2TQO3GnMe
 gcdsbGpLc1eecj6IQL/It4b0yTBdRppeBdvZkKf10H7Yah6NfTTRCkN4NnvIt78NzY9mmI9Lls+
 cAwWxzUcwucirkS/jEg==
X-Proofpoint-ORIG-GUID: 5AJF4ViuGJSAqghTeFpGkLeD7d_vwLb9
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=6954e2dd cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Qd8OTwLUrmNk7h6opE0A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 5AJF4ViuGJSAqghTeFpGkLeD7d_vwLb9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310074

From: Qingqing Zhou <quic_qqzhou@quicinc.com>

Add the Adreno GPU SMMU node for Talos chipset.

Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index d1dbfa3bd81c..743c840e496d 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1839,6 +1839,31 @@ gpucc: clock-controller@5090000 {
 			#power-domain-cells = <1>;
 		};
 
+		adreno_smmu: iommu@50a0000 {
+			compatible = "qcom,qcs615-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x050a0000 0x0 0x40000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+			interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
+				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>;
+			clock-names = "mem",
+				      "hlos",
+				      "iface";
+			power-domains = <&gpucc CX_GDSC>;
+			dma-coherent;
+		};
+
 		stm@6002000 {
 			compatible = "arm,coresight-stm", "arm,primecell";
 			reg = <0x0 0x06002000 0x0 0x1000>,

-- 
2.51.0


