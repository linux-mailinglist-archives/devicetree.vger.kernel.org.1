Return-Path: <devicetree+bounces-245665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFA1CB3DF9
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 20:36:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E04B6301A1E8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 19:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB8631B823;
	Wed, 10 Dec 2025 19:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UwaHXZSw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gz8fA+b7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B652868AB
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765395403; cv=none; b=bl6NYiiv76HBMVGbpU/2A4pO3TvI5qa8F0YeiHA9H9FL+2Exmk+AoH0EGhH6VlQyG+XwrQlt2kBm5cwTEu87OO904EMTovQHBmRt2emfb/9ITklQITGBgy/DHniSj5hjO/XYKIeXbeUXvchQ3YbXOiQg0hmJge0VUMAJ3oZxAe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765395403; c=relaxed/simple;
	bh=Ew1uAbyttj7rhEAFG5qaeC3ftzjpfOPyz7DDCcagp1s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fzeLWQfNZ3DymPmkZOi6IghwPEJY9S5TOVQE1dcDehB6CFM+QfsVFIqkSpl8uYbkRor156doqvRjyZWx93FXmUlSMrN1yTSLBV/sXC69cCmY6GrxPzPovQKmcV5wselaAjSjn/enEFlZqnKajnEN1Fscx7aW2mZN3iwZQEmCAFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UwaHXZSw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gz8fA+b7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAIR8B63358561
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:36:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x9hCNA5xokRASa4lA7uwVKxWsgAlSC2cp9EuIIPSfRk=; b=UwaHXZSwO/AddfgG
	pybGBK9knvBxraifa11fh4sqbACoYpUOtMSryhhASTkSCPccfhpPKfRGvib94Nj5
	v2HPmd2Xwudv4uYMvDwC2JchAkc2AOJrKrnVfJcjag4Y0fgFZok7lHexuBg1OwAG
	9WhRuP13jsTUg9xdEHWeFYkcZvwYB61P8jUJt9xD3krqXm1HaVtnf1K1wxfwybof
	s/8E03nozuuysLEe4DCrQt4swptsRf4SC6iSv8eQvNWKvtF+qEgbWpRihgGxT2Sn
	098yyFcRvThaM5inr9emuWv4iDJ3uS6eQCNVEZQzd5pkHZVQ6zLLaBjYOAdYMFFa
	rSv5MA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay7pp1qa4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:36:41 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b969f3f5bb1so253499a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765395400; x=1766000200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x9hCNA5xokRASa4lA7uwVKxWsgAlSC2cp9EuIIPSfRk=;
        b=Gz8fA+b7i1tR43i6q24UNBtyqN/Lj0e5XwuqsKdxuEVpAT2UaBB/JvhDIsK7yFrW9w
         fnwrnZsiAI+7LJFOW506RD5UborcD/SLf/3t1cFXXzHO2Fl1rFnZfGdVSiVpnxl6h1WO
         FrYJMd3Flu6PqexfV7XCTZPSKavTXX1suUfVDuoSFhlpGvwCHwh9U3XQ+Uk7KLEGP0iU
         rAFQ58fGt+F2+9I2c/zcs1KU3wMckGnyD3LgCi4BettOY8psCtesKfhnCt1ZGqBA2MBF
         Rq5Yj81+ApRQkYSBrcWv5rvSgei5YVyqzOyIaztKZ9/F+yTaKNYvMAURGi97R0wjE9J/
         ZKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765395400; x=1766000200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9hCNA5xokRASa4lA7uwVKxWsgAlSC2cp9EuIIPSfRk=;
        b=Yh8w8FgOwh5C+5biFBgHzrDCFgZukohE6Si8LhnTxyLCMHl4ZoDNA4ltLrCJoOo03v
         ZNjyTz7AeGDolV4CiYiOmYRak4X17vSNS2bV2RmshvsHPBWNkThUshNq2o8+3dpFRWCZ
         fsWcyc49/HzLnelC81BFXbZF5HadXxNwyR4vs6/7d1aHl8ZLR3X57e2FG9wvnRCR7KwJ
         Kentjso79+7w7RZ9N+5Ffl9nfXEd/wfBtzXfHG8uZT7mK+gErO0ERlnK88miTp4TPFyu
         hNn+3GPR/3M4oerSx4Wt13s7P/mxTRPy+6OTLdCqxgVuG0T5MJt6MpY+Z8Qn9EK6zBNJ
         pCsw==
X-Forwarded-Encrypted: i=1; AJvYcCXGT2TRsAfu71zS2FhStEv75AvbpCepjFCBe0YJ9hoExNZ7Ie9AWG6A99DSju56oRozXxydIFVFwVuK@vger.kernel.org
X-Gm-Message-State: AOJu0YzciJWo/pNCEVnIy2IaPPbM6QvwLLfBDi6yWwrooVMGAZD1ibSR
	Hdg+GWVYozKdZJgkef0+4oJoRnvFSNHCg14I34Ku1IDQWYbuwlmOF3dxr1UZUMZKDbJx7BiQI9t
	HC0sYLIoGHObkAYayhJQzsC3CLvHzKeJn8U1C0QXSwNQVg0k//LR2R7dyUfyvzvzn
X-Gm-Gg: ASbGncum/xUQNb6B9boM6mYqAaJd4Dal//nqbuk6YodvT0amuI6e+NMqsYWZjkeM8dF
	nSGrOKLGtFOdturAzGY19LSi3HlipOnjvJWryvfJWJ9K93VwlmZ13MjYWRD7b5OWhfWZwyLsVeA
	LYoxNlLvp27gE0sYZzie4+2RH7HIabZ7qRVMEfbHqHhmFDt9AX3fxgFf4I5Qjvl65FlPMV3s3cz
	NIxhQVs/uPmAUk7z+Bs0efv6WmJPupQ074tTJYrTQyNoVQe8isrfdZk/n4ToOSiCXc7wEfCsBf0
	FA2GIKkDu/iVTB4QV1rcniVRBM2a7otVV8gTIjd7E50FKaf10azr2h0oS+Siex0ufvHxGAsuu0s
	u9UaqxA2s+Qy7B+HaJxahcKrLvSOkJpMAI1VNOZ95
X-Received: by 2002:a05:7022:6991:b0:11b:9386:826a with SMTP id a92af1059eb24-11f296adc6amr2522957c88.47.1765395400229;
        Wed, 10 Dec 2025 11:36:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUZ1v6jfRQGUJ626jnA7RexYEYVVeEaYFm9cmPSXnJMjNkZYBcc6sVDGTEc6vtPt+RuB3vFQ==
X-Received: by 2002:a05:7022:6991:b0:11b:9386:826a with SMTP id a92af1059eb24-11f296adc6amr2522941c88.47.1765395399726;
        Wed, 10 Dec 2025 11:36:39 -0800 (PST)
Received: from [192.168.1.57] ([98.148.145.183])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e30491dsm910655c88.16.2025.12.10.11.36.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 11:36:39 -0800 (PST)
Message-ID: <bf54a030-ee01-4b66-97d4-37f50a75d93c@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 11:36:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20251208-add-support-for-camss-on-kaanapali-v9-0-3fcd31258415@oss.qualcomm.com>
 <20251208-add-support-for-camss-on-kaanapali-v9-1-3fcd31258415@oss.qualcomm.com>
 <scnexmcrpemu6vcms3dmq7qjvx54h5pyumjvgqduospao4x2kt@hoi7zfygjq4f>
 <458a7841-e422-4cad-83de-f5b5c1b683a6@oss.qualcomm.com>
 <puv24qramoiq4qq3i4bibatg5ihnrv6hdloul5ajbblvasvwk3@nbse2m6aftkh>
 <2e38b9f3-8a35-4a27-82d3-c1d4996a1684@oss.qualcomm.com>
 <9ecf4783-e1a2-430b-a889-997689bafe45@oss.qualcomm.com>
 <qfhlyl46i7az56t5ceyo42mw55udzwhxgpygw3jnpw3onr6qc2@5r3i6tb6ac3v>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <qfhlyl46i7az56t5ceyo42mw55udzwhxgpygw3jnpw3onr6qc2@5r3i6tb6ac3v>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gJE8eMdRKFb2ALVhqdl3t5SMII5HgTkc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE2MCBTYWx0ZWRfX5t6Xd41Cm6ZW
 LKqdtnFpbgtccgpCF8ZyNrjnHcgYlTZb62uy6lzszJb9goPUODvva3jbLEQ2lw88uJbbjlR43t3
 +NXBRFnX/mKbp8Yw9Dv1E4XYhdIcor8c0XeQ2bXRwUINNuostCeiUro0Q2y+fz+HBk4ihdq6IFW
 6lzxShCspNaLgKT0awMtKFBew1ios9IwWniWkn18RbS8uYIi5o7ZdWs700pzo5Lvmd3DdPw4nUR
 QpOwykubYbspIktwG7aY+7NE8d6jbToE8cgvjR9IKKsDcYXcvqCIumTsbO2JOj3bozGkGc7SATY
 OhbjrieEue/b02gjayEFr7Dm+8BJ5989f4d/LNcjv7n4IsrESvU6WcK5FOlNfIIWn9qgY8Phyi1
 1oDSl+3xq5RLcP6IB6TuBvgWcuGFrw==
X-Proofpoint-ORIG-GUID: gJE8eMdRKFb2ALVhqdl3t5SMII5HgTkc
X-Authority-Analysis: v=2.4 cv=WaMBqkhX c=1 sm=1 tr=0 ts=6939cbc9 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=BiHMn5M11h/vNwziJwzFrg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=WCWGkPf-bWonS_P_xYgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_02,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100160


On 12/10/2025 11:25 AM, Dmitry Baryshkov wrote:
> On Wed, Dec 10, 2025 at 09:50:51AM -0800, Vijay Kumar Tumati wrote:
>> On 12/8/2025 3:21 PM, Vijay Kumar Tumati wrote:
>>> On 12/8/2025 2:48 PM, Dmitry Baryshkov wrote:
>>>> On Mon, Dec 08, 2025 at 01:03:06PM -0800, Vijay Kumar Tumati wrote:
>>>>> On 12/8/2025 11:53 AM, Dmitry Baryshkov wrote:
>>>>>>> +  interconnects:
>>>>>>> +    maxItems: 4
>>>>>>> +
>>>>>>> +  interconnect-names:
>>>>>>> +    items:
>>>>>>> +      - const: ahb
>>>>>>> +      - const: hf_mnoc
>>>>>>> +      - const: sf_icp_mnoc
>>>>>>> +      - const: sf_mnoc
>>>>>> You know... Failure to look around is a sin. What are the names of
>>>>>> interconnects used by other devices? What do they actually describe?
>>>>>>
>>>>>> This is an absolute NAK.
>>>>> Please feel free to correct me here but, a couple things.
>>>>>
>>>>> 1. This is consistent with
>>>>> Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml. no?
>>>> I see that nobody noticed an issue with Agatti, Lemans and Monaco
>>>> bindings (Krzysztof?)
>>>>
>>>> Usually interconnect names describe the blocks that are connected. Here
>>>> are the top results of a quick git grep of interconnect names through
>>>> arch/arm64/dts/qcom:
>>>>
>>>>       729 "qup-core",
>>>>       717 "qup-config",
>>>>       457 "qup-memory",
>>>>        41 "usb-ddr",
>>>>        41 "apps-usb",
>>>>        39 "pcie-mem",
>>>>        39 "cpu-pcie",
>>>>        28 "sdhc-ddr",
>>>>        28 "cpu-sdhc",
>>>>        28 "cpu-cfg",
>>>>        24 "mdp0-mem",
>>>>        17 "memory",
>>>>        14 "ufs-ddr",
>>>>        14 "mdp1-mem",
>>>>        14 "cpu-ufs",
>>>>        13 "video-mem",
>>>>        13 "gfx-mem",
>>>>
>>>> I hope this gives you a pointer on how to name the interconnects.
>>>>
>>>>> 2. If you are referring to some other targets that use, "cam_"
>>>>> prefix, we
>>>>> may not need that , isn't it? If we look at these interconnects
>>>>> from camera
>>>>> side, as you advised for other things like this?
>>>> See above.
>>> I see, so the names cam-cfg, cam-hf-mem, cam-sf-mem, cam-sf-icp-mem
>>> should be ok?
>>>
>>> Or the other option, go exactly like
>>> Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml.
>>>
>>> What would you advise?
>>>
>> To keep it consistent with the previous generations and still represent the
>> block name, we will go ahead with the style in qcom,sc8280xp-camss.yaml. If
>> anyone has any concerns, please do let us know.
> Krzysztof, Bryan, your opinion? My preference would be to start using
> sensible names, but I wouldn't enforce that.
>
>>>>>>> +
>>>>>>> +  iommus:
>>>>>>> +    items:
>>>>>>> +      - description: VFE non-protected stream
>>>>>>> +      - description: ICP0 shared stream
>>>>>>> +      - description: ICP1 shared stream
>>>>>>> +      - description: IPE CDM non-protected stream
>>>>>>> +      - description: IPE non-protected stream
>>>>>>> +      - description: JPEG non-protected stream
>>>>>>> +      - description: OFE CDM non-protected stream
>>>>>>> +      - description: OFE non-protected stream
>>>>>>> +      - description: VFE / VFE Lite CDM non-protected stream
>>>>>> This will map all IOMMUs to the same domain. Are you sure that this is
>>>>>> what we want? Or do we wait for iommu-maps to be fixed?
>> Yes, when it is available, we can start using iommu-maps to create separate
>> context banks.
> It would be necessary to justify removing items from the list. Wouldn't
> it be better to map only necessary SIDs now and add other later once we
> have iommu-maps?
I will let Bryan take the call on this. He was the one who wanted all 
the SIDs in the bindings. Hi @Bryan, if you can kindly share your 
thoughts on this and the interconnect naming, we will go ahead and push 
rev 10 for this. I believe we have taken care of other things. Thank you.
>

