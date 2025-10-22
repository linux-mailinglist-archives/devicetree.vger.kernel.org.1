Return-Path: <devicetree+bounces-229874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCCCBFD00A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 753FD3A2919
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0193526E146;
	Wed, 22 Oct 2025 16:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CwAZpgPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BA726059D
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761148976; cv=none; b=hNoxSXzJyssKYIfFUI0zObU4heFg/g7y3OEEE+zSMRwT+Z9fBx+nOb9hUUeCtjaHaYk0dkiJOMb+oRjlukE65dk6H/VQoOdYIQEGweF3udSVQEvLphqUZ6tTo5J0kvFR5DJnqKfrLv3fJYZ5isQymdcnvdSTxhrbrGFxTROJ1b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761148976; c=relaxed/simple;
	bh=6/x4q1TD0Vfpez8lZM9NmTtdfX6AcobeeOsSKpt9cS0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dkMLjWej/dw4LA1IdfWXWP2eYHU3ez4/ZhMdja3dhYky9iKaNcaRMnaVKrNrubi7YsFICbLXWeMG6Pfl24p7E4CEyyStDhWVuHUSDGbs3O0QOq0FKMWfBlmLKjVj/jTckouQOs6gNjbvghCE3kx5VFC0gU/vXr2rUQM4aa4zudc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CwAZpgPZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MF47D2011570
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uJi0OYMjtb7TI5hXccKCsroVX33ScGfPgbLnqsYifaY=; b=CwAZpgPZtZC4BmqH
	S6YdD7pK7D0ZZCn9IhbE0muq0MxaeOM1MbxkGWbFyr6cidsSuOPU0FEn/AtnlaKS
	F4IgLX+UM00QDAVPT3B5gY54DzJprP+89jX1Hb/gLqIS1MAvspEqrh+mTO3fGkiW
	nvOOCrScUu9xrBAYWwlA4mmgRITCR1EgFP/3WyAXuR0Op0g9XD7RvUJrCGTsbWnu
	LycPKgqEAXyJEEFcosF1wGk6/642GlfHRVzLg+rUjImiKvrExgvyyNGjJN+YKK5F
	VcjC8bZ1hgSvP7hW3cyrxjat1J0Otl47trdIXREPBaF2CGFREA7kcyvHt+YNNhGp
	9PXHhQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0k40c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:02:54 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-554ec61ecadso401282e0c.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:02:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761148973; x=1761753773;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uJi0OYMjtb7TI5hXccKCsroVX33ScGfPgbLnqsYifaY=;
        b=pEOflxDFEw8iMFGx6SSDhGBya1KmDa/54yOtx9j7uLjQbzZ/4Y5cAcqt578ckelZN5
         qvLqXwUgSB45NFDrrrOdWAB6PPArn0ZWsgIuj7AlcWOyYs7zj6Uravs2Acmp8qGi7bul
         TUHk2q9yEx3LB0qFvW7/8qzfH+nQ9nWaHo8kYi8BSIBNvyt7wvyM2cHAjMeBmmcfUZ1t
         /akNuMqTbOa/eTobAism9WAI1y3vrXbqhL1LGmOfKV41AW+iy3dnAlFmuabxpiuW+91u
         QoUY6yfdBlg2Nyq2zcIdCno5vSc7gVxbX+NbxGzS2KYuz9Pc2goNSDiUKxqtmTqxxiBo
         ohrA==
X-Forwarded-Encrypted: i=1; AJvYcCVGqXQLnioAAMY23jZ+IEW94N5dqWLp8klb/ezV/yg256VHBg+zt4fqN9yXHH6MYYwDYigKt+zVSsH8@vger.kernel.org
X-Gm-Message-State: AOJu0YzCLgvGcE0uhn5iaMwoUQAK98o5EryRO9q5WGb3RvNgVP6m879w
	lLT+a8BOX3Lnv5hii43fR0X6G0NnxPwVoDp6r25RqDop7rLZ+ot1T5mJ8bNb4QZumdQOxJF2++H
	uGxOQw+uqmUFiL9I1bjCuThZKj0awkkKm1FswX1g26caLDocp7Yqc0br0Zbtw7Xg5
X-Gm-Gg: ASbGnctJxMLJh6JLaVlqx2HzOP1SJRWVuG+FXfX6YhlYyv9osb1UU+ewzz3TbBjxeEg
	O1zdoOV6oLejhM4CxgezlL7l6coxyRPF9HLaV4XgyRli0Ia+rPDFsAMbS70Cy96jbIcTNJZJ/ul
	0H1n5JuL/9PKAmcudpmBVV3dGMwkYkDoe8Jlb3ZqwUDl8Xbp3nMUGJM+5Xok10VDglB0BwW0k89
	RHuCueaXt2UcXx/eeB/XWPT+z3H+rh4Gjk8Puotxw17ojpmRUWsa/PHUEHFD02VyAkIexDRtqEg
	UmdTyJq1OUmq0WzaT9bLR8VHwsXwCaE+83yjDbmeTsfwsHRQFIipp0nJH4Pa0qIhupBYdiOJsOy
	mp8fxI5zBpayB/P80etqMXtnrvaCGJeJl86Ee2+IuC5nq8Z4qPic/Fv05
X-Received: by 2002:a05:6122:e053:b0:557:4f6:869f with SMTP id 71dfb90a1353d-55704f68872mr118821e0c.2.1761148973050;
        Wed, 22 Oct 2025 09:02:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi5mRKbI+dib91eM8Z7Q+hS4s8HODIdacNkDVMa5lXczhBdSAgA5tmb1wtM5M/KDWuV6wPhw==
X-Received: by 2002:a05:6122:e053:b0:557:4f6:869f with SMTP id 71dfb90a1353d-55704f68872mr118782e0c.2.1761148972412;
        Wed, 22 Oct 2025 09:02:52 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb52603fsm1382657066b.57.2025.10.22.09.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:02:51 -0700 (PDT)
Message-ID: <4a4a24aa-d8a2-4150-a7bd-1d0a4b141116@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:02:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6150: Add camss node
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com>
 <20251016-sm6150-camss-v1-3-e7f64ac32370@oss.qualcomm.com>
 <b0224cd8-fe81-4229-94a4-c314c7b19811@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b0224cd8-fe81-4229-94a4-c314c7b19811@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX10/Spe0Jtm+d
 XE3WDaOCu5f/O9g6hH+pQQ2tMxgP31+8rA+GOcOq7yavyBE6cWtrEdf7rtdF3lAdeHG70zNISS2
 oaaCjT9I0of9uJHMcOuiFDvReL0OEndE4jm/coGBOoaOLMvmCK/9UyFG0aIeodh4ewqmGXrF2gC
 kOo95LUKu1rh4vbkQwak2jU7QwRYzxpPakVSfh1u4093PPKJcWTMrpp3GJASNueOEedBU6Hu9OG
 KsWBIRkFCHsnCBgRxsVVo55ODkB0auUy1pOH1Emuij6aaE/Ci2epHkDwiGg6TY353NoNrW9J+bK
 twfLM5Tc3vCBlqXyoObJ10NVe/dulzxbJYyLUpI7kt+ArF9193OnV2Btx2HCl//4fmAKq9jF4G3
 FHy35hYWWvsGQpoq4deTNeKV4PfQmg==
X-Proofpoint-ORIG-GUID: Ra-LbYt2m5NdxGM78C4ByN2S2CBbstEI
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68f9002e cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sD1Uv7CbK0E5T9jcHE8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: Ra-LbYt2m5NdxGM78C4ByN2S2CBbstEI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

On 10/16/25 3:48 PM, Vladimir Zapolskiy wrote:
> On 10/16/25 13:22, Wenmeng Liu wrote:
>> Add node for the SM6150 camera subsystem.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---

[...]


>> +            power-domains = <&camcc IFE_0_GDSC>,
>> +                    <&camcc IFE_1_GDSC>,
>> +                    <&camcc TITAN_TOP_GDSC>;
>> +            power-domain-names = "ife0",
>> +                         "ife1",
>> +                         "top";
>> +
>> +            status = "disabled";
> 
> Please remove empty lines between properties all above.

What??

Konrad

