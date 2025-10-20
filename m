Return-Path: <devicetree+bounces-228821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 031DBBF0EE9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A90473B0F73
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B16B303C93;
	Mon, 20 Oct 2025 11:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iFRnPDvJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA09A302CA4
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961253; cv=none; b=h/YPypeLl/FIFpxcLcbVHWMQ5B0QGLE5laPd0oJ0g3giRpu7WtItEG4JcW6K1q4TAlWHX5ACJGRWfYxghBpGbUOxvA/Xx8p4qOeAHsuTAyQW0237H3GFJfcR/TNVaHRcJP15UoIoVt7vczeaDScFmNWJliQ73+8w4tWBZlSUyjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961253; c=relaxed/simple;
	bh=XOIoFcLWk/VxuwfLj/ZGuAxaYM5SP7XocY36ApNKCWI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HOZecnwJUPogOqvp9OsLd3xfpkz36RSoQbMAv1hxVKWoVbKLiYHd5YdUztShGBNggHAuhrRQw3PnFAYnjPdi0oNvJ0l6mMX9BgMbqelbjrsc4mkEn6geL5g9s5fMbPPCHIYMczG0VnpgemBIZJ4eyagcGoUv2HadgRe0XgTXWvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iFRnPDvJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JMrb03021576
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:54:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XcShWWRo4S23fgER/KylWBMkTNjMeFbimZyf7xwZHKU=; b=iFRnPDvJf7Ns1pah
	vuoBBsX5XlQaV58G0SQaZaudlkk96rrMaCUnYQ2aNRMk6yvDzGIp7VX7n13VhKPR
	dLr0c6QkMAvwgtIYLD82LEFR7ZpnNLAvT6m5zuklfKUnLYB3W9Qf+oXNKDmwSHvO
	piDOAZ0zLplDJPN9+PD0uAcaxai6aAwzJC0QN8fyCyIwqSXJftxbxXM+Vg22/Gqy
	55of4x153hYrdFeenxCQiqjxx0bvEn22NtmbFBXy27uLGzz9f9IepmOCtimpHhYJ
	vpETB560L3YYti6nV6eZSCle6qof8mTSzXQMcB0+HPF2o8CGq5fCzfjDHUCe3/BB
	nrxxEg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08w28vu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:54:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87c103b902dso18241626d6.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:54:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760961249; x=1761566049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XcShWWRo4S23fgER/KylWBMkTNjMeFbimZyf7xwZHKU=;
        b=s70hrdhr3z/qTwdgv4NS1AxegxECRzug80oQncyXPPVnIIg+h4c49VbqT3bnnU/BOn
         l1B/hJF83lyWF727kEWP34XF1fixyGam9wIvnybEFEe9fCZmcA/5j13AqVOjD4xyhIFZ
         nmIr/dFNx9asYKOYlgzls5SrE3CzmSOytKinxbMTI5lTffYA/w8Qkx+ftwcAXCM5fKwJ
         Pj2B73Jz6LLQekRcv1rpiQkG+uEo/uURiz4wcLz0/2R/6Qpucc2jlSPvoekQu0gxdads
         08hLF1b2x8sqAwlakY2ch3dpWxrg2g2XY7ePkgjzPFuv1Y0fFfsjPX6tXuzwzDA3PuIH
         MN5w==
X-Forwarded-Encrypted: i=1; AJvYcCVFCFfggnA0wE1nb352mO/jET7y1Ll37pcVt6krcj0FOKgONHbSW43O39PpDi0rrp18IiAWlc8SEzf4@vger.kernel.org
X-Gm-Message-State: AOJu0YxWHi4FBx+/B/++Wor/iF5+z98ylYm3Vnl4AxWkvQe6nUBpItOW
	mY2MRuzKaAKjJVO8CJWcGHmkT9U5KanwwQsV563hofkNLwDotEh4/S92Hevz+EJGMI49rKYVg7I
	rnKCJ2P4jeno5PHzyYrzKI6/42W5sPH1dtxRqEQOWzC5tXjV55SwnLomhM00PIcCs
X-Gm-Gg: ASbGncvY3lPnR43TKSi61IVB/G7ykEEMSRPQFIMgi0mvD5fhixnHh4Ysm/XCm5QCYJ0
	5bDPZuq09MCJdNG6r0kHt4z3QMWicXjfERfpMFwCbc4Hso0mTEtAUmUViJ/PA9j+MVZMwQrOUOu
	hw8cjaYuSWEv6WnuFTIVznutHekXbU7MJ6BZdTGhmeED3U8J9giOKxl/G79s4kM4nTWsLjpSY5i
	R1wbtoIRrpYNaWJz88aWAlaK/u4XfZ/mSRRW7Syc6glSoPoIsDNt1sFWr9PMzIInFUO9qFaB8ot
	Sa5PXod1AIAKBylM6ckrkLL5m5eaObKOid/pwV3YMGY/khreidyPl51Dh5O6+YACYpg/87igCsv
	FBWszXio4gr8vgFYsYepZMqmVJbFxGOhZ47DDXJ0ndhiwO3SBUAD3yDBv
X-Received: by 2002:a05:622a:118d:b0:4e8:b634:1a1d with SMTP id d75a77b69052e-4e8b6341e2fmr58090321cf.11.1760961249535;
        Mon, 20 Oct 2025 04:54:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrkoRTdssi+cLEdmRJ0a9TfppCSguJ/4ySe0r9bIdiNLEhlqFKb+7lyYFQTE9qy3WdUHwtVQ==
X-Received: by 2002:a05:622a:118d:b0:4e8:b634:1a1d with SMTP id d75a77b69052e-4e8b6341e2fmr58090071cf.11.1760961249059;
        Mon, 20 Oct 2025 04:54:09 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb0366casm784827966b.47.2025.10.20.04.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 04:54:08 -0700 (PDT)
Message-ID: <70ffe530-87a6-4045-a319-b7becb5831ac@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 13:54:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/24] arm64: dts: qcom: glymur-crd: Avoid RTC probe
 failure
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-17-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPdi0+c_FqinVA0gzoyqG6FVFp0jq5WSLsWWKiT12VVs3Q@mail.gmail.com>
 <CADhhZXaB310hVo_w8_CoJLQ3j9dy1eeTwbmk0q=vUV2ga1PAYA@mail.gmail.com>
 <8f81289d-7672-42e6-b841-6514607cdb38@oss.qualcomm.com>
 <20251013110407.dqpjdrdaw4gzpcy4@hu-kamalw-hyd.qualcomm.com>
 <49004d3e-7914-48ee-8705-ee86d1944166@oss.qualcomm.com>
 <20251014123658.sobt6ab6gnbafyme@hu-kamalw-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014123658.sobt6ab6gnbafyme@hu-kamalw-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: G6mpnzHhwO5Ev0676UEuqteBkQm2lWv0
X-Proofpoint-GUID: G6mpnzHhwO5Ev0676UEuqteBkQm2lWv0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfXwLk9IDA47xWX
 rGFQMQdTF5juDPOJpExLMuAcLsG7fsh3mUHmThV/4bW4mvbIvWiyI8okWt9wkv8jRWhXuWCFXfz
 N8TKKxAxzVrWCQZ+ijbESTki1D7Y+rflVqCqKQjHw654Iddlmxf9S/RCMjyFKZM/bxPCAncyvmO
 cWF0h0XtoA5e2K1c3rNyDLWhpx8elfkK6sfTBS3VcNcwY2Nc82EWd63Mks8FmMLmShowKCN+MXr
 7UscJ0nP6d9EhP88y9az3EplX9zdphC+l4S7H/CZAs53WyhMLaCdvH2l1+ZodjlGGACnWKmss6c
 6Q/rxr9+RDhEbprzbP0kCwifnZ3ZjvAkfbsZRtOUHJt8KQmpnlySQhBHYUMn8eGT4Bx292Zrlmo
 LX7KYgpwg1s7xPjiSgeIbfjKxRJBtA==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f622e2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=dw0t6H4-AAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-vGuBvw500s2EirlLaYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=wVJa4CU9-Z26yuRAZDil:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

On 10/14/25 2:36 PM, Kamal Wadhwa wrote:
> Hi Konrad, 
> 
> On Tue, Oct 14, 2025 at 12:23:23PM +0200, Konrad Dybcio wrote:
>> On 10/13/25 1:04 PM, Kamal Wadhwa wrote:
>>> On Mon, Oct 06, 2025 at 04:28:59PM +0200, Konrad Dybcio wrote:
>>>> On 10/1/25 2:23 PM, Kamal Wadhwa wrote:
>>>>> Hi Krzysztof,
>>>>>
>>>>> On Thu, Sep 25, 2025 at 1:41 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>>>
>>>>>> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
>>>>>> <pankaj.patil@oss.qualcomm.com> wrote:
>>>>>>>
>>>>>>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>>>>>>
>>>>>>> On Glymur boards, the RTC alarm interrupts are routed to SOCCP
>>>>>>> subsystems and are not available to APPS. This can cause the
>>>>>>> RTC probe failure as the RTC IRQ registration will fail in
>>>>>>> probe.
>>>>>>>
>>>>>>> Fix this issue by adding `no-alarm` property in the RTC DT
>>>>>>> node. This will skip the RTC alarm irq registration and
>>>>>>> the RTC probe will return success.
>>>>>>
>>>>>>
>>>>>> This is ridiculous. You just added glymur CRD and you claim now that
>>>>>> it's broken and you need to fix it. So just fix that commit!
>>>>>
>>>>> I'm afraid, but this is an actual limitation we have for Glymur
>>>>> (compared to Kaanapali).
>>>>> The RTC is part of the pmk8850.dtsi that is common between Kaanapali and
>>>>> Glymur. On Glymur (unlike Kaanapali) the APPS processor does *not* have the RTC
>>>>> IRQ permission for the RTC peripheral.
>>>>
>>>> This is interesting.. is that a physical limitation, or some sort of
>>>> a software security policy?
>>>
>>> This is mostly a limitation for all compute targets(like Glymur). On compute
>>> targets we need to support ACPI TAD feature[1] this feature uses the RTC alarm.
>>> In a nutshell, this feature implements 2 times - AC ( adaptor power) and
>>> DC (battery power) timers, and based on active power source(AC or DC?) at the
>>> time of timer expiry device will either go for a full bootup or stay in power
>>> down.
>>>
>>> This feature is implemented on a different subsystem (SoCCP subsystem), and
>>> since the SPMI `IRQ` permissions can only be assigned to only one subsystem,
>>> so we can't use the alarms on APPS. This is why we use no-alarms DT to register
>>> RTC device without alarm-irq support.
>>>
>>> [1] TAD specification - https://uefi.org/sites/default/files/resources/ACPI_5.pdf
>>> section 9.18
>>
>> Hm, is there maybe some sort of an interface to talk to the SoCCP
>> and set the RTC as we wish, from the OS?
> 
> Yes, the developement is almost done and we have done some testing as well, but
> that kernel driver needs some more cleanup and testing before posting to
> upstream. This will be added in future.

Thank you. Like Dmitry mentioned, please leave a comment about this

Konrad

