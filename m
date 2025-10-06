Return-Path: <devicetree+bounces-223833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D4ABBE08C
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 14:31:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4DF93B8635
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 12:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CD627FD56;
	Mon,  6 Oct 2025 12:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LiJcCMmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C218527CB02
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 12:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759753910; cv=none; b=deNviBXlW2rqX9njEd3L1I5jrXUk/EAeaf1+ghBuiRnvCLS8UwTw5GElLRUj1ClzXD3DHs4yqZNazhLuF0ErTaimkQ8Vi18nGqoMdpX9y6VVlOJK+eO2KLrbDDJA6+IGoEvV/WMvnhn2oCkHlg7saONbMgogV35HR5bKLz6eois=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759753910; c=relaxed/simple;
	bh=CJ/li2NjwE/vxWhoTWEa6diBIASq688SzguAh5XwGjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nopf+orMOtvHdIyjSy/CVo98zk1EJs/q73zL9BbYJgA0BGrpHw4fSJjhhg8DDnMGFEoa30EEWmRDNf17o7HDhuQAVdW8Tq750YdSW18Jjn/HNHSpjOc0LNfqhQSw9sdjhxwpFJPI09ic3HEFn4dplFO50i7pEE4ZfAT/qa5xQTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LiJcCMmc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NX83J000611
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 12:31:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MJ03y25vxsCsNKFBtqgk2JlRNOCgTcb9CSsSI7FvbDM=; b=LiJcCMmclSa6bean
	Au3kbgijp3jXTYwbiVF8Qu8VlfptEcTiN45v+R1oKSGEYtUb3RgB/HYh8uuoh8mx
	JHWwhO2Dlj1LbzIk7QKY9nbDLOgU7XcC0lZ0kUdjtogEnMqfs168XZolt0wcIZ/t
	rYsFMbD8jfOLp3J7imNImgJYYoRGhlJyg0fwJe5AzouX3XKqoM+QtpMviF9BuOUr
	sl8IYiBUxYszVFxC+lfE1hXQx/q0xQUzTPo2fhHQzg+WhNquuRWRV2+wA2PgMWfB
	NX+9ttBz3yLQYdXanAULde2QeN+6+QIrNoa8P9X/Y1D5rIoJFf+ZPAGnSBj2wluE
	ngE/6g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49k6bfjy35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 12:31:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e231785cc3so20855061cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759753906; x=1760358706;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MJ03y25vxsCsNKFBtqgk2JlRNOCgTcb9CSsSI7FvbDM=;
        b=Uh8FhUjltabQeWrKvuAUJE3o0hFHAL5hEV/tVJXy+/tkj8NSZSkOKm8oLiaNmw2lSW
         fbfR31MFgnh0hB3/SKMvnc33jMp6PRLs08VFYSGY1KqFohtdzHpZ4KvdEPvEH5c69vFj
         /tF33XwaOrTQ+TdZI061FUz7hvsgci9UyPejePVa7wH57mbZYrqlugPdyupdZCGrzDj+
         clH9hQJA1R//Awj1+2RaLC8UhRFuJ7zFhEGt8aEUcJqJqmZrgzCIrlG82tghuvBop8nJ
         OXeVXLifKYf+MwXERvinsElZrVrDuNHUBB+chRruF6Au10swimvR0g+EyLXn/K5F0TgE
         Nn1g==
X-Gm-Message-State: AOJu0YwOMj4DNKnwmoEljJTuAiq9elHYMgjyCEykKD/aSm0T7hahLlKf
	97FryX+FJdtRrGqqLUiL0Tia+yd90ZPLT5peg4wou8547+v8ggiqCPAadSn8MwdXh3xDWLRwVCD
	qIfTz5cu5uVKbTuqcGN6EuxV7o4xWEDKeEVOZvvLK1RBc70oSxoO1pwFjXalM/Bpg
X-Gm-Gg: ASbGncsjB/sWwl5irSEGGqMkWBB9ZyEjdj9aPlb2RD6cBR2x4Sm083c8Ytefs59rrXC
	TIM6OkIlTxWc+KnStqhE8yBAhBwA3ESM87qmt1MZAIoJX3iwoTOljiZTabVq59t6vuxG2iD+0wx
	KzX+Yq4k54imlFyYcU56RSzeT+DsX6xlKpR5SU91DbzEZp2uWSjvS38kH4nJXnrBcqrX8gng5lj
	BZfe92iwihtwBn1lUc5rE1CZRHJFWbPyizdxYNWbrlJZYKS5uy0cdbHCFUR2UoLRe/Ib3CXRqrx
	aHQ/CZ02bhzKCvwQIFWALHWLFwmXJ/y6LLGQuK10IXjdAFMucmzgwcqSqvTKUh3LxHtzyUqHcWQ
	tFCIRmPyPtj3r3aZYJePE2tzcjCE=
X-Received: by 2002:ac8:594d:0:b0:4b7:94ee:4fb2 with SMTP id d75a77b69052e-4e576a4b20bmr93180031cf.5.1759753905495;
        Mon, 06 Oct 2025 05:31:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2WqYRw9tJAwkCWVZULEkhWrsi+IGiAs6DfmjaXLOa0kXsbazcsb/WKotgM+3e30+bN9qdAA==
X-Received: by 2002:ac8:594d:0:b0:4b7:94ee:4fb2 with SMTP id d75a77b69052e-4e576a4b20bmr93179591cf.5.1759753904846;
        Mon, 06 Oct 2025 05:31:44 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa02asm1139837766b.8.2025.10.06.05.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:31:44 -0700 (PDT)
Message-ID: <c21a408b-ec4f-4de8-a9b6-ca25410ace6a@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 14:31:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: r0q: enable hardware clocks
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-5-ghatto404@gmail.com>
 <d16e8c07-6c10-4c91-9bbe-a260f0497d29@oss.qualcomm.com>
 <99D0B281-03A5-447E-A6BF-892C99829D0B@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <99D0B281-03A5-447E-A6BF-892C99829D0B@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: OtyRL-Jdr8jbV5kB9YW0tNtc2aqK6HqN
X-Proofpoint-ORIG-GUID: OtyRL-Jdr8jbV5kB9YW0tNtc2aqK6HqN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDEzNSBTYWx0ZWRfX6SXCLRmq5j1C
 mphcdlYBfwPP/220JkoEegZNe8u31BUmiIdGiCygoC/R9/KbS6AAa0wbTneLPgVWsgxr1kEi1qe
 C8mUHkN2qYRnPsVh5iTdIrSOwZUMZAUpDM+iuOB3N9ZwspDYd2YySIQw4kUynKxCPIkXyhusrhk
 EyrUxLuwNSMxk0FZfJzRMYUBMSq7tMH4lW3zC49KkCLTMXLlvz25Vo4YK3f0GdBOZ66SzJp14j4
 flWgohWtqBzQNb+R0q7vRJu8RLrfxoaivellDLT0xmKIjOWxvHGeKm60E1D7++z6S8o/TfQoIbg
 /Jt15z5D6asWSgcBz5tb03spQ0DRM2HMiJbvcqHCVh0disLAxRGzj2wgjxwVVuEk+aZiNq6q/RQ
 a06M8pHSfKrVrSLHkMXfFHuosT2dIQ==
X-Authority-Analysis: v=2.4 cv=Hr572kTS c=1 sm=1 tr=0 ts=68e3b6b3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=J7BwVpqbZ6fScHfkYVcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040135

On 10/5/25 5:50 AM, Eric Gonçalves wrote:
> 
> 
> On September 25, 2025 10:09:48 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 9/20/25 3:46 AM, Eric Gonçalves wrote:
>>> Enable the real-time clocks found in R0Q board.
>>>
>>> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 15 +++++++++++++++
>>>  1 file changed, 15 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>> index c1b0b21c0ec5..c088f1acf6ea 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>> @@ -225,6 +225,21 @@ vol_up_n: vol-up-n-state {
>>>  	};
>>>  };
>>>  
>>> +&pmk8350_rtc {
>>> +	nvmem-cells = <&rtc_offset>;
>>> +	nvmem-cell-names = "offset";
>>> +
>>> +	status = "okay";
>>> +};
>>> +
>>> +&pmk8350_sdam_2 {
>>> +	status = "okay";
>>> +
>>> +	rtc_offset: rtc-offset@bc {
>>
>> Is this an offset you took from somewhere downstream?
>>
>> Generally you *really don't want to* poke at random SDAM cells,
>> as they contain a lot of important settings (incl. battery/charging)
> From another sm8450 device, I'm sure it's okay.

That as an argument alone doesn't sound convincing to me, since vendors
also sometimes repurpose unused-by-Qualcomm SDAM cells

I actually found a data source internally and this cell you're trying
to use is reserved for PBS (see drivers/soc/qcom/qcom-pbs.c), meaning
you already fell into this trap..

Konrad

