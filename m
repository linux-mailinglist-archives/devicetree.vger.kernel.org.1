Return-Path: <devicetree+bounces-222651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1581EBAB960
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:55:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DBE624E2236
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442CC299959;
	Tue, 30 Sep 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F8t1+gf7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85E929993D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211513; cv=none; b=TR9rYtzX7vKrzQ0GdzmvyTL1tBMMoU0qRXc2bweMLJdcXDcLTyIeKG0EWuwoiC32go05+MOCQoPf0a8FCDfIYi9iLuER2WcK4XFvLNGyVWELyCfSvZBGZr1dFTjlDaEbNZwFTIKmmNuTiwOItGjp06UifEboTSrJh5nRVj6jT3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211513; c=relaxed/simple;
	bh=opy6bEwniR0m7S+4M/eY23ORBb6vxUsSguJ3ntFDLtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oGXAnJ52ZbdbTBfrJ3YCdHT/i+i6wD6jSXsQyAjq41yDU4gfMfxDMjUA+SuuwHtAEag0rm+6Ty2OpDnXXs6U3iewaUVdoy16hw+pceFppi9rQIbKlK/J0XjHVudF3pZA5NHfGiN/rQXzpwSj7h+KDtjkFXw1sMw8oFFhi8NHL10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F8t1+gf7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HRIS024086
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:51:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JGAhTN0/MK7tzTuxs8B6KT3k8TvrrLVML7xGTqGXHy4=; b=F8t1+gf7Zqt6bPeW
	PUh6Z+R8qhw+F3Q6PJBiM1Qzqep492fR6RUsliAjvRSTe2p+DT8EWB4o8IoUfzbX
	ELfcAiG/BIPjRER4lCiiKrn/rvZ5PYhRIhGQZNuLn8R91AcP/cXyGNIgeWNE8dxs
	25tjE7KxvLzfYqxDxtzqOSXShqJx7BFYjQInpIVuDGGdhZoqAf162rHR6fwmzV2N
	tRj7yN6UnO2QXjePepPK4jqNlDisGllvcohoCyJlxYc2YOgHZBmJt6ZQtmItK/vi
	3/CghC8gwf4n209TuaIhRLcy5fBu6e0jYVSxDHpwXQGnoZwZoPnPNhLyTAC6FRht
	WInjUg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n0540-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:51:50 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4f87c691a7so8620174a12.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:51:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211509; x=1759816309;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JGAhTN0/MK7tzTuxs8B6KT3k8TvrrLVML7xGTqGXHy4=;
        b=uH3YeQ6TOGziP4E9nDeJDc/zHERyBz5+9buVJKFPJJr3EdWuh9PsofvUb69v2DRoEt
         2Y6DmI7HnAwqe346o8M0gwmyuoSjN+PbusGgHRrwVcgI1t1iluzaqntVYx7dgxqjdPvC
         D7OszZ9rl8n/sxBTtK56j+Yo+r9EZHjnXM3WfftyBPlq1Yxd6uM0JECMhXCSH/uCFUlp
         PmhZ55AirUTGoNp1MagGsTZKuUvXpy6IwKlvITM5tJz4oZNsNNPR36/hJbiYnrgjFE+h
         7uT+4a+YDic8I3/+6NLrlAfQ4e7EnOizzX0QUzjktdOrvYxy27f6zDCRrKmv/6y8Rilu
         GYTg==
X-Forwarded-Encrypted: i=1; AJvYcCX0y/AwiWACHxQBcrJteJxKr3QMnfsIA8QE8D8KnvzdPCxr35WcM3WDA1q/Bk9NnLi5gthgBdfOA/MQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzmjeQ3d61lvypDFf68P5/tGgtzf8XGs1gQRgrgcvMH+5yg577f
	12qSwAFi2w25V2rkjkgAjgKHpjF6rlJfAHLVhZCA1fQSPARVYdAFOcMXqjnfOfKnqnWOKVmD2jc
	4O70I1RGbJPIOu305Fkfodu2pSmi5g8ohPvtdc/bNxB85ROPCV2BYP6zigHFUjwla
X-Gm-Gg: ASbGncurmYW9SG3+J46tO3W0FUUJFYNnZlXBIswO4ijUGnHdWdzwrx8SYCu2jBFXmLJ
	yJEvpH/5zW1B3K9o+XMQByI4JL/uR58igCL7Q6nS/Qp/3nlZUqfshyBHIo4tndr+kHJo4WWTXsK
	cdN73er6MKKo+Yx6RmEpGMarQghAqRf5YhklqLIW7GWlkvMfLmIlLLXM4cibB9J0fvbTj5IrVxG
	iC3ZInzxCL1WMNPl4edTgwhEtMp7zNWgsrTZdynvHcZJsvcoZBXoQw9lmUy5eTcJiH1ToNoy8Zf
	1mx1gfqHjCV6L29EbJ8C14EA6/LeNXIjbAamibw1VHmPI8l2zEEjn/nu1TJGO1ZSgMG04g==
X-Received: by 2002:a17:90b:3147:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-3342a2e3881mr19323728a91.34.1759211509370;
        Mon, 29 Sep 2025 22:51:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNHqe3cLZLc7xLZaXETZkTNHqotOqlcLKXPv0OIyQKyD1TA/j/7y3gfQe0rZdWjF2vIUaLsA==
X-Received: by 2002:a17:90b:3147:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-3342a2e3881mr19323711a91.34.1759211508854;
        Mon, 29 Sep 2025 22:51:48 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be23412sm19029779a91.20.2025.09.29.22.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 22:51:48 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 11:18:21 +0530
Subject: [PATCH 16/17] dt-bindings: arm-smmu: Add Kaanapali GPU SMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-kaana-gpu-support-v1-16-73530b0700ed@oss.qualcomm.com>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
In-Reply-To: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759211380; l=927;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=opy6bEwniR0m7S+4M/eY23ORBb6vxUsSguJ3ntFDLtY=;
 b=xkyLJDhvdjtv5zH0t4R2/Ltq7yscuVczpTRjglKxHmFMzhfzxDbXmuA1k/vXF8VuGXusE56aM
 ze5RwHw81B/DIw0VoSyDnGDCDBLO1lvaar1+Yi9NLQ4Wmw4MLZC2JXb
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: bw45YKQ2VEf2U7cB5x7w0D-lwIngACi8
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68db6ff6 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-Mh53b5kj-Vf1dIxLVYA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: bw45YKQ2VEf2U7cB5x7w0D-lwIngACi8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX/oBH6DGMl7gf
 V/yWCB+rj0K9uVzot7MJ5+2o9XjurLI7dmwBQx4NkTmeK9hQQ4bhlNUA7yuJhZsyzWFC41icyyM
 rcVyZOVxItZR3e0K/k64AWZPje8CWpsj0W0R8TdqV9wLvBnSr5iaQlUVvKJw4tbG0SbB1p8Nqlm
 521ipmkvxQxBWZKo0w8n7DH6crUUNvhBXbfiYJOaNbeUUGMoS+jRqSiG3vr8mLUDNs7tG8U2T5P
 gV839TGPevALgSZUkWL9R4Spw35M2JG7bTuawE8RsLvNdKOZOkWVP6uSs7napJ26aZ0uR1+GxKB
 nXgwMKQXmxuKE0W3tX9kNfbBZpweaIN+7UHime2LaEZ/5IL74vVumjMY12oKfr6D7QltHftBChY
 pY0o0Kv8ZZ5u6RoZncqDcWiD1TmBVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

Update the devicetree bindings to support the gpu smmu present in
the Kaanapali chipset.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 7b9d5507d6ccd6b845a57eeae59fe80ba75cc652..4c68e2f2c6d776d18a2a306ad67718ef7396426a 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -88,6 +88,7 @@ properties:
       - description: Qcom Adreno GPUs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,kaanapali-smmu-500
               - qcom,qcm2290-smmu-500
               - qcom,qcs615-smmu-500
               - qcom,qcs8300-smmu-500

-- 
2.51.0


