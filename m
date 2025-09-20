Return-Path: <devicetree+bounces-219572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C4B8CB58
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 17:22:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4477B1BC2616
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 15:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764BB2FB601;
	Sat, 20 Sep 2025 15:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EHdi39/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50B82690D1
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758381764; cv=none; b=bvMVwE53aLGT1ad1i2ch68ScV4jrxvL1NKFT4fpoZQ5YCYjsU+AtqmHHBsHqr5oDK+dLUedK2Iiszl/Zjea0EgqMdIh3qHQ5ngW7Bb14f6Qht5jmxSuRcEmf04wqHeU6k53j2GcTtcz3EkPznkC8lInyoTX3KqIf6CuEGS46D0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758381764; c=relaxed/simple;
	bh=ADtsq7AKzm5Iw0ISFNLkeS8bqwkOPzAKJJ4xuvJ/GhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=URIFDKh+2F6pZM0ru9BIGocJ6VdMRWtcDJThQiS0JYDR06addgi+r/QUOitv96WCdkoVSerYIeMtaG5psruU4W0bh94vfvYkrlbBlu7sf8iomIUL5/d1lvSgUQRqwr0xq0gqsWlgsJMYFo5lPrwnk3F9FoRIBiJU6YEcfAESYfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EHdi39/s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K5HPxc024736
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:22:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qMvP8F7p/iDOTofUgdqZ4hYV
	jRyQ8rzwo1S3mGKqewI=; b=EHdi39/sRKMF5YFMprLKbxk2PLKoxfCXgK62NOBa
	lh3Dsw0MKcrUKng/QZ5fVT7lNhoFNhMC0mQUN5TSCmf3VM8+MfO3aAUVR6dGDJAp
	+jnND8JM0Yru8ZOCmeI8PyeXU2t8tdjskYPeQUWDsigwwIEVqvml1xzaRZX2RcTB
	oK9WskshuZpjyOQoD1FZUO9H9T6u5Bmd3W149CO7J99/IJyoQYhg9VBk+OHhIRKz
	EdF0r6z3DHdnfQ9pIMPiMyGENsHIb2Gu0mxABEEi88zkOkrgJcpbuHSBipC+C0qp
	qXJbcpCYR4CCG0V/a1bYECWjegISWElZUf6V6tev6zKuMg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7ss0a2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:22:42 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78e5b6f1296so62904166d6.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 08:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758381761; x=1758986561;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMvP8F7p/iDOTofUgdqZ4hYVjRyQ8rzwo1S3mGKqewI=;
        b=uQtPvN0C+PSRWe8Y92GWqoN9NWge/8ebe+XPCdS6NQQGa3qSoU9yNL41e6MGgwr8TW
         OPGqyihvHIr3bnDxkQfcuINo6wNC32pi7ooS+LiaW+FJXDM/1+UCVH07qgCpTZ7LF+gk
         rnaMxm94KKWr2GkpaT9ZPwygZ+8QKqwyv/SOsFtpK5EY0UzsLgthfIHkgDgrBsLPhss+
         xMDHn6HU3Mx6eGWmE8d2nQyuG2DLFN16u0evjZVNNHq2yLcADA74w60hPzyqqHICApXr
         l8AWKB/c0woNSMX5yAaX+f5gFYB2Y2lZhx/YY5X08R1PZSEPguOGbiO1YXcq1wtaNh/V
         NTqw==
X-Forwarded-Encrypted: i=1; AJvYcCXujrnTIJi3kvL29I3RZPLjBp4ZsoTmxR4bCJ98x6TGknmScHYWgbSLETzVVSW92Y0Q4lsnDHYDxyaO@vger.kernel.org
X-Gm-Message-State: AOJu0YwubZas398WG1e5Rl2pygMMfrZlJhuhNN/Qw3cz2skGNywwFvT8
	UjpPaJuET+OFaV69I+EhdikGGQ41tQCjEjhdu2A9pYqG7EOnh2Ad6nFu8aU0sr0zxso4lY08fLi
	uFHSRnc1yPdYCHG36wqPYnQaZZqrR6l2XHRAGWQSfOc7K8K8lNEt3HjQhmUf5sT4h
X-Gm-Gg: ASbGncuXMtbenXOa+fZzc9hs4eG56hNLURQceuJIDe9pb8McnIo/qiJujWrF8oljcKq
	75zJILDD/J41iYKM+OpNkQmFhalemQ/ca0lL2tNX8Ht7zgj7YaHX4r1StEGMWS/EATAX+lbv9bv
	iQAFMBu3v2m/VCWD+S/cwpf2zuIAiqgRqx7tTP3EAVzN/DzjG+4r7T4KM6wMBw0ERivbhHBHysu
	oxMBNt9NNCmJM2FxlzcQaqblyPCIZ6Fqqm+QYQuexqvHVZqdYfmjisHNQUO0DmbaOqtNIYgnxqy
	Hg27jmz1v1EYbCAiPWPbuIi2x/v5M6Fh56ISVerGwi7YGXgZinSQiVMnK27YUgsCllzIeVFMCU9
	W0P3eokYXI0KgBSyna3apnqrPg4Jn9zisgn8Z++St2T8o3IYAoyxA
X-Received: by 2002:a05:6214:f01:b0:793:1b9b:4a9d with SMTP id 6a1803df08f44-7991c5f520fmr84609196d6.49.1758381760612;
        Sat, 20 Sep 2025 08:22:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWlAgM3pnMSdAw/Rq7z1YnN1kZKJ5qD9fwFMBKD5LFNPD+tDGwMgQD4d59xA4K90UQvVcnrQ==
X-Received: by 2002:a05:6214:f01:b0:793:1b9b:4a9d with SMTP id 6a1803df08f44-7991c5f520fmr84608976d6.49.1758381760044;
        Sat, 20 Sep 2025 08:22:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a27c0242sm18259521fa.21.2025.09.20.08.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:22:37 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:22:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Message-ID: <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX7+G8bDlG6Uex
 mNP09KqBILuG8HEpnY8+cQXN1wZch/mdiq+MdY1JIqqHbeOaSD8gDN1KvsnasXirIdM6boZwPWk
 qWOPp9ax8uDPocDs/xMalGDwgebHyL2BuTooIx0baCbW8GdBrQHJF8OslAFzehvWsCGWSyoE7Jc
 LfF+JO7AF0nQLflPAwfooVrNiUTEJLt8ifg6ppflsX/10N+6qrVhw/mhwmQFm6f5cYDsWGYGRwG
 O04KlUyDYWdOKxC5OxGqvr/chJSIMDaNUfcZeA3ppaoN5MEyekwMcGbQ/PMuyEFlwGAWvJRnTMn
 dLdGBeQ0/JXOluYcPshcC+FlaxDwbMm7okW9iUc2yZamQbiqh9Kt9MdptA3fi+E7S/ztLuq0ByC
 nNq2WBKB
X-Proofpoint-ORIG-GUID: nXpwUbv7G2nGQyJNj5G7xIRjcGSOsw3U
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68cec6c2 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=IEiawqspG9gC1EAg6qAA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: nXpwUbv7G2nGQyJNj5G7xIRjcGSOsw3U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
> The Glymur USB subsystem contains a multiport controller, which utilizes
> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index a1b55168e050..772a727a5462 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,glymur-qmp-usb3-uni-phy
>        - qcom,ipq5424-qmp-usb3-phy
>        - qcom,ipq6018-qmp-usb3-phy
>        - qcom,ipq8074-qmp-usb3-phy
> @@ -62,6 +63,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true

You've added it, but it's not referenced as required. Why is it so?

> +
>    "#clock-cells":
>      const: 0
>  
> @@ -139,6 +142,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,glymur-qmp-usb3-uni-phy
>                - qcom,sdm845-qmp-usb3-uni-phy
>      then:
>        properties:
> @@ -147,7 +151,7 @@ allOf:
>          clock-names:
>            items:
>              - const: aux
> -            - const: cfg_ahb
> +            - enum: [cfg_ahb, clkref]

Why is it being placed here? Please comment in the commit message.

>              - const: ref
>              - const: com_aux
>              - const: pipe
> @@ -157,6 +161,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,glymur-qmp-usb3-uni-phy
>                - qcom,sa8775p-qmp-usb3-uni-phy
>                - qcom,sc8180x-qmp-usb3-uni-phy
>                - qcom,sc8280xp-qmp-usb3-uni-phy
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

