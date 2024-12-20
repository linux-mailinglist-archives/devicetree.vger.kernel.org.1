Return-Path: <devicetree+bounces-133073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D59F9266
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 223C57A1180
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4493F215194;
	Fri, 20 Dec 2024 12:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YZj++l0e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980FA211498
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734698531; cv=none; b=akw/247SFxZt3X3MUpKNulKejoSW8M2afzt8h59wZMAHq9k+CC4va1YLHyGDnkNpTVMEcU6GwFvobk6ZrjERB1doGzUsO9z3Y07gyjW3NKT/PLJyeLr/amWZm5JyUh8KdFTZVN9uFyHWkliHtcecGWo7b603QyYMR4j4Y9SVxLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734698531; c=relaxed/simple;
	bh=HmJBze/GbJH3LXjYb9+l1wSXHcSv0ofPAX+2hh+sEwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RA+pCuov00dUv35EkIWLP+4keIHEHpqpt24/MRlz7K6RbihSRiHJPN1R3n3pEr+gMLqaOH42HQd1ZIheOWJbPSqoHbrcbBjDB1KbiGTg4A/1cFcoKqGwpHnHlpDAWVMT/vKFJmtMDWrw1nQlCIez7ISTBbePPpv2pq0ZFZrJAeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YZj++l0e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKBd6x0026228
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iB/a/gc86K3BsjbroIIz+CtH1X16E19brSWVHdGP1dw=; b=YZj++l0eyBB9rUE0
	wMa4E6/EPr9R7OMvgBhNI16/uGP2oy1C6UDJxWjna70DdUj4TvR7V+DZ8N4exDZZ
	09jGJdWfUHgG22INZyZ1Kx8WzfwjDf5vRjnBI9Ev7UOUip5WLs5p1SDimrs6nNrN
	ZsvsJaGys1OU/DYJLEyu2Fw0tpNTxbTluRZnqEphxiZMIYwkl5c+B71WzTHRyN8V
	71h+eeMTNxKY0hOCxZkKN9uTbKIhzChCXwZTGv/nGEQdrt5dgIsTTvLAbEwvGryf
	7NUOqUAynFfNagl2r5apXQr3zsLiODhPbWxCOYqcFcRxzLBTyrTC/wEcN0yonmyS
	zp4JzA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n7vg04r3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:42:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6fec2de27so45211285a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:42:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734698527; x=1735303327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iB/a/gc86K3BsjbroIIz+CtH1X16E19brSWVHdGP1dw=;
        b=IJLaDBLWS44kxiCkVyzcZ+YWlXc1MLfGQd4sP+L9oJDpJWu6Z9o9J2/sOV8FRa/wth
         yGeORClnZMLHQPS0E08JO3BqkmjJPyzy82hEtoU4Zhck08wbiDfMyhO5T1xNflrM1UTB
         b7O8j3YpT0RlHZmZMPj47z93fb2v9ikb4cEqPcSauEK/1kh0jtDv2gAzl5MAJwTVMK9t
         Khvrx5ThVawheyEO1vxbMK456Neh/Mau1SD5h9nXv/yf63GSG4kuhyQ1sCsFfAZWbsJp
         PbiUcPHQuNclFafV6wAPSz+Nf1keGg2oigGbbKjSU6Qfk/hi69idxr59QHeDbTrBHhxu
         CckA==
X-Forwarded-Encrypted: i=1; AJvYcCWX89jaew705wwadUj0ULEEoQLM0cYu0Qm4rB3T46bxycJOfoLy1KabMNJIgLY/EmM3gUcobl1eipcE@vger.kernel.org
X-Gm-Message-State: AOJu0YxreI4GsLoKFOr6YhxIM78ZS33GmoEM0SKa5PAYCHAWALLySI7b
	aXUh654Jy5BW+HJ7i2rXAuy8l3UTMOxAD6PLC4c8a/H7rNksxbcg6vd8lNWvMKNRkFmJIJ8h0UQ
	uW8xGkpwVbIWPRMC2vxRS21OFrzgmx/eAtT31guQUX0GyOCG+to5x7zJ0RUwX
X-Gm-Gg: ASbGncsW/n+bcndZDn9yibED6SrRJw4CCH2xLTd1kcb8hxyJ/L3Ov5+SFfHnL43amHp
	xNKXX8FlfGJGRAbPbDe9NcCsP/cQnauL2dB8SFb36IVOlhswmoCOWPmkAUE9inNoIE48onH/SJU
	+L7wF9GGKDOVPDmK/SoAGDwI7CioIHU+4bPMlV8v0iZHcqkE8bJfQZMAchbFOkefHcpZvSv3ppN
	xUUK98+AL0WZsJaL8mc4vOQKR8TYFMlXlPdtGAuXfiCRmsKYy6Oxrg1gyDVu665BbV9nGV4I2P5
	1ss9h5P3ZUDpTN68LCAECEYflGdDsNVfEOk=
X-Received: by 2002:ac8:5f0b:0:b0:46a:312a:54c1 with SMTP id d75a77b69052e-46a4a8b7fddmr18404061cf.3.1734698527661;
        Fri, 20 Dec 2024 04:42:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEI5i4/Tq3kmnb/29naeiMFtta6fn+qPtx1Dicaj7zfgUjyHxh3Byyw1oqQ93vAaJmKHk7iDw==
X-Received: by 2002:ac8:5f0b:0:b0:46a:312a:54c1 with SMTP id d75a77b69052e-46a4a8b7fddmr18403781cf.3.1734698527185;
        Fri, 20 Dec 2024 04:42:07 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedc68sm1774455a12.66.2024.12.20.04.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 04:42:06 -0800 (PST)
Message-ID: <765bb1c8-31de-4aec-b8ef-f141a3e25c56@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 13:42:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on pre-SYSTEM_SUSPEND
 PSCI impls
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Elliot Berman <quic_eberman@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
 <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
 <Z2VXgkJ4x5TJTKJ_@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z2VXgkJ4x5TJTKJ_@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bY1bFonkcYCF_5PE9p6bMEm7IsrhrPHW
X-Proofpoint-ORIG-GUID: bY1bFonkcYCF_5PE9p6bMEm7IsrhrPHW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200105

On 20.12.2024 12:39 PM, Sudeep Holla wrote:
> On Thu, Dec 19, 2024 at 08:26:51PM +0100, Konrad Dybcio wrote:
>> On 14.11.2024 2:10 AM, Elliot Berman wrote:
>>
>>> I'm not sure why you'd like to support s2ram. Is it *only* that you'd
>>> like to be able to set pm_set_supend/resume_via_firmware()? I hope this
>>> doesn't sound silly: what if you register a platform_s2idle_ops for the
>>> relevant SoCs which calls pm_set_suspend/resume_via_firwmare()?
>>
>> S2RAM is what you get after entering a certain state, but currently
>> it's presented as just another (s2idle) idle state.
>>
> 
> Just to be clear, I assume you mean CPU_SUSPEND idle state. There is
> no special or different s2idle idle states IIUC.

Yeah, right.

>> That means some hardware that may need to be reinitialized, isn't as
>> Linux has no clue it might have lost power.
>>
> 
> Interesting, so this means firmware doesn't automatically save and restore
> states yet exposes it as CPU_SUSPEND idle state.

Reading the spec, I'm pretty sure PSCI calls should only mess with the
power state of the cores, core-adjacent peripherals and GIC.

Reading section 5.20.1 (SYSTEM_SUSPEND / Intended use) I think it says
mostly what I'm trying to convey:


"In a typical implementation, the semantics are equivalent to a
CPU_SUSPEND to the deepest low-power state. However, it is possible that
an implementation might reserve a deeper state for SYSTEM_SUSPEND than
those used with CPU_SUSPEND."

- this is the situation on QC platforms, with the case of not reserving a
deeper state for SYSTEM_SUSPEND

>> One of such cases is the PCIe block, with storage drivers specifically
>> looking for pm_suspend_via_firmware, but that's unfortunately not the
>> whole list.
>>
> 
> Well I can now imagine and I understand what's wrong here. An idle state
> is exposed to OS with an expectation that OS saves and restores certain
> state. Unless you tie it some other power domains that theses devices
> share, it is hard for OS to know the state is being lost and it needs
> to save and restore them. It is simple wrong to assume that OS needs
> to take care of them even though the power domain hierarchy doesn't
> represent this dependency to enter such a state. cpuidle-psci-domain.c
> takes care of this IIUC. Ulf can provide details if you are interested.

The spec disagrees:

"Note that entering the system into S2 or S3 carries with it several
preconditions. For example, all devices in the system must be in a state
that is compatible with entry into the system state"

- this also happens to be relevant here, given PSCI is not supposed to
power-govern the entire SoC, but only the CPU block. We have specialty
hardware that does power management for non-CPU IPs, but to request
a system power rail disablement, it must be done in conjunction with the
CPU requesting such CPU_SUSPEND state. And only after the required hardware
is de-initialized.

Konrad

