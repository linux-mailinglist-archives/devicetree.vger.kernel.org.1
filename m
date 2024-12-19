Return-Path: <devicetree+bounces-132831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D469F8418
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:24:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36690168572
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A2F1A76CB;
	Thu, 19 Dec 2024 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FWgzBYxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894621A23A3
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734636233; cv=none; b=i/bZzkaScH60kqPdvqSUKfEeSrBR7/paoqtSjLome0+IVS77Itt9RMIN1Zx2QD2ZfSjFnAv1PdFr9hCu/eNKCs8EuEjw+skpcgF2JYaxul6ZPldeh6CNdF4akaZm2i2Xa2aYr6QJxf2sUcQAOXK8GnGajfTHrZOaiWDEW90kJvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734636233; c=relaxed/simple;
	bh=nNXw7c6zswaVsQyCI0bJK+h1nBx5470yLS/fQZ1qXEo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHVFIz2MhreIS/GJUPn5o+5E6MptEJjKPvUmq6gKVukyNzMZTSgl6Q+s5JH5b9vyRd/lJcKxscY5IjjyoAqlGAGJWcK5UpUp5+FaYE8HeUmNtQLIfim5a931LE1hG8oOS1W1p2HnoyYTfYcdVPJ1xxr7B/sejUMLXgR4xaXU740=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FWgzBYxR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJGIa6s005252
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:23:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6gocZlng0p/reM2Z0HZmLyZtSompFACzks2JqqAmCik=; b=FWgzBYxRtam4oByW
	bKWLBbGsOHieOnUPWxryGwXo1P9eOM/nUNg+f38E62VtVvOiNaL5+R4Q/0l/SJLS
	Vt5uCH5oSKAJy/+MDBflWEuB7wIrcvQMY7Ukj1jWcSciGfSi7/2ZyCpUi3MhM/mj
	3lTtbE36Zy2XsdvhAlJsvuhAL6URK3EjstGcLlsmm+2fHfpcZFjbvujZ9AX0QBzz
	TmC1JDWPEpNgsuhmYXbcy5FLzvjKLRTikHC8FKK6AKR43PxyJsaOHoQF8UA1ghOM
	S7GuCf1HYz38M98GxQV9DB7SZ0wnhyEGfQOft+YFVWaG7jqpiKhEyXXMwcqXmEYK
	SaL3Xw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mpw60f4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:23:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6e5c3a933so16607485a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:23:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734636229; x=1735241029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6gocZlng0p/reM2Z0HZmLyZtSompFACzks2JqqAmCik=;
        b=aXox+6VgWfT3f5SJs6rLrw7PY23KztqynsNwoEDN+mSUO6XqjNPuPXi3p9ewljDqAu
         l4Pg+cSHiSlsjpZtOg2LGdqOHCikT4GPUItfm/ayYJ0Lk6FhmpJbhINJzFaSxG2hXv+C
         tg/BrOPq2WxahAzLS/8YqCl2YQepzWOVDVTCXO5DxjWLFSQJ7Ox0P6rci9k7vF1F0Mnz
         JmY+StOBHGqk5nIan7dtLMiykKL7SVN+9vXOyRWm+XTUOQSPaCPge7bREdui7S5YqBeR
         8y2HxZqaVp/QxKYj7paE4JuP1FWfrGmXJ4pWfC0rKVkwZNOfp141bgn/O9DRULzrObCC
         YAIQ==
X-Forwarded-Encrypted: i=1; AJvYcCU13O//vBXAEkGqG3h11wFnUf1M5Oo5bFy74n7QpXAkUh8GO1KFnDwV587VPtCUyW5gcIR43d9tDrBv@vger.kernel.org
X-Gm-Message-State: AOJu0YxslF8Ua8j8L2gu3wNA6Ic5tykKs+G+z0919RmcEUFZGIJPgLvo
	k8u3Wo0EoIcgd87TT3ooWa/21yM9wpLoExfIESbikqKO6wEcdqGLSiwtzWmE7D/+KbvQ16XluuV
	mvPHQkgtKhjEd+7WWYh9O5olw4zpFpQwmKlGMwMvNbPGVuPjMihbAPx6+Jq8I
X-Gm-Gg: ASbGncs/RPflQkVTGlZ2DfdXSKezTzMIsyzvCummr+8KZMbObIsRZ/xfIHrs8J/hXbD
	IcKQTGIIQrpkuAxSNtEo4hmzemjkGtY8+Lye7FEU46dZB2YcF1BO78Muo8LoRnDomiyTtE+hhzd
	eGa2PifZg02piBhd9PoRAjIN08eJkKHrhNX26ac+HsAbzfOwyNBl8WWGgIfJAXQaSFFQmDX8D8P
	cbY3v5yC5ToKRKWLw6nOkZ3WqB6j5SaX7+69wnhDvfbpzIaJaRG1W4QwhVuLgiGYBzr9gbzAuTV
	+CbzQMGFs5WZtxhetqBzydCfgBVYLmANAKU=
X-Received: by 2002:a05:620a:4511:b0:7ac:b95b:7079 with SMTP id af79cd13be357-7b9ba7aae17mr4554685a.10.1734636229540;
        Thu, 19 Dec 2024 11:23:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM1BPlEJFAs9IGgICkS3iH2K9v9JTl8Ae4oc+exXVBSbnnU5Tx2jQefnOYgBTNxPPEtT3yjA==
X-Received: by 2002:a05:620a:4511:b0:7ac:b95b:7079 with SMTP id af79cd13be357-7b9ba7aae17mr4552285a.10.1734636229107;
        Thu, 19 Dec 2024 11:23:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f828sm95661466b.19.2024.12.19.11.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:23:48 -0800 (PST)
Message-ID: <761f93a0-5894-402c-b39a-ce9a65707a55@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 20:23:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] firmware/psci: Allow specifying an S2RAM state
 through CPU_SUSPEND
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-3-9fdd9a04b75c@oss.qualcomm.com>
 <ZzSiM6Pn6A9e1QUD@lpieralisi>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ZzSiM6Pn6A9e1QUD@lpieralisi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qJ7hL_sV-KTI_veBKNSwWAXXi_t-yfe8
X-Proofpoint-GUID: qJ7hL_sV-KTI_veBKNSwWAXXi_t-yfe8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190153

On 13.11.2024 1:57 PM, Lorenzo Pieralisi wrote:
> On Mon, Oct 28, 2024 at 03:22:59PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Certain firmware implementations (such as the ones found on Qualcomm
>> SoCs between roughly 2015 and 2023) expose an S3-like S2RAM state
>> through the CPU_SUSPEND call.
>>
>> This works exactly like SYSTEM_SUSPEND. The PSCI spec describes that
>> call as optional (and only introduced in PSCIv1.0), so not all
>> platforms expose it.
>>
>> Marking a DT-described "domain-idle-state" as such isn't currently
>> well accounted for in the PSCI idle topology infrastructure: the
>> cpuidle and genpd framework are deeply intertwined, and trying to
>> separate them would cause more havoc than good.
> 
> I don't understand what you mean here please elaborate.
> 
> The part of the story I understand is that you have a system (well,
> firmware for an extended set of systems) that does not implement
> SYSTEM_SUSPEND but can reach a S2R like system state through the
> CPU_SUSPEND call. Firmware works in OS-initiated mode, idle-states
> should allow you to define idle states that allow the system to
> enter the S2R state through CPUidle.
> 
> Please explain to me what's missing.
> 
>> Instead, allow the specifying of a single CPU_SUSPEND sleep param
>> under the /psci node that shall be treated exactly like SYSTEM_SUSPEND
>> from Linux's POV. As a bonus, this way we also don't have to fight
>> with the genpd idle governor to avoid taking the S3-like state into
>> consideration.
> 
> That's not acceptable. I want to understand what's preventing this
> system to enter that state through suspend2idle and the mainline code.

The answer to both is:

Linux doesn't get to know we're entering a S2RAM state and can't make
different decisions based on that, if said low power state is exposed
though cpuidle.

We e.g. can't expect all hardware to come back up functional after
entering such state.

Konrad

