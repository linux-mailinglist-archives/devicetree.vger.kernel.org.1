Return-Path: <devicetree+bounces-130849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C12539F1070
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD828169EE7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 694261DEFC1;
	Fri, 13 Dec 2024 15:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l8xiEAJi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A745E1E1A33
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734102516; cv=none; b=WlaoBZ49norO3zTMzAm6nM7fxuaW6bOac+1A+qDZC+z2lNljRsXH+W2dMlnuth7zcypKf5Hj16uiuJi2Qs8rPZ615LaR70j5EhqFvGmTRn5cOwTd6YtorlzOXFrRjQmDld4fifpBumwW8FRTqHBHNW8AlkCkjdOZ2trp2O0geUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734102516; c=relaxed/simple;
	bh=gifl5K2wVo1pUEBYfH4X/5VFPN2lBKZmAvz5lyuJzXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A2YXTS/xMUbrWe1WFc71w/wNboe3tjKxSdODoHmauXDDBl3ATnsWOiKj0G4iBwRb4ggQl8eMPjs6YrKYhDrzmRaaBQ59xGll724F/RoNHgLKohDyU1XNaNBHHGch4r5sy267onBICvvALXx44+FK+O0+YpxjjrN0t/cfP55Z10o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l8xiEAJi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDA4Fg3013312
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:08:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gf/fh9YGa6CvGhKh2kJtbLjeDgDSqi4w3sMvOIhuQQw=; b=l8xiEAJi/rzNYvYn
	LP6U5R2lzWm1Hybbqq985lUCKHurNYmi2yZ1xmnFl63cQyUoMjye0CnpdZlN7qL5
	i+7hVXfTPP0lpFI+5NZASzv3LMr/ah/BXpPL7MFISkhk/i5f2gm2QVrhz7QaT4Xv
	nYxupxRM6zVXRq3twGHxoeJuI797yFW19tpNChPaYO27NyIX7WlR1GZYRCvqB3nA
	WK4cQL8V04JRd5BymBDcdAq8DR3yQnsdIARFp8kUKsthc5lxqAX6yBEAV1UZCKC/
	13Q8GMS4YLLiWd4qSQo7ANJ1an8OVZdzaD6+AbPBhEPXKmQttK3jSh7T0vwmWxgX
	LAKXaA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjudguku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:08:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d880eea0a1so5148716d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 07:08:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734102512; x=1734707312;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gf/fh9YGa6CvGhKh2kJtbLjeDgDSqi4w3sMvOIhuQQw=;
        b=ZNqJK7lVOnNRpUwzUFZMjj4wsIsEkUz5dO0n+KoEerNpfV6jLIN08wXRyzlNfuUX44
         ua0yfYuY3RDKyLEJrZpLyzH3BPKlnVs3j7Boz96c6WkQ9AmUtEB8po1rO85oOo8ofJlw
         47DrA5UqD8VrexQOj1o6kYi3m2jeu3GEMnex33p60WsUv8edOQOJKh/wGFOJp6NzMoRM
         7RC1VDwtkKaBw/j88DDp2FqDP5gbA7p8jlXZna+QDZp3ctJv+ShRa3J9uMthm9H5VJGJ
         hvJsqC17en3C2L2MqklvEW/we9H9fU0zLv7ERw2TSYH0c9/OFs5HVafm8GNkeY4ULvOC
         obHg==
X-Forwarded-Encrypted: i=1; AJvYcCX9TF24lRzF3vI1KFsVou4gHSZvgXtu4RNoynyv0a/Dt12HrOyaE3ZBAVMJAwSRpmrKKsBn+f43S/re@vger.kernel.org
X-Gm-Message-State: AOJu0YxmsXghjZeG6OTZR0+7jSez8WcGHRp0S5SkQlg2H57PbhiQZDWz
	FpJHVb51/BurG1JZW4zXGP+Xkwo4++PUZpzQGbbc8b0Tgxwir14j+mOQVMqoZMT2ud8SsDxcd5F
	TAZfPsb/MBsPvKWeS0YDH3L5om2V5rPS6uXeF20NOc8a7rVzVNVQX9YKUxkVP
X-Gm-Gg: ASbGncvbAqfnTxE2ILGiTIuE3ztDbEgHBhfImJT0HNJJXjzIxP8HonHfsRZSa6rF3Vc
	MLfiNXjgha4D+qxHXcHnTl6V2k2ktUbB4SkRhP46p/e0UjdhN8cs49aySy/PckFu9brqCJlMWkf
	K2H/GJwoNJSibWzBXDh6dydJUM3X3/b23UawnGaGG48NOn9TFjy8XNxHvEYB7F8OdiPpoRhkk5E
	etLdbxvSJq3fPWmAWZtvXNeVQYcYGqluna2BJ+FdNznZ8pTXE594o4lXXymxVG7FivufzfljnEE
	klGmnPo2ZNhA7CUFG/DFBXZktd8Ujr0z1X/X
X-Received: by 2002:a05:620a:414a:b0:7b6:ce0a:d28c with SMTP id af79cd13be357-7b6fbec8010mr196209885a.1.1734102512436;
        Fri, 13 Dec 2024 07:08:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFX2nm0PualiDIHCcimw5pbm6pmtCmSanRdLgYIld/OBrvjbYoZl7+DIgL64ZiMsGszKUs5/g==
X-Received: by 2002:a05:620a:414a:b0:7b6:ce0a:d28c with SMTP id af79cd13be357-7b6fbec8010mr196207085a.1.1734102511977;
        Fri, 13 Dec 2024 07:08:31 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d6501d5863sm54806a12.76.2024.12.13.07.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:08:30 -0800 (PST)
Message-ID: <98fe04fb-8ae5-4fb6-91bd-3f9406efab02@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 16:08:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 20/23] arm64: dts: qcom: sdx75: Fix MPSS memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
 <20241213-dts-qcom-cdsp-mpss-base-address-v3-20-2e0036fccd8d@linaro.org>
 <9a7f43fd-a720-481e-b8ca-68150c202b74@oss.qualcomm.com>
 <d7a89a5d-cb70-4d05-bb3c-9f4808984175@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d7a89a5d-cb70-4d05-bb3c-9f4808984175@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: b8-Tl9cANeKpijoco4D1tyHJjJWKYMLP
X-Proofpoint-ORIG-GUID: b8-Tl9cANeKpijoco4D1tyHJjJWKYMLP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130107

On 13.12.2024 4:06 PM, Krzysztof Kozlowski wrote:
> On 13/12/2024 15:56, Konrad Dybcio wrote:
>> On 13.12.2024 3:54 PM, Krzysztof Kozlowski wrote:
>>> The address space in MPSS/Modem PAS (Peripheral Authentication Service)
>>> remoteproc node should point to the QDSP PUB address space
>>> (QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
>>> copied from older DTS, but it grew since then.
>>>
>>> This should have no functional impact on Linux users, because PAS loader
>>> does not use this address space at all.
>>>
>>> Cc: stable@vger.kernel.org
>>> Fixes: 41c72f36b286 ("arm64: dts: qcom: sdx75: Add remoteproc node")
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> ---
>>>
>>> Changes in v3:
>>> New patch
>>> ---
>>>  arch/arm64/boot/dts/qcom/sdx75.dtsi | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
>>> index 5f7e59ecf1ca6298cb252ee0654bc7eaeefbd303..a7cb6bacc4ad5551486d2ded930c1a256d27655e 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
>>> @@ -893,7 +893,7 @@ tcsr: syscon@1fc0000 {
>>>  
>>>  		remoteproc_mpss: remoteproc@4080000 {
>>>  			compatible = "qcom,sdx75-mpss-pas";
>>> -			reg = <0 0x04080000 0 0x4040>;
>>> +			reg = <0 0x04080000 0 0x10000>;
>>
>> I think this should be 0x04400000 instead
> 
> 
> There are two QDSP6SS blocks - one at 0x0408_0000 and other you mention
> at 0x0440_0000 (MSS_VQ6). I think in all other DTS, e.g. SM8550, we
> describe the first, so 0x0408.

Ok right I looked at the wrong one

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

