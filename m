Return-Path: <devicetree+bounces-192351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67304AF6535
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 00:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 395423AEDCC
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 22:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19675246797;
	Wed,  2 Jul 2025 22:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wz3TSuHy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752E9BA2D
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 22:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751495353; cv=none; b=EQM66So5Q+EFtFeg+qOeFM4Fm0KsQXo2DKgkjKOpytIzhg14y/mg6YdCJHz7R2BWpou2mLE7roFwynWyQZyZWZDRUHnhB21J/c0u1xtDzCHjnqiG5ybi4whqU9+OQmQbOPVdv0p4dkGbqsAMeT/n9AFgzc+jsu0GqRqsvyh1Gb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751495353; c=relaxed/simple;
	bh=up5bIfuRe1fh3Im2a2gPebVavaYz7/DHfHtuntIyrf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NszH9sJnATfSZHFR+VkylP50b0o6FeHI1irsIvfYvd2+dtW3dvnhjomcQhZAuEaMTNhHMmIlaLyuNs5NxSGMwe+jLKr0jhpWQQSfH/ldmsU8NX//hfu8rHzrEqNPo0KFvqxxbDc3JYnhuW4Xq0ESG5HEZRud2djcK0ZO3Zt/lhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wz3TSuHy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 562I5MSf021088
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 22:29:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BgDDI86k+9nrqehhROmR+AQC
	x3airBLaLzyH+/CSltk=; b=Wz3TSuHy8B9lSuyMjnWMsvL8ffmgZOBUjpAb9o+B
	WxvSXCHUXubtjRRdR8Hwf1xFjBDhL4n+XhdVygBtclHUPRU6vCW1Utc2QjFVGEyv
	EDWTZd4a2i42N8SKSwIBMNFqf4tlzdvsoinqos4/7/6Wp+G02mGS/BKtZYEqptXc
	fFpaqvJcU5pUSWI9Rh30GRqNYsEvErvQ6IzXWIVtx9HZc6vuEIaMlZXtABs6+a35
	g5vz8OPC3uJcuGso2lHWIfYtSiP3I3QKKcg1l4bKfsILU2ZJCk6G2cvkzdKSXcTh
	3177S7rczzTCCKpAyZPFKaeOAxn4r5A4zXgNOBqt4F0Agg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mhxn4vaq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 22:29:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c760637fe5so1256503185a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 15:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751495349; x=1752100149;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BgDDI86k+9nrqehhROmR+AQCx3airBLaLzyH+/CSltk=;
        b=lcd5E5LbgJUMguWfDS45Mcm3IKBhKcqHCFLU6CN1G97/Or9D1km9Yoex/3Aye/Fjtf
         b9SEAOUOxfZXJ+AUIAz3HGuCgiWLQJYNGNhhqAOzyJREDHxN5HQvcLN7J7eUuirt8FbI
         H1CmaP86HjTyeYQc2pM+qjCl9cellDOPLBg5d7C/5ec+OQ9EMx6W20g7uCQqJs6DM03J
         oq0fq9vAuWkZ0xYl2WudDREpm8epQzzjYft5643dn3ur55V9FqqPpsOlXjhQ6xDUvZHy
         q+uMqrQHa62OlXIVTgfbX+AcMWYWccqPIALl4+UjRhQeDVRVYatJuHI+WoAfy9j4aS3e
         5WwA==
X-Forwarded-Encrypted: i=1; AJvYcCVZeWDJagSKT8EO+XMW4ADiCQf0ZTHYQkrVfFupVK9ok04VCMIvmsC2+nAnj3gLoCUquqRu9Xj4fltQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxLpk8/gq6IW+nnQoF2bwFaEQtk+J483l+/gYzkQ4pNgtyHeBjd
	DmYX6n8IyzoUOLEAOH57s9AJcswMnvZ9YxwoUJLlkJkeCAF/uxs0XjwOU7s19IMeDJgzcUGbL/J
	DFHmK8ZHD816Lf9ST1SXL0LOBpkLkY5r3iAh4T2Vc/QQBptkYuWalfPBvKee6OD4x
X-Gm-Gg: ASbGncti2Jx8/SGtmPCdISCtJVkksUDqS5f6pYGAeA0lsnUf0i0FRlkIGhPMBH7Kr5x
	m+n5ld5MbRNQ6KxbMwKYbfrREzlJVBwI04m0RCuJmziE42Mz0JUjalWYhLpBfYXwfBmi/g+hyHt
	Y1BtKj365MHLeSCKEnF6OAPm7kOtCe7mAl4UV+Bc/iyIzTkCOVHwqyaepsnq3cfJOScFp4lqtQf
	7fI9q49XMYwS2Orf4RYDND7DK+h8v7sJjeRjaN1/NuFv7D02nyn3Gn/InCsAgBTGhA7krXB4m+p
	/VDFt6VdF5ntV49rYWyFh6wsdJS7mYj4aSLrXdAXXoXZu4gIvNqAFxpyHmMFtD/T6HxTZPU6LXJ
	eszYdmRxlY8x/mZdOmwHjX2CrO+ErlCGsqfs=
X-Received: by 2002:a05:620a:46a6:b0:7d4:5c30:2acd with SMTP id af79cd13be357-7d5c4717717mr613056885a.28.1751495349312;
        Wed, 02 Jul 2025 15:29:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrSVTOJQ9y1rva3UBmjLIEBviVC9kwZsRJcNapTvyl3wOwWuQm4n9kgbG/8VBXUhQbv5kwMQ==
X-Received: by 2002:a05:620a:46a6:b0:7d4:5c30:2acd with SMTP id af79cd13be357-7d5c4717717mr613052785a.28.1751495348903;
        Wed, 02 Jul 2025 15:29:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2eff7dsm2261580e87.246.2025.07.02.15.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 15:29:07 -0700 (PDT)
Date: Thu, 3 Jul 2025 01:29:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: qcom,videocc: Add sc8180x
 compatible
Message-ID: <mzmer4g7df7xqhnstpfhyzcm2irpmsk4iwtx6esjksp34lpkk5@76lrsoyb5cp6>
References: <20250702-sc8180x-videocc-dt-v3-0-916d443d8a38@quicinc.com>
 <20250702-sc8180x-videocc-dt-v3-1-916d443d8a38@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702-sc8180x-videocc-dt-v3-1-916d443d8a38@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDE4NiBTYWx0ZWRfX/AmOT91AWEmG
 aTxPruoGx2MOarLlnBVxSr8xSrCs83s6tAYVyDSg1aG1Rnv+0pGI+0cx0PMK6XUhSU6Xnl2WzE+
 jNoHoHyDg9sfikd6eg3eoJxgy8w5trhBv/3JA2BVCKnHrrzGt0qs1n5FhQRYUyKz13A6hFkzhs2
 aogdc5lBcj9TVEfxzVMh8gDdq1RQf7sOICqAQq5ZsJZtZAOZvRu9CCDBVkoOEnwhIKgLKDwzkbG
 WYy255tbCghY2Weg8I+aNW0nPfJQgJaXvB+hBjOhKExunByv0xZbOTwE10VfONkG7wkHGy1c6Lp
 6JfmRuUP1Ezxo73ZpuvIlVFKIJ64HGIDhhC6eJp+eKNN0QPaYhprdv0/PFKtC32odFatopGIJ7p
 ZR18JxFaaxD5nvYc1DMZYdnsCj5Y6NeOO8Y/uFjqThaGqlPkYM9YPx9j4wucuyIR+cvP/xfd
X-Authority-Analysis: v=2.4 cv=EbvIQOmC c=1 sm=1 tr=0 ts=6865b2b6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=_TNEKbHo1ymzoaDRxC8A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: m5mXRkizUH59dAzNn2DHUplOV5CKmhJz
X-Proofpoint-GUID: m5mXRkizUH59dAzNn2DHUplOV5CKmhJz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020186

On Wed, Jul 02, 2025 at 08:43:13PM +0530, Satya Priya Kakitapalli wrote:
> The sc8180x video clock controller block is identical to that
> of sm8150. Add a new compatible string for sc8180x videocc and
> use sm8150 as fallback.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  .../devicetree/bindings/clock/qcom,videocc.yaml       | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
> index 5f7738d6835c4ba999402e163fc85a07e3a47a5a..b490caaf843243a7a96395fdd2b99972a45679f9 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
> @@ -23,13 +23,17 @@ description: |
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sc7180-videocc
> -      - qcom,sc7280-videocc
> -      - qcom,sdm845-videocc
> -      - qcom,sm6350-videocc
> -      - qcom,sm8150-videocc
> -      - qcom,sm8250-videocc
> +    oneOf:
> +      - enum:
> +          - qcom,sc7180-videocc
> +          - qcom,sc7280-videocc
> +          - qcom,sdm845-videocc
> +          - qcom,sm6350-videocc
> +          - qcom,sm8150-videocc
> +          - qcom,sm8250-videocc
> +      - items:
> +          - const: qcom,sc8180x-videocc
> +          - const: qcom,sm8150-videocc
>  
>    clocks:
>      minItems: 1
> @@ -111,6 +115,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,sc8180x-videocc

Is there a need for this? Isn't it already covered by the SM8150 entry?

>              - qcom,sm8150-videocc
>      then:
>        properties:
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

