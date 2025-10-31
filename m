Return-Path: <devicetree+bounces-233637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A519C24290
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:30:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CD8918913D7
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423EC3126AF;
	Fri, 31 Oct 2025 09:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LfBAv8w1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UJt7DQqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C1F21CC64
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761903025; cv=none; b=dYdlK93ILiFt2v8qlzl9uvHJX9grHvaALZDyq5W8lPTdt30O85Vq4FKUT0MORZe9eZJLSr++k5hIlvDdJl7qbJ7byZJgvzhmo5+8nA3mS7iw9W9LieSe//Mgl+U9HGjnDJ8GAEwXkolbrsIlxeoHNVqeuKnnSVRO2hIFi9KOxDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761903025; c=relaxed/simple;
	bh=rYH6p1UwRQOjMh69pzRcI/An0pAMCpeV31BylTlA0rQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EZkONFAcwGMIiUqZHBhH7Cc6pyKbbU0D6m8hKs9LBb8mLqnD31RT4x/Fr2ApVSWZKRaaTJ9nSpFtS+igkPN3gq0q5nZzuof5yLvn0LLxUhUgxSJuzXwRPb6lNppGNYEEgTnjnrCW++QE0E+ExRmC+iPFEWtH0SPCbFuXggJPqaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LfBAv8w1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UJt7DQqk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V6TM6h3117045
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:30:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qpeBS2pFql6V+IwGychAPEk4HDzH/LVw68M4+RrrS1c=; b=LfBAv8w14tdIN12z
	QBPnXl46Hz328zAajoIW/ctH06/9frPi9Nht3HLiBeBHFCxjP+yeDyDHtoAPKm+/
	8k0PrLAAtyjh4vBywHCdvAfhB6k56MS3AorBajjmmxBJ1yf5m2WiTsOh8tf5/MAm
	4p1x0XXPgALH8sIhMMN7JenHgZA2Ae7WZdh5Sv3ol8OjsxzkOl3nXmKsxCtcyRj3
	QNg47xLmOkhgAVMwAUy0EBJ6A0IWjvQ4qyI3xVUfcIN6TOrVaiuphRlXAEIQ9jlf
	ye3YkGCuckG1X11f4rHf80+ewMe2rjLu0iEP4istvHBiN8hdNhku57iphzY9IRrJ
	m/Ua6g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frkmpq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:30:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8802c5440fdso3452766d6.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761903021; x=1762507821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qpeBS2pFql6V+IwGychAPEk4HDzH/LVw68M4+RrrS1c=;
        b=UJt7DQqkdLsdGiJAQoFKqI/A//x5P//hRHAiC33Kg701fB2K0/96Rb0Rrzap8Dm9LO
         T9nKIARhAEr1uF2I8A+6mfUn8PBXrOE/uNawZgMhXjKKXpPFFbAuKtQiCuC/LctUweTd
         ooX9Ys3qKZR++CMni/8/gw9odOrn+yjg5s94SghrWu3aHYd2cAF6OW5ujNc+rDDrlf9z
         ccicxSIQXnT+v+0Oxam5+y3ILNdFywt3evB5lg+Rd1MB7ZfitGrZWiKQznh7B9Mt0AXb
         CqfmHriEA6MGSaUIKyEiX9NTgcwmnqNGAkhofmFpV59oWsk55R1Qgjk4MjG+rE5n/fhD
         hhmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761903021; x=1762507821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qpeBS2pFql6V+IwGychAPEk4HDzH/LVw68M4+RrrS1c=;
        b=rpfRdXwTl3FakG0IlQUIeAC/w4oKhWBsrPe4dTZRVim35KxKnSC/PgB5cx8SMDJKl0
         obDgHxSJkR8/awkX2Wn4Q13GCEU/yjH6knAOvecfvFtn0sUN3EgfEqm0C5MmHIPCto4c
         DhgD1yZZhvHpTLdfSH7qGqfUjXMHcBu8KCquRGpjQxUKXnEUEWam/gFHUUIWZGKzs+Ns
         Vj9EC9JJzV2NjEIJLxpm0ZW9Sn2JtRpScLONryou6SXsAocZHAXUFLq22SRQA1X4Y84M
         ecaXNVla7clmEtHII54HfH8zwT9ikeQOlormFOnYliOyFFcEoJowKyxrpnNP7W7PFZKl
         Otgg==
X-Forwarded-Encrypted: i=1; AJvYcCV3ogt8gzSd6Q79Z9UumtTFDffro3yHAUKtCE/ihX2nkyJf7CHFwEbFGpP6/IT42TYNHSU5ta5Je4M0@vger.kernel.org
X-Gm-Message-State: AOJu0YyB3oYyr8z3xjCMvZ5+9ef1YDLzYkjmeQGAq4EYE8u8qhODPIOA
	YMEXDPjyWARuNJvUFwKfUEQGWLy24wwmUWM4nqXL8Z75OfE1nXbNNl5kyNqkZ4gbUJ56zlHtqmy
	3efEvWdAW0FUbUdeNmVQkVLWh3mWzzSUomHLE4Nv5djQ1LLEA5EwkTNGMMiel4Xfm
X-Gm-Gg: ASbGnctWkICRgT9vaAQM5XXpXRSW+gkt2DQfS8vQXQkk88IGZN0yzPigi6gqyBl4Z6w
	Xa1BVfRuvKjaLHD5tNFBwZIgPAKag+62zucPQRFqrfZP6eVgtF5NsCAwM6tZiZO8j9yeHFeUDcY
	x25cgkshYEiPy545qwhuJS2kKvwZfmSpahzY5O7lIonkozr1a4p/asFFqL/upqv0hPRCWTS0El5
	sFTY8Y8hn1wegRPp851CHfqsxxEpB/b22mq8LoSM1T2VsFYQhQzBubQvaErZCbj39WxLt15z6Jq
	Nlp9WBSMss826RRAGtr+lSHY0YZpbzj5ZwZvA9+C4iA2UoRkL24hlBH4hnOrkX5YsQoLY/bQzQs
	AVgn1LfJgdIu0FI+jTXJ+G84jAqh2s5sRxUhxb/rEA+vNGtc0tit6fL3n
X-Received: by 2002:a05:6214:258d:b0:798:f061:66bb with SMTP id 6a1803df08f44-8802f2a067amr24530236d6.1.1761903021314;
        Fri, 31 Oct 2025 02:30:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7xuL3S6oQLiRiRzIgeNjF3+Y1M1YfvJIBFLTYfnnQZPRwn0ILwmAHIvzUH0vueOA+61ZHZg==
X-Received: by 2002:a05:6214:258d:b0:798:f061:66bb with SMTP id 6a1803df08f44-8802f2a067amr24529656d6.1.1761903020562;
        Fri, 31 Oct 2025 02:30:20 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6407b427fb9sm1137215a12.23.2025.10.31.02.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 02:30:20 -0700 (PDT)
Message-ID: <adae8998-8b64-4814-8713-2dc63380452c@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 10:30:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sc8180x: create common zap-shader
 node
To: Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-3-7eccb823b986@oss.qualcomm.com>
 <c90b917e-b3bc-42fb-a127-ab47d5154d0d@oss.qualcomm.com>
 <c62a7f9d-6984-41c0-88c5-1d6c40d411dd@oss.qualcomm.com>
 <weyze7a2pqmt2klt763lbwyvpezqndm5rjnitexalru7hy3xhh@tdqx6xeqp3qu>
 <p5apfg5cbwcdmilfr3omoncvuj7z7zbj6dkex2eicjdubkyxwj@h42bzzhx4amt>
 <fuach44wl236rfm57itxmcvj376vr3m7idi4byge6mbbxcrr3h@4uzjnuefh2y5>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fuach44wl236rfm57itxmcvj376vr3m7idi4byge6mbbxcrr3h@4uzjnuefh2y5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=690481ad cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KfUywC4eykHvL1nPqbUA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: 4W64TjTZ4s_MaJQfW6We_9RAJ92GAsRj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA4NiBTYWx0ZWRfX7CBR6iC8USOB
 YRiZ6EJiRzLbeapRguObgNeg0Ef+aSwXx8nlJ1+KWZPuiAt0McmWo8JBzVvto6Wfuna9B8wHrP5
 AxxWt6yw8rztY1l9qQdRcjN6LV8O++W/4HZGNWsL6faLYIPEHkt7o4jBbKW6w/wEzJIvE7sEvwK
 V4AYDoRicoqPukgQWrqILiyTUz3xSt5R61jEwlWDrS1WzEB9BSTWTdBrhRg2dlyuqVt1fChQdo0
 NPGdm2pVuKKou9OkeeBRxICw3zP+euC+6QWDMkaOHPpJwZsrhRXzgh6s/eC+8+fDSjHyPTgrmXS
 S9UCO5OL9uIV1pga78BVWh8MtYdevkyJ2sGTxrKQGTDiv4bD170BHFZ3B2H/2SiBjszFM2sAJ8w
 Xm3OpWUsGP6YWBvDUgmMTT3LRRze0Q==
X-Proofpoint-GUID: 4W64TjTZ4s_MaJQfW6We_9RAJ92GAsRj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510310086

On 10/30/25 7:45 PM, Bjorn Andersson wrote:
> On Thu, Oct 30, 2025 at 07:58:46PM +0200, Dmitry Baryshkov wrote:
>> On Thu, Oct 30, 2025 at 12:28:31PM -0500, Bjorn Andersson wrote:
>>> On Thu, Oct 30, 2025 at 11:59:00AM +0100, Konrad Dybcio wrote:
>>>> On 10/30/25 11:58 AM, Konrad Dybcio wrote:
>>>>> On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
>>>>>> In order to reduce duplication, move common GPU memory configuration
>>>>>> from individual board files to sc8180x.dtsi.
>>>>>>
>>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>>>> ---
>>>>>
>>>>> [...]
>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
>>>>>> index 93de9fe918ebdadf239832db647b84ac9d5a33f6..069953dcad378448800d45e14931efe1fe1a69fc 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
>>>>>> +++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
>>>>>> @@ -14,6 +14,8 @@
>>>>>>  #include "sc8180x.dtsi"
>>>>>>  #include "sc8180x-pmics.dtsi"
>>>>>>  
>>>>>> +/delete-node/ &gpu_mem;
>>>
>>> I agree with your hmm, seems this line should be dropped(?)
>>>
>>> Dmitry, please confirm and I can fix it up as I'm applying the series.
>>
>> Oh, and this line is necessary, because sc8180x-primus has its own
>> location for the gpu_mem.
>>
> 
> Hmm, you're right, not sure why the memory map differs... But this looks
> good then.

The latest memory map for 8180 says:

GPU micro-code @ 0x98715000, 0x2000-long
(matching the Flex 5G)

Across all the revisions, Primus's range is either part of a
"reserved" region, or the CDSP's memory.

So it's either wrong or OEM-modified, with the latter being rather
an odd thing given it's a CRD..

Konrad

