Return-Path: <devicetree+bounces-244333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AE29FCA3D26
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C86430495D0
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69713344058;
	Thu,  4 Dec 2025 13:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IC+W9tsQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vh5HnLAe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0577345756
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854575; cv=none; b=rV7XGcjtniS0MWbjGxWV/MuuA1bNGf006kaZ3hiLbAVWgxrPz8T8rY+kOBGZIebBDEbQhPpB3onJtowo9cufobfC7W9/vMiceUd2WaPe2n/0F+sRna1VI8O/SeqYEz5fp9Bi8alWnuWdQa13RMq5hH6gFuiUJ8zYduIZGU9lq/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854575; c=relaxed/simple;
	bh=n16xkwNjyf8oGa66RmxgjqfY4hOERxE5gHukvovYbH8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ePmiP27BhvFRzNptDdpO2yWx1LJ+HiOe4sEL2rBZvBp2vFEGsrig81veOXvoojHFKmKc8Jvln7AUdr1Ksg5BxscxYHr7Mnch52D5s2ptKMX/BIyFSXoguJFPbF4mGG6Zvye0yj5jOj1lg808ZSeZN8K0j5inU3dyVyTNlanwzDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IC+W9tsQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vh5HnLAe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEw6t1130992
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:22:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iLMqK35C+dR60AHIbug7CKPTuNzYpTZ2FzC8crW1180=; b=IC+W9tsQVLKJgbMC
	U+K/x8m2GZJKWHjprGsSosgz5U+M5Tdenyu4KZoi3OFLidGAqG8uKaTab2vc/JX7
	BPPKBcksmiY1pnTNkckkGZljv1L4Z1F8rsAIJR9XvJ7cbhmdIVSzPeRPdF+45pWS
	qQppMLQ8zdDy2zxT/UORj8c9BplqZkmDbLmrKD+96t8U4eUK25DuUbBKljQMn/7H
	ts4yUwG6alCxxdtJGk6TN/4bV9Hn69gI6EtCbMDn9axn1dT1o/n8fis63h8Ae+hF
	V1oAj3oATG3Td/eFyKXVKJh0oZwIaFME8X6Ch1DxUWM7+x/paeOgBSpq3G+2IVZq
	FgSc6Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f01t7e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:22:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-340c261fb38so1479638a91.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764854570; x=1765459370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iLMqK35C+dR60AHIbug7CKPTuNzYpTZ2FzC8crW1180=;
        b=Vh5HnLAekJuOx/qdP9vVGAHnYl8howKPIbWjm2qKTR+BTK2D4CpaD0A2QSp74bn9g6
         3iP0rHWU9pX/3aQH30sVGwfsyagFQN8ZAvQwx1WemojiNhiuLGa28QM5dPlLsrDiQyMy
         74pyVo8mjrq6TQqWxkqnPYWviNr+4z3cdJ2gpj6VmSp25rsVQongdfDac7+2oO1XEWxu
         h14+3CQvPeSipn+xkplb1/f5CQnL6/YKYYotQ0WoydHeB2p1ewk4EwL1DfG1t8i/Znhe
         2GBYDwahzpHxuGQQqqTIZ5bTkJm8zCSNUnaAXCqMDZiP8AtngaYRbdUs2KWUg0ybq4HF
         ETaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764854570; x=1765459370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iLMqK35C+dR60AHIbug7CKPTuNzYpTZ2FzC8crW1180=;
        b=tNDUb5uwm2eGtyonHraVNRa8+Mkw9y38cUXwioorUYmqMp3M0DRuMAMskcsBolLDTD
         xKlRI2vIOto1YsfaSDDtmB1A0gMfVEP0XFZlgarA3j+epwapGTzG+w8hAIMMihTdfvHd
         6UXlv+COJJ+xVw3FrQcw922R337N55ubPgF6PlMSR/9Q3R3iGrzKGmPk4VkOoBjI8yOA
         sTYQ6V4euK5/5miPicwuctLaK+GiF7HPB/zPHnqAbfxrha94khZsY6qcgmJC5XomiIZv
         LYzCH+DMAUgvK9pqLcByRM6UlEZ8Lu+d1KlO9AFdgBvuWFi93+0HJjcg158xu1/Z0lfJ
         2FCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBaIRUTomSCkSyoP4SplMTC8YhBdnnpqqucoIDY9r4kM40uk3wX/BGml02LZBKnHyYN7Gh79PIL4/2@vger.kernel.org
X-Gm-Message-State: AOJu0YwspDCJE+FAmoEpvra9rWQoIWrg57oI7UyR9uTn05aIMmWbR07Y
	utsq/caoLRuqZ0LoEyFhwDRBuY5jUPS13hWf08LtQH6x3FNXk5qfqAEmGht8gNP4uV9WXbb5PQm
	uvnh5ZSBki6bDizP41+qFnkCo+mqmdTQyAMyG21Tbqj6ClEoeiuU3HuSok98mpgLo
X-Gm-Gg: ASbGncu7SD/U/xD187McmZhHfs4x8zirI8cBd5pUPMdJUe73gcZa63wvHXUqd4tFdzV
	M5d0yLdCwKPu1SLdaR0p9ks0glNFa1IcOo8hCPRU4e0xCVaPkzmfGn2bALmBSEVQ0RmfW6zrQTU
	fvW83FmO1PZ/Zx9VBd/dJqs22Ga0nWeSRj+gr4ig4buGojRNmv9kTikLV83ACmwotgj3K8M6iek
	VThM00AoYPhqYfFPR8C8imxcZVokFrjiI4yx96JTgUdp6lfrsGhd5dC/J7sHes6vn7VJS/Xl4ib
	ePJ9S9Zgo0Z2YsEaU6AIkC3LGa/zQNvtHkRr27hHS/Ick8ruWsuwFx/3OG0SLMnkj8NOjWgezki
	O0NRWwOaxoxLM8YKE1O11zqRganHazip3IQ==
X-Received: by 2002:a17:90b:3cd0:b0:341:c964:126c with SMTP id 98e67ed59e1d1-34912700bc4mr6077372a91.34.1764854570440;
        Thu, 04 Dec 2025 05:22:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEh01/zQdZWO0c0uGJ0YnHgcKVlHn+84iAf4aVPFwPeP63O1lsuk3YdL878RrKAHZMnIUBSA==
X-Received: by 2002:a17:90b:3cd0:b0:341:c964:126c with SMTP id 98e67ed59e1d1-34912700bc4mr6077340a91.34.1764854569965;
        Thu, 04 Dec 2025 05:22:49 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a18csm1914740a91.1.2025.12.04.05.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 05:22:49 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 18:51:57 +0530
Subject: [PATCH v4 5/8] arm64: dts: qcom: talos: add the GPU SMMU node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-qcs615-spin-2-v4-5-f5a00c5b663f@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
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
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764854530; l=1883;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=2e4aIsMrv8wEM6ceXRSjS3zZllPcce04PIqo558zTus=;
 b=8nQzJmd2UyI3dys6WU9XU8ch+rIY78MAySAwC8LPXSKeSa2YjquKSRMeuTCz99ZCv3OrHNhbR
 UZQpFOUUK/gBqx57swD5k+9UVzxWkYE4JhAiMfQ8BqVjPtp9Fp+Scen
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: 2sU1ok2oHq1YcJVPQVao_6gWH5pDBoSV
X-Proofpoint-ORIG-GUID: 2sU1ok2oHq1YcJVPQVao_6gWH5pDBoSV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOCBTYWx0ZWRfX+zmyRkXvv82g
 gYobQ+Zm/arGDBSnbaOdSb0MPJeg/0aPyfdbQzH7Ufj45xbtF6liR0Zyqx84P/bQo4i7gxtVTFU
 icifeXaHCWGQOfLk/kif+JuA963hzLjFIUwAdFchSDB8513uN+5pjwfSgz2BmZ7eCV/vkNZSi9X
 GkjB7hCaiD86jJS1PBxLySqhM8MT2P+l06AcXvA+6FXyzRnyfpE0y5Y7eIc+YteZ5NTxaucuNAM
 ittmIOrgip0u/jjb9qM+MbmIULaITySzyUfVsiMCrf7CWC7nUEJfLdIrK/XzHkACAjXunms3X5K
 jpvMQcvJN+0B3gOVwQpdUcziP0Qj/Up/r5h6zJeMImM1bYT7WzyZG5ABx0zCJKQ3n7VVgLPJitj
 8yc30aF8hfQEU5wm91oCLxB7HrMniQ==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69318b2c cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Qd8OTwLUrmNk7h6opE0A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040108

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
index d1dbfa3bd81c3d999bd79fc92ad85312c2f83087..743c840e496d70133bf82928e9e0c3da9653a5ee 100644
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


