Return-Path: <devicetree+bounces-186379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3896ADB885
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 20:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9E563B3A91
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 18:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A843728980A;
	Mon, 16 Jun 2025 18:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GFCYGbzo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E58286D69
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 18:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750097291; cv=none; b=jqLCbFuA5URju6QXG0w6AHuuvoAC6P0wp18VFDJbSP/CjfQ+VGLPNR6U8VzpNdgV7DCUzjd8AJLZIZFqGexYlhtyJw1+pghwoLeMMi7elDBmWJqkaoVUPI82ehYEMZphC4QW75zTmY9tyOvoZpO5pt0CglsOD0PNxU/aP/u4WvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750097291; c=relaxed/simple;
	bh=40Pdi6ft+usWK3MhK+AiH73KsRq0ZaqgfM+1c54RgBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lfw6hK5XSm37DpvfjgpaL12DMoJJRhOXDRoTDugUVaKiD/Q/Ah1K5zlwUn2o7P7HO0QBlTMam21BXKOw28FyYUG/LaKmcjx1ejtsaEXdyRxr8CAGcno1pCyidlcNUlORZITlkA8sHKoJCCRuNAPiVpJRqSLK2Hy9Wq+pE5oR0yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GFCYGbzo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55GH3FKw020826
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 18:08:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5P3OJPWWK/eACSXhWhO+72qcM502Hj+4pvlf7UjgIcs=; b=GFCYGbzoLDDU8zEz
	zEi9lYNQ1WanyeXzFb+LLpCrOhj9EceuuRoGr5FkxyLnp70J/Ucedxp6YSDoW9go
	r2OSHZRoN5ZYX/Dzxf+aYZfSQhKCrWRL9YhPRGckqgUHI+1UhTUQRx6mKynOoio2
	RHn1741qG9846QDkqUjp2u11rJvsAus6fYzeidApFQigeNbB0mHiM8q+xCFqtmdP
	gY2fSvlug4jtXxF9SFs5FzGuLwxOovyh0XKdxE+GYPHtd8DxMRKORHvv0HxpGl4E
	NThAbusKOjUPQOXTDZ66XUxisZNEPKESjkVjD8XWBHmOHWyWZn2SYLwdx+fdbMzR
	Lih9Aw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h95g64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 18:08:08 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-311f4f2e6baso4736900a91.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:08:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750097287; x=1750702087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5P3OJPWWK/eACSXhWhO+72qcM502Hj+4pvlf7UjgIcs=;
        b=NveO0apoa/mL/kAKV30LQOgHayJ6x52kZ21RF01BwkYE5OgbtgFaYtd2kZVM9PcKA9
         YLf1wjZK5pR7Rl8i9caG2Ir5SMwlmMU6gHVLq3+l+D4RCzr8DVMG8qaWNjCAdTKFCeIV
         T6I8ajVLMQF952fWU4ezaivp88OLCYx2XB1Q+y0dyY8CNN8LmorV82NeY9knccKfvfK+
         9GtApNxN4mEn88qVws2dsrpdY5g7+1SbXPZNrILW+LUUUkeyHXhafkmxFEmaZN8PM5XH
         n0FK7XrbbAhWz1ridp+fOBU7LHELoa7vdXaVWiK0vjFLB8wOKEvQYgunsIfhYAD5x+NX
         IQ+A==
X-Forwarded-Encrypted: i=1; AJvYcCVpkbjOn6HCrFoiboKQ+bua3pUeLLm2qE5Ql+7FpVwnPlVBSrSlQBSlgTh282BNUEZb1qWqFebQydzE@vger.kernel.org
X-Gm-Message-State: AOJu0YytXDVHkSdagTrCiI0WtmaXQBizjMF3LND5iTFLhGobHqCa003w
	zkxZXjxHsdPkzRyWZZHoz+XB7Kr9H1ekvViG+7cqtI4+70nSuoz1ZBmUpx5RyAOybzr+bcd4D9z
	ggF7/vH2WwWdaiVR19FUvhDwbpxzNR4uEWKMIDXhZupg/N2UEp77GIiKaRBCwkt64
X-Gm-Gg: ASbGncs5o6Ru4xDmpHDM7bWMFSkYuSYzOqPzirzPPW4zjbcZCnc32BXeaTEzlIugP+z
	8X/c7i8CSJOgAtUUs5EPay85doB3Lq4pK2sZfEkTiIRZM1Kx5BSrSrfB+UOgpHoA2xY7rxqTquW
	0J+yS+wzB7kWiubCSPA1w8L3ptk5gV9hGaKl2NPI8TNsCQP6bjwVar8sluhzk7QQUnHfAqI12JW
	NI4ItWB87XfGClm6vi5zl9zzCi/PjxVfCx4OtOHI8vPpRHtj6ZU67SQIOCGqZX/2DMkbIPcu5A5
	rMr5/++EsNqx0LPrzTjii+74VSPMnSCSQOYn7B1u+uKxPartM/gbb733u+MUMl0S
X-Received: by 2002:a17:90b:528f:b0:312:2bb:aa89 with SMTP id 98e67ed59e1d1-313f1d50e08mr14807666a91.20.1750097287068;
        Mon, 16 Jun 2025 11:08:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5xe+5gKXULEPyAiTbu6WxhTiAVcnqfginomJSMt1/TlYTo89ZZKCN390FUIak6t4p8BnjBg==
X-Received: by 2002:a17:90b:528f:b0:312:2bb:aa89 with SMTP id 98e67ed59e1d1-313f1d50e08mr14807622a91.20.1750097286565;
        Mon, 16 Jun 2025 11:08:06 -0700 (PDT)
Received: from [10.73.112.69] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365deb23e9sm64211205ad.187.2025.06.16.11.08.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 11:08:05 -0700 (PDT)
Message-ID: <20a4c01e-d2be-4846-abc6-b2d477975249@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 11:08:04 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add Qualcomm SA8255p based firmware managed PCIe
 root complex
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-pci@vger.kernel.org, lpieralisi@kernel.org, kw@linux.com,
        robh@kernel.org, bhelgaas@google.com, andersson@kernel.org,
        manivannan.sadhasivam@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_ramkri@quicinc.com,
        quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com,
        quic_nitegupt@quicinc.com
References: <20250522001425.1506240-1-mayank.rana@oss.qualcomm.com>
 <584d217a-e8df-4dbe-ad70-2c69597a0545@oss.qualcomm.com>
 <683bc42f-2810-4d8f-8712-80f933c4b8ad@oss.qualcomm.com>
 <4yscxqds72lsrdld7tadnlcuk7q6hir3t6mwliu35aljn34veb@hme5q4dpind7>
Content-Language: en-US
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
In-Reply-To: <4yscxqds72lsrdld7tadnlcuk7q6hir3t6mwliu35aljn34veb@hme5q4dpind7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -7BMN5iJbEch8yik1VsNA_BOIDN95BPv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDEyMSBTYWx0ZWRfX+9nNZoCm9NFy
 IG3S995PzlSrHcN1Wv7A0zz6qol8k7JsQnumWyRRXe7MCkyE2LQwwZFxMr5kPjmEwmxVTgPDgop
 xYexGfsvbIVyuUwDU95QImgG4yUATLEg96MCiBrRiJddf85jkxoRy4khgcvP2LOQELF3ZnA0Lge
 zJFPG2K47+rNTQz89qbmMa8lgs1+UmvlIuIt9zLlcPCb0ls331PV3Zi+jyANeWrwc3PNkJd2Ybu
 X/vBaAZwWSZXFUrdeyokTo94aBLeDoKJFbHRtLT/KIYdy0Uzo7QNR7MNOo+SuWWkz47HYsIeyEK
 Iap6Ho3lb7aKoYtSp77nV1TH0bBOcGwhxUuBsVlT7OxHM6UXd3n8/SlsYng7eJF6u/L6e3y2AD6
 IETbA71myxM30WW1NZ5/7NeTsoatrAf2UAt+UAkcr5utsmSjtORGGEsnlKTN+OUnKXwFaCWq
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=68505d88 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=p2hmFKtYKpLvcVhyiQAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -7BMN5iJbEch8yik1VsNA_BOIDN95BPv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_09,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160121

Hi Mani

On 6/13/2025 2:29 AM, Manivannan Sadhasivam wrote:
> On Thu, Jun 12, 2025 at 02:24:04PM -0700, Mayank Rana wrote:
>> Hi Mani
>>
>> Gentle reminder for review.
>>
> 
> These patches are not applying on top of v6.16-rc1. Please post the rebased
> version.
ok. will rebase changes and resend it.

Thanks.

Regards,
Mayank

> - Mani
> 
>> Regards
>> Mayank
>>
>> On 6/4/2025 10:38 AM, Mayank Rana wrote:
>>> Hi Mani
>>>
>>> As we discussed previously, I resumed working on this functionality.
>>> Please help with reviewing this patchset.
>>>
>>> Regards,
>>> Mayank
>>> On 5/21/2025 5:14 PM, Mayank Rana wrote:
>>>> Based on received feedback, this patch series adds support with existing
>>>> Linux qcom-pcie.c driver to get PCIe host root complex functionality on
>>>> Qualcomm SA8255P auto platform.
>>>>
>>>> 1. Interface to allow requesting firmware to manage system resources and
>>>> performing PCIe Link up (devicetree binding in terms of power domain and
>>>> runtime PM APIs is used in driver)
>>>>
>>>> 2. SA8255P is using Synopsys Designware PCIe controller which
>>>> supports MSI
>>>> controller. Using existing MSI controller based functionality by
>>>> exporting
>>>> important pcie dwc core driver based MSI APIs, and using those from
>>>> pcie-qcom.c driver.
>>>>
>>>> Below architecture is used on Qualcomm SA8255P auto platform to get ECAM
>>>> compliant PCIe controller based functionality. Here firmware VM
>>>> based PCIe
>>>> driver takes care of resource management and performing PCIe link related
>>>> handling (D0 and D3cold). Linux pcie-qcom.c driver uses power domain to
>>>> request firmware VM to perform these operations using SCMI interface.
>>>> --------------------
>>>>
>>>>
>>>>                                      ┌────────────────────────┐
>>>>                                      │                        │
>>>>     ┌──────────────────────┐         │     SHARED MEMORY
>>>> │            ┌──────────────────────────┐
>>>>     │     Firmware VM      │         │
>>>> │            │         Linux VM         │
>>>>     │ ┌─────────┐          │         │
>>>> │            │    ┌────────────────┐    │
>>>>     │ │ Drivers │ ┌──────┐ │         │
>>>> │            │    │   PCIE Qcom    │    │
>>>>     │ │ PCIE PHY◄─┤      │ │         │   ┌────────────────┐
>>>> │            │    │    driver      │    │
>>>>     │ │         │ │ SCMI │ │         │   │                │
>>>> │            │    │                │    │
>>>>     │ │PCIE CTL │ │      │ ├─────────┼───►    PCIE
>>>> ◄───┼─────┐      │    └──┬──────────▲──┘    │
>>>>     │ │         ├─►Server│ │         │   │    SHMEM       │   │
>>>> │      │       │          │       │
>>>>     │ │Clk, Vreg│ │      │ │         │   │                │   │
>>>> │      │    ┌──▼──────────┴──┐    │
>>>>     │ │GPIO,GDSC│ └─▲──┬─┘ │         │   └────────────────┘   │
>>>> └──────┼────┤PCIE SCMI Inst  │    │
>>>>     │ └─────────┘   │  │   │         │
>>>> │            │    └──▲──────────┬──┘    │
>>>>     │               │  │   │         │
>>>> │            │       │          │       │
>>>>     └───────────────┼──┼───┘         │
>>>> │            └───────┼──────────┼───────┘
>>>>                     │  │             │
>>>> │                    │          │
>>>>                     │  │
>>>> └────────────────────────┘                    │          │
>>>>                     │
>>>> │
>>>> │          │
>>>>                     │
>>>> │
>>>> │          │
>>>>                     │
>>>> │
>>>> │          │
>>>>                     │
>>>> │                                                           │IRQ
>>>> │HVC
>>>>                 IRQ │
>>>> │HVC
>>>> │          │
>>>>                     │
>>>> │
>>>> │          │
>>>>                     │
>>>> │
>>>> │          │
>>>>                     │
>>>> │
>>>> │          │
>>>> ┌─────────────────┴──▼───────────────────────────────────────────────────────────┴──────────▼──────────────┐
>>>> │                                                                                                          │
>>>> │                                                                                                          │
>>>> │
>>>> HYPERVISOR
>>>> │
>>>> │                                                                                                          │
>>>> │                                                                                                          │
>>>> │                                                                                                          │
>>>> └──────────────────────────────────────────────────────────────────────────────────────────────────────────┘
>>>>     ┌─────────────┐    ┌─────────────┐  ┌──────────┐   ┌───────────┐
>>>> ┌─────────────┐  ┌────────────┐
>>>>     │             │    │             │  │          │   │           │
>>>> │  PCIE       │  │   PCIE     │
>>>>     │   CLOCK     │    │   REGULATOR │  │   GPIO   │   │   GDSC    │
>>>> │  PHY        │  │ controller │
>>>>     └─────────────┘    └─────────────┘  └──────────┘   └───────────┘
>>>> └─────────────┘  └────────────┘
>>>> -----------------
>>>> Changes in v4:
>>>> - Addressed provided review comments from reviewers
>>>> Link to v3: https://lore.kernel.org/lkml/20241106221341.2218416-1-
>>>> quic_mrana@quicinc.com/
>>>>
>>>> Changes in v3:
>>>> - Drop usage of PCIE host generic driver usage, and splitting of MSI
>>>> functionality
>>>> - Modified existing pcie-qcom.c driver to add support for getting
>>>> ECAM compliant and firmware managed
>>>> PCIe root complex functionality
>>>> Link to v2: https://lore.kernel.org/linux-arm-
>>>> kernel/925d1eca-975f-4eec-bdf8-ca07a892361a@quicinc.com/T/
>>>>
>>>> Changes in v2:
>>>> - Drop new PCIe Qcom ECAM driver, and use existing PCIe designware
>>>> based MSI functionality
>>>> - Add power domain based functionality within existing ECAM driver
>>>> Link to v1: https://lore.kernel.org/all/d10199df-5fb3-407b-b404-
>>>> a0a4d067341f@quicinc.com/T/
>>>>
>>>> Tested:
>>>> - Validated NVME functionality with PCIe1 on SA8255P-RIDE platform
>>>>
>>>> Mayank Rana (4):
>>>>     PCI: dwc: Export dwc MSI controller related APIs
>>>>     PCI: host-generic: Rename and export gen_pci_init() API to allow ECAM
>>>>       creation
>>>>     dt-bindings: PCI: qcom,pcie-sa8255p: Document ECAM compliant PCIe root
>>>>       complex
>>>>     PCI: qcom: Add Qualcomm SA8255p based PCIe root complex functionality
>>>>
>>>>    .../bindings/pci/qcom,pcie-sa8255p.yaml       | 103 ++++++++++++++++
>>>>    drivers/pci/controller/dwc/Kconfig            |   1 +
>>>>    .../pci/controller/dwc/pcie-designware-host.c |  38 +++---
>>>>    drivers/pci/controller/dwc/pcie-designware.h  |  14 +++
>>>>    drivers/pci/controller/dwc/pcie-qcom.c        | 114 ++++++++++++++++--
>>>>    drivers/pci/controller/pci-host-common.c      |   5 +-
>>>>    include/linux/pci-ecam.h                      |   2 +
>>>>    7 files changed, 248 insertions(+), 29 deletions(-)
>>>>    create mode 100644
>>>> Documentation/devicetree/bindings/pci/qcom,pcie- sa8255p.yaml
>>>>
>>>
>>
> 


