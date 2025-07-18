Return-Path: <devicetree+bounces-197670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF34B0A2B4
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 13:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9520B7A823B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 11:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B48D295DB8;
	Fri, 18 Jul 2025 11:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ORdx3lTF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72492EAE3
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 11:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752839142; cv=none; b=Y0yU/Ses7+aoXbmDsQK4/MEm+xhWqG5EochyZTQp+f/fglnk4SdH5/debTIulEiCRA2v7t0KHgw6+6gV7KofyuaMahqZ9e+g5e01sFqB80YR3m007tghYutebs/8Y64JdAW6rZytVHjizVzn6Maa+7lyV0zX3+YDx8HWtw4pcFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752839142; c=relaxed/simple;
	bh=/0TgAXFrJ3G9JZVLfywNJKFXbMtIAldNf+h11vvIcww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mya7eHV6e/K8OhAdeHGytH4YtnQCK4Tjf51i/TQeLES+E7ypALmegHlaIGzgs6WTTbgth8eyehCSDRydTX4AjvcwcIVJCvDpNpkJ5Q0QqKb3SacPT+fXzsmNQgLestkHHEKgVyV4HhWjPF6aJSUABZKF3mWPXEPV5gKu8jNYPRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ORdx3lTF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I9vVJh015968
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 11:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yUaV1HqBuNNURcq0v8sid0UGGjZ9IBb7QqFSuycdBC0=; b=ORdx3lTF8ULYQ2Ii
	uZ50eu9M/vGD7pOjMCUm7rWUdDEoVWCiRwtj7JKqxLvjKSZ7EcKUOTHiTP9qDf9p
	cXS74Yj1UjtzIECpy/xpWGrvKb9vvlCRvrhL+hVanPvaBhjyUzoIoEd+YbxWdkGb
	tMjsikc2hltx3584R6G06+x6XxsLmbZeTs9ueqRPJT904hP31CuVNdXDW579ih+2
	ByxlRGH9Ac6SdenkyQY4zlvuvOu0bcYIz4J3Nh71Hr2+1P6eVwa84XRzl7ukp8f7
	7mGakrAyeXUfTUY6v/XAObj6gDu4zxomX3s/q77pmTttAAR2+4p+jZRSa0DexNLp
	B9GiDg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc37ek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 11:45:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab65611676so4333901cf.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 04:45:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752839139; x=1753443939;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yUaV1HqBuNNURcq0v8sid0UGGjZ9IBb7QqFSuycdBC0=;
        b=qyOVADJGzbmw5c6V/t6tnanRgEcYQ3G9fcuA7V8qqVK2dic2+rG1AyIkmo21+kAWEh
         qO0ZPmBPl4lgEr1a5WRt1wFo1CJdkpYIRbW8prHGkRTD/Tej9jxnpMKWnehgtHw2gUsJ
         mgZxlSI/xRKuqqu5dp4T3uCQyC64kdBPg7maDhKc9uNNwW58CZLY/QvJE+MOzlnoFNW0
         Pa96nddEVeC9I2gKUfK9kmuXW9tfco0cANO0OqEmLgnfdaJLJxGMFLuyr7oXmM+pZPjM
         mdYr8pX7KrBldcVaRDp26yrLYBpYtlTa/EHpbSTSluD07PypwWJlLijNiVu8QQl277t0
         0D+w==
X-Forwarded-Encrypted: i=1; AJvYcCXIPlDlZ8P/wBqi/0Ddhkhpdx4f8BhQBq9H0a3BzMOuB0Xw1lrO9MDH5XsCKMGITUqgMT5RttCqR2rS@vger.kernel.org
X-Gm-Message-State: AOJu0YyqSHFGLqv92798kdw+uJYVxAYxWs2hrymuyMM6N6B/7vXkpQ7F
	17iNowOlj7/N7rRAL0wIS+FMxdaLmiW53yTi3/elsiClsVsXATnBBX+BEH+AeMypyYT5vu+mWcA
	wV7Src8HUuAMGxhPzTd19K5sGLYKFjyibw65nvXV8R2hlTuS/aYl0WxqXvXG5C0At
X-Gm-Gg: ASbGncv3/q+QqRpO0fRjISLHVp1c8IW6oxC911g82lVpfi2buZ5m3L41+V40YZeT7tw
	asegQTOku8Ark9J4CDV1/Ufyhy517dGBPv5JFN7x14GgXls204EjZ4rSM4DGGeSs1TU4JCMNou7
	BcusV/sVN0VanoPDu6ACArtWz5+oWtwPCAhjle8qw+iau9BjDLgGg7JQ8EplgzGXCB9V4Dm4YVW
	y3hjROYvKceXpAMxjZVUjyRaoPc3bv7dUKcwGW1Sit/vpyyr0+WblopeudiZm4ScrpUr36yQ4th
	B0uHwf1wFgu08V96CvrX15U4vcy50KVwbWtXpktpPSDOpAStA2rAsQBJc576Ck5YvC7ZhXqDL+O
	3RliO5Otf50x22Eqx+G8e
X-Received: by 2002:ac8:59d4:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4ab90abeff7mr67167931cf.7.1752839138685;
        Fri, 18 Jul 2025 04:45:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeVattD6J0aqEqPEisHXQsvCa04VOP4L7XrZDnR309zipodefZf5SE1uSb44GBWau8neunmw==
X-Received: by 2002:ac8:59d4:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4ab90abeff7mr67167661cf.7.1752839138049;
        Fri, 18 Jul 2025 04:45:38 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c79a0basm108012266b.19.2025.07.18.04.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 04:45:37 -0700 (PDT)
Message-ID: <d7729017-104f-4808-a4d2-da0eaf50a8df@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 13:45:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: ipq6018: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-3-692eb92b228e@oss.qualcomm.com>
 <bdb5e19c-dbab-4ea3-9a6d-a4ac795fb43a@oss.qualcomm.com>
 <dd2fab47-d451-43d2-b2d5-36d957c5aa46@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dd2fab47-d451-43d2-b2d5-36d957c5aa46@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=687a33e4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=IiJQ3bnfW8p6AAHgo9AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: 8Bwz0fvzNlwo6et_6D2cCaeeRokYKbaS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA5MiBTYWx0ZWRfX3NiXBDuj1hew
 nXqkHR4fOXwhymlCVZKDsCOPdjFZjLu1YdadYWluoqvzqjwaCyv+j7P67RQ3FXMUSbA/pqZ9u8g
 rJLeZer8z4ZbMrc7jdFNL88+5ssELFWG3VnSmqxMxeCynKjRcfnEupRUJ4TeZVLCQzEIZiHpPd6
 SaHg40VGI5RZCEB7AfJ193ywgqJ6ruyNRdQtvcTrP0BOvGiUhibA/0oUHNn6LLk2Gzo4+i+HCVx
 TTszLfV5kVanYc0RhBR/7FiriKbnbWCLFXWOCoGg1RQcO4XB3zKz1foyVXdHu+Pk9VKff46kIdX
 xrlsnTbGdKR0R6RDMKcdcbno89uxju/sXyGp9yrL6//8fSI34/VTUQ3cMgPT/T1r2k7aoWZmScO
 Vgi0/0lIUfToJiUOmy51HfQ0T4CgU1GSwS/5cNRPO9RfOfc7IB97+ZFiI1EQN1sA0jvgyp25
X-Proofpoint-GUID: 8Bwz0fvzNlwo6et_6D2cCaeeRokYKbaS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=958 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180092

On 7/9/25 6:28 AM, Kathiravan Thirumoorthy wrote:
> 
> On 7/8/2025 7:49 PM, Konrad Dybcio wrote:
>> On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
>>> Add the IMEM node to the device tree to extract debugging information
>>> like system restart reason, which is populated via IMEM. Define the
>>> IMEM region to enable this functionality.
>>>
>>> As described, overall IMEM region is 32KB but only initial 4KB is
>>> accessible by all masters in the SoC.
>>>
>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>> ---
>>> Changes in v2:
>>> - Rounded off the size to 0x8000 (Konrad)
>>> - Represent the reg's address space in hexadecimal format (Krzysztof)
>>> ---
>>> In 'ranges' property 0 is used instead of 0x0 to align with the existing
>>> format.
>>> ---
>>>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 9 +++++++++
>>>   1 file changed, 9 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>> index bfe59b0208415902c69fd0c0c7565d97997d4207..3b9e40045906b26b94e2d2510b0570d3eaf084ce 100644
>>> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>> @@ -659,6 +659,15 @@ qpic_nand: nand-controller@79b0000 {
>>>               status = "disabled";
>>>           };
>>>   +        sram@8600000 {
>>> +            compatible = "qcom,ipq6018-imem", "syscon", "simple-mfd";
>>> +            reg = <0x0 0x08600000 0x0 0x8000>;
>>> +            ranges = <0 0 0x08600000 0x8000>;
>>> +
>>> +            #address-cells = <1>;
>>> +            #size-cells = <1>;
>>> +        };
>> On this platform, shouldn't it be 0x6860_0000?
> 
> Actually, that's from the RPM perspective. From the ARM side, the address is 0x0860_0000. The hardware docs show the RPM view by default, so please switch to the ARM view.

Right, this is an odd default..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

