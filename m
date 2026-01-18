Return-Path: <devicetree+bounces-256581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E22D398F3
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 19:15:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49BC33004F0E
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 18:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F33A30100E;
	Sun, 18 Jan 2026 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gN5M+4PI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qfpv0rZk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A8D3009C1
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768760154; cv=none; b=T2n1zTtyfgqGfzwV8Pi/E8O054J579ahiCVxSAT3SFhXRTXdBXj3v9Bm2aHDumRy/aMkbxg0XbS/Grr0/6nqye/MVnCWmAFY4VHYNNq0S9jwTFtrnQZCEFIq/L829x5gVfqk/9F/2FWBiYKCiCkBYblnrsFdEXtRAmCp9So0bWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768760154; c=relaxed/simple;
	bh=UW2l/WUr1NmzI+w1eSgyTfUJnjMSLtC7p97KslUWzes=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X6MiJBjAd89/W/yfpFmqe7h0Fh+JBWk8MRI8AliEgxb51lVyrvesEXtU9AAQOxtqdjURPaHsufRbY5HRqPRFqKl1B12RoNDw7x3/aIu4Z0pIESIs+FOS6VtxKTZO0mDLRekyfKFYFu/zlotgft1a0gL81CaWQE6ZzgQz/y8C/Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gN5M+4PI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qfpv0rZk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60ICOZDn2705569
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:15:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BIYjedIc7ra2IDxpaysdB+w8GNBqgMvh/OYIdrZUj1Q=; b=gN5M+4PIBjck/DU/
	yBUyi7dJj7UYTmRZmgE8bQk8U4CCoW+Xlj0/4lARFFd6D5iRWnlT93IApoda541r
	2fMrMSG1DHkvWaCBVple1uhpKlIUt+U0nr6piNoGr4LS3Sc1DNiKQZ4zgLpB2vRT
	xpCPwPGxFQ6t0VMqcorbmOkD/vIxEDBQEC3JevEpBt9KcVoc63BYvRlpbT2iufk2
	qd+iRGE+5WHX+Qf2l7SZyYJUC5gJE15zq37iaZgIS2dqMUdt8KG+9TfEdPYdokrC
	67vP43C2mST2b0OYg7KT0zAqO5vhKUdkfJaSY2+y62dyMQH+7hxABablC12hGYds
	qsJKvw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2n2tuqp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:15:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a089575ab3so30604205ad.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 10:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768760148; x=1769364948; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BIYjedIc7ra2IDxpaysdB+w8GNBqgMvh/OYIdrZUj1Q=;
        b=Qfpv0rZkvIntSVkIilKcEuGjqPACdcP86Zj2Jiiihqgqhg7y2gMm/7gYEbgdyvn4Pb
         Yq0Dfpz0bYkBedU8XcL/tiKpwB49lbcUWnH7PTXSmRkF9fho41t7zc2s44SiwFzr4doi
         i1Ewn6U5ZG8R2cAM+CqrwqfBgiWrv0BBmekS9T5EbZeLBvVa8MqbDo+om+FShQZjXJSj
         v9DHDTqhBNZA0QFr2w4f8pnKBiBrMw0O/4JY73nIkZwhMpSykczm4uwoF1YOgYi0M/eD
         ogVh11wKHgIpg7ivyFJCXXOcjyaooKoyyGveuBxW6vtubu2BNFrvCJVyO49LjpYgZatv
         Un7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768760148; x=1769364948;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BIYjedIc7ra2IDxpaysdB+w8GNBqgMvh/OYIdrZUj1Q=;
        b=hFLC9HABrEQv7oyainI9SNtHvd0qJoMpM+c1mOT99mr3fWQlDBFc4fcl9EP3lK12fe
         Yple5oGrVc5N0dESH16EUgMRCSHQobDQmvjreg9v5R5LuS77GOP9o0yCmQWvQ6yAJm0a
         0yypFLFds7gS0+PdoqE3H6zZKwfdyzP67eO7eAxKD12OZhq+0XML2Zl7MGdJcCbqd0jb
         Fua7iAz8c/Me9q9NiDq0fgxSPkYiVLHaSEgGmgoGYL3xp25ZIHZXhoVd0x4fjW3vBqkl
         GqcFlyEotia5l6mhrjX1AmiguAGbq2MCas7rJ8U+24QzJMM3Wl2Rgxb2xpOeNvlITY/I
         3vcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUTmG1QSE542IuHO+O4BfuNns4rbMCos7oKf8KoCmStQoYzLWOdMhou5d1gth016+IhSPnEZZEjfJX@vger.kernel.org
X-Gm-Message-State: AOJu0YwE5thjM7wik+cKLShhyQFLSpKCcO9kle0RL28smsYVt7kEkXwE
	708zWegRO6t+TMMU7eztxIwslTBS+XQ7y5xgs4xd+/lFqBJdJ3hv9kHhIf7xKHB1HBqUso3yDrf
	L1uuEmRiiSaxmM+28HpLDIARpu/iVOgxVdsJfV0voxDxjBfJUXTCIWfUgMQ/TCfIb
X-Gm-Gg: AY/fxX6PC6G+miGG6fnPG1TPKb2AgpxXLA2sNbi3qSgB8TYK3vj/FJtZURfm2ZvYqwb
	RMSgyfL3A1KM+KUuy/+YMOPYd3NuPL3WZcBps92uzT4VpVOAsKBr6QutAiDbV78uXfNng9b70ga
	ZQsFoDSgCV8LyQFgsKmd+WFcWonXk0RX6jhBn6PcTgPxQT3p4U8Hz0CsxE/+3fupOJEQtwGgEsQ
	DnOy/KXSwZMF6Vy+2RDeSbbwSgzILXt9nIWNvhK4bBN/7WlL9ynkAvsrYLAzzUQ7N+lerjB4h2X
	ExAxNwR7MGP0CkXY7NyanfXRJYNhIOMLgSo98GE6XYCjYdjzUCExleYZJUGiSKC86ZVxl9jVhis
	7xr2zU/zVXSvAN8Pazcx0k/kF3kocSEI9TlZDrOViXEAvxZQ=
X-Received: by 2002:a17:902:f64c:b0:2a0:9028:11af with SMTP id d9443c01a7336-2a7177d9887mr111233455ad.59.1768760148209;
        Sun, 18 Jan 2026 10:15:48 -0800 (PST)
X-Received: by 2002:a17:902:f64c:b0:2a0:9028:11af with SMTP id d9443c01a7336-2a7177d9887mr111233305ad.59.1768760147717;
        Sun, 18 Jan 2026 10:15:47 -0800 (PST)
Received: from [192.168.1.12] ([205.254.168.142])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193fb2bbsm72098695ad.74.2026.01.18.10.15.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 10:15:47 -0800 (PST)
Message-ID: <aec4a691-03c5-46ec-b99a-6b68a2bcedf4@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 23:45:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] of: Respect #{iommu,msi}-cells in maps
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, robin.murphy@arm.com,
        will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        saravanak@google.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
 <20251231114257.2382820-4-vijayanand.jitta@oss.qualcomm.com>
 <fde70548-61fe-41f3-9bdf-37ceda603e02@oss.qualcomm.com>
 <ec91c169-ac9c-4f44-a3a7-b6fefbf2be96@oss.qualcomm.com>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <ec91c169-ac9c-4f44-a3a7-b6fefbf2be96@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TvvrRTXh c=1 sm=1 tr=0 ts=696d2354 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=iXsRcE/C3PG0Ejdleh9IGw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8
 a=0PCGqwN690N39_7ecfkA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: sY9sSYcEypMzrkb0UEvuwC9HrvLSu85t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE2MSBTYWx0ZWRfX/WtOHk5JmP7o
 jSOSq7oeiTvfeqaEHlnWEFryzq/lgYk1xrGMJXi7M7xZNOAY4oJNvJO1JWfDnpc9EGJF5yFNnNY
 RTtPfRxvhFIK1u3v1XwujX6VA01VUUU5AXkghTJvv3k1wWLvOmtdBaQuoOSfuglgQVvHLCMuSLr
 befLK7/6MHzHcJrd/gP1M7tIStRcK66Sa6e37uplfoflxUZbUgwwO2zB2EtnTcI0T0Ie70xtHAv
 6YT+BeNOc/KuLyf8ZuQgxIdYHK68noR/ThywiOKJkWr7z89RbgQc03grWC+6ptF38cA0pP2Q39u
 68tvBuTxFOpKZtfLPE/dU3mnmb1z/P+WKFgdntKVggDTl650rWZQjz/4VcgahX6hHJoG/Jfu/dU
 wK6NB1xKgE/UovcjpIaZ1vAP2ccgz81JAberFTCjDvdzd+BTXXG79wU6IBO4mFSpQ1uafQ8KpU4
 cnKRLPcYHLBxrwMlITw==
X-Proofpoint-GUID: sY9sSYcEypMzrkb0UEvuwC9HrvLSu85t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601180161



On 1/7/2026 4:30 PM, Konrad Dybcio wrote:
> On 1/7/26 6:31 AM, Vijayanand Jitta wrote:
>>
>>
>> On 12/31/2025 5:12 PM, Vijayanand Jitta wrote:
>>> From: Robin Murphy <robin.murphy@arm.com>
>>>
>>> So far our parsing of {iommu,msi}-map properites has always blindly
>>> asusmed that the output specifiers will always have exactly 1 cell.
>>> This typically does happen to be the case, but is not actually enforced
>>> (and the PCI msi-map binding even explicitly states support for 0 or 1
>>> cells) - as a result we've now ended up with dodgy DTs out in the field
>>> which depend on this behaviour to map a 1-cell specifier for a 2-cell
>>> provider, despite that being bogus per the bindings themselves.
>>>
>>> Since there is some potential use in being able to map at least single
>>> input IDs to multi-cell output specifiers (and properly support 0-cell
>>> outputs as well), add support for properly parsing and using the target
>>> nodes' #cells values, albeit with the unfortunate complication of still
>>> having to work around expectations of the old behaviour too.
>>>
>>> Since there are multi-cell output specifiers, the callers of of_map_id()
>>> may need to get the exact cell output value for further processing.
>>> Added support for that part --charan
>>>
>>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>>> ---
> 
> [...]
> 
>> Rob, 
>>
>> Gentle ping, could you please let me know if the latest patchset looks good enough
>> to be considered for the next merge window?
> 
> You have an outstanding build warning:
> 
> <202601062128.BCmw1wNO-lkp@intel.com>
> 
> Konrad


Thanks, I have fixed those and sent out V5. Please review.

Thanks,
Vijay

