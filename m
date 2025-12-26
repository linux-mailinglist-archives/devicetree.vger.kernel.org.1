Return-Path: <devicetree+bounces-249776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5865BCDEE8A
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACFD23019B8A
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468BB245020;
	Fri, 26 Dec 2025 18:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eDhoFWLr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HWAa2cXk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD53318E025
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773841; cv=none; b=on4dJYQj1iZdxqqLTS+FVQIWO/WKqkFl3L3VXVFtzYPTAgVgsfaE4s2r6j8IzLf3O5tfo5YOfWiEUshOMYM6/MGpuA0+Yol71qPIC7dh+81vcQEdacEaFgBzlAShQoICUCrMUpWhLq3yHf9NOmkrLKt3l/4iJVZyQfhsx+aM674=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773841; c=relaxed/simple;
	bh=n16xkwNjyf8oGa66RmxgjqfY4hOERxE5gHukvovYbH8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mRKmilZpci71Jw4Kmg0KOGKy3Ms5kqL4p0uAWi++KL5PZPf2d78sit6m3wGfEhFmdV6pXj7OTq5rGpwcELbYHaPtuuKVM6Rhj0H/aOrAjU6HUfA3A13spQBgBATVZ/pchn0u4JktCBvL/LhssLTVovas1ZUbRzY2Sgf2kBtoWbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eDhoFWLr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HWAa2cXk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ8bae31011819
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iLMqK35C+dR60AHIbug7CKPTuNzYpTZ2FzC8crW1180=; b=eDhoFWLrvnuMW3w9
	sPfZEdSHS1rcznKAK6XZs4XlJr7l3y84E4TKul05KiZGZfLZ+gRVdYWdibV5iRzU
	/qHsJ209Wcmvb8RFsg6+95CwvputmH9QHjvuDlSGk19aHAkXYHq6udx1ouR2XkA1
	c3sVbZ9XibdyeR8NH0afoLLoUjjGWW3va/QtkR8Wr4LIBOAz+Q6kuKX61BArDva+
	3ez0YtH/EEMpdqK/1c6KKwJ46oizO59jtmTjM7NpH4EA5k+s6i8pxeKUoCaW7lUV
	AfkSYDXcW7Vrm6Qe/b6uz0VbmgtdA6uK7HFt4ZAghuO8HPKWquYejHp2IvQAVzpA
	hAKA/Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8kywmf02-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:38 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34cc88eca7eso13443326a91.2
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773838; x=1767378638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iLMqK35C+dR60AHIbug7CKPTuNzYpTZ2FzC8crW1180=;
        b=HWAa2cXkBCustIPhi3lqoshhPtztp5Yzxzc7l823IIp+X4z1weU7Qw2RylXp0F4cyo
         44Zh66471jg60un7qRFfFSxAYTJ73w/Ya8izm0Hhayq3hyBX5SnfYs8ECY5vEWgGIODP
         WjYwz0GDC6CpYqkBXSDAgXfpEP7SqKCFFqZVaHylEo/NiCZzmWzSK/Rct5o29GW2AII/
         q8418kdgwDiLJj7jxY0AkZsFs+8Y6mb24eRW5dWx0bhiOuyl50BW0sOvl3wd4YMHIbcj
         cQ1SmKiK5qUYxnJzuOvETcQmvZnb/nIlplkFOM09fobHceYjL5/AF47r8XH4xrF4woPg
         wg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773838; x=1767378638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iLMqK35C+dR60AHIbug7CKPTuNzYpTZ2FzC8crW1180=;
        b=H9l5D8VIwI4NXMuI7CauJ4Gv7OYATT2Q9t/nIl2COMUscO0sDIZscXYoHtdQSFXh3l
         PVE+b+UKsLpNN5AutpzjsIDWZYgI4TCocBqFqNqsWrjmYxFea5InOHVjWRPx+btmDnyY
         Y5bqW8hCdQ4CA58lvugMkWph2BYNfnh+l1ApvI6PgjasOvPMavyvILe7EgXE/4msf5E4
         ViPULoyE8i1unuf36fAff48i3M76e9mUBFBKd+4y0p4Cfa4MszJgUuOi7uL/MTfczeSD
         u8Feyo80PdzkVu83qzMGhrM1+2Ao3pUUjQCY1gjsXkOmxmIfotCvKYORQbs6Kc/8oeFB
         zKrA==
X-Forwarded-Encrypted: i=1; AJvYcCUC3PSYT0jbVyVcu5046YDL1NH8iEor151d6LWCslPgpYYwxkWcdbXGygU4T1H0Q8jt8m4EsUWtHbG+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf1wjP6K+xUOX7yv0Mza9J+2SoD3esoX91Sl7+dFNc2u1mot33
	huLUWrll93Td5QDxnSMG0gHqATuHFQOdvCZ98xu7Qr7DeraHGwJT61V4VMLb2WOJ2TGb5QDJR7K
	x4J3Px1OiNoIyCOwDawT6I3zpFU5gQqUcxsr6IiNpkdvjqG9LbjkvqaGFtbAnXG0i
X-Gm-Gg: AY/fxX4tQ4ZsZTwTdVt3WY9kWfMxgX3VoCIo904KSV/1GiDl6duXSX1/aHx8SGTb+mn
	8JrkM+1IUO6kmE4syWqV/v24tUbXbCiyNcoYoL5rPk2fBhWVlZsIqnX64SXOSAOGvuAwFI2bmWn
	MXsJGikGjBAZYjm1di44KvEFAu4iAuJD4aGnS5VzNB6JGOErL5H9F6gSq9O8o77tbmebOyD7bvY
	4nbhUVaZsFl4C+caANKC146zEJQcPE5y1nrkRssaI+nYgnUXLcvWGD183xGKcm0X1ylkJ1tONp8
	s/wLhtC66spVxOXigjjL6WMvrxdCw8ATZ5sWJUH57S13ozavFmY1YQPJ0FM7mJ0Ohj7zrHCFM5m
	xXw8ArJ1vbCJfmO9BVdkxa6us7YdxbXXZrA==
X-Received: by 2002:a17:90b:1f8c:b0:349:2936:7f4 with SMTP id 98e67ed59e1d1-34e921bc5c1mr16998337a91.32.1766773837500;
        Fri, 26 Dec 2025 10:30:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFCeBec7usnCBPRH+O6WbKp3l1RV/SJThZBsXXh8hbrcv30ZbUEuCs40uGVVH5XrP2GCRLxw==
X-Received: by 2002:a17:90b:1f8c:b0:349:2936:7f4 with SMTP id 98e67ed59e1d1-34e921bc5c1mr16998309a91.32.1766773837002;
        Fri, 26 Dec 2025 10:30:37 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:36 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 26 Dec 2025 23:59:38 +0530
Subject: [PATCH v5 5/8] arm64: dts: qcom: talos: add the GPU SMMU node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251226-qcs615-spin-2-v5-5-354d86460ccb@oss.qualcomm.com>
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
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=1883;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=2e4aIsMrv8wEM6ceXRSjS3zZllPcce04PIqo558zTus=;
 b=Ok6YZ0IgC3WjZySGRqilNB03bycUfgsjJt6Fp+1a2TMg6htzSYrvw+pfuahwFYPVnAqmgvaIL
 j7KuWIZZ8vLBtFX4eFRYJ8ekUIdi5mbSwUsT5L1Y7tNNYATh0X99Bbb
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfX7PqWYtrI8OoS
 F+cWnqcjPedid4+lujLjJpLh62bob5+ZBUqqJuZYDDCZ4HdIq6SrLxUiQ2LldiBGKL3HPPRmgI/
 HVsq8/eCOe0KZnZIDfffMRRO+917wsRg/+Wvelv0JnnOBBbi/eJd4M7VQRdkHuzWQjIsJ4X9ddL
 lYtcqhJr6vY092R9zosV3MwklHuovpV8XBAGcHl8eWbNzX2/5cKP2TxtG6Uo0DPmzPZKqmJ03rV
 8t3YQ6E7HFOERpUTBxdX/JMWzhwyYytkLXK7S7Yvmo3XoFMZ62fL2s6yDcRWDLL2Rpww+Dn3JJj
 ryaNaPXIogd/h5NtcrYrzSv5rJQ9DlJM1/M4Ofn45o1G1sbQsauDdb4cbzFU9y9liKzERIK7Hr+
 ctxEV23YqsjDJdPDsSOwI4fc2ZUD7AOR0XtWF5pSyjX/tmFc0hXX1Y4eQBCjU7q2iZlij5X4m3R
 d1NqStmULQMf6OnXhvg==
X-Proofpoint-GUID: nqmmty45Als0BXOH0ZWOepup5SLaLptL
X-Authority-Analysis: v=2.4 cv=MKVtWcZl c=1 sm=1 tr=0 ts=694ed44e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Qd8OTwLUrmNk7h6opE0A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: nqmmty45Als0BXOH0ZWOepup5SLaLptL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

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


