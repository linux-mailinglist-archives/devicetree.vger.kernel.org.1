Return-Path: <devicetree+bounces-162298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1716AA77BD6
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:16:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 453493A70D9
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 13:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8D813BAF1;
	Tue,  1 Apr 2025 13:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SVFXMcvE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0BD2CCDB
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 13:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743513413; cv=none; b=LqBhXDYF9ss4urwZccYYNgmza3JBLGeCtseRnKKZ9OdMP5Z3fPJIrbf2aczz+ki0tiFKCisjG2gojXstYHqdP3kKiBtbpLsLw7B/f04EqGgEEOSVKEQA/2g1d/64XeQ8HbUeWLj81KzAa641LcbRxkuVntm2TQOc62ruRKTEqig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743513413; c=relaxed/simple;
	bh=bR6eGSj48GGt691R3aW9/Bp/2vQMUzQVg58j3Up0k+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OgaOlRLMWfS2NKCIuJ8yNXTesNN91QdBQ0rjxDl5QltJTBOvWzDQJbFnAt+OcgzLbKih1HBDuTam43ttvrOg0nmZIfIXQZh9ax6JWuu/c6+Fwcn7NUIXm2Zhpk6HmgihGYqgHy+C2s1TQ5jHzpnwFkTWeNrnCg3ofLNue4VS3eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SVFXMcvE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531Bj7Fo027578
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 13:16:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fuzrmKqRaLkRRC/h1dpp5sXVSR1oAWYfmSNhpfK/XSU=; b=SVFXMcvEbMAYFAu2
	USAXHx9sVTLiVs7WUgGRgFkpQLTq/KLv7zOJGtdg/B5DzcYjSla76gRVIsazPFAS
	sxxM/my+Bhx36IPv3TdVrThiRaXwDnyDLXbBuvDuy5w1LTSE7VIm0ohr01XKLFj4
	ixsdKy0si34iW5Ni6vvEeYRJp32vvlAiumA+BSTbILeVKYY1StFKu2zqlXn2Bv0c
	S9Sc7MdLrmbO2tS2KAceWfbSUOD84ndry2gaimkne62OARUEGs4IFrES4dp4QPEZ
	/Bnd0Z4cb95HbiqtGzrf09lhVc3gITC+9yADE/0+nymgW+1X5gqhpT1+yMs0N2Tl
	wLbpdw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p6jhra00-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 13:16:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c548e16909so516952585a.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 06:16:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743513409; x=1744118209;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fuzrmKqRaLkRRC/h1dpp5sXVSR1oAWYfmSNhpfK/XSU=;
        b=M24HoXCJnF5V+6/rXWpggjHJKYjPIvvKyMfPmI3DC7ZblRxv7i/41l7GVqEGzEjgwz
         ASkE4G7eGqeskPujL5VH77KECkSThA/9cLmAHDhjq8jkt5JGbBW+PMyHxF4MvDmJOiS9
         F0n1UgLjz18dhAhwtWW31GhTRx22qrSMM94O2PlZOBragpRBglJlWqJYvwtABzCexQC0
         ZO+Ar72GRpH5hWLC0QUt2cgefp4B+sa0KMMHOvBGLioSK8UpG5i6OCnbPUHM3nvjztfR
         j5AMGSz0czktovf06GSBW7jyukPAEBmMQ5jL8KARVpqRz4TbOSpv+2OrOzZNWHO3xiCa
         hAvA==
X-Forwarded-Encrypted: i=1; AJvYcCUbtxg6yzfTur5LEtrPLMq3YwhCOwJMt6NQzCVJa938mu/SQiCjeAqVQwjl89i/cQwSUUY6Ib2zIgVA@vger.kernel.org
X-Gm-Message-State: AOJu0YyDin/LHrLMhpYY5AeaDDlleIxHoyJlfKvawDQF8lrITMDr4EM3
	MEoznN24cK4Sw3E8U7mR8YeyUoxe+q0QD2r7z+UJTGuvLRfE/NI5SVlQ6B4KPMQT9WqZqt7yOwe
	SeHqfqUXxFKN5KMjeCH7s6cpXaex1d36NZ7itCVSEHdO0tCcIdc43cNDCCLTX
X-Gm-Gg: ASbGncuN02AJjGchtkROPvYg1vOiLfpu5iVLvEdRQnnNhENnSGgBGRdwOB+jcHtSrrl
	1o3jc+hY5MPkqK9B1zozPCHElBdlyYzPbIOznijY6fs/BBro+3ktZ5bk/rftZeT4QhO4oRV54Im
	ARNiYj7tK5av/dHfMq8kJmzbhwAW5lIZv+NZQgl1wvRuTvr61x68+FgWYGbiOL7+TjheRfmceC6
	665oO/PYRAwAXnbZoCl5Fk9PgUoMaPSva6bLr4sEAF3sq29rYF6j+OwVKVlLUtDnM75fBgq9kpA
	1zafUvrmC6HiwASdKJ3EPGvwewCuqFacspDubC12YM/Zbz9bjBV3LrT7Vz0BKGZkGCXb
X-Received: by 2002:a05:620a:1a03:b0:7c5:4738:8a11 with SMTP id af79cd13be357-7c69072e5dbmr1611153385a.27.1743513409235;
        Tue, 01 Apr 2025 06:16:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfs84UuVjPU56+3GGH4wwuZJwdAARKybIpYQNrPciwdKqQV0psmYSnmSCQba15CwNLS9OaPw==
X-Received: by 2002:a05:620a:1a03:b0:7c5:4738:8a11 with SMTP id af79cd13be357-7c69072e5dbmr1611149185a.27.1743513408865;
        Tue, 01 Apr 2025 06:16:48 -0700 (PDT)
Received: from [10.116.217.42] (146-207-246-94.sta.estpak.ee. [94.246.207.146])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb344sm1364786e87.37.2025.04.01.06.16.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 06:16:47 -0700 (PDT)
Message-ID: <9efea174-80db-4e5c-b0a9-4c5fbc7e166a@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 16:16:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 1/2] dt-bindings: mailbox: Document qcom,ipq5424-tmel
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        manivannan.sadhasivam@linaro.org, dmitry.baryshkov@linaro.org
References: <20250327181750.3733881-1-quic_srichara@quicinc.com>
 <20250327181750.3733881-2-quic_srichara@quicinc.com>
 <ru37oebencfqbepop6ka5i2fc64ifk4nnwqmb4o52nwccpplkp@b7xxxpp5snip>
 <479b9613-8244-4a29-9735-cec47e473946@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <479b9613-8244-4a29-9735-cec47e473946@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: P4xphrRgfu6BsGykyToXYJS1SayWRet9
X-Proofpoint-ORIG-GUID: P4xphrRgfu6BsGykyToXYJS1SayWRet9
X-Authority-Analysis: v=2.4 cv=bZZrUPPB c=1 sm=1 tr=0 ts=67ebe742 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=aVIEJrXLnI925Kw8RqJ2Kw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=0xp6LphHLZRkLrDefq0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_05,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 impostorscore=0 mlxlogscore=767 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010082

On 01/04/2025 14:26, Sricharan Ramabadhran wrote:
> 
> [Resending, since my previous response had some wrapping issue]
> 
>>> TMEL(Trust Management Engine Lite) subsystem provides different kinds of
>>
>> Trust whatever SubSystem (TMEL SS) ...
>>
>> different to what?
> 
> 
> To the ARM TrustZone firmware(TZ). So these services (secureboot,
> authentication etc) were provided by the TZ in some SOCs. Here,
> TMEL provides those. Can add those details here.

Yes, please (and all other answers too).

> 
>>
>>> services like secureboot, remote image authentication, key management,
>>> crypto, OEM provisioning etc.
>>>
>>> The QMP mailbox is the primary means of communication between TMEL SS 
>>> and
>>
>> What is QMP?
> Qualcomm Messaging Protocol
> 
>>
>>> other subsystem on the SoC. A dedicated pair of inbound and outbound
>>> mailboxes is implemented for each subsystem/external execution 
>>> environment
>>
>> Is it implemented in the driver? Is it provided by the hardware? By the
>> firmware?
>>
> TMEL firmware provides and processes the inbound requests and responds
> back on the outbound channel. Can mention this explicitly in the above.
> 
> Regards,
>   Sricharan


-- 
With best wishes
Dmitry

