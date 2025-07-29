Return-Path: <devicetree+bounces-200491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7E3B14ED0
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 15:54:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8766543A8B
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 13:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41661B9831;
	Tue, 29 Jul 2025 13:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f8uyGyDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBEC1A238A
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753797232; cv=none; b=QpnxYy+Ytx8hc1VbxkLJ3P9QfEWPxtAgQ39mX/0HnfMkCIfllRnV0jc4fvO3ce82ipk06w65xFfLm4Q1lqwEI4B6PY6yeLDv/vuggMMxlGqLrDNLQacjnL4Io8wKQ0BiUJXps08Ej5LvjzLA9egHhbSYeQknUJu4REoiEQV6X6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753797232; c=relaxed/simple;
	bh=7KGd7j82dDK+ybam3fPzsTNJLqBsuymq0GgV9H6+e4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r17kTa2mvFeJ1jCq7LPTZRfJAUWR0e+Awa/0py7Q0zSBah/2+amsM0LeeSa3Al4yyi8vALHykvv9+D0d1YwuViRFqtol5nwFFwrGrxKNyX13cvJOgt48MlHgZvFHhYS4HltuMNkMFjTMbvP8bathJSH8ilnHuRO842mJK9knY60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f8uyGyDb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T8QWbO031254
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:53:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uIz2sC5rEvjeL5lDn/RzFAavsZ2n0Q13ZJnx4oJFPBI=; b=f8uyGyDbhemwKOn8
	iFRaSRVt3n5zuPyusne6/n6UyImffomcNSmo7wRFQ8O+DHCdGM+s56Tybz2Yd5nt
	fXI/5YpxUJow8wXke+xRfygm4WEsrJC6wGzoEKdJ2svj1QOsoyXNbjoAw7ZpbGUs
	+psQp2QXMj0Ip7Txngg0jOc0jlN3NOTUcmCoh6qVlSdjgFMVWQ+ebEqvGRilmTci
	5jijlFQKSrlhVHEyBGHXV7ccxUA3odPaj23e+8nu4bVduvmWNqiUdlbu+4FZ2wT2
	Y2EQizrsFzP5FgrtW4JDMCwg7J9Vm13eR+ojDCuIE5DrKIJRan5oR6qGJv3qN1ix
	HZdDrA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xdpr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:53:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e34ba64a9fso29117785a.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 06:53:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753797229; x=1754402029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uIz2sC5rEvjeL5lDn/RzFAavsZ2n0Q13ZJnx4oJFPBI=;
        b=DdpvDJxxQQReC1jzdfW3bUWEaJBB594eZVYhEWLhBEmuHkjKADrSYG1931tXPEPsmJ
         0/D2lM7lzI5etEv4P3TbztNyl0POOvZzToOX1CFscvUpcGFgmEjwGIY0dkB7/mwFtRv7
         xEPGY7Qb15gfbKJdq5fEhWzMVywNxeMrNiARe3FzKnaF8IrZs67AgfrYXFmUV1g9UsYT
         vf27OKbsH0JKJEJs3JzwjnJP9Ss+SNuk5VN2qvOD1of4rHTf8OoZR+w+z+Wq+YgA1Wy4
         Yvlg+j+Ep6YDaIFCTZ0aIDgpSjcYV++lu/7ANbqFk5RJmNwX/ITWruqUNgheGhJ8o5Z5
         UQpw==
X-Forwarded-Encrypted: i=1; AJvYcCWJLztPxwcglDtoCiO3Ez+kI6DlvyEiN7hVAxnWjnWdaWNJ8bDl5IPwcASxJzCj9ZW9sxjQCu2VibJa@vger.kernel.org
X-Gm-Message-State: AOJu0YzmAHcXg3ttQOMO5XI7i7KezTe2zcyB2Dz9SWu+3KX0Yw+nfHo8
	oAJe2sugJNN21uaCYGvfvs8C40UwLx+0YB3zKjZhpdMvwJBP0QwCxHYpV0cafSWVgKZaCvGE39s
	A3b1Z/8PDEYvIRp6H0/jVTVUu3Q0uPRfQ8gjg3eZAjQ/um9D63jU1oyDSI479uXJb
X-Gm-Gg: ASbGncsV0ILUc9x5PMS0UuCgYBcjgClr4i/0qyFnYvuvAUYklLBy4OEmTXEtQBKY9CR
	+3rgpzMVL2DvCGCwl9b3SuTIx5qgLl3WxiJDhw1//5OsBjOmpMSX1QEPPb2I1zxWoy/IAhS3gnj
	zR/oBNEYW4k3kXAYpCWHIVdzuhU6noiJpmfI/VgICKM+2PqWE8KkbO3/l2bBilAUcEnfeQly5+C
	xzdGN2mwbXxDD4yv9yLEYoDnxuYqnE0EdZ1le0otauCSIFsshMpWMp7cMfoIMM4CfNspSwjPaG9
	gfykxHJI79FTn6UZu0y2/jCooynOpA2W0tR1dZwjcGu/b1mSQFM9r7usn7ck2mGSVaL5V6cv5DY
	tIeml7VxOX1i428h5Ew==
X-Received: by 2002:a05:620a:4502:b0:7e3:2e02:4849 with SMTP id af79cd13be357-7e66d73f600mr4095485a.9.1753797228623;
        Tue, 29 Jul 2025 06:53:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2rZ50HIoP3F9/NtATSvU3RTcoTLz7GUYh9uMTOF98nuj610nPOwpQK2hdrfHtttMfHeiLQw==
X-Received: by 2002:a05:620a:4502:b0:7e3:2e02:4849 with SMTP id af79cd13be357-7e66d73f600mr4093185a.9.1753797228016;
        Tue, 29 Jul 2025 06:53:48 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6156591fe7bsm1187250a12.51.2025.07.29.06.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 06:53:47 -0700 (PDT)
Message-ID: <c67d7d8c-ae39-420f-b48b-d7454deb1fc9@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 15:53:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/10] dt-bindings: clock: ipq9574: Rename NSS CC
 source clocks to drop rate
To: Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Georgi Djakov <djakov@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250710-qcom_ipq5424_nsscc-v3-0-f149dc461212@quicinc.com>
 <20250710-qcom_ipq5424_nsscc-v3-5-f149dc461212@quicinc.com>
 <20250710225412.GA25762-robh@kernel.org>
 <93082ccd-40d2-4a6b-a526-c118c1730a45@oss.qualcomm.com>
 <2f37c7e7-b07b-47c7-904b-5756c4cf5887@quicinc.com>
 <a383041e-7b70-4ffd-ae15-2412b2f83770@oss.qualcomm.com>
 <830f3989-d1ac-4b7c-8888-397452fe0abe@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <830f3989-d1ac-4b7c-8888-397452fe0abe@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDEwNyBTYWx0ZWRfX8IKUfxGqksIO
 O6mUjjA44TRfD+UP/tnmthBRxRf58pRin7u34iu5BBiLuPcpF9YIPDkygbRv2d/B27+AluG4LCr
 Q60STH+cux8r59jMgdA6KFmvAk5GBrAltyASBfeP2CLAt6VAHxIfGf7t9C4apUXXnaCNezFLtBO
 rqYyo4syuXlLWoUP15yBCPIMHUxdhGISxg38vTEpjzIE5Ui2OP90oeBI//Kp51a+T8fWAWN/fpD
 t72DLSg9RC47q9Z3B2hhXHEs3SEEO956DF19saHpL6uutEyo7nvp6sbgCHHvpreMdc/D6vUBq0W
 PJJpSm1z5V3TCLu3GGUYmGZgseFploxs+io0ssflCAcBuyykxv1dYiR0WKuKsVCDxlAOtGl28Bb
 vXK/STP8pzCjw8LCB6xK/LelwKG7YD1xYAQRJjZX5OuSSPZYNAWeBWSBjnrZUbpDRQrubUwh
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=6888d26e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=RShGOoz45MAMUC7vXQcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: gP4vOxPpMc7IKObvcGuNRkmC2xYWtteF
X-Proofpoint-GUID: gP4vOxPpMc7IKObvcGuNRkmC2xYWtteF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290107

On 7/18/25 5:51 PM, Luo Jie wrote:
> 
> 
> On 7/18/2025 5:28 PM, Konrad Dybcio wrote:
>> On 7/18/25 11:12 AM, Luo Jie wrote:
>>>
>>>
>>> On 7/11/2025 8:15 PM, Konrad Dybcio wrote:
>>>> On 7/11/25 12:54 AM, Rob Herring wrote:
>>>>> On Thu, Jul 10, 2025 at 08:28:13PM +0800, Luo Jie wrote:
>>>>>> Drop the clock rate suffix from the NSS Clock Controller clock names for
>>>>>> PPE and NSS clocks. A generic name allows for easier extension of support
>>>>>> to additional SoCs that utilize same hardware design.
>>>>>
>>>>> This is an ABI change. You must state that here and provide a reason the
>>>>> change is okay (assuming it is). Otherwise, you are stuck with the name
>>>>> even if not optimal.
>>>>
>>>> The reason here seems to be simplifying the YAML.. which is not a good
>>>> reason really..
>>>>
>>>> I would instead suggest keeping the clocks list as-is for ipq9574 (this
>>>> existing case), whereas improving it for any new additions
>>>>
>>>> Konrad
>>>
>>> Thanks Rob and Konrad for the comments.
>>>
>>> "nss_1200" and "nss" refer to the same clock pin on different SoC.
>>> As per Krzystof's previous comment on V2, including the frequency
>>> as a suffix in the clock name is not required, since only the
>>> frequencies vary across different IPQ SoCs, while the source clock
>>> pins for 'PPE' and 'NSS' clocks are the same. Hence this ABI change
>>> was deemed necessary.
>>>
>>> By removing the frequency suffix, the device tree bindings becomes
>>> more flexible and easier to extend for supporting new hardware
>>> variants in the future.
>>>
>>> Impact due to this ABI change: The NSS clock controller node is only
>>> enabled for the IPQ9574 DTS. In this patch series, the corresponding
>>> DTS changes for IPQ9574 are also included to align with this ABI
>>> change.
>>
>> The point of an ABI is to keep exposing the same interface without
>> any change requirements, i.e. if a customer ships the DT from
>> torvalds/master in firmware and is not willing to update it, they
>> can no longer update the kernel without a workaround.
>>
>>> Please let me know if further clarification or adjustments are needed.
>>
>> What we're asking for is that you don't alter the name on the
>> existing platform, but use a no-suffix version for the ones you
>> introduce going forward
>>
>> i.e. (pseudo-YAML)
>>
>> if:
>>    properties:
>>      compatible:
>>        - const: qcom,ipq9574-nsscc
>> then:
>>    properties:
>>      clock-names:
>>        items:
>>          - clockname_1200
>> else:
>>    properties:
>>      clock-names:
>>        items:
>>          - clockname # no suffix
>>
>> Konrad
> 
> We had adopted this proposal in version 2 previously, but as noted in
> the discussion linked below, Krzysztof had suggested to avoid using the
> clock rate in the clock names when defining the constraints for them.
> However I do agree that we should keep the interface for IPQ9574
> unchanged and instead use a generic clock name to support the newer
> SoCs.
> 
> https://lore.kernel.org/all/20250701-optimistic-esoteric-swallow-d93fc6@krzk-bin/
> 
> Request Krzysztof to provide his comments as well, on whether we can
> follow your suggested approach to avoid breaking ABI for IPQ9574.

Krzysztof, should the bindings be improved-through-breaking, or should
there simply be a new YAML with un-suffixed entries, where new platforms
would be added down the line?

Konrad

