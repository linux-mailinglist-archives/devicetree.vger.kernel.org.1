Return-Path: <devicetree+bounces-262631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMbRGI89g2kPkQMAu9opvQ
	(envelope-from <devicetree+bounces-262631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:37:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04959E5E11
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE71F300612F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043C339B49B;
	Wed,  4 Feb 2026 12:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fyAfHi4l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GteXBl1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6C624DFF3
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770208622; cv=none; b=C3pkmBnU4kGH1EkCWHnjbu52I4lHhyF6GFEutmXqXWbH3L3pdgrZ9xQqtb1QbZOnNWCn4SBBEi37r1GryPVmKbO7648qI28z+nw5bgKeDlCrWckdd3S2rLKLxND0fndhsq2mvzOGNe8PpfX9XFaltPpwReM4pIte5ibqIowB6tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770208622; c=relaxed/simple;
	bh=LdXn/ryfUxJn/hgBuHb2D5P5T9VDAAJqgeMs+x9jEvo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ehbPWWuGXzqb97vOX1WDis02WIaCA8GgvEW+XrNZ5l1n59q0N5Fgcj1rQSH+1zpTvx1sKexuydCR4PcbpqkXYAKey34w2VURwrO1j/6YbX3I4TFewPz0ylqOJi1XEujZ8g9aNOCwgHtqRh2AbGOQmMwL2GP3/OOUtjWwtXXmJxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fyAfHi4l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GteXBl1t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIecD096287
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 12:37:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PmH2kIaFd/5FB5Li3TKThg1PLznVXCqpdEh7SV1yDN4=; b=fyAfHi4lXEQht5nb
	OWsmdXBmmM9+cOI8bHvPQvkt92XmLclC4Qo+ao1iBv/9wapPp/YRoDM29upLsmmz
	cz3UcIpEDf6pRrfaXgnX9BYl8oPF5tLIaOyNbqH3kXlfnFOLuRrPuqd5bXvCW8f0
	NHE/ZPdauz4jEHrtJNk4OGaU/sj/isFTnPT8TPTs4+l0FF9FOWhVEE2fnMc5Vmae
	HyLrD45BAxuywv6Xulj6+YM4ZhOHmSpfFI/JMOx4qh1RWPHeSiSZUd/7VzzCuyE2
	mDvfgzTeTH75gRu8ilu5ZXlJxRiye+gxVHxS26GykPFtVVsJ1TWXmhMJRl/ctJYB
	uynu1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c44kbga2t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 12:37:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c533f07450so179424685a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770208621; x=1770813421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PmH2kIaFd/5FB5Li3TKThg1PLznVXCqpdEh7SV1yDN4=;
        b=GteXBl1t9ljMZMFiQTIoGtEed21J/eF/2nCIB6ZuSt8aBa+pYIpp5k5ns7qUNBvkcS
         MkdlTXcW2+3Q5lXTIfUi1UTKeQDM4HZzBldsy0DVXiCu4UjwV1ooACbvZoMS0kJQef7I
         vbV2p39ydeujXBikuMxIDLPfDUfzRgT6oMSEvvwCcy5hZMVgbRWjEqLJZNAjIOh7NzAa
         L8IACPuysPMI4oZpcI74B51BDeSDfmUZfapiz2yQOjgsncIFBQ6YBIjBIIBXOhrBxaPP
         pq2O1ph6RRXmi43cksQgnbCkrPg133bLW6cO/Qz94tVkG7r3PC3ZEEcoIM4kCBdX8sl5
         5GMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770208621; x=1770813421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PmH2kIaFd/5FB5Li3TKThg1PLznVXCqpdEh7SV1yDN4=;
        b=k+mSgvgbpHbCbqvPpEpwVTHIBBKVMHb79gpUzOkPZI9O6N3W9KtE1cQYvyff8FrqLh
         qNcIiPR5+taZ5XrS9W0izoMRLFWCb0aw179an6NyWQea7I+E2bJO/ZwWtwHZX/86xWMq
         6xNcLPOqJ38n+dvvlU6bdGhopa9+DdlmHpVtbwZp6f1wCXWlE+JMIaZZ5Dj2/STwxobZ
         CRHI0v8xso+f1sOaMu0X7QgLstF7kwcuzFuNtxGXh8aVBm65lZpHp1APvMAnxrhnWb/m
         EEUOA6l/+dPjC9wIj4hB+uuX+bTLaQHQg5uw9/1mMHLcMMEOvDSYhVUb8sfgKYT3Nw9O
         ZJ2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX45uN6jpxwuYALzcQRruHwp/HAdDVu/ZY5kdScXR617osf1+cgEnWahTLofZW+l42KgtCxliBMJAm5@vger.kernel.org
X-Gm-Message-State: AOJu0Yye5AtSfC2PVyrCE6oso1MqmAFpMS3+XaG5gzqFw5OpnIMgziA7
	RBSL/PpWvf4vpyGLCDeTBqw6jADlI1r5lbql7iQrrbZ3p50FR2tQf9yhZKiUcDV8ONPHQcbeWXi
	RQF7I+lhZlkGHZNwK19DmmWrJROUaAsSSJbrjEyv4efGdlE+ieQspBmQVPIFRxwyF
X-Gm-Gg: AZuq6aL8cGNMGO8/d+NU6MSNMiEH9he7y9RpFpgPhFlkcFeAwSP9T+fgqcyT03dG9aF
	fh/x9YuWP6FUCmJM6Iw44XC93s1UklCkc5F8EtmpgkizkyJDogIg0P3PmgdPG/EvWtG/p6muDHU
	YlU0bJNsglPnj9RfhkkK8OglAL2zpD/K8BjUMs8jVMls24lcSHq7CdR4f35gafHYJyPhNwTS3q7
	Hbmo2lFf1odeABJ7yQ04fxDV8oIGGSsOB62xD0u/dRNIl7nsHAasMhFFHunkmZAW9ODV1z58Ffj
	rLxA89nIXlMBSUxel16yeC+s52yrIQWlAcKE0UMS5ZaDYOOItSi5LIu9wYZGQx5Yf2yAgUOfWSk
	IynuIz53FmgpNRc7iwsP9QPPZ/BZ6tPPWCwF8J5HoslaEqkdOF0gEfQGqa1O7qCsYUnY=
X-Received: by 2002:a05:620a:3943:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8ca2f822612mr286641985a.2.1770208621028;
        Wed, 04 Feb 2026 04:37:01 -0800 (PST)
X-Received: by 2002:a05:620a:3943:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8ca2f822612mr286639385a.2.1770208620588;
        Wed, 04 Feb 2026 04:37:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea004380fsm116359866b.55.2026.02.04.04.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 04:36:59 -0800 (PST)
Message-ID: <2abe345c-ba9c-492c-8684-0d7f4e6b8c0e@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 13:36:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] clk: qcom: Add TCSR clock driver for Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das
 <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
 <fb7bd7de-61ee-46f7-826a-2c9c32aa9c2d@oss.qualcomm.com>
 <44k56h4yjjknc5xnwlrmlpgj2hpf6rvdsv7fhrhb4qnzsz7goi@o6qz7im62kg3>
 <e5e42350-813a-4f6b-9ace-368f2a31cf7a@oss.qualcomm.com>
 <2j3oraektgiphuj7akss3ytxgqt6e5kqt5gorkncjoiibol32e@aueznegzge2s>
 <krn4ncotwny65eu5p36wr5dyrw2pc2ophs6g6yqo52ogi34gah@6uxeccbed3vf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <krn4ncotwny65eu5p36wr5dyrw2pc2ophs6g6yqo52ogi34gah@6uxeccbed3vf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2EQvJPhZTWtlpAV_Q7UsS15dhX7acaAL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA5NSBTYWx0ZWRfX1uhGba5F7xWt
 OCIn5ouIi2R8YWvfQB8Fq1kERSaoUgsNoyLL16cCl2TnnlyMoz0+kLzjSIvk70UderkG1XufB26
 lszedmyXScWXLnPXnkiK1kntmpVBNVF48Di3mz3xIQJBNltUP4bFPWupo0lIxYhDwXp05uG+jGd
 PiX3/gbBWoXv/AjPhF0ML56lgEbTl/VduhOjJTCbGy5dhr+P2FEXsvDq3vhq/EpjmXL2ydCaqBy
 ehrmjSrnV/QNOrs8aD3PMl8m3uW+0pb3TTwnG0lfTaAQpocouiqSvlawIzMAULf175wBa7ZcD8u
 o+gQA2qkQYFmoSLxTcFt3savrmvvX32tmbhxwu7Z1Q30frJH+zmWrLMCsULjZxpvDzJOuWIZP8s
 STshGutfnL2VMMcoe8TkaLctAZHF6nBWowJFo20X1YCJ+YTYFOVcwE+3KcyAtg9PK3O5zhV3v8S
 ujOQouf541k2Fxr2wKA==
X-Proofpoint-GUID: 2EQvJPhZTWtlpAV_Q7UsS15dhX7acaAL
X-Authority-Analysis: v=2.4 cv=HN7O14tv c=1 sm=1 tr=0 ts=69833d6e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Bqp_KdbJKO3R4PKeuYUA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_04,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262631-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 04959E5E11
X-Rspamd-Action: no action

On 2/2/26 9:53 PM, Abel Vesa wrote:
> On 26-01-30 22:40:32, Abel Vesa wrote:
>> On 26-01-30 10:43:44, Konrad Dybcio wrote:
>>> On 1/28/26 3:10 PM, Abel Vesa wrote:
>>>> On 26-01-28 11:34:49, Konrad Dybcio wrote:
>>>>> On 1/27/26 4:03 PM, Abel Vesa wrote:
>>>>>> Add the TCSR clock controller that provides the refclks on Eliza
>>>>>> platform for PCIe, USB and UFS subsystems.
>>>>>>
>>>>>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>>> ---
>>>>>
>>>>> [...]
>>>>>
>>>>>> +++ b/drivers/clk/qcom/tcsrcc-eliza.c
>>>>>> @@ -0,0 +1,144 @@
>>>>>> +// SPDX-License-Identifier: GPL-2.0-only
>>>>>> +/*
>>>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>>>> + */
>>>>>> +
>>>>>> +#include <linux/clk-provider.h>
>>>>>> +#include <linux/mod_devicetable.h>
>>>>>> +#include <linux/module.h>
>>>>>> +#include <linux/of.h>
>>>>>> +#include <linux/platform_device.h>
>>>>>> +#include <linux/regmap.h>
>>>>>> +
>>>>>> +#include <dt-bindings/clock/qcom,eliza-tcsr.h>
>>>>>> +
>>>>>> +#include "clk-branch.h"
>>>>>> +#include "clk-regmap.h"
>>>>>> +#include "common.h"
>>>>>> +
>>>>>> +enum {
>>>>>> +	DT_BI_TCXO_PAD,
>>>>>> +};
>>>>>> +
>>>>>> +static struct clk_branch tcsr_pcie_0_clkref_en = {
>>>>>> +	.halt_reg = 0x0,
>>>>>
>>>>> These regs certainly aren't at +0x0 to what we normally expect to
>>>>> be the start of the TCSR node
>>>>
>>>> They are if we add the TCSR node with reg range starting at 0x1fbf000.
>>>
>>> "if we take the wrong base, the wrong offset is right" ;)
>>>
>>> The docs for Eliza don't have the nice separation like on e.g. Hamoa,
>>> but 0x01fc0000 is what we generally agreed upon to be "tcsr".
>>>
>>> The registers that first appear in that region are the same as on Hamoa,
>>> and so is the address, so let's continue that tradition
> 
> Actually, the 0x1fbf000 is the right base address.

Actually, I think it's 0x1fb_2000 ;)

> TCSR mutex starts at 0x1f40000, and everything between 0x1fb2000 and 0xfbf000
> doesn't really look like they belong in a clock controller.

Correct, and that's because TCSR is not a clock controller.

Konrad

