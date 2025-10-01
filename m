Return-Path: <devicetree+bounces-222950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 300D3BAFB9B
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D96B64A57E9
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A672D73BB;
	Wed,  1 Oct 2025 08:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MdaUvYks"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A3F2857C2
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759308501; cv=none; b=FrPWB93nifoKpuRN0xGIi7GMitpaQ9yx9JTxyfeMn+tiHkdJAkh7TvNqZo6vHOYrY9wZShmpJF1jSWX67K4+TE/uj6bxdBpOzAVR8pBk+H8b9QUJ+G4yeNx6W8LreNVayTxi4So+BkaPPnyVt0kT8JA4r5vZZBMvo2cCw3o9cVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759308501; c=relaxed/simple;
	bh=cnYoKUY3HNF+KS4o9k4ts/NW154cLa0Rejq1ItDkND0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F4mX3ZMUnHkfj/iG8htlENnPfpLvyoShN8DeawhlKX7uZpHRT8bEa/2uGxjdMyd8z+msxN3BxoHA9np2fnYawOdzP5U2PLYDXNpT9b2Pc6ZULyy/MlsQyWksI8Brejb5FhqUAQh5bmID07F/dRCsV/9BPO8omfqwrzGWX5uRyiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MdaUvYks; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5917KfT4020544
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:48:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IvoGteqWZO/DNKSiamDYflNR1kJAs4QLzd699paRsik=; b=MdaUvYksRMISOUUn
	c3179kep1t8NM7nwGVHUdOxg1FRsaIpy+4ws06F1qSYZZfyTNxvqLIXK7ZdhXC4+
	PwzdJHTaaJgXdH/+SQhQuA2gK6ONlWLRVIHEXdDKHh7/76oabjgPtHRUUj414P4T
	F7cJqG8YKKH5IN4Z1KYfefBMFetVBW+lvwYeXtzwdy2zOerOKDrNf25PSf82ke5K
	9tqAZr6fOrtCl8zr1AE+OYm/2Elxadv61Z/8QofPFgckrjlyYrSyLB8wWt+Q5R7e
	mgN6FURL2QkKhgIr8ckY59OHwTXHB1OnWvoUpYH++p05DO1KUXBBWm0FCRO8zXkE
	b0rdtQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1870b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:48:18 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d8c35f814eso12440631cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:48:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759308496; x=1759913296;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IvoGteqWZO/DNKSiamDYflNR1kJAs4QLzd699paRsik=;
        b=nm+35s8ggjWx2NAQRVIFOwE+K65k49d8/hhNG48+UgYOTfuC5+PsRWwXLDErtc76r0
         fWNSc6QYH3hmidTECQ7fhakC0eCxZoStR22/xaXQF3JB+5bHAEcOgyGX8x5w+UboQ/zt
         UICRjrU2wFOKtic5wHXP78rsEPD2c7GzNEx0S9U11hnlk0T7JoSEzaQblL4CV5rUeW8R
         PHMkWuDVs7h2vn6/zNeTgQMsq+WgVNSL5Ckzl0XLmA6P9FlF3Pk3iGNDEk34mOHNF/ID
         BMYlcMdFOBL4cUYvkLFeQHvf2QwbEWRKngd3rJQ1V0X545TAL5IpUgYz3eA3HBPFHhtU
         Rl2Q==
X-Gm-Message-State: AOJu0YwtfGsv+Y17hnS2laay70fWhf0B3QYpGdHfxlFYAfUjGKKrVWWU
	/ulqaQA+dcZghvFs0bAkfmXg7DDa6hs7nPgRBGvKNy1MjTNC0hY6Rwz1d1uLfP78SLeO5JEyDHN
	Adg6kNZv9ALF4weFmOwEa7QpCkPqBTgvDX6L8puV13eVB/qN9hAdSNE83ZAicgSo7RKYe7/3V
X-Gm-Gg: ASbGncuJ/r14ptYj/zUf/lazxxv/zVr7GSG7U28uNhFHceXYbv5KUwppRlx8DhUFn3h
	eZx4j8qmrtq13Mn/SCNuiPTQdYraSuF7TazyQn0uz++m3Mc7S3EQwnJggkl9IDyD7u03PZdPz3u
	tLbEY3KhAdr8YiO1kXoIQPkDOATxcaLWD5c8s1xd0uxkBrJq8z8fZM0qvVsPrWF8PEuJfHUMt1K
	qOS754zVGUM/fmWfgMctK+jv0tHmlzj4tq0OUmyUXFGjTzz5bCsUSwrtK9XBecd1Lq4KgH8IVYl
	ZWev3VXmvJ9beyg770Xo0KyzxRwJSov9QHw66F8EJf4l88T0Wjl9bq+R7FOZRTZkjqCSICj5C/7
	D4yKZVgxPcQDEXl5tx1TQi1KGslQ=
X-Received: by 2002:a05:622a:1905:b0:4d9:7eeb:3f76 with SMTP id d75a77b69052e-4e41dc85fa8mr23565641cf.8.1759308496432;
        Wed, 01 Oct 2025 01:48:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFA7X+FvOsVCp/d2YehDsp16CTMKaYRaFciuDgavARc4hbhk88e8MW3DkaRiSisxhPZklkGeA==
X-Received: by 2002:a05:622a:1905:b0:4d9:7eeb:3f76 with SMTP id d75a77b69052e-4e41dc85fa8mr23565481cf.8.1759308495920;
        Wed, 01 Oct 2025 01:48:15 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b401d3d4124sm517238866b.75.2025.10.01.01.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:48:15 -0700 (PDT)
Message-ID: <425af7b2-2195-4a18-b14a-7b2871563b12@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:48:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8250-samsung-common: correct
 reserved pins
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250928044533.34798-1-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250928044533.34798-1-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68dcead2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=wVdH400FnCx9Ju2W5JsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: OQjgR9fOKo5RqsDfUWRAUeDxAy24H7Cz
X-Proofpoint-GUID: OQjgR9fOKo5RqsDfUWRAUeDxAy24H7Cz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfX+/yOOPkeGQTF
 Eq4PN3w9kllonsAMQM7iynkALVjVjxnluAi9Ds49Zp+BQWDLCXW17zxpi6hc4nHIH+wdW9iGZei
 /yOg3NiS05pWJ7iSEs1NVLscdGa7S7i35CxxIIZnRkIDNcQEmss0ci74fEdUtBTCkkERhSJW3uL
 VowPL1BOoaBcQpgaaEQfHWVQHrbyxyrSUzVtsE2QjI/dSwicZn5Hom5E289Onw/yRZKiVuboXxC
 wjLh/rSIpIvWMRFy0IEWhEgaV5PdjwRyG0wqM9UqiNEcIAtfonApCMh5bVcFQJZ40dJdnt04bLh
 SYhUigQifSn2pB7FKSaqL4sbmF1ZmqzB5i/dejZy5nY6uTgiyRXxbeo0fgkAQIOwIC4o7gY3y3O
 ttE8URNjx4g4AbxT/sywRNehzMOHaw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058

On 9/28/25 6:45 AM, Eric Gonçalves wrote:
> The S20 series has additional reserved pins for the fingerprint sensor,
> GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.
> 
> Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
> Changes in v2:
> - Fixed the formatting of the <40 4> line
> - Added Fixes tag
> ---
>  arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> index 96662bf9e527..a87e3d23e3e2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> @@ -159,7 +159,8 @@ &pon_resin {
>  };
>  
>  &tlmm {
> -	gpio-reserved-ranges = <40 4>; /* I2C (Unused) */
> +	gpio-reserved-ranges = <20 4>, /* SPI (fingerprint scanner) */
> +					       <40 4>, /* Unused */

Please set your tab width to 8 :)

Konrad

