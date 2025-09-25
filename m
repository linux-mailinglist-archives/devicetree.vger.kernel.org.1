Return-Path: <devicetree+bounces-221106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 866ACB9D3C0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:50:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B61C77A9D2F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097452E62AF;
	Thu, 25 Sep 2025 02:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NFlkY+kv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695162A1BB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768618; cv=none; b=g7YlQuqd6TG4vHdmNM3kzkJNYBrZWw4q6xcjyLK0ERSi5Hd/FkaC7oXKDvvGK5YtnSxiwby7hiVbQkqRA6ngZ93pRah5VLw3DR1Fs0fPFmBeNVKKSQjYhyqpB2bW57BHT0p96M5FVCftdl2HSyWYZ51fdBhCj2j6Pu9jbdqtZpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768618; c=relaxed/simple;
	bh=//JuZfSiU5ZOHan2hVqEAb98T+pI2MO07exn9jj/d7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lVap1lHDunWclr25V1pDvKCaVDQU6/3biW43rtzYt7k6dVByZM7iIZ93kLjWJm131vTW/HL5Nl+g+XUlJZ5IgBlPg5FrhpvzDMs/4fQDzic2/MbnCzl2gnzwTLZuuM2tEPjGKvfspvgSa2SGKg1pFo4wSDFRRHKRe/F3SsMD7hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NFlkY+kv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONx2ca018070
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:50:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aTjhOlbDGoi+nAgLRYqCc7oF
	FUvkDZHGjtvCYSikgJs=; b=NFlkY+kvk3DkDeJ7Kp3u9alaExlaj2NbPl3K9MBJ
	2DPcQdzpC3hz/nrnlDpVGZR3TKu8Rva1p1XF4vWWgAOg6FoQ0m93KAECNBzqkUny
	kH/ayuWVl+CuvnS6ryJN2hvPciWNTbqXGBGbWDuaYcQDcI2i/65PLDIe7uebt8P1
	Lt1SAmHgrgOun/CEGG9rvjIhchuUZzobq6NQQYvdpvPA/AX0qMeH3ODj/COT08yg
	+4z3VLEFTOmPn2dHvbsIcviJabAiB75kQNa5HBNYKw+25vcGcaIFPKs+AAZmQT3U
	jY0IbAl9FD5WiqHZ7lMdQGxxGVVWDAqyPg0hBjxe2rwGlQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkafcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:50:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-81ea2cb6f13so118717685a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:50:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768615; x=1759373415;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTjhOlbDGoi+nAgLRYqCc7oFFUvkDZHGjtvCYSikgJs=;
        b=PYb28G6ZKcGgph1YjFr1AfOk75t2d0nPuP+8DbaSzbIwccvRLYUt+xL3HweOU7Dx8U
         1fbeksW9gM0q3Gw29s9g1Q0fJ7OBBWjq6K5awkN2q730m3JaMnNsdRrq8y792XJgnGJm
         m9+MyVK7j5zaBGubziAAmyFh3ztkDkd5oyrsUCjDIMoOyV7IasapC58HuWJc6mhDx0yF
         ti1ganfMt5nabm3o6ZgNAzoFiH9m0zgwTfpVRFhjCzP8s5fzzXiODqkvitkxlbnlbSVf
         4io8DemA8dTNoMZlVl7OGDQsRhty1UP8j+9Q1U20lcautd2wcpjNdG8ba3o+18eM1Xsz
         4EFA==
X-Forwarded-Encrypted: i=1; AJvYcCVFn8Ye0BfZ1PDXaos9oPfqrG9zKiyM0+xx1Hoy/Y7mfozc2Jl76Z3TF5JBz1Yf9hpV7nQixShU1zfN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj7lloYVCjFpK989Zc6QpUA2F8PQtFAGZdE3ywR/T3HiCQ2H7D
	UDQttrEUcrx+Hjb/lRIOcPkl2upCcXqmsEUg1krDCQlsLY520w3C0IwSjXN8zokAw16//oZbd/W
	nplfUw5mTVvq3EEJ9hN9rsqjkxTcV1MiSTMfrjCL6DqyhV8c6WvKxbO+FcfhupP87
X-Gm-Gg: ASbGnctv/cVLaiUwlGmAbW2laJ3uXYafeT1xiAcb5cpAnYI2yopA4DxN6a6ni4bb6S3
	g8AOik8QHD+hJbv5bbTt89FeI7iFLouU6gArk8dku+sLCeYHHYiX/oFVw66OrYyPDjtJ5zWICeu
	UbY48UIjmFYIZOZvxMw2YigDEFC07oUjiHNSjR4aPzuP9mRPTLXVm+saVJj1egGp4IfW/VeJAWF
	D8XKF57jkWTaLsotdjG0f6p5XxhEHcV/LbjASFJERsZyRrAxWJKTdtigEu0se1BVi/Lz1F0Vyhv
	3STT42O+1sbwPr4Qt41WaVlX/ddE3nVmXC+6iklStGWFOZ4oUgLad3A1fQyvj7R/SMFG5xKCqWT
	BpEZGHHXtc+DABYDWptvGGO7xRYlLJqV1S70dY5cKBykboQgd9x4Y
X-Received: by 2002:a05:622a:11c8:b0:4b6:373c:f81c with SMTP id d75a77b69052e-4da485b86bemr25522211cf.30.1758768615418;
        Wed, 24 Sep 2025 19:50:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPCPAHGHm02oKWm0hULewn+TOHb7/Ic6Ao7ghcD4in2rWcF+r1bHJkHP7fu0DzmGPlkvE71Q==
X-Received: by 2002:a05:622a:11c8:b0:4b6:373c:f81c with SMTP id d75a77b69052e-4da485b86bemr25522081cf.30.1758768614887;
        Wed, 24 Sep 2025 19:50:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139047d1sm260416e87.34.2025.09.24.19.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:50:14 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:50:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 01/10] dt-bindings: phy:
 qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Message-ID: <fuq4wzdsvfxromlezvt645wrjynv6onolv6kfvehwl2n3neezr@gdfbmfzkljwv>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-2-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-2-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: 1W7OnMBdmmDdLLCiu6AyA1Vh6xchRp0D
X-Proofpoint-ORIG-GUID: 1W7OnMBdmmDdLLCiu6AyA1Vh6xchRp0D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX1JktSpJpUAul
 7ylOT8pJGwCQ65S8OYDQsGXvuRijQ8iHtEvJ5GOdNmTgafQLLz4c9drAQuZcGRamssT4CzWzv6L
 19AL7yYA2YE5E8S+Dd5Ep9HX38sFYH6HYR7WIkr8ThWx5y9aEKeRlMGNsX/88qaE17SzcdyfRdA
 qWENFx5VLY06DoYbsFxjKmdkhe5Cjy3sQRhB9x+NkdXSpkxHeLT6CqAPhoJjpBYk/Ivoz/0UiO9
 fOC3DZ8OimZ43+S88IbsnU73HFJpzlo3VcfUqVBFTpO4wfi6GUNuIu5r3a+kzK4uIa1d1qRLHcT
 9IMQOkTs4Hpt8FiOV/khMlZLH1Bm85MG6QkoB9f7VJfqQLeUiBJKxFnr09M7xmiklRqLhBe4Otc
 HYmTmuaP
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d4ade8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=FDav0VyUyA2TYFF6ppcA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On Wed, Sep 24, 2025 at 07:28:41PM -0700, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP PHY combo driver, along with
> resource requirements.  Add a different identifier for the primary QMP PHY
> instance as it does not require a clkref entry.

This is no longer true

> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b..2f1f41b64bbd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,glymur-qmp-usb3-dp-phy
>        - qcom,sar2130p-qmp-usb3-dp-phy
>        - qcom,sc7180-qmp-usb3-dp-phy
>        - qcom,sc7280-qmp-usb3-dp-phy
> @@ -46,7 +47,7 @@ properties:
>        - const: ref
>        - const: com_aux
>        - const: usb3_pipe
> -      - const: cfg_ahb
> +      - enum: [cfg_ahb, clkref]

Either define it using the if/else or split glymur to a new schema file.
Such enum allows specifying clkref clock for all the platforms defined
by these bindings.

>  
>    power-domains:
>      maxItems: 1
> @@ -63,6 +64,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true
> +
>    "#clock-cells":
>      const: 1
>      description:
> @@ -109,6 +112,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sc7180-qmp-usb3-dp-phy
>              - qcom,sdm845-qmp-usb3-dp-phy
>      then:
> @@ -128,6 +132,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sar2130p-qmp-usb3-dp-phy
>              - qcom,sc8280xp-qmp-usb43dp-phy
>              - qcom,sm6350-qmp-usb3-dp-phy
> @@ -142,6 +147,18 @@ allOf:
>        properties:
>          power-domains: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
> +    then:
> +      required:
> +        - refgen-supply
> +    else:
> +      properties:
> +        refgen-supply: false
> +
>  additionalProperties: false
>  
>  examples:

-- 
With best wishes
Dmitry

