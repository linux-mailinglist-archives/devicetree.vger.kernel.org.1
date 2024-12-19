Return-Path: <devicetree+bounces-132833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 738C69F842F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 459D71892C0E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92EE51ABED8;
	Thu, 19 Dec 2024 19:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cOUPudBN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4E91AAA3B
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734636419; cv=none; b=lQGwPLzFj9SwogGWxMe1pkR0owOC60kQW5MH1sDIpM9XsYQm7GBg5TDER+NgGt5nwPTPUvyb7wT1gdSZIkOTWk0mP3FgWuSHShpIBUgSEgGVim1ZLEb4I5XUn/ClCUY8+/5v7BKQWjDgXWDEr8BT77DHzLLPceLlZtspbqDQRyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734636419; c=relaxed/simple;
	bh=r2waQT6RI3wR1buFZyZcLpFcPl5SxGlfkm6bBs+GUVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oJ0VqSS/jLx/qSBnZi9bzQoUMMOTlujFm+TVK6GYArW0YlAVKnWk/ViOLzcKFPz8oGN4iQwWnHzkBKx5KUdEEtq+8/xW6UipHYCYxEqCVzd5MoPl3zP7bLElQQmCJFl+OGZeqwLZhxD2wVajBe9iWmbLVga34Xi7NStLCnP5ho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cOUPudBN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJIv3Dj021557
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:26:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TceyOsbgXrP9OVMBWMLProxIlsK6QAaRS+A9GhoV8Yw=; b=cOUPudBNl7MXFp7C
	4lw00F7muICON8ZEQEBOrjdc+TBV1T8VYEWIGs9g4e0Lxx493bSbWhkgKfzJ3IY8
	dj3dVWCNJVMqLjscBH4W1QP36/LaRh78Yq2CtuziMzTcMBswd9YlWBf20QE/qNfM
	Er3RPM+N5q38+4ZNHx7Ghp26ehNhChXCX+SP2qfTOWOTC92R9wwyCiP/VaIKYGR2
	Y01pDuQsVavqoHXjACnwNuBDgm5jtO/Xvovvn23C+cgrbE6ar4ELUwX6UJ9nw9Do
	//uCio/hyXMGniBGL8L8brgljxEBW6ickyziqjM8BlGebZ3MFnsDEam9kp2LuJeA
	8O3ZjQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mfup9pyg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:26:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467a437e5feso2616601cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:26:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734636416; x=1735241216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TceyOsbgXrP9OVMBWMLProxIlsK6QAaRS+A9GhoV8Yw=;
        b=JiBonYHsdacJtqcnJLj+aNcl5aKN8WEsZKXS6PVebC9qtU5qsFrJhdVClblSJbRj5m
         0cYH6xuTr3disAWa7a8dpIMDBPoerQAl9Dwr7gs2mK1SAmweoJE0Jei+MsBYzX4R7E65
         1zcGHXq3hP0x+AXvMbOA0+yyOKrKGVGjClkHdBEJourQPRU6CtxpuV8yWwaLFEAeiRSP
         lV9b3VO6kdXAHjt8jtusp99GHW/Tm7jFuYiQC1MYLccm5GDZow6geZRWTyCBf9ZgLjTo
         BaWd/vguLsw68owJYvMeDxA5cl9TTQpzYdF8EQTeDv4LGNLE4ku48skLP4C1f1E4IZFg
         Bk6A==
X-Forwarded-Encrypted: i=1; AJvYcCUgJkYts8KmTN6rKW//dNIGDjpY9cgcu045bFDq9Q4t1BV5jJJZvyLi3LonfAFbvBidQZmwGp/Kw6Ls@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi3ph1unz/LS4D88HQ+L6Eg286gdmXoHorElUaRejvEzudsnu3
	i83KWw+aAjTMnyRdkf2iGHJXSRuYJXt64/fRZfC5VlkKP8Z4X4gVjElZPqRNbI+SU/k5j0XBoSi
	bYmfBjyw6q5884DbSzjTr8pFzukZcZIsxrWW6CuZrZyKmBYbOu3DLrRDI9HsU
X-Gm-Gg: ASbGncudyiq8opMKcqHAb1h+0ry/oUkhVDis38eGxr2nC9qukVGLDyEGHyNW7ruL64l
	WP9WJ9X1VzPO4xzUwR96QLWdUSLbuiHrfPq87giPpXV1FgmmO5kwMg4vxf9MaXUhGA/A6hXkpfk
	RkMOMvutMg9LMOrafuFOoel9dvLi2EgQ2xGQZIb8ulB19qclYQHDPnFJkN9xyxACnislgqkcjQB
	6oE62fMw6esxOnEndguTtux1VD5huPgs/88zz7RpRKitFL7Gae/s8qmhFnehQH6FkhycJ+ddoBG
	EMsKxvLe2+vQpX+5A9lCxz0XndVKSsgGYvE=
X-Received: by 2002:a05:622a:1a03:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46a4a8bd016mr1224681cf.2.1734636415974;
        Thu, 19 Dec 2024 11:26:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCTR89xxu1vHIWAIqsQT8kRuL/oLnSLIOveVBByFKOkmA6Uq0iREZhkNLGVD3V8cyr3KWBBw==
X-Received: by 2002:a05:622a:1a03:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46a4a8bd016mr1224521cf.2.1734636415607;
        Thu, 19 Dec 2024 11:26:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80678c5a4sm925835a12.38.2024.12.19.11.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:26:54 -0800 (PST)
Message-ID: <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 20:26:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on pre-SYSTEM_SUSPEND
 PSCI impls
To: Elliot Berman <quic_eberman@quicinc.com>,
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
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MaylkCHL0m1h9VvjVOE3iA69zBKwSC5w
X-Proofpoint-ORIG-GUID: MaylkCHL0m1h9VvjVOE3iA69zBKwSC5w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 mlxlogscore=999 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190154

On 14.11.2024 2:10 AM, Elliot Berman wrote:
> On Mon, Oct 28, 2024 at 03:22:56PM +0100, Konrad Dybcio wrote:
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
>>
>> If this series gets green light, I'll push a follow-up one that wires
>> up said sleep state on Qualcomm SoCs across the board.
>>
>> [1] https://lore.kernel.org/linux-arm-kernel/20231227-topic-psci_fw_sus-v1-0-6910add70bf3@linaro.org/
>> [2] https://lore.kernel.org/linux-nvme/20241024-topic-nvmequirk-v1-1-51249999d409@oss.qualcomm.com/
>>
> 
> I got a bit confused, but I think I might've pieced it together. Konrad
> wants to support s2ram (not clear why) on Qualcomm SoCs from 2015-2023.
> On these SoCs, PSCI_SYSTEM_SUSPEND (s2ram) isn't supported but doing
> s2idle gets you the same effect. You'd like s2ram to work, so you
> provide a way to replace the PSCI_SYSTEM_SUSPEND param with
> (effectively) the CPU_SUSPEND command. If this is the wrong
> understanding, please correct me.
> 
> Could patch 2 be sent separately? I think it seems fine without the
> rest of the series.
> 
> I'm not sure why you'd like to support s2ram. Is it *only* that you'd
> like to be able to set pm_set_supend/resume_via_firmware()? I hope this
> doesn't sound silly: what if you register a platform_s2idle_ops for the
> relevant SoCs which calls pm_set_suspend/resume_via_firwmare()?

S2RAM is what you get after entering a certain state, but currently
it's presented as just another (s2idle) idle state.

That means some hardware that may need to be reinitialized, isn't as
Linux has no clue it might have lost power.

One of such cases is the PCIe block, with storage drivers specifically
looking for pm_suspend_via_firmware, but that's unfortunately not the
whole list.

Konrad

