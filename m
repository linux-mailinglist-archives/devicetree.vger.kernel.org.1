Return-Path: <devicetree+bounces-188020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D27AE2426
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 23:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B7D77A6AEE
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 21:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A630239E72;
	Fri, 20 Jun 2025 21:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MLGe40Wd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF1D23717C
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 21:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750455577; cv=none; b=R84SKDiydjbAT/QuTjl6KvguSOxfJ7bXybK1pY2SIhpEb/hB9fBh2tr/nd3OVfO3ukQ1xK5I+u0M/56zHxDAgH4YkJtFeGFryQdZuneXRGNj0Cg2gryPyMITBq0mPsd+m7hRuGdEnGCbnSHyeL8CwxB8ogr7Y/YFfD64LvB/I+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750455577; c=relaxed/simple;
	bh=5+lx+rMee4hQc5Zw2lVmW76xMzRd3mGxUhdEqPcGNy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T2vaZKyybU065Y+axhtBSDSztFHGJelqM9JA5r6aMwry83+bULdkeGy7OTtuqVjjztFKUdwbf3JnFPoRchSrNiRcLWRnK+mQCvh4r2lHgqBVxxwj1xsrXfBFUjSi4uH8SI6DHdgzd3ncBpGNx9gecGprwZvM7TsmMQ2L5MyYHXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MLGe40Wd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KGV9Qw029041
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 21:39:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wwzOEPTIZ8giiov4gJJQXrK5
	i9pYwzAJlNAgg+7xW8E=; b=MLGe40WdgIMvckP/3a1ou3SbPhUB1RzQVkbnEBCZ
	zRut/wQKtGDIFGH7JWPbHMbFP3HNgCWKpYGUEpLOA1YcoPyF29AYy2ZY83/kVt1H
	HMJk7UwTFs1OtCCebDrybyFRxBbAs7+BI1gAEt/saioYMP6FnSYvL0Z3srDbOjbB
	NLJegi+Yb7msXKHaE87HdqhN6j5dy9PW96nNb5QxF1oyXEFjWCe160istWB2fOZm
	Tk0BbIoxgeUr1B9ts1OdRBpjdUUbArzniZjuXygU+TO90m0LPgD0ovjs5EdBCsqM
	9aRjHdK7DuZKO44+a1X5rfG43mNwv+5py4nDPpOABKhMxg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47db82gm8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 21:39:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7caee988153so350806485a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:39:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750455573; x=1751060373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wwzOEPTIZ8giiov4gJJQXrK5i9pYwzAJlNAgg+7xW8E=;
        b=SW4PwI80ptjiWuyWKMZPENs283amREC6yokonP2dcIo3JiKEelb0Fw/ODghWEmVosI
         AJSS9LwYotGyusqi7HAo+X5QfRLSnMPM8InX76jFdkWswmzZbhOxgvvvbDUh9xi9NInO
         CZ0T59m6vt2KksCn0BdL7r8NT+0wWrdJqd3iad6qn1aNstTm/HJ+TijXIvg+zzg/Yk3F
         s/cNyceomQwrZDHq9psPG0B1sVato97VhqTShqU7LbEG2mgAPFNkJFd08zqVShSuksjW
         pI2dR4zM+xiSwbBr29rX5UtsyEUq+EphR/SCGXl/VhSw5OgNcEiuY6bR85ul5zPUtjXX
         iuPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrMuAcKkK9hgsENcSyQMhMy2C9vx0fAIDEESmCSSsRMadVQZyGFzmPEBlYUc/q32U328SuObAu4PsL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0VYuaALLj13dkQBB0hWQqYqoIUv42DvL4xMznJ+6a+v6HR5Nn
	EOpLWBSMR/VhPDNvI1lsiHDoV/mGcGzsoxfZV7voLr4O7le1Z6Aycep8STnvlbnWwpvSEizxPxP
	CL4pDVIecbV+At7c5iK3HVvzs8omOJx9hnaXMd/m69wNQd6OOZ93/4aS74kzNXtxl
X-Gm-Gg: ASbGncu5ZFR41pcZ3/Yh1juQ0iXh8gNWP8W/vkm5Jl7hNuMPC0B7j8HE3zqpYsypxIC
	Bs2hXrH9KTGdYV/FB8VHAX+A3drpPPlylqKkKIBBgIpT5lJ3EddRKxspxyynr1Jm0XhRFRjX3KY
	Kytym/spiBvKOy1P1XvsXMDZa/q3R3Z4nuZD62Z9OQ2/1Xux3SZ1rt/br7oz2ED5MlCk9vUu9lE
	ycMfcaPST/h874R1RqEjpZnaPssRIp9qG9xIxMjBAUjycHT05IaD3gOyVTpXMY3Zrz/VzW/IjoF
	DllyDVnwg6YHx0Z8BiRaaOWkP3ckmwk9dkaW74yeAggmW3FIRiP/pm5acHV5U5cGPcRYM3e7erb
	XB34rX+CJyTgVJ8Ph6H0x2Qdim4iT4mnXfys=
X-Received: by 2002:a05:620a:410e:b0:7d3:8864:d1a8 with SMTP id af79cd13be357-7d3f98c96a6mr686275385a.18.1750455572817;
        Fri, 20 Jun 2025 14:39:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGX3zLYCHnzxLiD2hjxRNc4k1DRXHEdxgbDojWLk6u3q4pVIZ+GEEi5/4EOpDydiye/y5YWwg==
X-Received: by 2002:a05:620a:410e:b0:7d3:8864:d1a8 with SMTP id af79cd13be357-7d3f98c96a6mr686272185a.18.1750455572373;
        Fri, 20 Jun 2025 14:39:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41cbfe6sm414644e87.204.2025.06.20.14.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 14:39:29 -0700 (PDT)
Date: Sat, 21 Jun 2025 00:39:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: media: qcom,sm8550-iris: add non_pixel
 and resv_region properties
Message-ID: <x7xskkv6nviz3j7sr5qgs7yt7z6txqwdemfammufwdf6ji3sla@gi2a4aadt6wc>
References: <20250620-video_cb-v1-0-9bcac1c8800c@quicinc.com>
 <20250620-video_cb-v1-1-9bcac1c8800c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250620-video_cb-v1-1-9bcac1c8800c@quicinc.com>
X-Proofpoint-ORIG-GUID: Ejewe8aZNMYxuuUaXleZs3QiAADsq6Xk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDE0OSBTYWx0ZWRfX6fJGwcnOZXNd
 yanxyse1ygak/A7uB7OboBvtzc5XBIp65G0baU6rHxDcw7y8HK3oXePT9O0OnrjoVBeozp2VSXX
 94qBqB2PlRdzpn14eHp1cKFBHRddijjo1B8mzkXrjibaTcRj/nMdYgriqIZRCUjAHw0dAofZOHR
 Q6EzZ0XpNo5Fq7hywOZNHGsbSHI82ujtIpEweXYJzjmBsWcXc4EJzyvKd8MCRn+GxD+p/7W9iUj
 609rWo7Es59JaZtzmpD+DDkRuwp6hU5LYvN9HTtubHG+BRGo2QsK7o1r13vNkG+xkCm1Z9BBBPg
 /jTgcdoL8QazcNRRgyJOs/VVYxJb6lVv+N9iGX/iiENGK5mONjSLF8wN5eZxjWEV79bACISPx4j
 VAht0G5pEvULng/nXVAyewSCcffsOqUpFbW7oMn/X5MKldL7yiAOb4blndoPdK8VqmPiVy4k
X-Authority-Analysis: v=2.4 cv=RaOQC0tv c=1 sm=1 tr=0 ts=6855d515 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=cX-zLpqguaV5l60ydZgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Ejewe8aZNMYxuuUaXleZs3QiAADsq6Xk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_08,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 priorityscore=1501
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200149

On Fri, Jun 20, 2025 at 11:50:51AM +0530, Vikash Garodia wrote:
> Existing definition limits the IOVA to an addressable range of 4GiB, and
> even within that range, some of the space is used by IO registers,
> thereby limiting the available IOVA to even lesser. Video hardware is
> designed to emit different stream-ID for pixel and non_pixel buffers,
> thereby introduce a non_pixel sub node to handle non_pixel stream-ID.
> 
> With this, both iris and non_pixel device can have IOVA range of 0-4GiB
> individually. Certain video usecases like higher video concurrency needs
> IOVA higher than 4GiB.
> 
> Add the "resv_region" property, which defines reserved IOVA regions that
> are *excluded* from addressable range. Video hardware generates
> different stream IDs based on the range of IOVA addresses. Thereby IOVA
> addresses for firmware and data buffers need to be non overlapping. For
> ex. 0x0-0x25800000 address range is reserved for firmware stream-ID,
> while non_pixel (bitstream ) stream-ID can be generated by hardware only
> when bitstream buffers IOVA address is from 0x25800000-0xe0000000.
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>  .../bindings/media/qcom,sm8550-iris.yaml           | 35 ++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> index c79bf2101812d83b99704f38b7348a9f728dff44..a1e83bae3c36f3a4c58b212ef457905e38091b97 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> @@ -65,10 +65,45 @@ properties:
>        - const: core
>  
>    iommus:
> +    minItems: 1
>      maxItems: 2
>  
>    dma-coherent: true
>  
> +  resv_region:

Ugh. Underscores...

> +    type: object
> +    additionalProperties: false
> +
> +    description:
> +      Reserve region specifies regions which should be excluded from IOVA.
> +
> +    properties:
> +      iommu-addresses:

Missing type / ref. Also they are only described for reserved memory
regions.

> +        minItems: 1
> +        maxItems: 4
> +
> +    required:
> +      - iommu-addresses
> +
> +  non_pixel:
> +    type: object
> +    additionalProperties: false


I still think that these usecases should be described with iommu-maps
rather than subnodes. You have a limited set of usecases: "non-pixel",
secure buffers, etc. Define an ID for each of those and then allocate a
subdevice internally, mapping it to a corresponding set of IOMMUs.

> +
> +    description:
> +      Non pixel context bank is needed when video hardware have distinct iommus
> +      for non pixel buffers.

What does non-pixel mean? Compressed data?

> +
> +    properties:
> +      iommus:
> +        maxItems: 1
> +
> +      memory-region:
> +        maxItems: 1
> +
> +    required:
> +      - iommus
> +      - memory-region
> +
>    operating-points-v2: true
>  
>    opp-table:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

