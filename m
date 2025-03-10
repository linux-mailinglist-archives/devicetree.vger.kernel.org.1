Return-Path: <devicetree+bounces-156175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF92A5975F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7889169C26
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA9022B8D9;
	Mon, 10 Mar 2025 14:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ReZPmDvB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B7C22B8B8
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741616360; cv=none; b=fbthZo7VE1wbBje0maTIgi7Ekn3psBNWIi9fou2+zNGQ+RhzN8UL1KrJDReCqQ6Hqs2uvh96KXX4CDWu3hdqtDpvdIen8qhrekCpIIDxXwgwrlWKE0DMNTEI0Q/NT0YvwGwZeYtoV2hP882IozB36KG2FJksauwW+kBryPdbjKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741616360; c=relaxed/simple;
	bh=Kw4X0RI3xQvRk9ucYIdDfRHJh2hsR5AMw3p+dcYDCzU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=M38i35kPlgiqbvx0Q7GZt//j0/2JL3Je9vdM5nDvy55UE5LkThfV7CaYSplhBYD3ptQd/0124rxXPGEnfva0FCGRMjsRp2tFNsE5EMI+5+x4FhQDPQPNItKo/HJffJO9CZcA+l1MG9w3WorCLeAkYJAb587reptlQ0DXBIQQvsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ReZPmDvB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52A9cCau001680
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:19:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r+Wq5zJA6gmbv2FgerKyZATG7S66Z12P3Ud/hZNivrE=; b=ReZPmDvBr1fmD+qp
	h4I9JZpX4Ynm+eDHnNilzqcFR07uU3wlimmeei8NkzQKx/w+G311bYD4+9tOps1J
	ic0IOmd3emrnfOLkrdvcazAhUVJov/B1BsPB6DHA1DcRbgjriK0T0iZeZ8DEFSIR
	EutrBCSL1M5mYY++oG1UCrFdsRyu3h8ZKoAXL4TZUuFRgRTVzMEXqKCHOyYTQQFb
	krA1Spt+dmg2Swbq5xhgSTFM38yUiffqpLY1BoaYKzmtRWGhqJZFPMYdCNQV9asU
	agMHG2R8UpECK92ID35ij+oFJBd5/6H+NONoEwVfa01Mnh40ECcLcVtAl+L69XWY
	YSBhJA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ewk5325-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:19:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-224364f2492so36912405ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741616356; x=1742221156;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r+Wq5zJA6gmbv2FgerKyZATG7S66Z12P3Ud/hZNivrE=;
        b=i1TZX9BulfUyyOkyM60aopXx9hygwnbkObmC1vMZv9mFj2iv6cw4cQvjtFI8ARPIi/
         Dzs5Phy8Y8xetZExlh0LMyPeLq2a6Ih7uvIJfnlSQ6NDwDvBRPPL+Uvb4U7a7BBCF/WY
         YGPsW6gVCuowPviVHPlhDjgYPcHqdSIt01DDVGwr1tjLQyJbdCdx5n+iDiL9hhKh6reE
         Awue42yMachiylCHDKBrYJvX0pKFO9MoASKiXb7+/Yu1bDyhM1XLPIyNpqGAL/W6SCAr
         rzm3oaWpZoNU1RidQc/tlRnmNqm8fs7K+Q0r3zCXm+6JDJqJBJlpxhsptk8MFzczDPpc
         W2+w==
X-Forwarded-Encrypted: i=1; AJvYcCXDe37rgp2+1LdiKsVZbCEhKzM0bVqxJGsEXiGZWOb41QUqBfb4uASMvVg4M6L0KDRATD/xoyACPeaa@vger.kernel.org
X-Gm-Message-State: AOJu0YwfvcbVXfBo8w3C67dYYaPx15312VRzLzqpHBv3tzw+6T7l0mJP
	gk8+47BxaQsxBmojnU/RxyKPhz+E1DocrZ2o98AOSmPW+e3c1GLBAmlRL56jUjAJjCQlZIginxL
	HNTzKj9t2nLL+S5oYvae5YtbO00jE9raBUl7d8hv08GTbuZhjcKCHZOeD3wOM
X-Gm-Gg: ASbGnctEHLzgNP3/CpfvC+g+xIPRWS9abxdD/DQg7hVTEc2iAQ+3gWxY8Qe0gvGteFG
	LyFZmcqk2DXqMdXxSpG2re3IM9/F8+OOdGRIjooro6uP9IxHT/nsKs6qMg2zYCFKEUgvvqbLGcG
	KF5JH7KVixh4g0JjRkGD952N+LuiMzzvpQgI1A+KWZ+aGmd5YhmBXvpATnD8VUIDTieaorNcVIo
	vuMYz1H6Adv+Wpk7A/aU3am9I9gmWmf4lzkwU/M591zHCJt68tnQqGp76UIBjmL1sZUy8/lwt9C
	MWyPSmscZlrdK3W6I5A9+gqSvFB+YvfroEw87wsboL4=
X-Received: by 2002:a05:6a00:852:b0:736:51ab:7aed with SMTP id d2e1a72fcca58-736aaab8008mr16770589b3a.16.1741616355855;
        Mon, 10 Mar 2025 07:19:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSpiN3WbZvFe9s6am2TScjvv9/DFmmZEYEiSM5uSmFppMupwiyNO+jb3RAjIUSnvXpQygleA==
X-Received: by 2002:a05:6a00:852:b0:736:51ab:7aed with SMTP id d2e1a72fcca58-736aaab8008mr16770547b3a.16.1741616355386;
        Mon, 10 Mar 2025 07:19:15 -0700 (PDT)
Received: from [10.216.60.76] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736c05cb6e3sm4581999b3a.45.2025.03.10.07.19.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 07:19:15 -0700 (PDT)
Message-ID: <9f24e85d-f762-4c29-a58f-ed7652f50919@oss.qualcomm.com>
Date: Mon, 10 Mar 2025 19:49:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 1/5] dt-bindings: iio/adc: Move QCOM ADC bindings to
 iio/adc folder
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        "Rob Herring (Arm)"
 <robh@kernel.org>
Cc: jic23@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, dmitry.baryshkov@linaro.org,
        konradybcio@kernel.org, daniel.lezcano@linaro.org, sboyd@kernel.org,
        amitk@kernel.org, thara.gopinath@gmail.com, lee@kernel.org,
        rafael@kernel.org, subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        quic_kamalw@quicinc.com, rui.zhang@intel.com, lukasz.luba@arm.com,
        lars@metafoo.de, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_skakitap@quicinc.com,
        neil.armstrong@linaro.org
References: <20250131183242.3653595-1-jishnu.prakash@oss.qualcomm.com>
 <20250131183242.3653595-2-jishnu.prakash@oss.qualcomm.com>
 <20250202-convivial-stingray-of-promotion-1123b8@krzk-bin>
 <cc328ade-a05e-4b1d-a8f0-55b18b4a0873@oss.qualcomm.com>
 <690befae-335d-4d35-aa32-abd537dfc4ef@kernel.org>
 <08be051d-6c76-4513-84fd-3ebd0808f695@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <08be051d-6c76-4513-84fd-3ebd0808f695@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Tr8chCXh c=1 sm=1 tr=0 ts=67cef4e5 cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=Z0xEvofwb1qho15bfkwA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: nCBMxasxFa4onhchuQayGbUNCkVwJGt-
X-Proofpoint-ORIG-GUID: nCBMxasxFa4onhchuQayGbUNCkVwJGt-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100112

On 3/3/2025 7:26 PM, Jishnu Prakash wrote:
> Hi Krzysztof,
> 
> On 2/26/2025 2:41 PM, Krzysztof Kozlowski wrote:
>> On 26/02/2025 09:51, Jishnu Prakash wrote:
>>> Hi Krzysztof,
>>>

....

>>>>> Changes since v4:
>>>>> - Updated some more devicetree files requiring this change.
>>>>
>>>> I don't get why this fails building and nothing here nor in cover letter
>>>> helps me to understand that.
>>>>
>>>
>>> I have tried checking multiple ways for anything missing in my build setup, but I'm not getting this error when building in my local workspace. But the error itself looks invalid to me.
>>
>> So probably false positive / automation issue.
>>
>> Maybe describe just in case in the changelog that you run full
>> dt_binding_check and no errors were reported.
>>
> 
> I can do that, but do you mean I should just push this same patch again
> with only that update in the changelog? 
> 
> I'm asking because I suspect this patch will get the same error again. I
> remember that this patch 1 got the exact same invalid error (qcom,spmi-vadc.h missing)
> in my V4 patch series. At that time, I thought this may be some rare corner
> case error which might not always happen, but that seems wrong now.
> 
> Please let me know, is it better to keep this single patch for the binding file
> movement and reviewers can overlook the invalid error from the bot, or should I split
> this patch, like I suggested in my previous mail ?
> 

Hi Rob,

For now, I'll send the same patch again (moving all QCOM ADC binding files
in a single patch, with compilation fixes), with any required updates,
in my next patch series.

If the same invalid error is reported again (qcom,spmi-vadc.h missing), I hope
you can consider ignoring it, if I confirm build and full dt_binding_check 
worked with no errors, in the changelog, as Krzysztof mentioned.


If this does not sound good, please let me know if you prefer I should split
the patch in one of these 2 ways, as I suggested in my earlier mail:

1. In first patch, move qcom,spmi-vadc.h alone, to "/include/dt-bindings/iio/adc"
updating its path in all other affected files. In second patch, move the remaining
dt-binding header files referencing qcom,spmi-vadc.h, with similar corrections
in other affected files.

or

2. In first patch, copy all the relevant dt-binding header files present in 
"/include/dt-bindings/iio/" folder to "/include/dt-bindings/iio/adc" folder. 
In second patch, update all other files (.c, .yaml, .dts/.dtsi) to use the 
newer ADC file paths and delete the header files in the older 
"/include/dt-bindings/iio/" path.

Thanks,
Jishnu


> Thanks,
> Jishnu
> 
>> BTW, please wrap your emails.
>>
>> Best regards,
>> Krzysztof
> 


