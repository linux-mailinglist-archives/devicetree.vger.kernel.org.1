Return-Path: <devicetree+bounces-127703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 288709E5F80
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 21:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACB8B188502A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 20:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760181BA89C;
	Thu,  5 Dec 2024 20:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kj3ZAhfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FFF1B219E
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 20:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733430886; cv=none; b=Gdqk0Ux2BPF7AM3Ydjv4B2dMbcZV/W4JBkFMYcE8MlsHmFZg4rKrOeJW/udV9Vg5QORj4m3L49YeKnxeItNSkeb83p22fMbWdBZmreZ3MtaDZpP949jPPdaeuszaLvP1dbV3m68mJQSfMc7Ll/f0GW7kYVx552DWifEVSvhJPOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733430886; c=relaxed/simple;
	bh=DmW8YyBsd44gbuNFXAETaq1mF9ya8lpLReo1PVWLKY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lXP2P8kOoMXEVCX3ABQSWjJgGP1tBPJ8kf0MN0OMCSnkWdfuxX8hddnycJ6sqhb/Td7yS9K3wDf8A7s3duS3hac9mD6c3IRf3N2Nz+wML+F6hSLwaKdI5WqRTxa6LJTgkY2VyQD9N793XBJJeLvceImQT/Gp95IfJdhw7BOdCpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kj3ZAhfy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HadAt005222
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 20:34:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lhonhl3f0KVfqrEwEvN9gKCp13rZK3mo8Db29qGWI2A=; b=kj3ZAhfypRzfgpnN
	KO6tCY6mxpbXS4AlC5hD/3RaSK0IAG7HsKrnchao5kIcbpzRzBqpj4klLk2G1Z1V
	K/Vwi96yx3kn2XDIUspq0JV2c2I7OqWlE+pQfGLyBq15Hb4IdeNgXUg8uowNaFLF
	I20MESd2g3Tv9I4VxlLEmEjT8fIbUm0906ArdIuKfCq139TCR1+PiTvlJ/46mwl5
	20R6y/HYP/LuAVda72wUAjyTVpJEvv/smrltTBPVW1/ladSC4smBxpfjAoWd2oKK
	Vqvci9tXGzb1IaETS444IWeuVer72hb67jUYXgfys9GeINVbCI3072B6G1Tcjy2c
	9ghHsw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ba141nvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 20:34:43 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4669114c62dso3511171cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 12:34:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733430882; x=1734035682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lhonhl3f0KVfqrEwEvN9gKCp13rZK3mo8Db29qGWI2A=;
        b=A0yT4KV6FMXBXCIL2RxkB9wZYjk13dQ8i/a94BlSAvl/LB5zGbhD5hjH4bxTsqBYKi
         q0nZeKVRvHFl8CKkqlnvbPm86WNvN2Pfk1Ak2cdndEcpA58uJ3FqJ3C+wyJ9Bul37dw8
         jKCpB3Rl2mcEzbX0mTfDvAtuEphmJCd8XQ0/dATUofrUU95HFsH9v0AJjYWETVkIWhY4
         wk5igRl6WiWXtIGkckb8r6x+CK0rnohm9yW9wXjMYDKu0u6yY26MtO/1G4GuK275IThi
         4j5d9UjVKwqHRNJggL/nQM87VfArxok21A32AKuX8lSSyn+bjtdCSWcwxkz8agZ3crKT
         LrxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv1L3Hcmwkzn4mhcp194heQsfKcn/tN3v1is2B4glxJvPYgnp8DSDg2JhKrVa7oOOb/cjCaor/BC9/@vger.kernel.org
X-Gm-Message-State: AOJu0YzWdp0MPdBcIBCY8e3QB16oLb/8JBw8RhYxb9aEV5PJyaNoJ/42
	YlZ+8Zi4AuRSMgu+moaVf9dVUGy/6SCBZZQ2fdk5v78FyMOZFzDy7iqfsD2r5vah2xMqJCnYRPR
	25VUyXVW97ZuJOeasHEMof48zLvYA9gAirhl65AP4OTHTy5c7dXV/k6/SFFx6
X-Gm-Gg: ASbGncstJS/26oKcyGvdY0U6Bi6rWNuNwPt1X8JtKuLAxLmnsyTml1CddGoXufy212n
	3I/LIQZWrWMuNMtmdIaL6H/PZvEmMKKPIIubrkp3jH+I45LzH4bz+NARNx4iT8oyua7FJf4tzJ2
	xqFiGwy5JGF0K5bYX6nzKKbKt+mu+bcSgPwgGbpO/X6tUhnrZ5sFM50vTIffsUDIitlGiCEES5d
	CRjSZVTew63O57LOX/dhmUTlbKNZJ41szTJF/unWxuEqw82eMcHfV+ddTYz5tLthKRjBK7yPBqv
	oAZTTXMrrYF8n+9312pw2MfHZI3HP4U=
X-Received: by 2002:a05:620a:45a4:b0:7a9:aa70:1cea with SMTP id af79cd13be357-7b6bcadba57mr36639785a.5.1733430882189;
        Thu, 05 Dec 2024 12:34:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFoQNFpq0a9qMSUr93HSZrZQJ/cvywQ6beoPoUJWV+eA6Tq4C/Pu7PVHFFrF0k1p0C00Rq2gw==
X-Received: by 2002:a05:620a:45a4:b0:7a9:aa70:1cea with SMTP id af79cd13be357-7b6bcadba57mr36637985a.5.1733430881826;
        Thu, 05 Dec 2024 12:34:41 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e5c5d4sm137138066b.7.2024.12.05.12.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 12:34:41 -0800 (PST)
Message-ID: <72add0ff-db2a-44f8-b4af-0b5fe5f65f20@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 21:34:38 +0100
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
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Sudeep Holla <sudeep.holla@arm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <CAPDyKFpGrw+vOs=-TxfChBeORjzkpaL_iVB08MtmaC4sFNKzcg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAPDyKFpGrw+vOs=-TxfChBeORjzkpaL_iVB08MtmaC4sFNKzcg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6R--wpL5iz07V4I_vNI4ZaT2KoGiDgjb
X-Proofpoint-ORIG-GUID: 6R--wpL5iz07V4I_vNI4ZaT2KoGiDgjb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 phishscore=0 clxscore=1015 mlxscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050153

On 14.11.2024 4:30 PM, Ulf Hansson wrote:
> On Mon, 28 Oct 2024 at 15:24, Konrad Dybcio <konradybcio@kernel.org> wrote:
>>
>> Certain firmwares expose exactly what PSCI_SYSTEM_SUSPEND does through
>> CPU_SUSPEND instead. Inform Linux about that.
>> Please see the commit messages for a more detailed explanation.
>>
>> This is effectively a more educated follow-up to [1].
>>
>> The ultimate goal is to stop making Linux think that certain states
>> only concern cores/clusters, and consequently setting
>> pm_set_suspend/resume_via_firmware(), so that client drivers (such as
>> NVMe, see related discussion over at [2]) can make informed decisions
>> about assuming the power state of the device they govern.
> 
> In my opinion, this is not really the correct way to do it. Using
> pm_set_suspend/resume_via_firmware() works fine for x86/ACPI, but not
> for PSCI like this. Let me elaborate. If the NVMe storage device is
> sharing the same power-rail as the CPU cluster, then yes we should use
> PSCI to control it. But is that really the case? If so, there are in
> principle two ways forward to deal with this correctly.
> 
> 1) If PSCI OSI mode is being used, the corresponding NVMe storage
> device should be hooked up to the CPU PM cluster domain via genpd and
> controlled as any other devices sharing the cluster-rail. In this way,
> genpd together with the cpuidle-psci-domain can decide whether it's
> okay to turn off the cluster. I believe this is the preferred way, but
> 2) would work fine too.
> 
> 2) If PSCI PC mode is being used, a separate channel/interface to the
> FW (like SCMI or rpmh in the QC case), should inform the FW whether
> NVMe needs the power to it. This information should then be taken into
> account by the PSCI FW when it decides what low-power-state to enter,
> which ultimately means whether the cluster-rail can be turned off or
> not.

This assumes PSCI only governs the CPU power rail. But what I'd
guesstimate is that in most implementations if system-level suspend is
there at all (no matter through which call), as per the spec, it at
least also projects onto the DDR power state (like in this i.mx
impl here [1]), or some uncore peripherals (like in Tegra's case with
some secure element being toggled at [2])

> Assuming PSCI OSI mode is used here. Then if 1) doesn't work for you,
> please elaborate on why, so we can help to make it work, as it should.

On Qualcomm platforms, RPMh is the central authority when it comes
to power governance, but by design, the CPUs must be off (and with a
specific magic cookie) for the RPMh hardware to consider powering off
very power hungry parts of the system, such as general i/o rails.

So again, PSCI must be fed a specific value for the rest of the hw
to react. The "S2RAM state" isn't really a cpuidle state, because
it doesn't differ from many shallower states as far as the cpu/cluster
are concerned. If that all isn't in place, the platform never actually
enters any "real" sleep state, other than "CPU and some controllable
IP blocks are runtime-suspended".

This effectively is very close to what ACPI+x86 do - there's a
co-processor/firmware that does a lot of things behind your back and
all you can do is *ask* it to change some handwavily-defined P/Cstate
that affects a huge chunk of silicon.

Konrad

[1] https://github.com/nxp-imx/imx-atf/blob/lf_v2.6/plat/imx/imx8m/imx8mp/imx8mp_lpa_psci.c#L474
[2] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/nvidia/tegra/soc/t210/plat_psci_handlers.c#L214


