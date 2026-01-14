Return-Path: <devicetree+bounces-255045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F76D1F399
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A01F330C4C75
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DBE7272813;
	Wed, 14 Jan 2026 13:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XdwEtMvf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UmiR8MNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0622D266EE9
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768398483; cv=none; b=oMzZTKpljN1jErp3jPLxRXDFw7Djma/vkYWoj8M4Rw2kSQnobrFOiIOrwAkGfyq4xXpszAg7NN9KMfE6H66jIRHHE/nbHUv5iccsPmURBnDf3UVVnCkDtROqn2TB1BSpLeCQaVC1275i8bTCz1vJZa/ETVIShqWHTQUaNuqrRts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768398483; c=relaxed/simple;
	bh=OJnaGhQ3AXA6LbUhBRNtnwnP2GRPC5cLcKLMx3QXlKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MWXVu3LCs9WmuF1MV4EGaeTfkbY443plvcYyJaKpXrP8vewtuONcWY1GFJNTlJsM//ugHVCXuMM3G2/39Cz+DXw2ZNxZjHhUUkYXlWNCnakW1yYlndiN8zqmrldUSW0KmBiPpWd9D4JbAueNXz3lFHaiF9hShihBUQ5mAIJPkDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XdwEtMvf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UmiR8MNR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EA50rM2902783
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:48:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GnnsopietkT4fOXsECLe39qdZbiBMkIaHBNHn2AFNyw=; b=XdwEtMvfiY4Wr+F+
	sHnt9djyEFdSAz0XcauZ54JYliT6Kkmn9OQpQiFVOPNPUElUtZb26tLvHdmYc1KD
	VMBsaOPoXljnaRo+wl2w9ezWEr+c4cNGYMjm73R05v7gUmwD7epHVLkBvpORuZZo
	klGQPh973JpLALTPhFkID91eH1Um7K5lGS67xJnYCKsLVSWG2G4QfXlTga20w4WD
	O++UCRFQBP8C1DwgJFvCBDrdxoiahVDAIDyEDTdJ/4bZW7bk4PuT/D027IOL9xcD
	tT4cGSw3RrKSYcovdpsJQc6HRyGswhBnyZxLNtyYFCZcwMEa98sX5BAau9V2Y3t2
	t+eRUQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp931gq05-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:48:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e518fb75so128424185a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768398480; x=1769003280; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GnnsopietkT4fOXsECLe39qdZbiBMkIaHBNHn2AFNyw=;
        b=UmiR8MNR4YProYrLW3UXlZ592z1iFrwJrL6nrpaqN3A88zjWqAmrb9/3y7eIQhhKqq
         Qof7EwhwjV5jeDfOkg5m6qyJyHX/p49hnWaFh/VzzFrIiSZHnhRLDF9kkHvUg8vtBYx+
         ztwwAZmL4SF6+sgqZoFQNLXFhEqODIuKRRBf33AQCK404iB4/U30Gb9oiURDCFwyb8ym
         oBcSI5e/xN08MOvryeCweo/yeK639O7lh97uFPYkFsBawLZpuEfYbld5Fx4/fMvbYYC7
         YjlwlApw0qRyMECWsz1wnM4JRJwh2dyxCszz+o67dyQdInVVfOx9ug954feuA58gocJM
         pLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768398480; x=1769003280;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GnnsopietkT4fOXsECLe39qdZbiBMkIaHBNHn2AFNyw=;
        b=G+ktxmaMITYvVnGMKLRPz5QoTuYw+s2cGBvIppSgCG22yUxxphBHvvg3HGabxtkqxk
         O0OYo0DGut059XO0ivAbeEQ/QevuvmW4eTiVRNizzp9yn6NMCDGRE6jN/ThU3AS+ZOG0
         5T1xIdgzJt4/ikQ0si63Cnq6on1fW9FkP5ulsddfHoF0r3yxJ6UeOReepxYKmCAT2pEQ
         zEwpaReIyRhgtiecnACRswP7JVw/SOHvppmKoqY9mlXqs56HNujTKV1x511ZhwOma+Xr
         K1TiM+g5oGBz1N6R4LvqTmxZTAOPWKshu12vnWLbVyqcRebKmlT4oVQI3v9PRS/YYqnS
         ymVw==
X-Forwarded-Encrypted: i=1; AJvYcCWyBI8R/7h/Pem2muRUftVnv+XmLO0VaoWwux3UC66Kv0ABGjOYD8RLTpWhY2JD4vfmQoD0N0VdP3us@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1Pamvaq3apJEGcfQzw7aO65616cbTGawpWK7b84CF1rJf75Px
	krNcrHDr+iLkuo/he8wMqh+QnZSPL8fq5qWPsnLgi8mu+NOxz3AlZvmwGPcQKz2kN8sZLEwsDJp
	qkMyA5FK+DxE62QzP3fMKc1zH6ivXSFQygLi9An28EeQBKjhPYX2tV/1e9uUQwtiK
X-Gm-Gg: AY/fxX4HfKiu4SWmV6+4hlBi5oKn9qxyZSJSXWgx+0C6Sndrz1tU4FtuZE1xTD+lyWL
	+Sch2ml+PCUTeKTlCOyhQZ2nlnhbOaTKYbHvvg7pkOTBfgJ1ONEvxYF7zlle2Viyl/sNSHYeHVr
	IZo7VfzcoGgmVENmWldgXDdS8evDB7OOaE6J2MW9iNZtGeA+wYKWvBjw8Toh3LdfEpfbyWHTVy/
	WCcZbjo0NRiI5t1CsjOcPw5umydf3Y8sk5+3wWoeZJc4bQpPFVfFmcdsghzEHkHLGHMtiAJ/fXf
	2SSiVz712o77QwGKdv+2FqAa5/Stfe2L+SJb28P2Fnts/TFGruJBJ5NBrT2EFPmTBHTZ/IxV70k
	zC92AdWpP/JGmsKJGrOqb9Y5IXKCUjV7VjLRfeNeqNg3oeFSYv6WOJBbQSH9RAto7e0Y=
X-Received: by 2002:a05:620a:410d:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c52fbdaadfmr295396685a.6.1768398480109;
        Wed, 14 Jan 2026 05:48:00 -0800 (PST)
X-Received: by 2002:a05:620a:410d:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c52fbdaadfmr295392385a.6.1768398479581;
        Wed, 14 Jan 2026 05:47:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86fc303d7esm1399217166b.2.2026.01.14.05.47.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 05:47:59 -0800 (PST)
Message-ID: <5cd1f4f5-808d-46cf-a44a-ee5428987727@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 14:47:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
 <20260112-upstream_v3_glymur_introduction-v4-3-8a0366210e02@oss.qualcomm.com>
 <h5psb3hw7wqdrqpok6facoefptdfd2qw2ojymk6k64d77a5ie5@iwy2nxmu6l6b>
 <ad105956-3192-4559-9d53-3b526f2fa361@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ad105956-3192-4559-9d53-3b526f2fa361@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BOW+bVQG c=1 sm=1 tr=0 ts=69679e91 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=5tyqGv89VatObklNbhcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Uj_jE6ZIgDpj2Glas8wTPYsZCJTAPaxW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDExNSBTYWx0ZWRfX9bqVacJwKzXZ
 8GyVbQ47cZgTsOaYgVwNAoUTrIGOcxEYueyooymmDRXmfL7IHFKEuyvyy8TiVDMFOX++ZEIUpX8
 MNPiZzt05bj/daXzIWhi9KCRDqRGkRiOrWCmI670b8l4m09KGc/QLgKJt5791Qq/wPnJGSsbZCC
 S0Wh7UgWyo4JN9n0gG0zf+esSwdVToMFehfPKo02YmGXZ/0V+PdVxGKVzXwMrSTwBvWfTjOVq3h
 GjcfgcOFcgZm7fJZ+PRM/0kNPudOBdIXDjNgR7yTjzruO5Z5LPV301GwXyCAkuVR3jiMorJc+W/
 aKTWIAMdSIwfnYqPBECbKDwQeOkwT4Gg4Z99oNR74QT9ojQvDPjzvIPOiCgHYy3F8yzPhXpL0p2
 yYOfHVfTbMM76YqACGBVEYF6maFE1Ssf09C+dd3EKHUlB847msASkXU935aZIZJ08o1nn3Eqo7z
 u+NHHxACjJ13O0DYvzw==
X-Proofpoint-GUID: Uj_jE6ZIgDpj2Glas8wTPYsZCJTAPaxW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140115

On 1/14/26 11:29 AM, Pankaj Patil wrote:
> On 1/14/2026 9:47 AM, Bjorn Andersson wrote:
>> On Mon, Jan 12, 2026 at 05:52:36PM +0530, Pankaj Patil wrote:
>>> Introduce the base device tree support for Glymur – Qualcomm's
>>> next-generation compute SoC. The new glymur.dtsi describes the core SoC
>>> components, including:
>>>
>>> - CPUs and CPU topology
>>> - Interrupt controller and TLMM
>>> - GCC,DISPCC and RPMHCC clock controllers
>>> - Reserved memory and interconnects
>>> - APPS and PCIe SMMU and firmware SCM
>>> - Watchdog, RPMHPD, APPS RSC and SRAM
>>> - PSCI and PMU nodes
>>> - QUPv3 serial engines
>>> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
>>> - PDP0 mailbox, IPCC and AOSS
>>> - Display clock controller
>>> - SPMI PMIC arbiter with SPMI0/1/2 buses
>>> - SMP2P nodes
>>> - TSENS and thermal zones (8 instances, 92 sensors)
>>>
>>> Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
>>> PMH0110 along with temp-alarm and GPIO nodes needed on Glymur
>>>
>>> Enabled PCIe controllers and associated PHY to support boot to
>>> shell with nvme storage,
>>> List of PCIe instances enabled:
>>>
>>> - PCIe3b
>>> - PCIe4
>>> - PCIe5
>>> - PCIe6
>>>
>>
>> Why didn't you run "make qcom/glymur-crd.dtb CHECK_DTBS=1" before
>> sending patches to the mailing list?!
>>
>> It would taken you 30 seconds to conclude that I can't do anything with
>> these patches.
>>
>> Regards,
>> Bjorn
> 
> I've ran the bindings check, dt-bindings specified as dependencies will fix the errors
> Additionally, I'll drop qup-memory from interconnects for serial and spi in next rev,
> which cause the bindings errors, this was missed

The SPI flavor of QUPs is definitely DMA-capable and I don't see how it
could error out with the current bindings definition

Konrad

