Return-Path: <devicetree+bounces-269944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMF0ItBzpWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:26:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A171D770E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD38B301707E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1474E362139;
	Mon,  2 Mar 2026 11:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g5yBSvmM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KxHeqeYT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D402D3603ED
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450765; cv=none; b=WGIIuXZm+IuL/qQF9BHZcJ7ZGexyaCYBEYyDvMNkr6H3TjC/WlKY1pzADeyKW25QJc1YjuGvo8KzWIkqA2sMaCmUdQSmX8xBPCt1FNbN//EPx51pyVfzFVaQ9fKjjTZiG5SY7jyl2f6pHa+7hsTBqGH8RGi7MrmsgonmL7Dlk9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450765; c=relaxed/simple;
	bh=zkf4rTc+nc5uIOrgr5u4Jb6syRr+y5A/JyBO+FBgAJ4=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=BEYoai4THiCVgXGUT60TrYkutw9/hCQY0b/dECkvrqq4exZ5KqTtguuzI8mJurbKrvwALfs2id75tM0Nib8qsCZha6R2LVivGUf8hwN88qpzlUiIPfPY4RxnyTmgBXBFalIaS2FKK0Mnq797bj4WQlETN3caiPcPmmnjU94zftQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g5yBSvmM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KxHeqeYT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229Jrsw3742605
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 11:26:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kL0GBX3M5EUOIFB3IDifGu35iWJBpOeIwSooFpQIjkE=; b=g5yBSvmMJOgYj5ON
	Pd+3rgUXlqnhmfw+Awv7xsVnl0e8rS4asBaTpYGU8D5N4aQbLYBzI/qOtRo/RBfV
	utH6daqpFI7q2hG6HK3cCRdqEdrQLS+D4Asq2+dXtwO5EOlvTAX56fNruni96pP2
	uDUAf9ObBdMRqhoaK8IqacwP6Rdr6Gt09RXJ4NJwRArdlELhDDSSChsBnd0pjbvY
	95t/BXNPx+Z5gAce6qRE9CrzhDMeFlLV2WRe8WBQMnDxMbrsilGJvrlUKKymKJbX
	zq/W2sE0os73/Cu3gKiviQQ0mCQ2+IefQKW7zFTFdU6NikMv1bgTRUq/jBgtBFki
	0EwosA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7trge7q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 11:26:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3594620fe97so23347844a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772450762; x=1773055562; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kL0GBX3M5EUOIFB3IDifGu35iWJBpOeIwSooFpQIjkE=;
        b=KxHeqeYTPWsaQ3TC7XYU1UCYujNnjghAW2A0WbS7rzSmJ538T7cB4EYeCELI/2mWDD
         rY4kmD0dF7gfrimR0q1USNBSuCWf7BhtR1ShrKGqN363Z61iXUztdVEsPPHfoM4We4+H
         3PgJwzzUSuQIdGth1fN/wgxrJZLYKpEZXaZOHHTpj27zXH9dZsz/hdThvze9e2HQtVkl
         DTypHZ4KKnad1/Qr1EFEMRJ2gFH+G4VpY8tcM/WsLRmlRZFgheM3A5LgtVcQvi7kurPQ
         MQ0fplvSD+TxxLRU51HXTvbZViBCMVCpn/Kdp/eL1Vmt5cXNuZ16OOvYHPKh3dnFsRTH
         FlkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772450762; x=1773055562;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kL0GBX3M5EUOIFB3IDifGu35iWJBpOeIwSooFpQIjkE=;
        b=UtBCV9WueUp4piOdFI+9LG1OY+Mfvng3SvBg64Rl54PKMjCGLkvG5T7BQHafvM0wmd
         lCKND1aRAlyqkeJZ8Jc5vbcXTBcwqaDvD84qQby6iq2bpaiyZ/3NJUn7Iw6u4EK3Fk6l
         AELWLV5nep26WfKxW76iUuKOtgx+ZVPV2KnYctq85LxCwKrUIpaH1dPrl0jGtKE1VIku
         93piFbXCjJkHbzUNwoKkvRJozpm/zA5Z49yoiCYCo9+Tbtpnx+DjPtk8yyb6ja6EdcyC
         UrJgyzWl9z2JERoxN+fiCa0xcO6WOD+V8eBCcyDTy6/VYbQbiQbJp9KTwMJhbXHiwPnw
         SsNA==
X-Forwarded-Encrypted: i=1; AJvYcCVfb6Z/4kLFFlbvFzFPtrGTUR22W23WEvjmIt57fU/4dwqWB/Y3l/kgm7eFaJKyELfnR7s1SPzIj266@vger.kernel.org
X-Gm-Message-State: AOJu0YxpJBzoFjkW7JdVYOzwHq5PmwXE7larkg99L2WQKjwzNL8AIXxw
	SR89BWz/4yI5UcgK+nsHfINQPa1XEOkj/QSn30fIL3GI3jkAEsXIiwWwJNXLhYy1X8Rxnp759G1
	Oarr6YYoENf3Ft919dp8Xlh6p5ygg/PJuTiHEDyFVFbFE/bI4hJAaj6PI0J+1jcNRlPcekDgq
X-Gm-Gg: ATEYQzwr3dK94ujlEsN945rGAw5PcAx4QGBcSejPCvNoViNE8v2WhstnufoNVIm3rfN
	fkMZilNDZW+oNBhcsBC4rP35KBCFRlzJQSaY3ogRhTR+jrBGJ5ZIXZAXEtT5QXvdGOQ6sRl+jkU
	/VWjPuBBtehZ8Mm4eBVf3jL9wNWDZMyFHmzscOG/aWdGFtq6PGqS+P0R2tuNtrcDoN9tTwnSO1L
	y/fYBl90u0vDRxISdvsAWBHR31mS75niYZm97+WXNqR72DZ13fgbDFnOoIZbue4gkNcneCapWFz
	6WmGGHcbTfjoMPtUuOhhYXTqdmTCEw4k0aSyeA+71IxZ70SG6Qr/wQbSv2rtmdgryIxY2fLlQHk
	IfD4tF5tFjrQtI/2n4C7r93V3xCdkaDCEXQISszG3qnc2J17njw==
X-Received: by 2002:a17:90b:590e:b0:354:a57c:65ec with SMTP id 98e67ed59e1d1-35965c9043dmr8800984a91.20.1772450762134;
        Mon, 02 Mar 2026 03:26:02 -0800 (PST)
X-Received: by 2002:a17:90b:590e:b0:354:a57c:65ec with SMTP id 98e67ed59e1d1-35965c9043dmr8800958a91.20.1772450761672;
        Mon, 02 Mar 2026 03:26:01 -0800 (PST)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359858ca871sm4552392a91.10.2026.03.02.03.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 03:26:01 -0800 (PST)
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
 <20260217052526.2335759-2-neeraj.soni@oss.qualcomm.com>
 <20260217-berserk-puma-of-focus-bcbe82@quoll>
 <e3ac0681-605d-c1df-e4f0-78a2c142fa66@oss.qualcomm.com>
 <21a87714-cd11-4217-a2aa-82fddc3a8530@kernel.org>
 <544925d0-cf32-6b2a-548e-d6f7cc517581@oss.qualcomm.com>
 <01085021-c116-46de-a0ce-730455620cb2@kernel.org>
 <32b7763b-ba44-4341-8528-be97d6607354@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <06967254-7fa6-218e-db8a-8e4a118a7d24@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 16:55:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <32b7763b-ba44-4341-8528-be97d6607354@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA5NSBTYWx0ZWRfX9N/LzF3sT8HP
 kkIBj/Wt0+vdex2yx/XbddBmcbiFNTpeJx/d6YOCqNCFx/jVW20mDQeMHCO68g2s1ZuTe9s6rJv
 EG7esaxYkOqYgpJ8RvNG5V34GGFTz70pwU125/iVsX5P4u0CCyqBaEwL0BLyheG7617YThNMaf1
 SMTRql2w9tdsMBW0Sn6kXhaQaceix0hLOSRJ9ANp1uGsfzzpgdLGvpwyr0zq3krk4nuDrh+/JsR
 fFSdKVNuQpcxcrCvRO4x972IWr0btXVoYkuj1PHGsH7iRfVCeKB6Tpa8levrvGdTkKqIde5gzGU
 5zk00peIr6nHHYuwt6hhxldLyZ8Pykmy043ypecAxYFoMyGVyj8xCczJTc/GhReWvUjt22adcpp
 /evB+tJxMAMmHSRbjMwRZsr3e7jXgXjYJb3Dmlpfy2EK3YHyPqfKQF/PMCFd5TwUQpT7z9T6VVO
 iWV0rxQDy1tmRdycu2A==
X-Authority-Analysis: v=2.4 cv=TNhIilla c=1 sm=1 tr=0 ts=69a573cb cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=RyUJWM3ohA95taQL8aIA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: 4eqzTzbKsmsebIf1xzQvadKFcyrDbuZH
X-Proofpoint-GUID: 4eqzTzbKsmsebIf1xzQvadKFcyrDbuZH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020095
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
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-269944-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E7A171D770E
X-Rspamd-Action: no action



On 3/2/2026 2:27 PM, Krzysztof Kozlowski wrote:
> On 02/03/2026 08:48, Krzysztof Kozlowski wrote:
>> On 02/03/2026 08:45, Neeraj Soni wrote:
>>>
>>>
>>> On 2/19/2026 1:57 PM, Krzysztof Kozlowski wrote:
>>>> On 19/02/2026 06:38, Neeraj Soni wrote:
>>>>>>>  
>>>>>>> +  - if:
>>>>>>> +      required:
>>>>>>> +        - qcom,ice
>>>>>>> +    then:
>>>>>>> +      properties:
>>>>>>> +        reg-names:
>>>>>>> +          not:
>>>>>>> +            contains:
>>>>>>> +              const: ice
>>>>>>
>>>>>> And reg is still 4? This is not correct syntax. You need to define
>>>>>> proper and final constraints per each device. I would write example, but
>>>>>> why... more things you could just ignore.
>>>>>>
>>>>> I had included changes for reg in v3:
>>>>> https://lore.kernel.org/all/20260206112053.3287756-2-neeraj.soni@oss.qualcomm.com/
>>>>>
>>>>> but those were not reviewed so i assume them to be incorrect and dropped it.
>>>>> Will fix this in next patch and post.
>>>>>
>>>> Patch v3 was also not correct, because SDHCI v5 devices should have 1 or
>>>> 2 entries, not 1-3 as previous patch said.
>>>>
>>> This is not clear to me. Here:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n80
>>> it says the entries should be 1-4 and there are no v5 specific constraints.
>>
>> There are, just scroll.
> 
> Here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n212
> 
Yes i had looked at this but, as i understand, this constraints the minItems: not the
maxItems: and in your comment here:

https://lore.kernel.org/all/21a87714-cd11-4217-a2aa-82fddc3a8530@kernel.org/

you expect v5 entries to be constrained to 1-2 and not 1-3. So, as i understand from here:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n78

the v5 can have 1-4 entries without "qcom,ice" and 1-3 with it which is what i had posted.
 
>>
>>> So i made it 1-3 while adding qcom-ice constraint.
>>>
>>
>>
>> Best regards,
>> Krzysztof
> 
> 
> Best regards,
> Krzysztof
> 

