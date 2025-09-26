Return-Path: <devicetree+bounces-221913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB80BA402E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEEA37BBFE2
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B30F2FCBE5;
	Fri, 26 Sep 2025 13:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kpp4eoz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A652FBDF2
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894941; cv=none; b=A7/S6XJ8PUI7yvJvI8qR8KAFBvtkplTDrHIyYoSREBV0Nbta9Ykc/Tjyd36wKE4UGzGTFjgVqprm0Xqgb3ot+I7kkkDobfP+hNgQsF3MVniMUSiSUYpZHYMg+FW0I0V1Q6NpMifto7h9/FiPg4WxIz0NlOYtfzb3xG5QCeuiV1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894941; c=relaxed/simple;
	bh=LJ+ueTE0bDWUCWdc4ScZPk1W991TIS8P7+CZKeVEoAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PdkyqP354tCg1YFqPeWEtt3SR9PwI96qAI/LH5CTPRMRXpM1guRKvkrY3e9dPJjwg1b0TIfh0cPJRwnL0FV8qvLZyIfOCPoG3MRexat5ThOR0T5p0BLptwWaSHIyAKG+MbJfSVYvvL2mZS+krnZ0gvROU6/E4pp82fgSWVQNCFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kpp4eoz7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vqdh001995
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:55:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t/0WdPEeGFmFc2UEt2SE4Y9yd1OQcuTfJccTLwtozas=; b=kpp4eoz7wkAJpTiY
	w3yfFTh+Bpv9NrC+mwKmIufcC4wgRwEh4Rp/91KmFbSwub5F3gR5G8Cgf4vLupMV
	WWSEAna2qAB4KH1Ki0WdK6Yd/qvaWssNCr9utyk3p/XR/AEEna9LMubNb9cJo63M
	xzRuN48GwZ5WCO8Y70MU4j7NBoPKWuz1/m6hfTp9cxIusrHNm+sAYeJEbhxs2/Gr
	SedeS38rpCMEEKHZrGiC+93p9bNpj/ILJR7qoNCfMcc/qe3gLJgpO6KcKRrY5zBg
	cH6udCIlvXwNWbqOM8UoBitCikQX3bkWZNDEZ+ogwR4AmdpboAlvlRgAj8mKxa9F
	NQnEmg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0tu20a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:55:38 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-78105c10afdso1880167b3a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894938; x=1759499738;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t/0WdPEeGFmFc2UEt2SE4Y9yd1OQcuTfJccTLwtozas=;
        b=Js/JkLOnDAVZWvyF4eFxX05cbkXSW87Pi96W5MHymJYpJEVzCnoxBnM0McmPazjAlV
         4p084ZBTWZXRtK+dOBP3gW/v6+63jsp0mrgFkVffxUI7NiUa95AQ0FI2pB/PMVYzEl8b
         Api8b4QsNDWfimbxl+GVsSXrqorzMh1fbBPJL0SaOLK6GQQKywgSC6MIZuf2nxnyJq1f
         XKAMdXqluzOeI/UthRDSPKPWOvcQ8hUMfSJkMKio61jMfNntBgtrj0Fb9D+nyGllOJiR
         EMz5Hzryn+bGsBobmRXl+L0IXWfR9G/CTZofmaTIODJ2cXLS0I4ybI1wYZbrktvaQael
         Ef0w==
X-Forwarded-Encrypted: i=1; AJvYcCX36QaqEUXaf6uBbRQkVeyk6uQVwHrUuhA3VcBuYhGlQ9/stsskZBTOfdaEng9FGC+Pn7DNhQ6xU4s6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy43auJ2/BQqMUDo2zQm5FD7m01Y0UHUvIVA++754/HcmHzfMxg
	sSVMcdUMNtdKTpU3Ao8tHSTemJEnz584veEXhYhbcjUdNjoHy2moLKw0BqpPSq6q0icm5FJYVLS
	+d9D6dhlfGRQ3CzBSPERwPy25a/DJw1WfvIifXRVYssfRSsEzioy2qwzmgQGaqp7N
X-Gm-Gg: ASbGncs2sa+0Q3MJ03jJduK87LtJJtYzSVzVlVXPiaUAIo32PuJrmepHr7ubXkTFl3u
	Hy5Kx8Kq3mse969pbsxk20sU+pv6jemCgt11JX10XTaZMTOGtFcWw6YL3D11Qt+bTiXHQ7fYaR2
	fTwy124A17MGt5CZjDJ+nsLiRJa0ygtQVk4EF5gTz4i+rf/XJlcDA1YEuF9OU2ae1DndTx0Jkeb
	v6NKavMj/SjiNG4xs98aldTzHWvDgXziZUBkZoAravK44IikNa5e9pWV1g/ofNJS2UOLVrYkNFy
	gll/OSMhbnsT0PcYb//7L/dKKBm0oXTsl2XdqBhpRmAXvPs6YHF8TdKOcBMFyR/Lzq/5BRFp
X-Received: by 2002:a05:6a20:3d88:b0:2e6:a01e:f229 with SMTP id adf61e73a8af0-2e7cdda13b7mr9392162637.30.1758894937581;
        Fri, 26 Sep 2025 06:55:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQn3apaZplc6IpGFkileVv3rgMceoNRvwTZIfdt27hxJke1P6Jas/4sFLWPbGfnXSZUbQ8VQ==
X-Received: by 2002:a05:6a20:3d88:b0:2e6:a01e:f229 with SMTP id adf61e73a8af0-2e7cdda13b7mr9392141637.30.1758894937131;
        Fri, 26 Sep 2025 06:55:37 -0700 (PDT)
Received: from [10.204.100.85] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c057ecsm4478394b3a.80.2025.09.26.06.55.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 06:55:36 -0700 (PDT)
Message-ID: <b5d465e9-e84c-fabf-f275-3d0a5abf764f@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 19:25:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
 <nuunkv3xwfes6wed5xf4re2efakndvvrfl4lhmenilkic4sjiy@5cb2f5ygegvm>
 <522d7244-0003-a42e-9be0-1d353df8d5bd@oss.qualcomm.com>
 <oimuo26ohcye74j6rl5hfbmd4ip5wzudhyiaibf74b5zmjb4vl@xh3dnp7gmvq7>
 <7c6ab647-0c54-4480-9eb2-5c2bbf5f857d@oss.qualcomm.com>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <7c6ab647-0c54-4480-9eb2-5c2bbf5f857d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I9Vohdgg c=1 sm=1 tr=0 ts=68d69b5a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=WMJ26Vy-SEQUeRUQdDoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: QyjItdPj4sjm7RidEb4XP3XbKXQRCNtr
X-Proofpoint-ORIG-GUID: QyjItdPj4sjm7RidEb4XP3XbKXQRCNtr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX9wgmdDz/RvNy
 bAvYkxyZkBoTkP+hdWeoON/UZ+oVpO8H+jEFQRVnnIaaSLWLhyJPPY/36e3hUh38O0920BdHWtu
 mrqBIVWEbSg8TYS9U060L8si9r+NUwqsbwiE6FhOKy3oxB5WUmGK4NYo5dekyvlphmZAtgPSy6b
 yM6F6NmVS66IRBjC/Fcc13GjBwuvGujoFHEB8S2DQxKOGi6HnR8ibqjGwGHziSTNjSJrtdxJ/8h
 /9R1VuC0GE+RnimWZdOhOGrSieDv5bDh4SeIZ6tcA7qHxFipoNPc+SjaVra08jZHV4CAJBPEhHy
 OBC9bbiyh6HwrUM3pe/8QqeMD2Oog1aNLqq0xZcZMM8YDEqEbSeRuoPt/Zo7ojG8ufCh7DKt92P
 WZWZHfTGWf7OZ7cA8GnLAgiWXitSNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171


On 9/26/2025 5:17 PM, Konrad Dybcio wrote:
> On 9/25/25 9:38 PM, Dmitry Baryshkov wrote:
>> On Fri, Sep 26, 2025 at 01:01:29AM +0530, Vikash Garodia wrote:
>>>
>>> On 9/26/2025 12:55 AM, Dmitry Baryshkov wrote:
>>>> On Thu, Sep 25, 2025 at 04:44:39AM +0530, Vikash Garodia wrote:
> 
> 
> [...]
> 
>>>>> +  power-domains:
>>>>> +    minItems: 5
>>>>> +    maxItems: 7
>>>>
>>>> You are sending bindings for a single device on a single platform. How
>>>> comes that it has min != max?
>>>
>>> I was planning to reuse this binding for the variant SOCs of kaanapali/vpu4. If
>>> we do not have min interface, then for those variants, we have to either have
>>> separate bindings or add if/else conditions(?). Introducing min now can make it
>>> easily usable for upcoming vpu4 variants.
>>
>> No, it makes it harder to follow the changes. This platform has
>> this-and-that requirements. Then you add another platform and it's clear
>> that the changes are for that platform. Now you have mixed two different
>> patches into a single one.
> 
> Vikash, preparing for future submissions is a very good thing,
> however "a binding" can be thought of as a tuple of
> 
> (compatible, allowed_properties, required_properties)
> 
> which needs(asterisk) to remain immutable
> 
> You can make changes to this file later, when introducing said
> platforms and it will be fine, so long as you preserve the same allowed
> and required properties that you're trying to associate with Kanaapali
> here

Let say, we have a kaanapali hardware (calling it as kaanapali_next) with 6
power domains, instead of 7, given that one of the pipe is malfunctional or
fused out in that hardware distrubution, should the binding be extended for such
variant like below ?

power-domains:
  maxItems: 7

  - if:
      properties:
        compatible:
          enum:
            - qcom,kaanapali_next-iris
    then:
      properties:
        power-domains:
          maxItems: 6

    else:
      properties:
        power-domains:
          maxItems: 7

Also, what is the downside in existing approach where we say that the hardware
can be functional with 5 pds, and 2 are optional based on hardware having them
or not ? So all combinations of [5, 6, 7] pds are valid. IIUC, the optional
entries are made for such cases where some hardware parts are variable, please
correct my understanding.

Regards,
Vikash

> (i.e. YAML refactors are OK but the result must come out identical)
> 
> Konrad

