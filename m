Return-Path: <devicetree+bounces-244677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B9ACA7BE7
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3467B329074B
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B833832ED47;
	Fri,  5 Dec 2025 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DBDZkG4k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bV1RpefL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5556F3191CA
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764940678; cv=none; b=Z5hifohppzGdgLpc1PuIjeFNConrIRllIFSfTcHhv7TcD8elRhisKbKJ0XQN8fTFimfc5Zg8YGiXs5Z5TOvDbDXCrcvDF4UjLoq3zwqSXI5dKl4YQQhbV8VhSgHdHeVLxEPxwhb15WovZNtCP+UZ02mDjRNOWjNBdCcVwnXWtsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764940678; c=relaxed/simple;
	bh=riP30kFmyz+nFuiWAeJFBcF44v1P33g/LRrfcTgo/AY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DnSFiDPTbtTULe3OD6xlvnZrCzTAnCT8DWrJxFvlHl4/GLExg4Uq6LgqTtYiIWsZQRWvN1zk7F/HFFQKtAYDSZ2JdkPkwukSOzW7cPRz1pgc4LsrA36TPWHBD9IvX8YtzTbniTRr7bCtm6/AiByJMQT1DxBarKrzay3m9o47LUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DBDZkG4k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bV1RpefL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5AOOHN067579
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:17:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dGVDgaz260JnTGq245xxwt9fjFkxh7Y7CM+wFiS0tFE=; b=DBDZkG4keNsqQUeH
	C3d+VxzNky+yc5VzNZrU3Arxw+3urZCASkryi1qhRCB6j9TXbxlIzuwb4SG73FIN
	wLNba9KXpBMG92O5H9mlZWaEqx+837dI58DbvqQOPVfz0N6OVdUgcimM+A9a8t5M
	AYJI7wWvFyZj2LVAZ/mWFbAiqdTILEnHf9lXjjo45txv5I6Tsjjo1ir0tWXT2lH1
	EtzJxrNi0rrKRi44DtwLGx5Bh+re20QiayMhcp6LPQTAKTklxiBs6GkAathvBIan
	sRRvqDu2fePi4saSEpJ0r3vx2iVEBBuQZCRCkJHaOF95OCchSqkFVJ6TKPA/Nh1m
	/R8F5g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm4ge1k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:17:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso5244591cf.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764940667; x=1765545467; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dGVDgaz260JnTGq245xxwt9fjFkxh7Y7CM+wFiS0tFE=;
        b=bV1RpefLb7Uc8arXu8VD7wvL79U5bJ4W3Lcv+S+FfN+YkKIYNuRWEng3CqyoJEz62w
         jI9zFiB1fMOX8frCT1FWRFWlP9ePDcDl7mRlt3ymScrNtda56PZFyaMm/PO1mSGOksEU
         QF9gb0U2L62xBSYJjzmwF0ZwxAgjlMd83fqCZq4CRWL5TGfDS6jMlgQvYmC2h5ZLVvLJ
         KJYGig3CQ9jI/dvHs62kP7yhcMpjf4YVkzUtpWdABqM/6MEpSUDDbCGUNPWWchIgUeTY
         Ek/7O9davu3PPKpq4LmSMdEPsYUFRBBHho2CHsfYbztQNy1HK0k+Q9AHIqJfKy5cJb/1
         1qMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764940667; x=1765545467;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dGVDgaz260JnTGq245xxwt9fjFkxh7Y7CM+wFiS0tFE=;
        b=sIUURjgyhEaBrD7O4uE4749iD0wJd569d4OKkpDHr1dxC0GZ091BwUzNi4m51E2eo8
         RpJNCsMXeJJVGyv3RtNXIw4ffbCyMcUCd6V3Bn/tTMg4eAiARwTmOL40fgLZxAX0BmIN
         P68Uw6N9KvEGiKwSBnOxuZdI1bIm1e12etNsF0xljXJXOYrUWvRX5hgwK8m1/UVjPt0p
         Do1csBHRwc/cl4qdI/k570EjgVCZnhIZN1K53mpxe68GEFme9LXH+L2/+srNZRYquUzp
         2WtYJk++VZ1Ss+lwANWvuo6ZMrH3HttThozfGu8ZTjzvfQqT6vdMeeurnLlOoUz7hjJp
         3msQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6HkgWMhbz2t8OUvcib+dPsrBf/qd5BrePmL+v155rGQOIBnAYomkGKz9JUrEmAOMK07CyCn/h7Q1/@vger.kernel.org
X-Gm-Message-State: AOJu0YzvpZhboW9xmXiRiH+EGQEjHTEqJnW0fQyaG+X7DrlFxII44XYk
	LzkxoczlOYPGBFYeADM3/zxsCXiVB08ayJWWkmGCUsx2BIuPfVlHoDYfA1g2KlXjQYyfttZS7VF
	cdUzqBwzUMzkRD5RIVgu/t8Aaca9CX/tepw5slo8hxxlAuQ+K+Bmw4rP6vNXe5eYq
X-Gm-Gg: ASbGncs4bOF8OqmpKcZbJJPkfwn9q9YivXhg28WyaZkLemO/6EpeOgkRVNi4gvGH5yY
	4pjQyQh6GX5WgP4o/baeaKhSHmdTOsAbSZqeNW71QllHYPJ9Fe4dXtgYY8JDrBzRg/1F9nsXmIE
	Mn/i0Pt532kFJgVmcHh4xod6i6ctu9KJn+tvJ1SdS0RvFW2mobj2vzprAZetZ1AS/Cxjnper4c/
	TEbtMTWIgEDHuXfkWch1VHMWHJPAbFQrkyhO7gTq4auuexc5IDj/KyzopX2q2fcx9NblcQFxd7W
	gig44YvoENsZ7CReYiHVlZBlJCdMZwQ6ElEIGaP68TUC7sBUYC85oFRTqoqJFcgXLBlH56zjXPV
	oTq+i52n9dRQB0miR+jwOe6ubOJwAMGxeTPiQffAvV8DniwHH7oABhBPwgvVMVbEUVA==
X-Received: by 2002:a05:622a:1b86:b0:4ed:70bd:d9e2 with SMTP id d75a77b69052e-4f01aef8f67mr91085631cf.0.1764940666803;
        Fri, 05 Dec 2025 05:17:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7gPLEECKKM4XJhoWe/NkUFwABrHL4uHBqne1QK0fXVD9U6rnoQmim1hyRK2g0GSvXg5dbnQ==
X-Received: by 2002:a05:622a:1b86:b0:4ed:70bd:d9e2 with SMTP id d75a77b69052e-4f01aef8f67mr91085301cf.0.1764940666226;
        Fri, 05 Dec 2025 05:17:46 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f445968asm378551566b.3.2025.12.05.05.17.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:17:40 -0800 (PST)
Message-ID: <83dc0047-69a7-450e-aac6-a315d7ce58c8@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 14:17:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm8550-qrd: remove data-lanes
 property of image sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
 <9252338e-c775-46db-9376-53002edf429a@oss.qualcomm.com>
 <40980eac-9e9b-4293-8986-bff46f30a50b@linaro.org>
 <94d6d26e-8009-437d-af9f-0a3c69fe8ed3@oss.qualcomm.com>
 <5c163334-2ddd-4e52-8add-30652b34dc0f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5c163334-2ddd-4e52-8add-30652b34dc0f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=T92BjvKQ c=1 sm=1 tr=0 ts=6932db7b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=qPqUpE_4LfBRhlBGi0gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: jFL2-WK7Oc1alINwbG8OFkIR1kq1r4F9
X-Proofpoint-ORIG-GUID: jFL2-WK7Oc1alINwbG8OFkIR1kq1r4F9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5NSBTYWx0ZWRfX6xbp0D6Ei/uf
 l9JrGmMF3SiQ8i/g18DYrAitD8esf+l/ITkXu3f+M/WC6LHpQDoT7LjAvBKfTpyrRbpErpC7oaE
 lyeMSM2DrlsRhYXLWKZFpGFJW1Ww6zYWaL980ZvBVWZJeUG8xfRBg9/42C4qwc4+eSUtaq7mbAn
 +NQg6/5gcfd9nrT4RDlK2bZvoyknkwMfu6pImiSCbuONlSwWvWfPgeovTeMYlBuX76gWuxJ78OO
 WrgwOg1dl7Hna1LUpIkBcRR8sYCgo3UB04uezzCpcCZTveH7S4U3ncHejF2o2iV/DxNAkir9pj+
 ooD4weRTUNPwdplrVTSpHog6TSN5i/HeIMhbvm3yZQI8ewcHD/xTRW0CDbw5x01o/49LDYRRPM+
 uAl6KmdZmkbCn7zMwR5ElAzc3IwzGw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050095

On 12/3/25 12:57 PM, Vladimir Zapolskiy wrote:
> On 12/3/25 13:50, Konrad Dybcio wrote:
>> On 12/3/25 12:41 PM, Vladimir Zapolskiy wrote:
>>> On 12/3/25 13:11, Konrad Dybcio wrote:
>>>> On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
>>>>> Samsung S5K3M5 image sensor supports only 4-lane MIPI CSI-2 interface,
>>>>> which makes the sensor data-lanes property redundant, and it can be
>>>>> safely removed from the board dts file. Noteworthy that the property
>>>>> value is incorrect, because conventionally lanes enumeration of image
>>>>> sensors starts from index 1.
>>>>
>>>> This seems to vary between sensors
>>>>
>>>
>>> It should not, from Documentation/devicetree/bindings/media/video-interfaces.yaml
>>> the clock lane has index 0, data lanes enumeration starts from 1:
>>>
>>>    data-lanes:
>>>    ....
>>>      description:
>>>        An array of physical data lane indexes. Position of an entry determines
>>>        the logical lane number, while the value of an entry indicates physical
>>>        lane, e.g. for 2-lane MIPI CSI-2 bus we could have "data-lanes = <1 2>;",
>>>        assuming the clock lane is on hardware lane 0.
>>
>> I interpret the last sentence as ">>if<< the clock lane is 0, then data lanes
>> start at 1. I'm not sure if the spec mandates that's the case though.
>>
> 
> Well, that's the absolute common practice for media devices, which I'd like
> to follow without a deviation from it or introducing a novation.
> 
> The dt bindings documentation of this S5K3M5 sensor device describes the value
> of the optional data-lanes property accordingly:
> 
> https://lore.kernel.org/linux-media/20251203040241.71018-2-vladimir.zapolskiy@linaro.org/
> 
> So, I belive, this change under review should be fine as is.

What I'm trying to get an answer for, is that whether the lanes
are physically connected like this. You can find an answer for that
in the board schematics, specifically looking at the connection between
the PHY and the sensor.

Konrad

