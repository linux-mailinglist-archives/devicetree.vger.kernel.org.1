Return-Path: <devicetree+bounces-254408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A1D17F36
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A9BBF3003B24
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E845F38A29F;
	Tue, 13 Jan 2026 10:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ei01QDuc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WxYXyn1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4953876DD
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768299427; cv=none; b=ZKo/KqTQOs1Dqip8iQTC5jqasITb6vmVDSVHmoEk4LKsOBdqHq5i00PeE5g7PK50Kr4EipwIBpUFbdnE6szwdgi8Bd6YPw0RvXTQQtGvzP3eu2AdyFTXx6M3sGQrMep3BO+aUDS7mCmmMqV7p838RIbqdgCS8wNUFTr3lOgNZ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768299427; c=relaxed/simple;
	bh=JdNy8sNfb3B2tZc+8y/an6mYG+m45FuEcTQ7VE8oRzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CmveGkDdeKLayTMAKb+Q6a8l/agvc245QObX8lLnMeGnBeNoWxQ1YhAfScSGGPn8NotxudeIHbW0ZLL85IRILEDCL67O8bHAXomy14ed4swPLE4eiVbMC0zCn9yVwQDCSIdIhvyNnDlXt4zjhNHUfJ9gV3MRpTu/TfPTKH22E6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ei01QDuc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WxYXyn1m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7Px3E177711
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:17:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8m5J388itfZHsfuUBn8i7fNih4A/EUVP3ZyZJLcCkdQ=; b=ei01QDucBb8Qh2jG
	PdDGVBILia2mNv9d3J/PLuI0qRu4Uua2OdXHhbp7UlZu/5vK7lNV+rsQQbtwjvFP
	lC3va9LSv5Ok3u9MV+iTdhU2VJO9/digxAEpVevA+7slSEJQx4VcP8QgJY/GGO3U
	un9C9uYrM7UuJy5SHSNeAbO02NqcL8nsJK86yHo4rKkvxZGp8FpJphG6EU2k/ibI
	9zPOMYUixthhcZElYm8cErFZ7xOKO4YocIjtt7w/tV2Aw/kRE2Fr2V0KkvyC42sA
	PpYGPhQZsy5ST1FntefvCsD2HGt1lSl0HIq+OADLfGrk01cIZcMlo8rBCbx1swm8
	xbZ7TQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn52f2t2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:17:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ffc6560f05so17066111cf.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768299425; x=1768904225; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8m5J388itfZHsfuUBn8i7fNih4A/EUVP3ZyZJLcCkdQ=;
        b=WxYXyn1m/s5voZl7CfIu4MZCI/giEfvJKplDCAl6FHMnIy11bN8G6u7soorje1U6J7
         K/pUT+UQ4B8NbjJvf1BkNpVuTe0Ldmyj83WWKSRXdPNgEneCgFepHFUEvxZHW6mPJC9s
         /mvAk5tPBHoYvVLGdlXQpN0EPEqSJYboUI6PVu+7aGFBevjJgtNhV9T2dC0dv4vTJNGs
         zeXktV7k9PRBcnXy8q345yf3VlXfQLOLDkwW1DtiX8nCJzIyeZMgME4XX7JOQuqMP4Dw
         Bjk0fk/OknbwCS7+vb6OVdc1YBiDmjftVg3rgQjYjzJjvhXHR64vZusD0d+c3B/q0+4Y
         YDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768299425; x=1768904225;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8m5J388itfZHsfuUBn8i7fNih4A/EUVP3ZyZJLcCkdQ=;
        b=UwXmJWfFZ37y8KqO23Ak1wdZjjB0PRPeRZvHsMKGJhc89FVKCZx+AVEKmttupGnWXK
         jOlbm2ayp6shmUJKVLPwlQs+pKsZYmLx3cpvEqHgO2/TBB4Ke7cP1tTxmrl2OSA5MBW2
         G8mHxDyOo7wwzwuB/kyiCgEAJbRkRltJWfpseBAOmjzjiRwmbhtmdvgsqWgSucufxI3P
         DIwjRtcdlcozBsF7pOv/Rmn2Lwk3/I7BUWPztito2V3YLjVBm3fe1NL1ObtqrzF8x2yy
         CBDNwGlBMYPvxVMSrHTqsHV1AgI6ojjLjrW5yVM2c7l1ic3NoJLFl5F2BLItErAkGaN7
         eoJQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6XBt3k7bSC10Ygk2GMBHhjp832mlBO1WTAWDQ5OUXpuVtXHrxPqmIYtUBzYcB4IDHNwGJNCiksbLd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz09wGnOgYUF7V1AVOAsBmbxOPNzIE9q8ZGOpm8TzDaO+sG6NZF
	3DH5ypox4gQEuiEZqM1KhzDQAjBe0MtGdZ4GxlooIt0fArgBs+NtI1+87HeA/zDn9rc3qdlP88O
	0Zt+KEL678ocON8h37q43cjj0uiewgxHrrD8FJJijHcrgbsTJtFaHxCIevBMkqtPt
X-Gm-Gg: AY/fxX764d9p8/qTAUK6XcHNJFsGeh/k4JnsyMw6IJMsao17c8OQMw20Vnk9a37d2qk
	DWo33vo4q5NynSJn39YKR1g3fOxu4GVTX47iHZNvooXoHCFn+5s1k7rNvAWUku6HXAakDisb2cN
	PG7xUEVfQT6SAKtXIxXorKb4qWI+LjzWx+ZEHmEb4hGzneXArqYcxAL+j+tA0aOzJVHLl/7duKX
	OUTp32yxX+r4Q8Ia+VO1IxpUR5szQIE0gVx9FnFQ9whJHPu9/Z1pSPnN+jxChW7rthQfOZFs4sL
	2r595CRqEOPw9DnZWTwLiTTT9LST+LxNK+QycgWMaNG1QUhAF9gGRka3SO4dyqC8CGFzhnjjf6o
	Xr+1uGv6J1IITh1IGDtL/SDYR+ZJdYhfnQOqlr03KKv4R1MM3UFILUk8g3l5m9eiQ+xY=
X-Received: by 2002:a05:622a:143:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4ffb4a9a78bmr221411081cf.10.1768299424683;
        Tue, 13 Jan 2026 02:17:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFK+vv3gA4hjODwWxcfQyeHDe1Dp5QAj0SJ3Fn03cgepBVloEbtKW/sg9yS5kcFqUJDq9URWg==
X-Received: by 2002:a05:622a:143:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4ffb4a9a78bmr221410921cf.10.1768299424286;
        Tue, 13 Jan 2026 02:17:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm19732052a12.33.2026.01.13.02.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 02:17:03 -0800 (PST)
Message-ID: <a16d4a29-7bbe-4192-9975-8bfc21be1908@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 11:17:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Nikita Travkin <nikita@trvn.ru>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Val Packett <val@packett.cool>, cros-qcom-dts-watchers@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
 <wyqml5ywfzwh3uulp4gzlfzx24kb2545w36pkpnz5g27xtnqoi@yywysi37tdor>
 <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
 <2f0d6bd9-0786-4445-94d2-5189f6b44d01@oss.qualcomm.com>
 <e7j3hctjlly44pjwe3jvjtpjuj33bdvpyo6pzc6o3q5tjjlyib@7evgyweq2deg>
 <fcc6544f-b0dd-4f23-ade7-4d6f8b6a612f@oss.qualcomm.com>
 <e3530bff3d39bbb06b01364b30a5a21a@trvn.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e3530bff3d39bbb06b01364b30a5a21a@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4NyBTYWx0ZWRfX8dXFcbFB6MC3
 WIJrZUijNP1BNzYRIKzIJEfLZyvnOOsGE9r8IfxxvApcUzlP1trvPw6q+Xhi3QoWNQZOVZFEtym
 siHHTDO3oiF5ECy5VEweGObmOUYkAAHnwkRqQfjHE3ji7W+BDP90g4VGX+FkRZIpACo3nBhFfiX
 rOETRWsKOOYkNRKVnYN8eNHKCqNiPqxV7JkjOEXBQ+c5zCqsp/Rbaj3k/q8m2QBfvAK+wiAlGSH
 gsjlf7idh8rOPhHmf18E5wXfKbkf9Zq6XpJBhm0Eu69fqTfogSUYiCmGTy6gUQ8Ir/XBybrFAZq
 jtcyO7IIqwdzNeo8D2h2AbyCTVpmG62I9QKLdZ/GGu/uSxev6j/BHwHO8ZqB0dZ+tAjh1fqZcpZ
 zVC1nbLcVKLL7ywnSxuRI977Z5+9IZObaB80J4uXDdjyQ6XAV8dRvs6hM+UvH80NZHy/DGobYoJ
 seqaLEb6EPBgqFASd2Q==
X-Authority-Analysis: v=2.4 cv=TcCbdBQh c=1 sm=1 tr=0 ts=69661ba1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=XEyYHXuZucbaV8Fn5vgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: VDoFCxBul0MYX3z5C0ElVJy2wCGRk7_b
X-Proofpoint-ORIG-GUID: VDoFCxBul0MYX3z5C0ElVJy2wCGRk7_b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130087

On 1/13/26 10:30 AM, Nikita Travkin wrote:
> Konrad Dybcio писал(а) 13.01.2026 13:30:
>> On 1/13/26 2:31 AM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 12, 2026 at 11:50:25AM +0100, Konrad Dybcio wrote:
>>>> On 1/12/26 1:31 AM, Val Packett wrote:
>>>>> [resent for the lists as plaintext, oops]
>>>>>
>>>>> On 1/11/26 1:50 PM, Dmitry Baryshkov wrote:
>>>>>
>>>>>> On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
>>>>>>> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
>>>>>>> [..]
>>>>>>> +&dpu_intf1_out {
>>>>>>> +    /delete-property/ remote-endpoint;
>>>>>> Why? It should not be necessary.
>>>>>
>>>>> It seemed to be implicated in annoying EPROBE_DEFER issues.. But you're right, it wasn't this after all.
>>>>>
>>>>>>> +
>>>>>>> +&pm6150_pon {
>>>>>>> +    status = "disabled";
>>>>>> Do you know, how is Power-On routed?
>>>>> I think it's handled by the EC. Keeping this enabled doesn't make power-off work, and doesn't make the power button deliver events either.
>>>>>>> +};
>>>>
>>>> FYI I don't think a modern QC SoC can turn on without PON
>>>>
>>>> What do you mean by "doesn't make power-off work"?
>>>
>>> It is basically a laptop SoM in the embedded case, so it has EC and PoN
>>> generated via the EC.
>>
>> I got that part, but this doesn't answer my question. Val mentioned that
>> separately from the power button not generating keypress events.
>>
> 
> FWIW on Aspire1 the power key is routed to the ec, and ec is routed to
> pmic pon/resin (as well as ps_hold etc etc). Pressing the power key,
> obviously, boots the laptop but after that it has no effect in windows
> or in firmware. In linux neither pon nor resin receive any input events
> when pressed so my guess was that EC pokes PON once to boot the system
> and maybe pokes resin if user presses it long to do a hard reset. Due
> to that I've disabled the pon node in aspire1 so there is no bogus input
> device. I'm guessing Val has inherited that from aspire1.

I'd still prefer to keep it enabled, as it's physically present on the
system. If it turns out that the EC randomly fires events at undesirable
times, we can disable it

Konrad

