Return-Path: <devicetree+bounces-235851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C91C6C3D6AF
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 21:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7A8424E31A8
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 20:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C61E12FD691;
	Thu,  6 Nov 2025 20:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a5afhiqQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T5xoyMUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458922FD7B4
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 20:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762462255; cv=none; b=H4ibWMy0igRpOSfY1mDH0o7JE3pNY6wrwFFjqoTHkGMJB5sfJxV9rw5bMggsVbYB4JJVXi3BobVjXTvlYN/Jzku8zrQtc5nyyTNeOXK0KtNRPk1Pzd+CtanVMReyAPaNgF912HXfuuhLHjaoppZJwjqDsPtX8W71knrOUORCmaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762462255; c=relaxed/simple;
	bh=xp9zIS5nSoZqfWGYaCyjPXGPqBeAS2dsdQqgSk356KQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=axIQp9M9cwZelnncWqoYbhLneoNnm74m0STp3/Pqep/uNxnDQk29qEkto+SptTsDvg4P8h+6RQjK4YsrmjXmB5bPRkOajP8lXHUQDt9L0FAUydFenlJt2s95YqRs8dMvVpf2A3Z2Dg7L3ZpGOn3yT/UB85oDUaJ7c5uRxXl62Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a5afhiqQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T5xoyMUG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A6HUcm3643007
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 20:50:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JklyLBd5/oUcZvJnNYponAzGu3rNKVXLQXM2TLGaevg=; b=a5afhiqQiCsQ8dfr
	Mp8Y0fH7NKI8RRysFaLS8x1IMAJ/DnP1PJsuxRxk8Z8vFcpHyO66aMkD8zpv1I+g
	cywA51ht9ioWKBeetftcVui+txV9onEwFoNmLIqJzaRv5JyFoOo9OqNK1EYd90Gd
	xo39Mlp2XObBhp1aaBOAHexJ6mt8acpMnHnAG3kQClRZsrag45v9lX9YRC23MPFd
	15RCEUgMbSpoQoNhMB+/bwREyH7b4RrkuXbFOvJ3qYhFeV0CD0LgrYeNVs/QWIgm
	TdU65WFV+H51ibt31fCPjGw8IrTxxpXToHa9OBq2ALClv4iDE4Vt69CIgdHC5gTn
	Cqxnbw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a904v0jb5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 20:50:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2956510d04cso563655ad.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 12:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762462253; x=1763067053; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JklyLBd5/oUcZvJnNYponAzGu3rNKVXLQXM2TLGaevg=;
        b=T5xoyMUGKreMawCSS1ZxXJw6vWcrbd03T3RUtzSgnqyNorhTeaorrH74/s5BI8HgHX
         TlNhJn3uWxGnl++jWj8/szHf/PBwhLrNOSbp+DjO/ovpcz+/8vy+nwQQOVGLqqsWoAV9
         LzhOo9pfTFVWrIOz8ZM6C7RS3IepnoQfzhPC/AgKL8NGJsRdVZ/dEFdPxZySru2ZymeU
         3gAN0rgMR+X1cR12jieJ/ZJ+gNi8UL6ApMJ+8wGWiBFvTIrCJGcx6IIb2pP63lU6+OGV
         LLJJwQw7WDFR0FsxAxC+4Di4hHGheXH5wPMzTaCcxD2mgwjSqPh2DpCtsSJWApV8796o
         q/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762462253; x=1763067053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JklyLBd5/oUcZvJnNYponAzGu3rNKVXLQXM2TLGaevg=;
        b=SxIPuy4L/jTU0XiDTKvOVU083x/9ZBs5ofLxly1ArY9BjOEdotILA2mrG9MojuJwbB
         sFHMysXJlp97p58uO5wckknOsglF60+JuqoXy3qygTOkgbz/IYxBnKSk5ElAzr6GYGpp
         g3keJEVKVkQjWjJFDgxFAmlsKwxysi0cZei12CqED4nWimPpDR9Xl9rEntH4fyLk8U++
         eiuTg4iscpy3cBDw0uCLyJa6mLeWYR+YhHNpdt3vN+un4s1i/oelfVzLMIIJvy/8+v2a
         MFhig/RdWKBKWhAQCTv+OT71epATPWToEBmTI6knmpUBhAEE14vni3eX1GT0rO5QVTfI
         CTfg==
X-Forwarded-Encrypted: i=1; AJvYcCWk/stPHvePXBBz6mYB8KTKZ7XaAghqq7ILYdDXWA2QjUsCWwvYvT6PbidP3ywnBlrVh0xbqyaG5lS0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5xbUoxW4wbdfZDFFwpnPNPBX0I1xO0sg/z/9Au+hFmb5+osae
	8VmZfCTUjTrtslVt9iIy8EuxLRamuLcXQU8WTal6jLZGDfoZgADy1dHN3u83W37VSdJ1IFJdAbu
	Zw9gZiovf3bCL53Xu0j94HToQJmkwGg0Ut9f0ob9hdzOK/0VKNU/Te6I7uBEqeYcX
X-Gm-Gg: ASbGnctTVUp42EBRUtB9cYm//xyzSmr2vfzHjmF7/M3Y1FsXzEl0kNF10s/JS0FoAyV
	6Vet0KimPmnGQfCoywAp9Cs/iW0zXnWxXkW1yqD39p3Rf4QwcRbnJpQOb9j1Ml0mGCiKLZWW9Zf
	LF6JlSa5OPfI7FD9WZ8P4hg+ofx9cvS/yJ3ClX98SlObYRJExBAf+qiywLfygzAgfAfefbhomqv
	NmZLQkv263PaUV7g1PYiYphtNffzdmPFzZE9mar/Ly8mP7E/OF/wr7kV8WdmbKIkEq9gVOsLkHP
	opdB5MbMh0U73ajkx26mzgQYSAR/gTPAKkQbmOiAcwlrK3KasnvEbFRdgCWjmBRrudS02++bUl1
	9W9I2HvWbnI64+5MLaOLBfFc=
X-Received: by 2002:a17:902:e786:b0:295:24ab:fb06 with SMTP id d9443c01a7336-297c0403118mr9270975ad.22.1762462252569;
        Thu, 06 Nov 2025 12:50:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/5GGH8BRhaWtLEiTr4/i8IAaR0hxcNwnqgPpCZlj8O61OUi6laH3I2DVn0q8vR+8Qikezhw==
X-Received: by 2002:a17:902:e786:b0:295:24ab:fb06 with SMTP id d9443c01a7336-297c0403118mr9270625ad.22.1762462252069;
        Thu, 06 Nov 2025 12:50:52 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651042c24sm37408815ad.50.2025.11.06.12.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 12:50:51 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 07 Nov 2025 02:20:09 +0530
Subject: [PATCH v2 4/6] arm64: dts: qcom: sm6150: add the GPU SMMU node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-qcs615-spin-2-v2-4-a2d7c4fbf6e6@oss.qualcomm.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
In-Reply-To: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
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
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Jie Zhang <jie.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762462219; l=1700;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=jCpex1VaC1U4tzmGxxXkz708+oeE3vay/zj95FdtjfY=;
 b=zZhrunbbfOSaWlJXSQ/bRKMJIZYhHCqaCsTuyaWawpGpxSEo06tbWbI22J7d+o5CvfmfGlLZM
 MgBazqbn/JrA5e/9cbSm2KfOwLUJI57ISZbbPw+jn+9T6JZ1PGou7bf
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=RMK+3oi+ c=1 sm=1 tr=0 ts=690d0a2d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Qd8OTwLUrmNk7h6opE0A:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 9W3_m47iBkVGYNir7KYqVN8lrOwIQKA3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDE2OSBTYWx0ZWRfX8yR/KEKudXSA
 CUGW4ykvMJZRKaDVL+RsikHC+MbbwakWl3JiW75pppdCptp3BT44/GB4b9doJhwaBPVyX+b5kpz
 V39q6AHMUD6foA3zi1vljMi4uq1u7HUSBKyelkIodRFFZ9QOHUt1xuGmVpAp80F6syon3wjdXot
 ZiMeE8NSzPvyTRM1KRf+9YIbVanSl3OjiECWc/U/xVmivvINchCYi+7mgzJdwUApfCsbvUzdDP1
 hLPfcF3NSKwBu3QwlCVF23TJdg095uBTZ2paZidSXkUMmKocOCtGN6+Z5EB15O8I/bEgFLNkzs3
 TKxSbRfLjFJjO8k/MMwak5xsqG2ql7RRGdi0LVLL21EOSFJIOyviT7+4VBurZXN0Ayzd9UVlWfL
 4lVf62VhIW+WGiHp0kSOjxUbZBuk5g==
X-Proofpoint-GUID: 9W3_m47iBkVGYNir7KYqVN8lrOwIQKA3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0
 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060169

From: Qingqing Zhou <quic_qqzhou@quicinc.com>

Add the Adreno GPU SMMU node for QCS615 platform.

Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index d1dbfa3bd81c..efb753ba1747 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1839,6 +1839,31 @@ gpucc: clock-controller@5090000 {
 			#power-domain-cells = <1>;
 		};
 
+		adreno_smmu: iommu@50a0000 {
+			compatible = "qcom,qcs615-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x50a0000 0x0 0x10000>;
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


