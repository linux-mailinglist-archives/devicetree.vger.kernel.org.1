Return-Path: <devicetree+bounces-277164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IyeNEeOumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:36:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4FB2BAEA2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:36:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FE6F30C0947
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AECC43BED6F;
	Wed, 18 Mar 2026 11:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cMOTsQTz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P/QwAdva"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F98736403B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833533; cv=none; b=MkfLNu2LiF+QQC2itrwE5WpZoO5DmBLOk5y6b+k2YwQ6JSDs+0dUv8TZOxfMkjphAP09mitMvV4hQDlwRoUTgiwTZgc44OctIkI6Vw3rKowH4SUdUYTunSLLigvplhUC/Rp4WQXVyF86/p9Kb8/rjZrTJc4y7QscPR3ZNGVpF2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833533; c=relaxed/simple;
	bh=an9ITnwrG9sn7ZcZp+JlDtwA+d8Em/2aPRzVbZaB2ic=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AH48L0jJwd4T3GEPSZMwenI0ICFSqy7ejqZozX0OenhuWJOoQ/M7AjovEi7zfziVwH9ij3eKvnIS/31EEqbtMawZxY3XAJm04flSBHBoPucql+xFcMQ3G32ytogGf7j960BLUu5+7ijKd8Tr7+9H1R1LukyuqkPEGrtqKhWyLVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cMOTsQTz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P/QwAdva; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZIGY2878120
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:32:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3fuO/S36hrHNVPfroMptKib3Y+eWWyQsCXUkLO35Maw=; b=cMOTsQTzkzS3h20U
	M3AJaE5yQ5OT/qFrXiGhnOUGcg6c8bdqaf7J4bfXfjTzyuNIph75i8oVttv3q5yf
	MW55fVTvt6uhaTzrAioo+E4lvctHbCI2sQMGFgN5RZacQfT0GthQMGLes7PI9mzx
	DjbB4fBw/4uCWn5ltCHx/QRBZBd7uknWidsi4M6xu2sIpx9WYZFLi3Toi8PA4BT7
	PL+7xnbEQFE2wMlhfVuVh3c8t9N8FOylioeEU7lFYp76TOPmqDidS1JrS9LzT94n
	m8eE6JQ7xTU46COMq7T/DLXnks9/yKkINbHx5+v1zoP8x2ln+ZfkScEp9ZLcc87q
	bQWvMw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr18wp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:32:11 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-60277a9cda3so338275137.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773833531; x=1774438331; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3fuO/S36hrHNVPfroMptKib3Y+eWWyQsCXUkLO35Maw=;
        b=P/QwAdvat4t4mAw/oqhF/cro2ZkrU2HJiBQbvNXyqgUjg7jsVfWb+wviz0HHPhF5hx
         facnDUa2I5XNB7lUtKLKErlQOCqAbkYGmhMdq57R29HyyLcafcOm1ndn4gFVUoD0AXs3
         vvcjys7gPu3L8KkhsFP8NOwQPxJ2IJYV1JsrccnIBgjhsvoyIVcVRoVwO+aopd7PHu01
         lIat41N92yT3POP5jgXxSyx5p7bzCAUdzfeZ7xE85OWuyEt9Rte5XqE8cFsXfQRHdTMF
         G+268Uc3XSwB+P7SnP1DFBS2GlXRFfrS0FRFYPcCglQCUv9EV3d4rFWuhF62PLe4iVWE
         q72g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773833531; x=1774438331;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3fuO/S36hrHNVPfroMptKib3Y+eWWyQsCXUkLO35Maw=;
        b=sYC772mZi9f3XQY/b3KnJqePh8T6KTniw41PJewA3lJhmG3i5hyKhHdZufl6+KBibd
         jP4GPQifcIlWKjNbY8Uq04dxO60FyeG847K5Cw94nCWaIYuXtfkgf3tZzW1+eJkpIFE8
         UaNcbPpB1PXTo0DKrvmJQ0k6fX67GKfBp2tyjoxJsMFUSLe39mbWWjrgo/Hs2EZROxiO
         MEUi33aTcHFms+M0uJFvpYGSSA8ONUa7/9n41mzVBt4d4kyRgnAcbk0pC9TMo14N4PtA
         EJa+YAJ6Z62cV711wRxNS+1gjDkjz4FpGAltsnZnk4F6Yr8rkCg42wg01t9iKeEcY+kK
         rSfg==
X-Forwarded-Encrypted: i=1; AJvYcCVnVCZgtEnYqHbIOXtS0zmFn+aANpvPGvGo4LHhcUyZgnTbW3MAzkQZdKoSN/j358zpkNLr6WucApiU@vger.kernel.org
X-Gm-Message-State: AOJu0YzTmahWALyzfYUqH+L+HUNfQYHigY+BsDmiyoKbcApH+/W6v4yF
	IeX9hrkuh42zixHSXN+zTb4CwdgMdWHJjA4Fc4nvYMt/KD2v8saQJ6Qqi9EVULPVGqRwWTqbrIu
	CRjslrdRuq4HC8SeM/w+4HUBmV9ntVtmLgmLrWMnq4T78ID3ze/dHg13ASnwvfBWF
X-Gm-Gg: ATEYQzxWQxLnvapVG5M+5vvV+oDDYoc49O3HKEsOi0cIuZjnIHf2bI5gMg/oMbOzita
	mqHfmiPDWBWqbj5eG+bFIhcSgDWCZ4WfxWyYuWzVDtcA2lAQOqFlLpaPqSsLJrxy8TjUOdOAycs
	8HkwEvx7AZc9M3zMVcVtR332VfSCzDUk1Oo1gwxfxbQHRVL7h9QIdRqUIlIaNX4Rk0vYBdLUcht
	1pzUR4hzdeE9Ra1wyQpYxQR2ACt1OlBVfwxHBV2kCHCkWbM9Pj2+Z4oYIC/MDN0D8YhEC+kbczi
	y9v81xFKDj7BykZDeYbFFUXshdXhHVmjfVIGOo82aef9r/CCU6BPjixox5B7H5gFD/K7BiWhxfB
	FbbgHW71AtZm4ok4K2IdXA1QTMlt+Pmk2MyOKds4tTsGZBgpwc6J6io4+6NfIBBPoR315dVE2D0
	c6U7M=
X-Received: by 2002:a05:6102:b0f:b0:602:77d7:938c with SMTP id ada2fe7eead31-6027d4b977cmr674952137.7.1773833530819;
        Wed, 18 Mar 2026 04:32:10 -0700 (PDT)
X-Received: by 2002:a05:6102:b0f:b0:602:77d7:938c with SMTP id ada2fe7eead31-6027d4b977cmr674944137.7.1773833530389;
        Wed, 18 Mar 2026 04:32:10 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f170659asm185160666b.54.2026.03.18.04.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:32:09 -0700 (PDT)
Message-ID: <2227a9d2-fb34-4d54-8122-c00f54009de1@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:32:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
 <1a00582d-66d6-4325-aafd-156cfacee8cd@oss.qualcomm.com>
 <d2975a1a-04bb-4026-a0cd-34571f99ae02@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d2975a1a-04bb-4026-a0cd-34571f99ae02@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba8d3b cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=2QFKZ8CVrmOv300_2-IA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: Oeiae7mWaRUfek3Pq2KY9k8Xe6b3rmBI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5NyBTYWx0ZWRfX2mB+c/NkF9g6
 /sSxStygfhnZODwsGl0hGMlErfXaVKnGnWePC1ws9yVilT1/WlRV4I0CRfctD+v5FlmZi9LxKXU
 g2t4rGizKKhGATp6lNZ2N7epPAO+y5PAZdKfOoZ1moGr7spUa4P8982TlQkSYBWQMwFsVG1P3ts
 Xy2tQ+Ro755yet82m1iLJutOD7SoizNf5HDa22XXRmyoEW4jFJ8ESfP+QRzDGwlzV0HxcPtsvty
 C49ulVPDcnT83Mdyx7YpuPbADzuhmDUgb8aPG5J9b2EyudMzXxtWUQR9VXJe6MOm/3nT3uaQWBm
 HZry0x2FvNPrOx46Mdj2mTxZFS3FvLGjkkkibnKvC1OQ1xjKqFwF8qMe4jSNygMz/TUp5SOvVB8
 q8tR8wfsGtrIDZOOCAs1JRZfLtA4Bde9jK4SpN65hYXpUUJ+9ZKeDdEVNr9fBKZhiSQicXn4c/q
 eDcR9uDFHsqkonb9law==
X-Proofpoint-GUID: Oeiae7mWaRUfek3Pq2KY9k8Xe6b3rmBI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180097
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277164-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C4FB2BAEA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 12:13 PM, Krzysztof Kozlowski wrote:
> On 18/03/2026 11:48, Konrad Dybcio wrote:
>> On 3/18/26 11:39 AM, Krzysztof Kozlowski wrote:
>>> Add a driver for the display clock controller on Qualcomm Eliza SoC,
>>> which is copied from SM8750 driver plus changes:
>>>
>>> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
>>> 2. Eight new HDMI clocks,
>>> 3. Different PLLs (lucid and pongo).
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>
>>> +// SPDX-License-Identifier: GPL-2.0-only
>>> +/*
>>> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
>>> + * Copyright (c) 2023-2024, Linaro Ltd.
>>> + * Copyright (c) 2024-2025, Qualcomm Innovation Center, Inc. All rights reserved.
>>
>> -> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> 
> That's the copyright I found in the downstream code I used in few places
> here (with modifications) and I am not touching them. I also don't care
> about these and I am surprised this keeps popping in community review...

You may not care, but our legal department does..

> This was in original v1 and you did not object there.

I didn't notice it then.

Konrad

