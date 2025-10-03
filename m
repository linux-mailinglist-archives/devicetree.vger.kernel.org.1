Return-Path: <devicetree+bounces-223524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A41ABB6826
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 13:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D877C19E168F
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 11:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4C5283680;
	Fri,  3 Oct 2025 11:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VCzQCWr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB63419C556
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 11:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759489398; cv=none; b=WOXn7itPd5In3QuTpLo+4oTaxloCETRfx9Z85ORgcq6j5a1ivnNWh5sswo6+Lw4Gd/R3MNaJODhASy9HEkBx5dPdxmGv+T6Ms0ffwLRmEtabBdf4dafP2BqAa4BMaJ41p6UUjduQPuU0+k4iQ4EhcbBWwASJeAVewYL1T1Okqs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759489398; c=relaxed/simple;
	bh=lDohWUoJaHynhH3MOxnjTG84dqnL1JRmy3LJv9eoMFU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XT3nUeXeN2LIfrvx/PpNuv2XLkWwFN70kY1FGR56lbcJExRRD1XxkDwfdm+dMiNOwOGfr1QrXJExPnU8ypS5IPLWbi2NOFa7cj3hGjrys8Bnb1SC595u7q2PutVWAbJUuyKijotAZjpywQL6DhTpoLBBZi6ni5yA6xM82++RHfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VCzQCWr6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 592M60v0023595
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 11:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/dgfzgGOSasl+ZVV9PthYS1ZXTpTvDU0eLRzMEgLEu4=; b=VCzQCWr6uyQgXfSI
	NNaqdGIflelCuO02ZxAUSQDpsO161ngiqcbYQSvoTVIs5iTbv9P4pbisczplFKSb
	3Cfe/F0PykCSqazv6mnc8STSZQWUPU/T9MsWpi2Xkvn9poI9bekpiThU/uKPynrb
	ZL13/QXoGlBaNRbKi+TMwCpD6t1/6HhMZVNXvIPa87Q170lF2K70kbSyP+n1MjTl
	wAb7DPgs9xyekEAqPVRoCt8Wwp/RoC1ngufasqUXxTFl268F5FzQaxsyZ7z7tw8i
	ZJIK64lC2NcMTXzJmRFVsOiF/1nIAXdR3J4tFiX0PkwF9d3w52TIsI2DLQvAZK+i
	6P10TQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a6amd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 11:03:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d88b669938so5157021cf.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 04:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759489395; x=1760094195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dgfzgGOSasl+ZVV9PthYS1ZXTpTvDU0eLRzMEgLEu4=;
        b=s9TryM1Re9cZOhVtjMXqo8mUAjtESOtta0JmyUz8DmqEk2UP5t8OxQWXdU3JiSZhXG
         +eQNaNwI5IJumti6qvFdyAX6ntP709IbYANOiD9dHHlrbuLsZYh9ht64fB2CHM+iKSlb
         OiyTRCvdfDK944v8gJ4MvWswTlxXXitsMqv9PJoF2ATIv61JVjH+/rpm6HzwSn0iB7aW
         AeYaF7A6WTnLS3PwtY9AL5XvTJxJzHYPkck1/bLy8mk9o2ancmOXJa2d/ogTYNPIwE6P
         AitTL1jCOUTQ9FHyGzuSb/6ymNL+mh7LklYFdO/jQF2Gp9ZtALAOuqX+ofLZ1YUZdrH0
         cLNg==
X-Forwarded-Encrypted: i=1; AJvYcCUWC/00dmCROn3MzQLuFaEVCFtcRO1AJniJOD+9LDtWerxu3LCGCBxyTrCTXyMzFG0ORyTk2plAr1B4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl0vzAPDC84ZEqfRllmnsyz9SU0XfI4eMLAWwGXAfYSfEYo1C3
	8xiodr7uLF0kKJ77G9xZcl/Ltf3hXKV2Jepy7lKVuhH8dqQf4iJJ0/CvSU+8BQn7DdPMTyNa1+9
	qO9kyrYvHIgSG9di2jCFtOil8ur5cZyE5iR+MTS1fqi2SHN10nbkH5G8dvVA9f6Uz
X-Gm-Gg: ASbGncuOJVdzqKFnSJKHl+HHNEs/2LziMGgtRfqmYGsGgN42FQHv7dbiZRG7GcLj+X9
	4D6q3WB1PN3CR9jCC8/qDzQpi8Ev6OJBL9aHJns5+DxCflqq3EfF8KweBl3mHhFH5sOK5YFVrYT
	HxGA0kyNgXUAX4VlNGpbwFFDjJfR9Ha/TqftE3gGx65WnjYT6vbpavmWtIJZidRKaj4YcGN3SFf
	i4y/wcEOc+2q02PbuHRQVMfZK2cIDdf79YkMMgjy+PEjArp+68nDjHTst6MN+7Jhr5eK9MnNsmj
	WkLBlqDhhf2CAgCv0ayXq3ygBjgQzENLXpXpNmKTlm8AukohAqFShbsx5Z1oZshG2AjNfidOE+3
	aks+T0haNutbxNHwoza4jC+Wv+FM=
X-Received: by 2002:ac8:5aca:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4e576a98c02mr22035631cf.7.1759489394501;
        Fri, 03 Oct 2025 04:03:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVIGJAdXZaVnplAq0s0yZvJ9e16SvUkJdruasG0YxlTSPUu9BhBdh2VSs9hy1ofizVbpdKTg==
X-Received: by 2002:ac8:5aca:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4e576a98c02mr22035221cf.7.1759489393901;
        Fri, 03 Oct 2025 04:03:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4f314sm415721466b.69.2025.10.03.04.03.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 04:03:13 -0700 (PDT)
Message-ID: <a6c6c701-eb45-47db-936f-b02fc260ce51@oss.qualcomm.com>
Date: Fri, 3 Oct 2025 13:03:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI
 pull-up
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
        Bjorn Andersson <andersson@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Scally <djrscally@gmail.com>,
        Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Wolfram Sang <wsa@kernel.org>, devicetree@vger.kernel.org
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
 <20251002-dw9800-driver-v1-3-c305328e44f0@fairphone.com>
 <1be80052-3ba5-46de-804a-de995f8db5d4@oss.qualcomm.com>
 <175948770924.935713.8703906918697470771@ping.linuxembedded.co.uk>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <175948770924.935713.8703906918697470771@ping.linuxembedded.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68dfad73 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=q-YMejDa-k4cM9YibJsA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: JYyd_38UFCo1axIpTGiQKhZsunxYZmWh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfXwxtJ/hwX6cUY
 i60/dzcL3BvgKQmCUmNY9EdHe1BR4ZhtYT3juFTeAOft+0JK3MJpWQw8Io+X2CAWVSuA5LewV6R
 lVxEs8lcSiIJ4jZK1CH9ANHwgkvkP1+WsDxSdXAlI6HlOI+gsZkfWxjR8VKAUiKzaH3D/aqUwHD
 wSH9Sz+1n4AT7yVBcW4tBiNNsQ4U1tv596cXw+LeIkUTtxcytu9rLjkFbBglSFnhUKee7MzBm1P
 Yj8ku0X9ZKwwP/qoY1qOQtnOxC53GhQzpAmdp8nAYxKxGGd9jno6SXQPQMW/weundMWV6SHb5DK
 w/IZpeGOVUX0k4rUPu72r8QCRuzRBFUEuNmKy/gg47aJXk8sbq6mdzKd8+76/+znkcGi6nDUDFc
 ixzG7Rzv8d2MnrTa9x5SEl455QH3Zg==
X-Proofpoint-ORIG-GUID: JYyd_38UFCo1axIpTGiQKhZsunxYZmWh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

On 10/3/25 12:35 PM, Kieran Bingham wrote:
> Quoting Konrad Dybcio (2025-10-02 13:45:49)
>> On 10/2/25 12:15 PM, Griffin Kroah-Hartman wrote:
>>> Enable vreg_l6p which is used as a pull-up for the CCI busses, to make
>>> sure I2C communication works as expected.
>>>
>>> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
>>> ---
>>
>> Makes me wonder if we should maybe extend the CCI definition
>> (or maybe the common i2c-bus binding?) to accept an external
>> pull-up supply, as this is a common problem.. (+Bryan, Wolfram)
> 
> I'm a little confused about terminology here. To me CCI is the
> communiation protocol (how to write the registers on the i2c bus). But
> here' we're talking about 'pulling up' a cci bus ?

CCI is unfortunately also the name of the I2C controller housed within
the camera subsystem on qc platforms and we're talking about pulling
up sda/scl lanes

Konrad
> 
> Is this actually impacting the bus - or is it more that it's /powering/
> the camera and VCM both simultaneously (which is what happens on the RPi
> cameras)
> 
> My curiosity lies in the fact that indeed we somehow need to be able to
> coordinate the power relationship between multiple devices which ...
> while independent for configuration - they do impact each other. I.e. if
> you power on the camera and it simultaneously powers on the VCM - you
> get the VCM jumping position if it's not also configured, so I
> anticipate various bits of complexities here if they are all powered by
> the same line.
> 
> I don't think a camera module should always be powered on for a phone
> running on a battery - perhaps on this device the sensors have a
> separate power down control ?
> 
> --
> Kieran
> 
>> We could then shut down the regulator when cameras are not
>> in use, preserving some trace amounts of power.
>>
>> Or maybe L6P is already used as a pull-up supply for more things
>> onboard and should be always-on either way? Could you please
>> check that, Griffin?
>>
>> Konrad
>>
>>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> index e115b6a52b299ef663ccfb614785f8f89091f39d..2dd2c452592aa6b0ac826f19eb9cb1a8b90cee47 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> @@ -749,6 +749,8 @@ vreg_l6p: ldo6 {
>>>                               regulator-name = "vreg_l6p";
>>>                               regulator-min-microvolt = <1700000>;
>>>                               regulator-max-microvolt = <1904000>;
>>> +                             /* Pull-up for CCI I2C busses */
>>> +                             regulator-always-on;
>>>                       };
>>>  
>>>                       vreg_l7p: ldo7 {
>>>

