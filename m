Return-Path: <devicetree+bounces-190335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 494D2AEB776
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:16:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA3553ADB33
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD612BD5A2;
	Fri, 27 Jun 2025 12:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oyrw6Tuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B9E1DFE1
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751026582; cv=none; b=HSvNSssrnm/bxCH4pupG7vHxoVtq0jiizj2TbcBFXhN0HQHJBEAQqcFyG/CLN5xqnoXJ2oTZ9xZDHjlQ9vb2Uh64T/EVvrqF5vAdTRcJhxYyvuVbkSzuHkGkjmCfz6CjLNen0v43shuO6+2cDb+rwlYAOH6b+6hzHZqJYRzpbc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751026582; c=relaxed/simple;
	bh=/xFnVyAzk16zZpIqNtiCHChTJBM1y49oYqwHRM0PMcY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uBgfEqZO9al4JnDmXDa115dqnAYBFaBHx559jSklKe86O8HiiShClNaOBm165n7I+b9bs+uIe0hqy7E5QgoiS+CoW/xh0pqFzFiv5Gjp0LAx6jcB6Z3rv1ia3iyf5XrdOchzAlv0dPczvdtpa9PwGWOZBIr15pFvSnUY6ZvYtRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oyrw6Tuy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCFRw2009529
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:16:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lU0WIMQMpWLmZZYn9MfMQsBWefoG4LKIkwcYF1KthQY=; b=oyrw6TuyD/2F9rjn
	0CCVlmlfrnQCU189qrbmshgZk8Evy4cEdRj7jn0Ks2qro3lT1hviFeV3tjJv0M50
	OEWpQ3LrhHI94PB86OXB4pQu0+5WmY5akDCUBYlfQyiD6wOnuvud1GD13H6uchvK
	w/+ksdtmJzKtyQq2n/ftB6F+48PzevpT7MllQtQT9J+o2MNTGBhfp7ZmfvLiZee5
	1kA3L7OYMbi8EyfP94nNFoAEigRWhbW6L1eWw6w+oU8xdTi7P9H4arGtdcWG2HD2
	5pE6Vn9oTtDfbv+vXnacwTCs7zA++YE3882sRpeYHtD8+cuFIXFIDAqd9NAFLtOj
	7McuJw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b46psn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:16:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5bb68b386so554940585a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751026578; x=1751631378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lU0WIMQMpWLmZZYn9MfMQsBWefoG4LKIkwcYF1KthQY=;
        b=Ta3FOZrOZpkcorf6rNsc8H8VtHwPwAFPcsjnsb9+uAkOOZA6EAecGbPOfGKNXv8ict
         4cKqfOTEDMHEshai8b6PA8UY99ETdQz1V69sCu+wxQxozl6uSWh8Vi4J/iiVfoLKziB1
         XXwCPiaDLSJHK/QP2AsS/ASqejrqp754C2klKl5dOt2mnwEk3TbQ7c6XVzfxSATRTEuI
         OIfqi6rTFFjU5Po29m59+nm/p1SHcPKcLJCbPTIoKkLtiW8vZn5T40Pg3Hh+kSREpBDR
         QmMYHTPXCfok4puNrY5yYHtKd24wAwtR9Ptwn0pf0m4we5k1M8fBFHVPVSTALFpUna2V
         m2Eg==
X-Forwarded-Encrypted: i=1; AJvYcCXNOhJ91bS4agoeGm8lPgstSTNtLhQi/WGq9NLzOgJwCpaxB2bXpi74PHBcw8XjZR68aLhUbdTIJhFB@vger.kernel.org
X-Gm-Message-State: AOJu0YyqtAKtmdkpmMPQD+aV4f+evYzPOJ9xXlK7HvcZ5G29NeRT45Wa
	lhcuIzmr9efXfc6022SvsFfTQn6pGdcGZ2ZBVNGQO7Mho8Y4i9h79Ub5ceKdh8d3OA6ojTv2yf/
	2UeEOW5vzCewzUj01kwx6YXpP83Msbx3S1+4Dzo43Wg8uQl+pr6214nz5JvNec4rZ
X-Gm-Gg: ASbGncsQFQf7DXTmxUcuFihs7ifgS2EMw3egnM8jLfXktS8svkyZw41OO6YWvEb049J
	lJUohQixAnRICXOLA4YJ9TVPD4n3wkNquhrYg9I5lApdpJbhBvK4fNpf54bMyuOYmuUWq3cTWBR
	KBBJ47tnkTDcW5vQRfYPhOT3iDeEgiJIleTVoA4WKgb7/92l+YsAHv/Z9Wq0kKej6xNmIOQNLkx
	BUUTVFpOzPMxHypi73wng8QXAUyif0wkP/O1rd4ljKqoaJJ6eHqTjSHW7ZD9/+6y1dspunW5W7i
	LY1fJyX/2M2/fuHAxwQB/tJyQrFUBL46nnsYGRM+z36285py
X-Received: by 2002:a05:620a:470a:b0:7d3:c381:f653 with SMTP id af79cd13be357-7d4439b8895mr471213585a.56.1751026577488;
        Fri, 27 Jun 2025 05:16:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUE6WsBFESfsW2EmUTOcwR3CqmOd/OTjwz/cqEShKqDwwXxfASft7QAm8ulgo8Q1dlk+4uww==
X-Received: by 2002:a05:620a:470a:b0:7d3:c381:f653 with SMTP id af79cd13be357-7d4439b8895mr471208685a.56.1751026577083;
        Fri, 27 Jun 2025 05:16:17 -0700 (PDT)
Received: from [192.168.68.113] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a892e6214fsm2565424f8f.98.2025.06.27.05.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:16:16 -0700 (PDT)
Message-ID: <c609cafa-5970-4694-9b6e-b5536df72eb7@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 13:16:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc7280: Add memory region for
 audiopd
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ling Xu <quic_lxu5@quicinc.com>, cros-qcom-dts-watchers@chromium.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com
References: <20250516110029.1637270-1-quic_lxu5@quicinc.com>
 <20250516110029.1637270-2-quic_lxu5@quicinc.com>
 <uzyxagnmxz5tsjy32mfro2alwdpcq5kybwzcbsysul7u6adgdf@x7katw7eme6u>
 <b90ee18a-5e88-4c36-a623-ae9447c53a46@quicinc.com>
 <2mu3bncxoq57rxi22dyd6ys2wa5n3wmtadfvixozshxgenutai@dlkbqgplzrrd>
 <46caa88e-790b-4733-83bc-75ed6c7ca2d8@quicinc.com>
 <CAO9ioeVoqQhDhBW_fVU8kkt=3trV9YhEDUO0izdf8cuCDqU4Tw@mail.gmail.com>
 <76071cc9-b052-4628-9890-239b0acd260f@oss.qualcomm.com>
 <fd2vic3g5jjk22y7yv24mtwr27ies2my5lih3zfj6yw4zd2obo@artndh3vepbb>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <fd2vic3g5jjk22y7yv24mtwr27ies2my5lih3zfj6yw4zd2obo@artndh3vepbb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwMSBTYWx0ZWRfX7nfCjkRJXgGC
 yEvTGglDMVYkYDB66T4H28Z2a5yrgSl4S2saGui8jqn6DIiDsLiqptSePEW5E8vGRnU/jVJrZMJ
 JKg690QBUxcYRgm/zJGhsvYSVTBBhlo3V7OZJcZNHfUxnP+Q3IDyKxVfJaRfKUj5SZb9HltDgtC
 j8ca7CRgv6ZAbcZj6toM4bdcE1iaMClvsEcwkDCurJU1r4GVYHBwmjwi1igC63wNNLoSMHfXQUc
 Xg1CYaW5TQwXL238AVqP6jrCjEb+XAyHA8VTR1O0pk5NK1nNAbZJKk6d7FHJzIWV0AWK+zIMoq1
 mAANjsr/f3VJWmChBbsHBvS7osRq5xI12uN31AYa968V5MoEgBRh2EnJEagFkhTboWkNIbzljzD
 HokQUF7aIICuGNTfyXmm6j/lUJqg4K3iu5Q0SMDQSrQJFd80wRupJwQD6MKWWqpTuNe4P6zH
X-Proofpoint-ORIG-GUID: DdF0FUAWtdz2A2m0HWkadmljaO_8j77r
X-Proofpoint-GUID: DdF0FUAWtdz2A2m0HWkadmljaO_8j77r
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685e8b93 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=BHjmFTkj5n41xVJOCs4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=841 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270101

On 5/22/25 7:51 PM, Dmitry Baryshkov wrote:
> On Thu, May 22, 2025 at 08:27:40PM +0200, Konrad Dybcio wrote:
>> On 5/22/25 2:16 PM, Dmitry Baryshkov wrote:
>>> On Thu, 22 May 2025 at 13:44, Ling Xu <quic_lxu5@quicinc.com> wrote:
>>>>
>>>> 在 5/20/2025 9:53 PM, Dmitry Baryshkov 写道:
>>>>> On Tue, May 20, 2025 at 02:41:22PM +0800, Ling Xu wrote:
>>>>>> 在 5/17/2025 5:47 AM, Dmitry Baryshkov 写道:
>>>>>>> On Fri, May 16, 2025 at 04:30:27PM +0530, Ling Xu wrote:
>>>>>>>> Add reserved memory region and VMIDs for audio PD dynamic loading and
>>>>>>>> remote heap memory requirements.
>>>>>>>
>>>>>>> Why? Was it not working without this heap?
>>>>>>
>>>>>> yes, it will not working without this heap.
>>>>>> Memory region is required for audio PD for dynamic loading and remote heap memory
>>>>>> requirements. For more info, please refer below patches, it has provided a more
>>>>>> detailed explanation.
>>>>>> https://lore.kernel.org/all/bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com/
>>>>>> https://lore.kernel.org/all/effea02f-6ffb-42e9-87df-081caafab728@oss.qualcomm.com/
>>>>>
>>>>> This triggers a bunch of questions:
>>>>>
>>>>> - What is audio PD?
>>>>>
>>>> Audio PD is a protection domain which is running on DSP for audio
>>>> specific processing.
>>>>> - Is it a required component?
>>>> yes. it is needed wherever there is some audio use cases where
>>>> DSP audio PD dynamic loading is needed.
>>>
>>> Which use cases?
>>>

Usecase is for audio compress offload, ex: when we play mp3 or any other
compress format, we need audio pd support.



thanks,
Srini
>>>>> - For which platforms ?
>>>>>
>>>> For platforms that require dynamic loading of DSP audio PD.
>>>
>>> Please be more specific, we are not playing a guessing game here.
>>>
>>>>> - What happens if there is a memory region, but it is not used by the
>>>>>   driver (SM8650, SM8550).
>>>>>
>>>> It won't be used.
>>>
>>> So, what happens? DSP crash? system reboot? blue smoke coming from the SoC?
>>>
>>> I'm asking all those questions to understand:
>>> - whether this is applicable to previous SC7280 platforms or just RB3Gen2 / IDP
>>> - whether this needs to be backported or not
>>> - whether a similar fix should be applied to other platforms.
>>
>> I wouldn't worry about FP5 too much (albeit it's apparently not easy
>> to test it out and even having spent some time trying to, I couldn't
>> figure out how these things connect), but the chromebooks may be
>> potentially problematic. That said, we can overwrite it in sc7280-chrome
>> if necessary
> 
> What about NothingPhone?
> 


