Return-Path: <devicetree+bounces-262944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFs4LJllhGkh2wMAu9opvQ
	(envelope-from <devicetree+bounces-262944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:40:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE2F0EDE
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B8DA3002E3B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9DBB3A0B10;
	Thu,  5 Feb 2026 09:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gohF43ol";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cbj1ajw8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9842F22CBD9
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770284438; cv=none; b=cgOxduPwD9wl4sMSDBc4BKzeH+pZ/XqR/T/Jjjoam+SIPoE79q134mb9MoBTNSKYO1IF6odu7LL7Dr1FvyLgf+rmEpA3j4SNLve8lvW7U9aAcs6Nb9swgqYrDkmenZvrfDXga6TDbO5RyyVdFWSOG7hft7Y9h8BgWkB+u93vNYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770284438; c=relaxed/simple;
	bh=6OP4X1GRRM5LIjBE2kov2yEkqnOd0tKwLWVXu8fzT78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C7R6WL0bBTXy+8faXrCA6ObGNIbvIsxxiTDIZgj8UcsWP6H/tS00ZTfRcY6ACJp9o1qbwtnE/LJISzrptkBys+qT7XdtTOEIoDrN9W0qPoa7U8AAQ4R3T0e6EsOngUm3QRCqC/ctURM/ikbjLJm7My7+1b5MFILX1WT+j2ItvqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gohF43ol; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cbj1ajw8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dv7W3031083
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HQQ358TlNZqts7bN6Y5kHCWLryFbr3guTvwxcXlcfD8=; b=gohF43olQU++Mikw
	9FYRKJEaSoQZQ0rDWR0ROeoKrW673uPSVodAJVri5EkRbgtn7o4lkTjo9dQHU4WK
	np9EUhdUVOstd2Vmps6XNC4sbpgY0MlLHBpciYH2bqUoExU0wS94RqLulvDfCtbW
	bEAsi0ilybPyrXfyC9Pve+395nrw46Yyl/XaQrfhJLWfGdWUmOVsjCba08GopZz/
	u83B2bR72I/qWUHV4DtAV0aT0vCnXDNPiYd9zMBf4iXrqGIuQhfMzUi8C+SfUQS5
	25fO2AJMl+Plqs9w7zXM40QAPX8T7c9exuaWGFrlZPF2YHGo0h8lIsNW2ppbt9Vc
	mESzCw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4a7tjp63-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:40:37 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8243ae83898so32431b3a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770284437; x=1770889237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HQQ358TlNZqts7bN6Y5kHCWLryFbr3guTvwxcXlcfD8=;
        b=Cbj1ajw8KpKGGDySLUael5HFPLna+rtb6wTZa7QVimDmjggJx2R7oPF1TnNjvo9stJ
         B74yBXfEk7IDS2J1F2Q/XutVo7wS0mHGCUG2zUMWKo/DdOWIzld3JF3kWCRdhry47jIk
         l495ZAxRUNDEb1r70kwA38aLQtYqbrJsfu+ED5thjgSOHkpk2NsC07MlJrJJ9h+HT0eO
         uKRqHhwYYqFl6uMZZGUJeRx0e6MOCcdo+tUSMtvS/bXz+EBfx/JVBipmxYary/1HPov4
         48qnj1f1EGAXwbC8pqBheg7jqxbuP4YbN+MBpiNncnIAXIkJkyJJIScdKetFSC5D00e4
         oBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770284437; x=1770889237;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQQ358TlNZqts7bN6Y5kHCWLryFbr3guTvwxcXlcfD8=;
        b=kYqat4v5b/V99AEySWNTeowiAwR2i6hoyJRmPGBgNpy0J088CqUYiPtnWw39eeMIF9
         tXPIY11nHHRgo1kWFgU5j+SA0KoCot5PvT2s4cpdQ53/xHEvXyFOGJcDTuokp9duijA4
         8fCvokx4pbqOf9wEFrXEo2Z6VQltBZ+Vz9xfRgro+bocR1HhX8wVfaYA7qJrDJDHUWhT
         QSLKoJz9HFUc3hTYSN+sjl3xRQwVoTte6z3ZOdBk+yoLiDHcWalBb00vm5Cb+9IAG67j
         830QPTif/oBYW/VDKeZI5ZjTSRRb9q2zpkMpXqtkkvWdRrsAc3/j2xq5nOUgR4l1xrGX
         8rTw==
X-Forwarded-Encrypted: i=1; AJvYcCVvH51W6UxEA7SQOWO9zOYtj5op+JAzoqoXtEftaWEIyiBe8PDv71Zd3e8KmiCC1QqyxqCHMp0AiLNI@vger.kernel.org
X-Gm-Message-State: AOJu0YyyGIEVZPEaBXsA45ZYDfO9jbEcujCz59jCsISN5GMeej9D/I39
	Ctx4egcLId1BAKXA434AM6yV79G/NN6s3wwqqw7g5NZG1by/285J6qidkTkXjcVWPN60qU+oZfU
	EReofXVYs+LAzjuymUsWd55mN1aYNJbpiTWgJThP9by4mWkJhyqjrWGiqpPwZ48p6
X-Gm-Gg: AZuq6aJRyS++i1odKbUyiq63aLXtPdwXLGyPLkLZ8Z2iV8nYBcWsN77U+7/650Rl8E+
	84nBPovQZXPdRzxDfLK/dYCSekKJLk/Qp8kram6t/7rkApmhHVVjBaoGztTwhLGBHmp75gz0N81
	FULKeBR0gl/RCmeRaHs55faCZrJXkkxAW4NFGi6bwaFwlQWW2AvXwzVtXn60b5LvkcfvFu04p+e
	gTMk6hddyfHvoHCcS4GjvVN2aax1F5V7VFhoDG+V7aGtwSCQj8NL4eDgAAsRIm7UICNgdgU5Stv
	2Dq5LhSDF04dbZ1JRFdY8olxgf0rOrNuW3ZpD5jvXQb+/iCeIOlSrtYQ7dgw1VTP30+1+vqWLth
	s2Lnk16FbCePkP/gSi117kFIEq5PtRFRUQfI/psMYgQ==
X-Received: by 2002:a05:6a00:1709:b0:823:1726:aedc with SMTP id d2e1a72fcca58-8241c64598dmr5170942b3a.50.1770284437021;
        Thu, 05 Feb 2026 01:40:37 -0800 (PST)
X-Received: by 2002:a05:6a00:1709:b0:823:1726:aedc with SMTP id d2e1a72fcca58-8241c64598dmr5170907b3a.50.1770284436566;
        Thu, 05 Feb 2026 01:40:36 -0800 (PST)
Received: from [10.217.216.195] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d16f5b9sm6773391b3a.7.2026.02.05.01.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 01:40:36 -0800 (PST)
Message-ID: <a9c2f6e2-0185-4a1e-bed6-fd1f542b2367@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 15:10:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: qcom,qcs615-rpmh: add
 clocks property to enable QoS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20260202070534.1281652-1-odelu.kukatla@oss.qualcomm.com>
 <20260202070534.1281652-2-odelu.kukatla@oss.qualcomm.com>
 <b37e6569-61e9-4998-8fc0-603b83edfa2a@oss.qualcomm.com>
 <95d42fb7-2365-46a0-a995-c9cc51b17424@oss.qualcomm.com>
 <ac26d960-5c05-4681-aefe-4827b74ef29e@oss.qualcomm.com>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <ac26d960-5c05-4681-aefe-4827b74ef29e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: tHxUmd9fjdRe3S9lnMGwn5FdtUXOL9XZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA3MCBTYWx0ZWRfX/tm8LMnkAV/o
 3/mf7hcYDRqnIx4CXOMhzqnQcA3G9cvIaJofpexbJe88Vu8uJE44rAeuTjv0GUXSTxSWyH5tQFs
 yuKxlahg7G789dACkT6OoC1jrCRGNFmCYG5uXiT3AV7db8Kprguw0b1Jstne2OqpwLFknXKEfvl
 YBQVWifHj9N7rWHFGjRX36X+FSqtFYEsb0qlu03anQDot4pJmFw/qkg8U/Zk3nwIm+7SCvkrd5z
 /VPkn+Irk7UlyMrI/z27Vx/1ES67Dm+NlHWRLPiXzKKDErgkm4JPYiTFo7vp5I5ChcZU+QKrHj9
 mbcjaEFRtY3G2fLzegQvY2MgLnigKY8vcH+oA/j/ViZR7eONYCIn7O0gnLsefzGWKFv8tyUG653
 tQBSX0CD+ckjhiWun80LPLxr+W39p/suCIJP1Kec8mbUsyAwcMiFibXjTFtiYogAJdDhK8qz6R1
 CQXv4cdYWy8ZMu/fXuw==
X-Proofpoint-GUID: tHxUmd9fjdRe3S9lnMGwn5FdtUXOL9XZ
X-Authority-Analysis: v=2.4 cv=QaVrf8bv c=1 sm=1 tr=0 ts=69846595 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_oi8KRYSsQRZKH7G7RYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-262944-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2BBE2F0EDE
X-Rspamd-Action: no action



On 2/5/2026 2:31 PM, Konrad Dybcio wrote:
> On 2/5/26 7:06 AM, Odelu Kukatla wrote:
>>
>>
>> On 2/2/2026 4:33 PM, Konrad Dybcio wrote:
>>> On 2/2/26 8:05 AM, Odelu Kukatla wrote:
>>>> Aggre1-noc interconnect node on QCS615 has QoS registers located
>>>> inside a block whose interface is clock-gated. For that node,
>>>> driver must enable the corresponding clock(s) before accessing
>>>> the registers. Add the 'clocks' property so the driver can obtain
>>>> and enable the required clock(s).
>>>>
>>>> Only interconnects that have clock‑gated QoS register interface
>>>> use this property; it is not applicable to all interconnect nodes.
>>>>
>>>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>>>> ---
> 
> [...]
> 
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - qcom,qcs615-aggre1-noc
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          items:
>>>> +            - description: aggre UFS PHY AXI clock
>>>> +            - description: aggre USB2 SEC AXI clock
>>>> +            - description: aggre USB3 PRIM AXI clock
>>>
>>> Should we also include the IPA clock here?
>>>
>>
>> Thanks for the review!
>>
>> For QCS615, the IPA clock is already enabled by the bootloader (xBL) and
>> kept on during the boot‑up stage. Because of this, we do not need to
>> explicitly enable the IPA clock in the interconnect driver when
>> accessing the QoS registers.
> 
> Would we need to re-enable it to re-program the hardware if say the
> icc module is loaded after unused clk cleanup or after a cx collapse?
> 

IPA clock is not managed by GCC clock controller driver, so
clk_disable_unused does not disable it. As a result, the icc provider
does not need to re enable an IPA clock for QoS access after unused clk
cleanup. And QCS615 does *not* support Cx collapse.

Thanks,
Odelu

> Konrad


