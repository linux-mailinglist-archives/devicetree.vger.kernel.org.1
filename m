Return-Path: <devicetree+bounces-196911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE35B078D1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4572F16FE54
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 14:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967B4264F81;
	Wed, 16 Jul 2025 14:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S/J9NI6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5231BC9E2
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752677907; cv=none; b=iEGp+IROh3Zan1o6ooqkkpAftqFncL0xX2ZVVw1AkERzG3S8RZGGGo3uK02SgqGTxpkd7qOcP0VH26h19sEWW9zDQOq6G2FZml3wDhXkj47JcnCHBLH8/a5jTKcY9iKywI+t0MtGSMw0s41buY6HUxS6tZR0GfBvvrmNovyFLoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752677907; c=relaxed/simple;
	bh=fiecLZEgxwBHhvCtE3OC0jqMMMcMzWtkxcrkMLboTz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kJB0UYmonNWuDVLFgibC0cnzNzAnOJK3v7ysv5eKGDEzp2vYqZAREnJhf9FkfYVnCV/OakqSfpeFbwHLkzrJ1rZbXQFjd0PZ5httSPmF5GEWKr8j5goXuYlohrSFvh/gSGH8iUDEKYMlwGrvB3VtAc0soyDt44YRXJh5TUsjfUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S/J9NI6+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GEa4DW029554
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:58:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RDf8cJibEjhiFo83apzBrmHpgcz1vDYMn9bRtB9wako=; b=S/J9NI6+NVkFsLcs
	HyzjPCyusqVoUyOQhQWOgN30XCuBEKk5jTJU5Y+B3miL5fodY8U9LZQeELU1aApM
	VnZzSxcvy9uAKZkpdTWMcU3cky8nB1Eu+LZijxs1Yg+xajsblzBzy7RP5Q9tNFa6
	3HtV4uepI0W3Q/eQf23HGFl1hrc+YuFbNImCTUJKu6B3aVADDa2RLU9mbRt766kw
	OGmRzP+CDaEeIu3LSmlgn6XZQUlUySbfbHlVoKyKODb2UJ8rGvAja3qOG420brXl
	3Lt01qrG+mprDqi5EVACmAsUG6WMtFffNhOMRCjvBhBZKfw6N1PTIdJ8O4s2s501
	fYJC2w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb4d8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:58:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d413a10b4cso1043972385a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:58:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752677898; x=1753282698;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDf8cJibEjhiFo83apzBrmHpgcz1vDYMn9bRtB9wako=;
        b=FDMkBGsTwEWr+cqFRwRSCPwRpbZO5uL4nTmlFCaMHVwhuNX27zSK3RCT6/myMgGvuT
         vwe2OM93ebdhtX6/dv1JpiKP16wKKxUjSZRNLmdvBrY4I7Vw75eC7ppLldaGRX/rpIqf
         VeDneZ/YSa88EHOfm+jVui5stOuRSs29evy/ctTLNn40NiEXi8iE2Gt9TMzTuvwKNG9+
         uv5xy3fdVE7HmZbN9ZT2GHcBUpXhXJpPGMCBBo42h++Yvv5eA9jJZIYVVLnw/YA52tvj
         8s3Fg62YGKkAsoRgGMyL851hcDQaHAvtw4h2mYnf7UFubrWBySPBwCsgnoweQO+MEbPk
         v5zA==
X-Forwarded-Encrypted: i=1; AJvYcCVVHpP7W/rU7A/2+jk9owXi4949CwT+QiaSGrQQMWSjWyIEw4WajajoBQeDdK6C8NY5nP2bcKmMFxa5@vger.kernel.org
X-Gm-Message-State: AOJu0YzbA7Nu9G4uizq/gRSwGKy4dQseqkrnWcY/+HdxzfUEgnDMCWmX
	p9+eA9nt7GmkLmeaFypJPWzCB+1F3Z+/CE7QCqYwI95+g++uGkubr0dgRTL+d//FGKk5j8eW5He
	GyDE8uVvvmekQ9x3gMbXXXUTygT9DwAJOs5/hlkJ6Ce+KMAMUZSQMpT6svCOSBuqO
X-Gm-Gg: ASbGnct5NL/3XRDUpzhHg7l5fgqpjNmeykdPPc/tOuRraS+S1sWhK26zPky+IarjWqF
	edfX56ywvyXUjTT31ZoY1JxXnj1KGmQ/+PSlxoALdOgk2JSvfX+WU9EFs119Whp1yPIXY/bHcbd
	WsCmGuouj9n5E256uubRJc2WnFa/FQ86OawxKUFwGfHNNgR8nkNzXd4q37Wd/Nf7CSYns2uxh4f
	xcEZZkEbExcBEAz4/8AX3M1WqkYguIBuBxHQKhhhwYFnoZ4kyy0CMo76HpxWvBNVsqek0wqTPrf
	rOFN6Twat8GJcMTMZIVi17IQ53UvAMLRTOV+lz4dJTsRuguvjYAynkX4HkTlvCj9tI+LrIhXmFY
	sm9j7IvZmOKuAw9FoAxQLWdQFyJ2dJ7f+Ww7/UYrr4OsZCu9BYXwz
X-Received: by 2002:a05:620a:22ab:b0:7e3:4413:e492 with SMTP id af79cd13be357-7e34413e876mr264146485a.62.1752677897607;
        Wed, 16 Jul 2025 07:58:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0jOujE3U+BYkwFkxZi068fm97ejo79VB/1BsmjFpf/HPzJEDPZJZLcHh9+NAlr5Fw707ZVQ==
X-Received: by 2002:a05:620a:22ab:b0:7e3:4413:e492 with SMTP id af79cd13be357-7e34413e876mr264140585a.62.1752677896933;
        Wed, 16 Jul 2025 07:58:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a0fe70bccsm1355597e87.30.2025.07.16.07.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 07:58:16 -0700 (PDT)
Date: Wed, 16 Jul 2025 17:58:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Doug Anderson <dianders@chromium.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robin.clark@oss.qualcomm.com>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: arm-smmu: Remove sdm845-cheza
 specific entry
Message-ID: <2kpb6lwr36izbbp45dbv7lg2akjdxteiadhtc2bbphmsreycwu@nre7uzuezydq>
References: <20250716-topic-goodnight_cheza-v2-0-6fa8d3261813@oss.qualcomm.com>
 <20250716-topic-goodnight_cheza-v2-3-6fa8d3261813@oss.qualcomm.com>
 <CAD=FV=XmwiA_gX9pF5Dja1vezson7f21WHC8u8+Rhg_6OUJ+rw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD=FV=XmwiA_gX9pF5Dja1vezson7f21WHC8u8+Rhg_6OUJ+rw@mail.gmail.com>
X-Proofpoint-GUID: ak-sMSQuzO94if8f5QyHr4Yvw5YaVqLo
X-Proofpoint-ORIG-GUID: ak-sMSQuzO94if8f5QyHr4Yvw5YaVqLo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNCBTYWx0ZWRfXyZ9G9vYkxRu4
 01fDIBZKdFstPwMsDSwKe26OLadD5RMA/c4NVyBcDCGVKMlLMcaJE5z4r/xcpUQu8ILabg5jlhS
 5fGa6nKchkgtb/O3I7POErbqYqNlU8RVakUVymXjVFOwEA6GvG5IaYKcRlcMqn+7JElxIJwBEDs
 lUFEPu1NKFEPJw9OjcdbCCYZVdxDWYDJWjImg18BrRHrSdigGKey3r7qz9dYhQ+8c2SdSPbfJI1
 2PELYD1Bvf1NGHeN9EhYtGLF8mdSKVAQ/eTtJ1G8MvWtViyPqamQz+RDoi5un9or9DLVIFkv0Nc
 2KxnT8zwmpyuduhbm/Oydt5kras07d6EbpheIxyHz4/V4+ZQUfQJddrTvafFSZwvpc8RWmF/q17
 diRZJ0pawZ4CWja64hhfPfZizK2DMK5puygxHk0tvwSVMXuNLxhO5X1MoeoTLrO1/9okEHiO
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6877be0a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8 a=HCTRSnsxAeQ6huVMZXoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160134

On Wed, Jul 16, 2025 at 07:21:51AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, Jul 16, 2025 at 3:16 AM 'Konrad Dybcio' via
> cros-qcom-dts-watchers <cros-qcom-dts-watchers@chromium.org> wrote:
> >
> > From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >
> > The firmware on SDM845-based Cheza boards did not provide the same
> > level of feature support for SMMUs (particularly around the Adreno
> > GPU integration).
> >
> > Now that Cheza is being removed from the kernel (almost none exist at
> > this point in time), retire the entry as well.
> >
> > Most notably, it's not being marked as deprecated instead, as there is
> > no indication that any more of those ~7 year old devboards will be
> > built.
> >
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> > index 7b9d5507d6ccd6b845a57eeae59fe80ba75cc652..646814ec7d15f6d8a0136de73b7eaddae232ea64 100644
> > --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> > +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> > @@ -132,10 +132,6 @@ properties:
> >                - qcom,sm7150-smmu-v2
> >            - const: qcom,adreno-smmu
> >            - const: qcom,smmu-v2
> > -      - description: Qcom Adreno GPUs on Google Cheza platform
> > -        items:
> > -          - const: qcom,sdm845-smmu-v2
> > -          - const: qcom,smmu-v2
> 
> The code supporting this can also be removed then, right?
> 
> drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c:     { .compatible =
> "qcom,sdm845-smmu-v2", .data = &qcom_smmu_v2_data },

No, we must keep it for the Adreno SMMU on SDM845.

> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

-- 
With best wishes
Dmitry

