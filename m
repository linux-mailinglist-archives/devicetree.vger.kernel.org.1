Return-Path: <devicetree+bounces-173777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ED0AA96E6
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 17:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAB2B18839B5
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C87425D52D;
	Mon,  5 May 2025 15:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lJZJdjQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B2125D1E9
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 15:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746457288; cv=none; b=oYMCQPYYC1a2/BhvD2rz9gZsXaRL+xhzDhU5qdohY2B7GO2II48HxfaEdYPBuj/BzS16pxYS+/C+FWcgbUlWVNcDyH+SOYjQDH+vpzWXG7Ii1eTK1jWSkQV3JAnCZLsBb4yjvwCeaofKz0Usi82kHWOEoO+LzocWjPKjh2sKcgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746457288; c=relaxed/simple;
	bh=sTFrqUoMPE+d50wwTLkKW0DzluLk78DIDqO7e8ImJek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ePcpDjEyTXt4ZfNgdZCGpGrsdlxa/ySM7UE2yTTtOwD4pDfNsuDQ80rpC3gumVJAizmLL+75blAwgt+J2J7PzbKNmZmreoAAq2okCUtJSbTqEz+vLgQsXuCTBHE8y6eB+6J3DkZDxEs0pH608Gxybm5ESWZgfEoXEHk8yyDU3J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lJZJdjQT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BG43i015271
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 15:01:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ajIwN9ybFynnOoUBfqw560tK
	D3pLVfHj6Y3hXWa2aUA=; b=lJZJdjQT+SGbsmSHoVruH15IgghckrcmGxAU5AGx
	YvsS+TbzRMNfC26GffQYr4lBRj/6zBlGZAXvjtaeWVogMI1XclocAIR7MtGzgfni
	5PloLC8gH4kQnVEPkn/D028O/PfvRIMLp2z/utOYhOZXLQpdkRDJyIP6ThpiZ+HE
	gZDekTShyXdJK4JTMTfFZ3qEWJTq/U94VICWKpRLPm+hwgJEOOOb6Qmh2hssIPxB
	Xp89nV0ROUut3A9JYQ+H3vbo9a6+tp64ElUTTemxnycaS2CEjlE9Ctj87q72bojV
	9y8cIG9BXTMVXxpEyISgyEj0NguSwl20L27V9KdVpE4txQ==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dd3n49vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 15:01:19 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-72e2f2b9e7dso3603296a34.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 08:01:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746457278; x=1747062078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajIwN9ybFynnOoUBfqw560tKD3pLVfHj6Y3hXWa2aUA=;
        b=IPLb5kzitTssDuNFbw9+AVaxCi67Wjne81tPHI4LqkhEUOZ6iUwWQq+WIgL7nK6w7c
         BdDIZ04x31cDVn1mi1mUEvZWveQ3e6jXnuxYqcR6qgqSxmCal71ddznqWVbyFzs4obSt
         pJpCaEBGWTWFmAaz8ql+m3/izGb/scUKaZX3fgarneaHArwEPcYtbZK1v8rXCHvPfSMq
         9HPb3TNnM7g4kMiqvGfg3N+xynxIaaLYMmRADX8RuQAJMtjxfhnDfG85zIZJVBTqI7WK
         yn8hQDeuHtW09tODQgXOMCcL1DyaA+b4rtfKgOmNmeijCdgeGbK7N/6vsBCqcAEguzqR
         r3ug==
X-Forwarded-Encrypted: i=1; AJvYcCUOoPimVN7gXSEqnehqgEYksHXjMsQ5wTQBpavTaPe5rBur5qq6LxQB2La54sX2ffDrqPSBg1J4ps5A@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0mMcNiqPeGH3qDrypNBmET6PlsBRN1Teu+T8OgXCXFnpxuyvX
	rBh7/lZK3AUNdxOy6VXGk+ctL45XR21Ytzt+9jIHZ04luoSD/quc6xmG52BClwST0+vIahbDyS9
	Bb6iFljXZ6U9KxMVDcN1Qb/7ihccV2ZjExL/vnyUgE6dXgN6m5cMAUWHn5Hvs
X-Gm-Gg: ASbGncv6GK+eNQsk5Fml05Zg/0P476IhMEfwhw9dnDTsjPtlez+Cx/gh3ZvUXVKZ2sO
	QHCzDCwqUWIcriYeFXGbSMlfPgW1aw15TpTMQbqel1/bJ+RRscucHWAZiPAkUaYA6DHMssy1+29
	KFhMrWxB1zDp8419ngXNeNRZfbcpF+4CS+ouk0Bwme0xhxDL7OZzUOAHYPrAtqniSaueqHxaIc2
	li8UCL+nun5stQ6TEAKQCQexW4veZKNVmdJlKYbph2wNmqNGyl4MxTS9YDIhP0QZ5nZ2K3kjQt3
	KMTyyY6eKOZmGZR09KHC5tFolYAu8RzMhEIAwdIub7tjKjuK9OsRVbFaGioZEFJfC0KhdPCgZIE
	=
X-Received: by 2002:a05:6830:6b04:b0:731:cb3d:67db with SMTP id 46e09a7af769-731e560184fmr6735243a34.16.1746457278355;
        Mon, 05 May 2025 08:01:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl5sM6QT1am070BqEbNtN/0tNEpvKAt2e2B2h/I/PNOETxxTlIHhgZfMD5SpwtZsT4oyPj5g==
X-Received: by 2002:a05:6830:6b04:b0:731:cb3d:67db with SMTP id 46e09a7af769-731e560184fmr6735162a34.16.1746457277726;
        Mon, 05 May 2025 08:01:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94befe3sm1749608e87.53.2025.05.05.08.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 08:01:16 -0700 (PDT)
Date: Mon, 5 May 2025 18:01:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 09/10] iommu/arm-smmu-qcom: Add SAR2130P MDSS
 compatible
Message-ID: <liflz2mkkc7jiwtiynim2g2oxewdckbxo7y3m7tevbncqizfjf@ethwzfe3ft5b>
References: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
 <20250418-sar2130p-display-v5-9-442c905cb3a4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250418-sar2130p-display-v5-9-442c905cb3a4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDE0NCBTYWx0ZWRfX+TxONnrDB3vr
 uPI4Zea2Q0TjVH0qYHenTwYJeiUudvbhWMQKfeyUSGeVoAAYIUD5e8E7Jy1xr6k5gRtBGM88m+v
 Fmyz2fk6aBQJeGQQT0YfmS5yHad+/rdtguO6Fjq1xsxQv7A4nyWZ+gm5Chsr1KW2cr+/1FLLaRx
 RFkN2kIBJ2zzVEmLzlcdXy+csOtcvbld24ZHzQRLoRNu5zp6lEPINkU8UPUpQ+e5ylMpzbNAYc8
 z9sEngBC2xkuKWHzqf0zJU0spgq3nBbZB1XhtbFbiGBK/QYZpIQbHqAcnwTr6NGB9o0kQf70jM6
 b21tuDA6Pye+CUH0ggA6NQW/C5BKZfZxXNSOrIOD9kg+6KAYw6HMADC2RWU5LVWPgDglLXEObQw
 zHBLwTWv05W2JxJ5Z8xtq+WLKcMOnZ1hI8SK93jjO0/AUzGwbKxPE+d92q3fm8/9cJGbpYJq
X-Proofpoint-GUID: x-11lpsd49zE3L39ZVvTxoUxJIaLAGZt
X-Proofpoint-ORIG-GUID: x-11lpsd49zE3L39ZVvTxoUxJIaLAGZt
X-Authority-Analysis: v=2.4 cv=UNDdHDfy c=1 sm=1 tr=0 ts=6818d2bf cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=bEtjVc3RIV5_29FDWJ8A:9
 a=CjuIK1q_8ugA:10 a=EXS-LbY8YePsIyqnH6vw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 adultscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 mlxscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050144

On Fri, Apr 18, 2025 at 10:50:04AM +0300, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Add the SAR2130P compatible to clients compatible list, the device
> require identity domain.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
>  1 file changed, 1 insertion(+)

Will, Robin, with the rest of the patches being now a part of msm-next,
could you please pick this one too?

> 
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index 59d02687280e8d37b5e944619fcfe4ebd1bd6926..ecc4a1bc9477b766f317a58ef8b5dbcfe448afa9 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -356,6 +356,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
>  	{ .compatible = "qcom,mdp4" },
>  	{ .compatible = "qcom,mdss" },
>  	{ .compatible = "qcom,qcm2290-mdss" },
> +	{ .compatible = "qcom,sar2130p-mdss" },
>  	{ .compatible = "qcom,sc7180-mdss" },
>  	{ .compatible = "qcom,sc7180-mss-pil" },
>  	{ .compatible = "qcom,sc7280-mdss" },
> 
> -- 
> 2.39.5
> 

-- 
With best wishes
Dmitry

