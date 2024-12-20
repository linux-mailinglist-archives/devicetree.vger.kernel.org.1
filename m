Return-Path: <devicetree+bounces-133110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DF89F93CA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A5447A042C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE482163A6;
	Fri, 20 Dec 2024 13:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HlL3l9UU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DC6216384
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734703063; cv=none; b=JxkEsRcxTSpN4j9JyAvxMxKAfvveo/QVf8kmw2wn9761DUvyo5o+fEjjzMaLGbWVLs4X0Cl3BluDBrwFY/hqbPMCJhtWF5HAz2ftBWtJhqCyVYCqsSyBKB7loVO6tBJENRIp6KeuxxQDNEVIzkJBwTAnNDMCATaV6tk7FfBW+ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734703063; c=relaxed/simple;
	bh=cqTFLw4KHp9mJnfawH8KffHxaxg0QvbgQkQv3xwAbyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fsxmM4wp49LeW5KD6vnbxIdPOO/iwpbtqe9MoIOfsbZyHx+VC2avSr493P6tc1WfOWfP3uFlNDqKTJClS/ADBakUjDZb0LHIaRgkojoAve4CHN4jS23yrx+LKoPOEz8UfCWBuisPp1G8m2c5HZTLjyAc3XkOtJ2qVjyy8VPWzmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HlL3l9UU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKD3ivL019236
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:57:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	56bHgJLPiTtJ7oA6sbuuFB9R8hrWoD6GaOyTZakQqr8=; b=HlL3l9UUEcTZCYjI
	6VJx6DHCANIIwSgjxqYnYBt7l18Ag9NdKkqugQtwOhdoSXFKbzz/Mei5kPrP/pyv
	oCR/xDWAYf5yDdAfF8gIRSdF18Kw6ZksYmcw3s7GtbBVHQBZHN9maj3Sm3v/cT1r
	DDQwC6d0rVzu4NPB9OYHUG2h4I7IMJvlcXshLkNDaVOjOpfYGsqvUOnRK8jtBoGa
	NgStPYi43yE25/oTMrZLl0RNYoz+np4dkekq5Z8HjGb89ip5/wjr1v4zsCGhVWA9
	ffv0/tWaJTnwMRsKCi8HE68QZBlzQYyd5vaXm0n6OYlbJFRgBUa7fjDOJbrKiZ7f
	uqNzow==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n94tg463-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:57:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6e43ed084so36815885a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:57:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734703058; x=1735307858;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=56bHgJLPiTtJ7oA6sbuuFB9R8hrWoD6GaOyTZakQqr8=;
        b=vWOBKyO6vsMBukQ6/1ImVD8L85Tw5Ln5/5ijyEMK2k1SxEb99hCVWI3nSFZg6b7u//
         IabS00Ap5c8EPsnAkikM70Du+dqpnpuNN/SczvGae1t9ItuoHH8O5zE6UsFUvQcxC0F3
         kY2DiWUBASPhkOJPoZ9qJv7KL1l6xg7Tshf9dR/swfWgbyVuXt5/JnUNaahk0onw6Mfm
         gYjcdpXor8142VOLhRCpbJ0VZQdiY85D+mLofyqnuWJ2eNTaxUADp3yzk3Up+XLEF9NW
         3e+RgFv44uRC0FjcP3im9h5Jtge1Fv0tuc4VUMq2tEu0WKQG1kEuH0j0Nz7w5OG2NDzG
         AQGg==
X-Forwarded-Encrypted: i=1; AJvYcCX98ODkaBT/63BAdRvUv/4u53qcFOXZma26JJmKDilE20dUl7H/iZcLPVcF+wB6s1xfol+Dx9yj/Vry@vger.kernel.org
X-Gm-Message-State: AOJu0YwpwHt6o2LrkAPsR77Xt96vCFqrgx42mozVqeLserrajJNuezW/
	9CXPaIvoMtkXOvfHwuIRihEK1rJ0QlD2WNFTwVXmfRHqEKPKP355fMhe+skHibzUBD9zrEjDprU
	JIHttaAHK2wYNfQObwsO+DTCwIxs6Jp8KbvUlDhonysSbOkA6s/RGUstpBR6I
X-Gm-Gg: ASbGncu9XhNcvobpPfSRy2ErYsBuDF/WLN07BacAsoOcjFRdnLjx437SRasY+XOcIeR
	ARXJkzXTxbA1BLRBAsQkRrcAls+PeX4/pr1pbeKmH1S8QFOj+6x0Sn8YFa/t+7V8I97nukhprdR
	dc7aoB7thgYy7Yseb9A/K8CSwU/dxy3R5HAmFjj5eF5RnSGYb7vrM8L6xrg9c4hYI0FywvSzVRn
	VLAUf8JF3xyifiZQ4s19Woqt37DZvb1w9LcyOUYQgQqVUtXsZQnoMfSVMFekm4s8h0yjWmEBwFo
	9GEOrRVqeR2/v78SDZwv9WQ3Bw649cZP+qo=
X-Received: by 2002:a05:620a:2986:b0:7b3:577b:6da8 with SMTP id af79cd13be357-7b9ba733e3dmr141503385a.4.1734703058597;
        Fri, 20 Dec 2024 05:57:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6tuv4tNldIE356QcRbQFCyNERIo5TnquyOp2uCweUBMvT2I+yyu94kCIo8uKwhq9CZfd6VA==
X-Received: by 2002:a05:620a:2986:b0:7b3:577b:6da8 with SMTP id af79cd13be357-7b9ba733e3dmr141501785a.4.1734703058192;
        Fri, 20 Dec 2024 05:57:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701abd1sm1750204a12.76.2024.12.20.05.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 05:57:37 -0800 (PST)
Message-ID: <c80c4cdb-48e1-4b6f-8ab8-fad6e100af00@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 14:57:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
 <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
 <Z2VUiHWHgbWowdal@bogus>
 <349bac70-87e0-4870-a3f0-9f6a3b3e6824@oss.qualcomm.com>
 <Z2V3amqWYDUWA2uM@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z2V3amqWYDUWA2uM@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WGGyO8e4UioqqP-SfuaWvC31KKsLv80b
X-Proofpoint-ORIG-GUID: WGGyO8e4UioqqP-SfuaWvC31KKsLv80b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 mlxlogscore=999 phishscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412200115

On 20.12.2024 2:55 PM, Sudeep Holla wrote:
> On Fri, Dec 20, 2024 at 01:54:45PM +0100, Konrad Dybcio wrote:
>> On 20.12.2024 12:27 PM, Sudeep Holla wrote:
>>> On Thu, Dec 19, 2024 at 08:43:27PM +0100, Konrad Dybcio wrote:
>>>> On 6.12.2024 11:21 AM, Sudeep Holla wrote:
>>>>> On Mon, Oct 28, 2024 at 03:22:57PM +0100, Konrad Dybcio wrote:
>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>
>>>>>> Certain firmware implementations (such as the ones found on Qualcomm
>>>>>> SoCs between roughly 2015 and 2023) expose an S3-like S2RAM state
>>>>>> through the CPU_SUSPEND call, as opposed to exposing PSCIv1.0's
>>>>>> optional PSCI_SYSTEM_SUSPEND.
>>>>>>
>>>>>
>>>>> If so, can you elaborate why s2idle doesn't work as an alternative to what
>>>>> you are hacking up here.
>>>>
>>>> Please see other branches of this thread
>>>>
>>>>>
>>>>>> This really doesn't work well with the model where we associate all
>>>>>> calls to CPU_SUSPEND with cpuidle. Allow specifying a single special
>>>>>> CPU_SUSPEND suspend parameter value that is to be treated just like
>>>>>> SYSTEM_SUSPEND from the OS's point of view.
>>>>>>
>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/arm/psci.yaml | 6 ++++++
>>>>>>  1 file changed, 6 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
>>>>>> index cbb012e217ab80c1ca88e611e7acc06c6d56fad0..a6901878697c8e1ec1cbfed62298ae3bc58f2501 100644
>>>>>> --- a/Documentation/devicetree/bindings/arm/psci.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
>>>>>> @@ -98,6 +98,12 @@ properties:
>>>>>>        [1] Kernel documentation - ARM idle states bindings
>>>>>>          Documentation/devicetree/bindings/cpu/idle-states.yaml
>>>>>>
>>>>>> +  arm,psci-s2ram-param:
>>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>>>> +    description:
>>>>>> +      power_state parameter denoting the S2RAM/S3-like system suspend state
>>>>>
>>>>> Yet another NACK as this corresponds to PSCI SYSTEM_SUSPEND and as per
>>>>> specification it takes no such parameter. This is just misleading.
>>>>>
>>>>
>>>> Yeah PSCI_SYSTEM_SUSPEND takes care of this on platforms that expose it.
>>>>
>>>
>>> And those that don't advertise/expose don't get to use, simple.
>>
>> The spec says:
>>
>> "The call is equivalent to using the CPU_SUSPEND call for the
>> deepest possible platform powerdown state."
>>
> 
> Please take a look at the preconditions for both the calls. They are
> different.

Which is *precisely* why I want to tell the OS that it's a S2RAM state,
so that different actions can be taken in peripheral device drivers.

Konrad

