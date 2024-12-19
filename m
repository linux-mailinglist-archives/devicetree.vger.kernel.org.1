Return-Path: <devicetree+bounces-132837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB509F847D
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5DE87A194B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CE21B394E;
	Thu, 19 Dec 2024 19:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LbzZoI6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1BF1AB6E2
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734637083; cv=none; b=aSobrLG2cIT2uyhGko7dC0k51hMzMjDY7J534Vj+ZzOKW600Aki36ZyklgpLCSP3wY9u6aNZmo5pxnxX/6goe8JD99WNNuYCEs/YfJsHZe24WTjCS914DwSW7vYRdnqQnqwx+KYhcnFhTLt9FML1IZyW8j9dVoCcLMer0GITIgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734637083; c=relaxed/simple;
	bh=u5QbWc4+NCgPlrAny5HG/9hHVWgWMqU25KCgZwaWutU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EKRTTdCFtOxLGey85wcqcUOdGbKhuj43NUtA6MHNgBbTFQicIotm1vYwUOJNjmsimfVC1uGJ3Vky6wO68njYHmSVOltoTbkXlI34CI6AckUnzNGJ5ZFR66cFa3mhHJDBLiCwxrRLjOUYsTqjgcmd18ztdYXSlJWwn2F5Id2zxp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LbzZoI6+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJE6Lnj015081
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HC9j4qn/FyLxEEbFjtOVAun4nFzq1O7REVlrQjx9BsI=; b=LbzZoI6+c5IoPcsK
	efvq37ZMWpDFitAeu5cWfUfS5hNJ0qkyZvDOPKpsZKULhcb31OQzZH4ZHyBQOD1i
	kwwdwFjcHv480sqErgmBKA4cBiFQXr39aV+IMef5upUznR1rNm+wWyyXvGtAPXQq
	rE3lHTvK17aGF4hw/7nFCQ8UhUQEwUGCAMqlPWN98iK8oVA4H3spHRo6X6Ik61NP
	9G3ivCiuGhrU1Dk+9K0VDE/ypczEdquU79edyRqOPQmssQt8baO51ax4cyJWihTp
	p2CaFuRQN1jeQV5LQoXWI2D5IRYykXdqSx5J38Symz+jFbY3NjIaVvlNMqIwgIQ5
	4Y/ORQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mmxvruqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:38:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a437e5feso2641071cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:38:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734637079; x=1735241879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HC9j4qn/FyLxEEbFjtOVAun4nFzq1O7REVlrQjx9BsI=;
        b=sEn/hsvW6W9vmqPVBf3rl5C6sHgpfKNSSRMrPR7VuVQDaXqyaL8F/5fkudwbwevOAX
         GonA3kZ89+uvHa4vvHfXghUeJJoQ1Ch4qS0Djeimbjjpb668lLK2tDG1uSKmHKltgXSp
         NerjhpnFOV7XQN0zaKWNdT/SjuF0Hg/XLXxYm9wMO0Vq2MgjbA7N4hyHC5heIsXnLcFy
         O29cY68DIbezXySMwfXckxm5DsEnLkjumPE4Rq9I970TXRmHqAmLI6ubQZLakAb6jc99
         5T7VmEMPb5V3kvYoZSQr4PlqvfU8w8j5yuAghmjnSe4ZDlfNoAQLr830aHSGJf3/v6yH
         wXSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNyT+5yIgYEboHyp8+ztyTVyJtsZwNxeA1XdEcTKU2IbQh2ap5sgSmU2hPv/Q9jUTX56/5sHsuFIQH@vger.kernel.org
X-Gm-Message-State: AOJu0YypHhntdyufTm3qO5oHvglVUuTUQk6Yq1rmjnu4bH3X00iWr4Cm
	Llg8Ue1Nxdec74MRnwf8sw/svLmDIhsi78A5YgGSGt371QYb06eUePO/bjLWvJc/U2+f6MC8URh
	piJcnsrwCVBKyfBwqZJuvhXlZmDgB7z/D0Qr7yyL8QA8PcAt0AzkNUEAEIrWc
X-Gm-Gg: ASbGncugjEOE7WeXsnaKuntqcB8NnXQhzO4Rjy47jr9Sd8AXQvILDYhQNKdsKa2JPMz
	wtaAue3gz0OX4J6melqRo580FGjMEk4yS2+MC09+Iw2Lub3jXKJe0dMD2cDrjakOZjZjyqLgae5
	UMFfBHvpJhChMqP1qKQ4ZvI6HewVYvyhI6ZZbA1ry7MUnhD9jB5CFJrZ/Ql1+6o8i/gi7HjfRdn
	SmBmrMXgmorh0PrgJZeD5+gaYjAQLmzjE5UDYvPyXjeT3BIBBmfZ+2zVY4S0JWCPJboe+diHK0I
	tbMoteHOq64VJ3H/48ErdlIgBjCLZHBmpck=
X-Received: by 2002:ac8:5dce:0:b0:466:8e17:cd1f with SMTP id d75a77b69052e-46a4a8bd2f0mr1692841cf.3.1734637079447;
        Thu, 19 Dec 2024 11:37:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6eZ1hPm9VshRpaWBtbzEdzv9YXH+aJGXnq0b2h5XRFijyIzlrz4xKKzK4e8BD9Eu369c+Jw==
X-Received: by 2002:ac8:5dce:0:b0:466:8e17:cd1f with SMTP id d75a77b69052e-46a4a8bd2f0mr1692571cf.3.1734637078871;
        Thu, 19 Dec 2024 11:37:58 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80676f074sm979025a12.25.2024.12.19.11.37.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:37:57 -0800 (PST)
Message-ID: <c970cf8d-a174-4c10-85ca-00f66056a621@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 20:37:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on pre-SYSTEM_SUSPEND
 PSCI impls
To: Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Maulik Shah <quic_mkshah@quicinc.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <CAPDyKFpGrw+vOs=-TxfChBeORjzkpaL_iVB08MtmaC4sFNKzcg@mail.gmail.com>
 <72add0ff-db2a-44f8-b4af-0b5fe5f65f20@oss.qualcomm.com>
 <CAPDyKFq5+HWmHK4E4ERx1rb8O4mubHGqRHP8AAiq2KyZyX1GSQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAPDyKFq5+HWmHK4E4ERx1rb8O4mubHGqRHP8AAiq2KyZyX1GSQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lQctRA_g-LEVCdsrTzmaaTbDA7186qwR
X-Proofpoint-GUID: lQctRA_g-LEVCdsrTzmaaTbDA7186qwR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 mlxscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412190156

On 6.12.2024 10:53 AM, Ulf Hansson wrote:
> + Maulik, Vincent
> 
> On Thu, 5 Dec 2024 at 21:34, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 14.11.2024 4:30 PM, Ulf Hansson wrote:
>>> On Mon, 28 Oct 2024 at 15:24, Konrad Dybcio <konradybcio@kernel.org> wrote:
>>>>
>>>> Certain firmwares expose exactly what PSCI_SYSTEM_SUSPEND does through
>>>> CPU_SUSPEND instead. Inform Linux about that.
>>>> Please see the commit messages for a more detailed explanation.
>>>>
>>>> This is effectively a more educated follow-up to [1].
>>>>
>>>> The ultimate goal is to stop making Linux think that certain states
>>>> only concern cores/clusters, and consequently setting
>>>> pm_set_suspend/resume_via_firmware(), so that client drivers (such as
>>>> NVMe, see related discussion over at [2]) can make informed decisions
>>>> about assuming the power state of the device they govern.
>>>
>>> In my opinion, this is not really the correct way to do it. Using
>>> pm_set_suspend/resume_via_firmware() works fine for x86/ACPI, but not
>>> for PSCI like this. Let me elaborate. If the NVMe storage device is
>>> sharing the same power-rail as the CPU cluster, then yes we should use
>>> PSCI to control it. But is that really the case? If so, there are in
>>> principle two ways forward to deal with this correctly.
>>>
>>> 1) If PSCI OSI mode is being used, the corresponding NVMe storage
>>> device should be hooked up to the CPU PM cluster domain via genpd and
>>> controlled as any other devices sharing the cluster-rail. In this way,
>>> genpd together with the cpuidle-psci-domain can decide whether it's
>>> okay to turn off the cluster. I believe this is the preferred way, but
>>> 2) would work fine too.
>>>
>>> 2) If PSCI PC mode is being used, a separate channel/interface to the
>>> FW (like SCMI or rpmh in the QC case), should inform the FW whether
>>> NVMe needs the power to it. This information should then be taken into
>>> account by the PSCI FW when it decides what low-power-state to enter,
>>> which ultimately means whether the cluster-rail can be turned off or
>>> not.
>>
>> This assumes PSCI only governs the CPU power rail. But what I'd
>> guesstimate is that in most implementations if system-level suspend is
>> there at all (no matter through which call), as per the spec, it at
>> least also projects onto the DDR power state (like in this i.mx
>> impl here [1]), or some uncore peripherals (like in Tegra's case with
>> some secure element being toggled at [2])
> 
> Right, I certainly understand the above. There are different parts of
> an SoC that may be sharing the same power-island as the CPUs.
> 
> The question here is whether the NVMe storage device is part of that
> power-island too on some QC SoCs?

Yes, but not exclusively (i.e. there can also be other voltage rails or
similar that may or may not be manged by Linux, depending on the SoC)

>>> Assuming PSCI OSI mode is used here. Then if 1) doesn't work for you,
>>> please elaborate on why, so we can help to make it work, as it should.
>>
>> On Qualcomm platforms, RPMh is the central authority when it comes
>> to power governance, but by design, the CPUs must be off (and with a
>> specific magic cookie) for the RPMh hardware to consider powering off
>> very power hungry parts of the system, such as general i/o rails.
> 
> Right, that is why the "qcom,rpmh-rsc" device in many cases belongs to
> the cluster-power-domain (for PSCI). This allows "qcom,rpmh-rsc" to
> control the "last-man" activities and prevent deeper PSCI states
> if/when necessary.

Problem is, today we only describe the RSC connected to the CPU cluster.
Newer SoCs have multiple RSCs, which long story short allow for certain
IP blocks to operate and have their power managed without the CPU block
being involved, or even online.

The CPU RSC can only reliably probe the CPU online status, as all other
IPs can be requested to stay powered from an external entity (e.g. a DSP,
secure world and similar), so the driver can only do its best to try and
prevent obviously-going-to-fail idle entries when CPUs are online.

>> So again, PSCI must be fed a specific value for the rest of the hw
>> to react. The "S2RAM state" isn't really a cpuidle state, because
>> it doesn't differ from many shallower states as far as the cpu/cluster
>> are concerned. If that all isn't in place, the platform never actually
>> enters any "real" sleep state, other than "CPU and some controllable
>> IP blocks are runtime-suspended".
> 
> We recently discussed this, offlist, with Maulik - and I think we need
> some more clarity around what is actually going on here.
> 
> In principle, it looks to me that using S2I with just another deeper
> idlestate specified (with another psci-suspend-parameter, representing
> a deeper state) should work fine, at least theoretically. Of course,
> we may not be able to use that idlestate during regular
> cpuidle/runtime but only during S2I, which we need to control in a
> smooth way and that is not currently supported (but can be fixed
> easily, I think).
> 
> In the end, it's the psci-suspend-parameter that is given to the PSCI
> FW that informs about what state we can enter.
> 
> That said, using S2I may not work without updating the PSCI FW, of
> course. For example, there may be FW limitations that require the
> boot-CPU( CPU0) to be the last one for these deeper low-power-states.
> Whether that is just a FW limitation or whether there are some
> additional HW constraints that enforce this, needs to be clarified.

Yeah, not being able to runtime-idle into that state is one issue,
and another one being successfully entering the S2RAM state may
require us to reinitialize some hardware. Currently, Linux has no
way of knowing that state is any different from the rest, but
marking it as S2RAM would allow to check for PM_SUSPEND_MEM vs
PM_SUSPEND_TO_IDLE

>> This effectively is very close to what ACPI+x86 do - there's a
>> co-processor/firmware that does a lot of things behind your back and
>> all you can do is *ask* it to change some handwavily-defined P/Cstate
>> that affects a huge chunk of silicon.
> 
> Yep, there are similarities.
> 
> However, ACPI is for generic device power management. PSCI requires
> something additional, such as ARM SCMI or QC's rpm/rsc interface.

Right, we're not yet fully there with "for_each_device(fw_shut_down())"

Konrad

> 
>>
>> Konrad
>>
>> [1] https://github.com/nxp-imx/imx-atf/blob/lf_v2.6/plat/imx/imx8m/imx8mp/imx8mp_lpa_psci.c#L474
>> [2] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/nvidia/tegra/soc/t210/plat_psci_handlers.c#L214
>>
> 
> Kind regards
> Uffe

