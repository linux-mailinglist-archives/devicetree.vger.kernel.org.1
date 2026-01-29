Return-Path: <devicetree+bounces-260863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O8KNNtMe2n9DgIAu9opvQ
	(envelope-from <devicetree+bounces-260863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:04:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75433AFDDB
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62EEB3037882
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563E63876C4;
	Thu, 29 Jan 2026 12:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hg0gYMoP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S793OF0A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850E43815C9
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688272; cv=none; b=tkRvnZDsYN/7BFf2hml4Toyty/owU5tNLf1aZ00THKEF8XALXY2IAKO3LDzj072yXvZaDrTUsXP9/Tt/nCNfE7srDtybthEIZwgycW8q6XIDvPC0UAcS5W8F+VNqEpgU2gTwTonkCgLa1jK6j38buXTviWfwN/jhmyV4FlpEWyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688272; c=relaxed/simple;
	bh=ohEkPql219VZK8RP+2tL4A6dFsp190JpCnuMrfygOwQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XewoCcwndP3csI29fceFd1sElFw8/smqFp4OT09/Eg48HivR0RniTa3H2oLEdrvjDYrYEKny3VcOzzt5UYmObRlR1sIA26LbnR75QmEO4RCkmItGoF2ykaqP9LqKNq5e8sQS/TXHiBQMnw0dCLAjI3rv2v9g/zHphTqrS21bJuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hg0gYMoP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S793OF0A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T9xRuJ2150413
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SL2nkAcLlmCCqZuSLSLfneU0UEPMFxPYDUsIHnqOJto=; b=Hg0gYMoPPhsVsPkZ
	5oU+PW9jBKO6uV+5wNus/VGr91lFrTzzZyPj8PTbhOjsMutHEMNk0o9Wt4dZWfQU
	1zO/UYhYCoL+F5CMIIlljgFSvYv67Yr8c2F40TgtFJar9Uhyr1AfsBQ4GI+ilInX
	nIohyAwq2k8ZFrJBTzi9WE966bmCkQ+JLsdYdY+zCoBAWNj8GzI83kZ7vylewVI7
	VgOINDUegI+x/MdN7Rzw1gUZFpaENGHNH2Nsg3o8ZkKeakduG09MXjUi2wLPBaho
	pgzEgFZtDRPDAENmzsudD8yepYl30f0gNJ4hJiHGUyJbvHOADO1dFD6zaklJ5J2R
	pfpgvw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byph3baw1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:04:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88880bc706cso3313826d6.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769688268; x=1770293068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SL2nkAcLlmCCqZuSLSLfneU0UEPMFxPYDUsIHnqOJto=;
        b=S793OF0A1UHrLc/a2/yv/97yl00DKbK7IMYWdzJ/AYOhKCPx3tC8aX5+ZNRIdsxQwt
         YTnXiNICCUijxi6h+jqGKtmr3fBR2IYKkZCtD5Y16PTQ7WvsQGtq54xtOLxbDZtn8AS3
         nGO7pNqGtjG78wzym2vMrPuocq54gDbPNKFjrtFRM8ohC8qf+QNqjuHkXrjrKcOJJc0E
         9oDUo/Kj3H0Mt/w2sfI1VmDTlv5sXSEortZ0O5YuIGo4KYiOQkfqZc2vnxIQtI2NOv0G
         X+cYO+u7vRW/V6ItAOdCFFl9pNYhZYISzp7yR4H0FISTGny5dFSb+QQXjqP9GJSEmRQ5
         pQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769688268; x=1770293068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SL2nkAcLlmCCqZuSLSLfneU0UEPMFxPYDUsIHnqOJto=;
        b=u5ETVWmARw3vhzPtd2u2A5MdxRmzxLHwJ+Kj17UQYK6gcn/Q5xXHZR6IMso9l+Jr+f
         7SUxzz2dybTKX6X0l6pIQQ4k+ElMovvJcU6JBsmhA2l+qgsiMuDl2voYU9IuJSSqKJxG
         JklDeTwacbFD0xDMw8424sof+YmeBMoFD9i+d5kv7Z4Hjd5qYrVkQu7QRDMnL/KpF1wF
         H6Smt5dv4G+ZG6Q3vq1p6DkKBkYn1qZ4gJ6LJ4A4Tr+Ps7QfiQIlunJcjaz9TIs0yFnu
         hTYuzT2zbLQ1hhgjs0l9+TRKNhpSF5E66B4828oen7eyAi6bbUbFrkQ4qC958gAEEGiP
         b6qA==
X-Forwarded-Encrypted: i=1; AJvYcCWXEo7O4mty8r+IdXWAmJrxYDk6YuEYRnuLoGwkvS+XZIGzRBMNh0r+QssJaucRBIGDZiNjb3uX4XBl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1KZ2HabfBZc2Ffo+1Byp94jmg70i72TL+B3B6rR+ngIX5dIvn
	uiCi7ClLhzyffqVN0ZwXUg7/XxQenpwh2YQBpPOmVbI3taokeBKfAzWOuzNhxZNQvDwmF0oPbvP
	t7IgyRYHj2vd3yoB0ApvcGMinQYlmbH1UwIFfS082NbykqU/rbMwvKPuG0zL4g9gu
X-Gm-Gg: AZuq6aIzXVnmhMITAY61A8D4g5D64xDwAFbDA/xBzJFGBN9gLNoKuP74A3BQFJCZCyC
	06m6KnYWO88eygKOmBTeyJR4Nqn8arrV0pBVxqUJfBQUiWPELr7PI1M0ggOv7NekNz5v0zPal1t
	ULlSr8Uk/69Yz3UtW7t3RhZFy5oiEjUncPfJZm5Wu1+wJDTnWJOlzj+cVI6Mvj6c3MqLz2tIUql
	AU1NSr0cEgEuf/IqR2WLhvakH4zmNGBeZlF7eKYxk6eRVuDpTTfdT+BOKYHmJnCwmG6o2NTM1Bb
	MoJ4VasfYmaVgv/ZpZbq+vAK5hBG8VoteF2D8vc9QB46k0MxosGkU5+pP8mGKspuX7CCB1Vqih3
	luru/boFHnLSsBxst4qq0tq2ZV1laoAmMEVUlDP5Xh1t+pMG7klRckZE8S7Yy0LhR7Mc=
X-Received: by 2002:a05:6214:484a:b0:894:9d32:6160 with SMTP id 6a1803df08f44-894d7698176mr45530616d6.0.1769688267699;
        Thu, 29 Jan 2026 04:04:27 -0800 (PST)
X-Received: by 2002:a05:6214:484a:b0:894:9d32:6160 with SMTP id 6a1803df08f44-894d7698176mr45530206d6.0.1769688267159;
        Thu, 29 Jan 2026 04:04:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691d0asm2858193a12.18.2026.01.29.04.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 04:04:26 -0800 (PST)
Message-ID: <6244680d-f6c3-4aba-8e12-61093e51f76c@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 13:04:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: document the Eliza Top Level
 Mode Multiplexer
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
 <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
 <dc0b7245-de95-4db7-bf8f-815ba60d7adf@oss.qualcomm.com>
 <pdxrotmxjiebyj2gqx6buwupkydngxki6jgv4e6l6fmodzc5v2@yxky3civt3yz>
 <8360708d-5d82-4cbe-bf0c-31107ab07bac@oss.qualcomm.com>
 <p5rv7u5utnetlt2xvh6ixk2xvi74tdcurgwzrkxfuq7qa3m66u@m7u2ukr46n6j>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <p5rv7u5utnetlt2xvh6ixk2xvi74tdcurgwzrkxfuq7qa3m66u@m7u2ukr46n6j>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z93h3XRA c=1 sm=1 tr=0 ts=697b4ccc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3FHYLhF6MVEL7NXZVLYA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: BACAaLTuaLPeh5cAoVahnN-QJftS-Wge
X-Proofpoint-GUID: BACAaLTuaLPeh5cAoVahnN-QJftS-Wge
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA4MSBTYWx0ZWRfXyFoSHD2Mx4vG
 SXkeG2r6i2+Wqyic73BVZv8n7aQN5tO7/xfs5AHcW39x9ErGD61Vft2Amkga0Xx5DB5N8uUeeE7
 dr+2sqj905w5SH5WgYQUtOgjjvJ1jmoJeLVuYe3MDmcOJ3XOsoymRmBJlJef2cGfajR1Vmc6ndD
 5OtgpyKYze339afEV2m6Zd05oPdIvncpuwlnXOoCvkYdBvYO+JjnAgJcZK7xUp842Gh9ZLT4nqL
 jslj2IiVqmjZjr2B6eW2emX/Ph7FtkKCPU3q8beVkjnyONk6jvsKm2Vo4ULtk4Lymftzwen4TcH
 3PQYqYxGiWqalCcXy8ZFGFt12jOM0D2lmKsNelAinf52jkokMhCWKe3ejA8jcCHtY+1eiuQeSD/
 2KQ6Qn13I5GmxeqebwDYtGTVGUtTLn8NjZlBl4F4Qzz18ebMsmXCi7ZO/oWNqhgIHzYYoL25T7o
 lve3vUAcfrg9IjOO4dg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-260863-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 75433AFDDB
X-Rspamd-Action: no action

On 1/29/26 12:12 PM, Abel Vesa wrote:
> On 26-01-29 11:45:59, Konrad Dybcio wrote:
>> On 1/29/26 11:41 AM, Abel Vesa wrote:
>>> On 26-01-29 11:34:07, Konrad Dybcio wrote:
>>>> On 1/28/26 6:22 PM, Abel Vesa wrote:
>>>>> On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
>>>>>> On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
>>>>>>> Document the Top Level Mode Multiplexer on the Eliza Platform.
>>>>>>>
>>>>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>>>> +
>>>>>>> +  gpio-line-names:
>>>>>>> +    maxItems: 185
>>>>>>
>>>>>> 186, your first GPIO is 0 and last is 185.
>>>>>
>>>>> Actually it is 0 through 184. The 185 is ufs reset.
>>>>
>>>> The UFS reset also happens to be a GPIO..
>>>
>>> So the gpio-line-names should include the ufs reset,
>>> but the pattern not.
>>
>> Why not?
> 
> ufs reset cannot be configured as gpio, so why would it be part of the
> pattern?

It's certainly registered as a GPIO, as all users of UFSHC refer to it

> For the same reason, it cannot be part of the gpio-line-names either.

Since it's registered as a GPIO, why not?

Konrad

