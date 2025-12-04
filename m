Return-Path: <devicetree+bounces-244265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B579CA2E3B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:03:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C53230532A7
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06A873321CB;
	Thu,  4 Dec 2025 09:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C4zsSmnl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RaQRV1HC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6F3308F3D
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838943; cv=none; b=O3+oGJXyD5QGbG20B9+0SgVxOaSJfhfrYVxnouIMtolecWaw3Q4tzgE0eSWM+/7/bFV4XbfSmJKULXaSnsHMTlCKZLg+YN+9HIzzhC9evj00rvD1ZXvnehUuWE5aJjiLE/4tEzAVnXWybiBtDZHFzB+NYGNGMdHCnyj+KNuinns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838943; c=relaxed/simple;
	bh=KUJyn23st0EO5ZkU3NLsK2sjOM7AT9M6glu8bkKBxzo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KTo+hQVatm6p8Fwfk60BwKo/yamfzK26VOsWTJ4wAmXfTO18xkn/G92BAnb7GzXI2NlR5o2AObz8BR7CQZApuEgxSfgh+T0tCCo/IYrNneEeP8i6Xtmq8OwsU34hKLItdYKug6qErv1l7AiXlfDK/qy3g9XhImoy7WFO8Uteu/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C4zsSmnl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RaQRV1HC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468rDa599363
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:02:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mtgo4fM6ZCxfI0LXagFtoyQxIjtvK98di1Fn6M4ipAk=; b=C4zsSmnlmuvejCfZ
	EmYxMWG7XCn10vscZxrbJH1Lkibfk99zkyQ3eRtLBWJ7pu3l31CDEIZJaaojCDf3
	Qu0Sp+SIc2JRVEo2bnLnoejPDcob54YgqvCWpbZ5nTHwLZAv9kQHDLzmqf0KirDo
	0jtOawtTypbzVklwSiO8DTo9/H7JYFmcPOnkiOh3QfT18Smt1Z8K2IPtNUA6RW+t
	aqmWjlsNHd85W9URfp7Xnkw3u3cUMSIC2Ems0MRB+mE6xwfvKH4n0DO7l/k007c2
	auwvdch+CFbIgZsF/XXafpHwjAeMmu0nHs10em6DwfXVDkOTf6S8W/DjXaIQ5cZs
	Zf3tVA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f01149-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:02:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso2528571cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764838940; x=1765443740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mtgo4fM6ZCxfI0LXagFtoyQxIjtvK98di1Fn6M4ipAk=;
        b=RaQRV1HCSVEHfAgSq/sT7jFtXqNrK9kK+spsBhqosI4ibaiuj2eUtd7sI/+Eo+nBQt
         DihO/acShTCj1n48rhqAmL6431XhtRo63Q4VvGzwjxRFXhKY1eegwByGhDA51o73nnyV
         dyuF5/GdaQMZmXpH3VxxMgOKhFzkk36pQRkRh96DY/jtW9x1UyGFE76dT9hIehA7I9wH
         FWnjjZ76WPff3lQbqzhd8bMo+ac+UVdPjCQo1DmS0kE5NOstJY3qMuUTjCUIK4ql44hz
         GN16nqRNXhWXfpIJ67G4edobxG3rIWk+yP4QmiJ7f5dgRx3m7binlOCts7loOKeJBc74
         8rag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764838940; x=1765443740;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mtgo4fM6ZCxfI0LXagFtoyQxIjtvK98di1Fn6M4ipAk=;
        b=ah9en0YQie1sZFEHZk6FkKbGY9KM4VMFCzj/mVMncSmMBzIMM8DUj5PR6mTPwm/0cq
         GgNCm5/72Kg0LOu4mQW3JhhYO2e1pISwH2XU7JBgj+sdEynKLXgG6oOY06oyyuh+4WRe
         zPssq8NJd2vGNFLTyCmeq9N+eS37s78JROk2U9hPu+MS998OvUNwqqf1fsRyR9DFkyYd
         aIuuQI9XdNs/BdzDpvHqkCRiXFoib6DfF1awGuebI8pAwYyDzdFaOINLJHXkjISVYusH
         VNSsXxGaPKUuHmV8p3RhJFhFpXvdRiJSuMZfs7wfvUvvrrMoAqwsNt8QM1u83asSMnKv
         QfDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsnoONo1R4PfsuYo+Bt78EIcco5murVKPTr6jfcDWzriWdR1BAgBX9XHjmcNJTvjyW+EtEeVFMvzpP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk9pByc60rCuNy7o3Gwbid4Va2f3TDwrqrFH3ZlGj5/eIecf0Y
	5Rw4VVYLRakyHH6HArM6TvDaH5lK0uXLelebZkkd+TPdC6LAVs/H658B8N4xKMDvB+cogz8EOf+
	8lbsw7fRtzvcHROEabxyiNywNQpi0W3sE0UVq4TbOJMV/Okz0VZYwRcIvj2DCi43noWMSY6lX
X-Gm-Gg: ASbGnctRVHHk9vqK0z+4kG+lYA0nFwCYt97kq3uNr5y3kgIJISRWVcsOonZPmPzj+G7
	U8LSQgA9c+lS2bXbtVe5uZHJ3hnqJ9dS1L4Qla8akhyURABsm5QlagiWedhnn+srvS8dkisoicy
	gOOnIiKAuCmVZQBNcalex5kF5BEpbFn80QpsOI6tU7KFnRS24li75BST7NtddyBs3b9U0p1JKR/
	CtROsvRSEZPZWMJCdqwdA5/q0VP3iCShijuoyKEfbAjRyJVm4KXU0JNpmMuSoWsqPTxE/BK0/7h
	9byDTEbEjwSWNqUDW1q9SEAXBkJydqu2vFIBqZrg7/x09D0jLjvYwTmgRPS5f6EKEwE/YZH1m4R
	8ljPQckyaf/+4jzl4zHDsjlEnRlDiq/mOxiHXNTUNL5PRbnUn8ZVBawPbxL1bTCt1Fg==
X-Received: by 2002:ac8:5f91:0:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f01b14c0e8mr44792621cf.5.1764838940498;
        Thu, 04 Dec 2025 01:02:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAwbsJMuv3MZvg5YXcOYqzTvFZ69X0CPQXgF4ehRC/ycYB7Z4fnwQVX2Sw7f8ML85GkecTyg==
X-Received: by 2002:ac8:5f91:0:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f01b14c0e8mr44792361cf.5.1764838940015;
        Thu, 04 Dec 2025 01:02:20 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975b94sm75061166b.40.2025.12.04.01.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:02:19 -0800 (PST)
Message-ID: <a6137726-0723-4336-a5a0-ccd4d468640a@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:02:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: Add support for Surface Pro 11
To: =?UTF-8?Q?J=C3=A9r=C3=B4me_de_Bretagne?= <jerome.debretagne@gmail.com>
Cc: Dale Whinham <daleyo@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251201011457.17422-1-daleyo@gmail.com>
 <20251201011457.17422-5-daleyo@gmail.com>
 <ae91cad5-5a0b-4c83-9eb0-6e7baf6a33d0@oss.qualcomm.com>
 <CA+kEDGHyx7C7PNxQ8votwABiQpKhAAh126os3OLu-W0kDo2ySQ@mail.gmail.com>
 <aad15cca-bd3e-48d2-a70f-f1a66726b50d@oss.qualcomm.com>
 <CA+kEDGGN0074JdhzSoHvihBKCg4ngx3gtGxgUQt+KWRp=PX68w@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CA+kEDGGN0074JdhzSoHvihBKCg4ngx3gtGxgUQt+KWRp=PX68w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Wk8pttKEh2K_CIk0iE_XMEjqoz6x-kye
X-Proofpoint-ORIG-GUID: Wk8pttKEh2K_CIk0iE_XMEjqoz6x-kye
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3MyBTYWx0ZWRfX/jNqjUpPlNSA
 dfYW84EjzWbW+SORdwvch4tK7S2JDyyoOQvbL4vqn+zHJR6HkMdUtyOUkfTMnHZ+zSXEvrFF6AN
 Dr5FPVf7KBarv2UhTjXT/lJRJgv6QPJWj0oNWyJdDJIWxqWdJ9qfI0zPPkG8qjGpoxIuwIoVcZY
 iu/PduPAyNFqY2Pxc+EERBUdg61yBfRIBgGND2EOvN4nA/YAIZTGPR1/SXUt/3jI3dcQ3UQWuV3
 9kykkFVE7kMELA8ypQjp5qr2qKnsmvIz7pb8qRomxVmJHhe0QEx9b69zVzL9IokXblBnpIXVtI7
 tk9n5NlmHWmMY1kgG/aM+yhZEOcbQVcZL29PKDTTdaKMaUA24xnixgMWo8YzRoHNYeH7TdPiBtR
 IRXYUCXbzzHvTjvu8KeoPlhYJexDbA==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69314e1d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zgDWnLXL3Kv1Vlv3_yAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040073

On 12/3/25 10:58 PM, Jérôme de Bretagne wrote:
> Le mer. 3 déc. 2025 à 11:56, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> a écrit :
>>
>> On 12/2/25 7:50 PM, Jérôme de Bretagne wrote:
>>> Hello,
>>>
>>> As discussed with Dale, I will take over the v3 submission since we've
>>> worked on this patchset together until now. Here is my feedback below.
>>>
>>> Le lun. 1 déc. 2025 à 16:35, Konrad Dybcio
>>> <konrad.dybcio@oss.qualcomm.com> a écrit :
>>>>
>>>> On 12/1/25 2:14 AM, Dale Whinham wrote:
>>>>> Add device trees for the Qualcomm X1E and X1P-based Microsoft Surface
>>>>> Pro 11 machines (codenamed 'Denali').
>>>>>
>>>>> This device is very similar to the Surface Laptop 7 ('Romulus').
>>>>>
>>>>> Use a similar strategy to x1-asus-zenbook-a14.dtsi so that we can create
>>>>> x1e and x1p-specific flavors of the device tree without too much code
>>>>> duplication.
>>>>
>>>> [...]
>>>>
>>>>> +             pinctrl-0 = <&hall_int_n_default>;
>>>>> +             pinctrl-names = "default";in v3
>>>>> +
>>>>> +             switch-lid {
>>>>> +                     gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>>>> +                     linux,input-type = <EV_SW>;
>>>>> +                     linux,code = <SW_LID>;
>>>>
>>>> I.. don't think this device has a lid - what triggers this GPIO?
>>>
>>> When a Surface tablet is connected to a Surface keyboard, opening/closing
>>> the keyboard triggers a wakeup/suspend event. I will double-check if this
>>> entry is involved and will remove/keep it in v3 based on this check.
>>
>> If you have a magnet handy, you can run `evtest` as root and try waving it
>> around the screen frame - it's presumably just a hall sensor
> 
> After testing tonight, I can confirm that the switch-lid entry is required.

Nice, thanks

Konrad

