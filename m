Return-Path: <devicetree+bounces-186622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EA4ADC99C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1C3A7AB411
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925892E06D0;
	Tue, 17 Jun 2025 11:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pv2HGJLb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5572E06F1
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750160322; cv=none; b=oLoFq42FFq2x22PAiUVUg+ZyzgzesiV+JvI/+XD/PInstJrE86tAeESsuxOK4p/uF06Zkd5vUPmQFFcyMLH3WjoJzr4sI+FeZDrATL6SuEORjrY90vUmBn3JR2Sw0ZyA0qFDjKvHdLoDClQM4fd/ZJqaPhz34ZpSl7GWZzAgLmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750160322; c=relaxed/simple;
	bh=E1iCTcsS77v3G62P/uVyBrWR5kONQvXzXySre5an/lQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o4EPVL6FE0CQvCutgHjqOrlqxEA/86SzlERx1ZBghUN5LAi8DNCcMcV0oTK+Ic76NQGGLnih5gBbvbe1vkrOsT6tPvvSTFzj9BQqlhS+vp/SbDuALYrNjYr5wwnuDGRxf2oVPOLV+bgLQzWcYRirilS+o4cBydNKGMkGt8R27T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pv2HGJLb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6TDLN031604
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=; b=Pv2HGJLb0ujpvUug
	aBY5StzqZyNFOhoEhNVyf6QJBjObmvdgiAfGiLGApPJCdDV5WOdIEjtbEi6dxiys
	bcHP0FR2RgmcsUlC1z/yd2kQojrKoJBR3xU/BaWuuBqaALFvo9m+j6nLindT2WA0
	/d+ZFvOA67G3r1dUw+ffR7DPQXV0GDyoQbSVA80rHPTba3T2w2t0qrZiMyZFxK7i
	tZyxHOZkvFwuoswI2mw9nIEHUnHWsIhBEwVyVK1lsgkdNkFDtF2HK0AIOkdtKq/Z
	2pNfFUFolikPcl/KHE7YJKGuQDcRkpJYa8sGfHMEFj1VA94rez1V9pXOwOO8ZAYj
	vBHnMg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h983bj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:39 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311b6d25163so4887127a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:38:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750160318; x=1750765118;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=;
        b=dibCUFlTu15HzLtb5F3Mff0Gj40FRtaWhSk9uK0fKXAy2Yaoh1S6gD8bQ2ONgBAZEA
         GIasLbiD/yqJl7j0n92QhxiA8rb+5Em7Dse4LArVD3Vu86HKXz3Mlzk68Rw1uVQpk+mv
         di3FayGAvTXLO5Hoi8JbfJ1vuf7TYQ0cKXZqEzMWmrPqzeIwY4tBOwjSe6cNqutQFQac
         O1HXjDl4n4EPziKq03yRmrlhIadTFpJ6RH0NpdGy5Ao8iuS/TM8qilx/lwnXPNG0owdI
         QZ2iwII25Q2DbR/3MFZ+TtftTgVfADzwuPzTonKznVBltGJ4akwbh/ZpvwxCQmR+5y4h
         XLgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV7LhOZziyO5YoUrVEKKTQfAQ08tFc/CmLSMPKthOkkGeYvsJRvKp2k/YUbvfYw+YyNQvZV4g4T8cE@vger.kernel.org
X-Gm-Message-State: AOJu0YwGcYzxFxq4dXSG4vWdjYueBb9+ZJoGd2w9SFGQGkBRDLXmKGbH
	BZvkAvqUAdmRJb8QAwTBCnKTCO3qjqtQN9fe3QTFdZzLoCt2l43Af7mVT8ZE/UXGBbcOGZ1IMY8
	ZjUdb97VAWkbhuqdPMfVVcWIPcMjRWRV0lUCwJPevQ1BrnH8hsuaNkD66Od4S7gks
X-Gm-Gg: ASbGncvBmJZ65kH//PDFbcq0htIFrxNXfsBA4Y8pmRcETDsAnxcQy6wa6I9gDgWeObK
	K/hlPoCWspnLTJLSITXk1DAr6UGcLLv5pTCa07cbRLRognuQQIMyI4vGZa0Bx3Qppn7IIJWba4T
	clrNsTTa637DRfg6ln4aIka6/fxSaFOpJxmqKxoLuL4427tATEtmLAW87KJoywYn1BQ9R4Llv78
	hnHP8D/JtOfVsWuzWpB9vQFnkKKTbfgNPRLaBQ2NaiiWfnZz8oBpsBx9kgBxFrRfSGkLf3GEkto
	ea8R2LO8ynd8Q23r70s+FIWhMIxW8JMMpc5p7mGObSvUb2E=
X-Received: by 2002:a17:90b:5241:b0:313:2754:5910 with SMTP id 98e67ed59e1d1-313f1cfa246mr21138942a91.15.1750160318206;
        Tue, 17 Jun 2025 04:38:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZvtNTDKTZTtHD5HPpQivCD86gJ7dk0yjfKZ6IrQ6RrlfuiDM/2UhTEwkTqMMtGqXo4L6SMg==
X-Received: by 2002:a17:90b:5241:b0:313:2754:5910 with SMTP id 98e67ed59e1d1-313f1cfa246mr21138909a91.15.1750160317775;
        Tue, 17 Jun 2025 04:38:37 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a1919sm78246895ad.66.2025.06.17.04.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 04:38:37 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Tue, 17 Jun 2025 17:08:20 +0530
Subject: [PATCH v5 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-update_phy-v5-2-2df83ed6a373@quicinc.com>
References: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
In-Reply-To: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750160301; l=1245;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=LUKDegSuWnJr6hX0g+GfZVrGfuVOoWm4/cMbstjOQQ4=;
 b=D8AYtjEvErNGeC4xuDdT2pk3k6RbH1ce/6zGxI5y4AN2K27UNlF8f2EN+DErCWTaZe1HN8ays
 t+bojCYqqOUD8V1A53RcPVMw3LK4oKE7gy4wJuk5jG1ULyRbK/LeBLM
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: HKqNnUheGMhHVIMY5WBMw-nDfM58zszO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA5MiBTYWx0ZWRfXy6bvdmdOfmRw
 XVt0R1hior+ljq6QF2fgYC5VQM0wnVJJ7ZmcGsDm4NpOiumLMzPagBl9NK10HO1B//DxV8UTJo1
 EquBVr3Nk1xqoSRY91KJq2h0j0eplseCi3dVSZyjR+aICR/+TleVs3RMR/pdocDGXDz6LKDy1e5
 SkwpuIVi0jMYKFLIXK4r02Z2IIxlYwvWumikW4iHD2Qm+4nYYqvn2NcK3nDOYK2XRwFsl0J15NE
 rFGOFyViLNS3SDAv2UNQFcLHumQOqdQWVrTeInd4LCb930BJF3foT8NA2BA9rhYQJfNcdIH/5XB
 k+OA5EbLqiYfdd6fiumn2L0+K2fzgvsP9v0xKbj2p7uZ4KgP9nlFG41Ps7aB6jjIVMAouRebEAT
 1DY0ce+JIRDNAPjvbY+FbGWGrpgBxcI+sKNmf8Vq6lHl0lviX5KfRwU6XX0ohEu7GTnGuVoI
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=685153bf cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: HKqNnUheGMhHVIMY5WBMw-nDfM58zszO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=895
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170092

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

The maximum link speed was previously restricted to Gen3 due to the
absence of Gen4 equalization support in the driver.

As Gen4 equalization is already supported by the PCIe controller
driver, remove the max-link-speed property.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


