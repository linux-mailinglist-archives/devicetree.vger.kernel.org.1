Return-Path: <devicetree+bounces-258631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIAuGTyNcmlJmAAAu9opvQ
	(envelope-from <devicetree+bounces-258631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:49:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EDC6D8B3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF115300BDA6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B50533A9CF;
	Thu, 22 Jan 2026 20:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nIp+6135";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UCvssMWY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9173B39F8BA
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114883; cv=none; b=bKl0zGjCvG9Q7yHMpI4E5gpYdiSZeEWeHWoGHB3G9aCt9kfMl2qBSMu33U41dACuMvJLtLGAdQee7ZQTkya0MbLohWkP1vzOEACeLh6mBZCyOdR47grcUjbOHJsB2bUyYBV+7+lEJxM4cr8OleG/Cf5//S6lfiEL8sis1b/TBDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114883; c=relaxed/simple;
	bh=KjOc2JENMUVYc9Z43267s9VWP7H9WbQwXw5h27R/iGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RtwxBXk7C/Df37IoUmTeup0pYC98+0GeuY8/tVbaoDzTLRyZ0sGr4/IdXZWM3Go3fMiyKL/yGzcRgJJwfnTcxp0dSJIwlAVVneAD0URmBYsYHg6iz/CmHtZ+cpWCAi5OTr38CVUaucWdryWkkvSq3BPo46xOt7BshuNlq5viNVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nIp+6135; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UCvssMWY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MK7oWj3610634
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:47:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eoSe4m10PnBks+VeWa6aOZQ7YPlaQGJ0JBM/5BzjOYc=; b=nIp+61358kGnXXbn
	eaSlT5uiykqKsCHW9yZ3E9VjSwYCX3dt50mkz9LJmgZn0wlWvmTCUBTfi7o6eCRb
	Gf7blYv+i9wDv6EqpTJNLWx2PqoUcapIkbkJyNH/q9NXgF7Af5nZcjoM7w54pob/
	GJ0qKP9o1IQpGge+QDgTGWtVLJDKbvEJrNl3/Il0G9suz/vObXML8Ac+7XSeFsMd
	AxLkIhmW4qhGe8Qm5dCkYDfbH0MG57HFooYNETqTCc/knQ18OKKI4C9Ju2yIHdzO
	xmSOuDLwFB5KBxdHOgjYWLfeNAjskNuK3HBducUxOLl0vNoVPpbHkT8iNNm4fOSI
	S2a2xw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6pj487k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:47:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c533f07450so36917685a.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769114873; x=1769719673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eoSe4m10PnBks+VeWa6aOZQ7YPlaQGJ0JBM/5BzjOYc=;
        b=UCvssMWYCmF0YVuVFOpwRegqH8mcnkTWLxrN3TunnVHdRAeVIpLREq49GNsZ6hDq8p
         Xd2sw3zgUTn4abwu4XruR6lLcpcZeXdCmJARSrAOtNTlJtW6ESf34QL1PSkY0aZMVtzI
         E0lg82ZowiVMmYb6k0j4W+ZHhy6zWURJu9DIObaJKAQdo+0PZ00DkM3pcZGERmXZvHqw
         7eq75cN1OhAA1GCN22jiRjfzYrVwIxzpzVy+O6Vw/4j8MY2epbd+F0IzNs5FyQmr6AwP
         ukQsbEaZGPdJbU6Vu6K3PE+xSr9GrpgrcPBF/NgWLDceePiypf6J6KO28pwKHdhmyqoB
         egBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769114873; x=1769719673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eoSe4m10PnBks+VeWa6aOZQ7YPlaQGJ0JBM/5BzjOYc=;
        b=YA87KnwnShFHtHq4WUq4grFMRVrDAyzzG57nloZi71ZO/YNC+CMmjX/blKVchDh7bl
         FtMVmkQzKXim3F7XSd+rZwRZ8x7qTVKJNtdQ5hd/7pQSBd6+iyH0SXNZ1zM+s6VEHrep
         +/dlKSFImOdUCJQNmsH6sI8qwZkoABeZaHZBbQVxKvcsygAIjyDfdyABBhlakfxcPPjF
         8PV2Tg9in3Xl5bHCOtekTUvDR0EtfEdaSt3NVsdLGmrXaC6fDACZIAVLoTvZHypqGvHf
         XLSbIDI74oLgl76IYA/BoxWqZOzqBpkkDGLAhItOdbAbUg1m4oVS0ZiJHxK+155Lmt9/
         3hbA==
X-Forwarded-Encrypted: i=1; AJvYcCU51LCQ4/aTD609ao2Roc3w3QIY8xRkYXszOROVOoLP2SpJ6ObhiFW0UFDCnnE9ZRRibmlNT8GHmvtG@vger.kernel.org
X-Gm-Message-State: AOJu0YyChLoTjLIHreOwWNwuZi8hIt+ypaA8MJ1SIcyyVTDcHNUqY/b3
	vIGaJbdRkjvGP8HRzy3gyysOUfTx/dGhn+GU1JWJFUIQa7YhlfKWxln7zZQ+TNIJDIEp7d17G3C
	qEubCam8rtcESseN0Q8dNLw92JexlxWC71sOEHrvI8WnFVpa7cwTB3gZrg1U5Ar89
X-Gm-Gg: AZuq6aKPzHBO9hvy9Uw9wWXr/hOC2lcPPVeDUsxDpXwZJ0CMQKe+Pt588Pqj3CJqVyg
	Sjx9Qi7Wor6iBERZJFS7Fy6G7sJWMhJALiNUlRyYixcf3hNSN8I8Gwy+iPZyLmed504xORpNi99
	RRmyWXo9LKbDjEfNXbGnMaRZphcVlsU2sO9nxLQpiYuI0enl/WcYToqB6A6oRnct0WyEIpKb7a7
	hatPrB35slETpeJQkye4jghfP1WoG+EyE+da59IklDGCl8v0cuonj0DTfT2SYjbE/tYsEYuiFni
	4umXhpOfGAkk3zvNinGKZL2OLDAKL2A5qU7CLhkIzWgjho5xuVzTXlNRI1VUUAptHTa3HYNHz+G
	ZTMYqJRp9anz2ic+ZnLuTSTJpAnqwBbslFSddHZveAwJr8Cdoeu0bQcbYXF29Qv+gymk=
X-Received: by 2002:a05:620a:7082:b0:89f:63e7:b085 with SMTP id af79cd13be357-8c6e2e4cc39mr74374085a.10.1769114873299;
        Thu, 22 Jan 2026 12:47:53 -0800 (PST)
X-Received: by 2002:a05:620a:7082:b0:89f:63e7:b085 with SMTP id af79cd13be357-8c6e2e4cc39mr74372385a.10.1769114872851;
        Thu, 22 Jan 2026 12:47:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b754122sm16092966b.46.2026.01.22.12.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 12:47:52 -0800 (PST)
Message-ID: <7c59b236-105f-4e73-9df7-792d665c71a0@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 21:47:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Alexey Minnekhanov <alexeymin@minlexx.ru>,
        Gianluca Boiano <morf3089@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
 <20260121203005.13529-1-morf3089@gmail.com>
 <a52ea93c-537e-4234-869f-50cb625e47f5@oss.qualcomm.com>
 <f0532740-473f-4e2a-a71b-b28357f752d5@minlexx.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f0532740-473f-4e2a-a71b-b28357f752d5@minlexx.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=D8pK6/Rj c=1 sm=1 tr=0 ts=69728cfa cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6PQgf4bN_AKydHGJwAgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDE1OCBTYWx0ZWRfX7IGFzs7ZEl9v
 8I4LyN5vCKx7oP4B3Pyz5xqLijBDfz/71kyQ6iOF/VdFqljQ+zzQBylmKftpzmLMS0AJVH/A9Vc
 SSFrG8oMyXQx3ZRiNroL2dGu8Tid2RNIBM/9VTgRi2Sv48QP5d8v4g4fyFXZWnZKj/EjvGkb9Wy
 Za8aUV8b4kQegfhvsjmCwxonR70iKpGnKeoSrqPP5/BfyXjLXaYS99M/faLbaqoefTdseSmmeAy
 eXGKUHcFhmpS5oK2G0WSW+cTsf1S7EWPV+ZhSSTs/d2ORwAUmQ3J35kurv7a5W7x8MmFARElgJz
 1jVv91MwXmrePgxGZngusoBvEmY5c4qyp5s0BZ20EI64N0WxVGs4fdYStWzUY4+SUR5lizEqIH1
 Lt9yeKZJhLLckNBoibEe4MJt0FQp/Sx3XbYjwkVn//wyPXsWfXACXvLp1v+SkxTQVz77j5hAH7e
 8ID7DKiHKfeGRAk8/GQ==
X-Proofpoint-ORIG-GUID: XTBKrOtHTgKFOp1DFzeWuU4bYt5SsWTy
X-Proofpoint-GUID: XTBKrOtHTgKFOp1DFzeWuU4bYt5SsWTy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_04,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258631-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[minlexx.ru,gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B7EDC6D8B3
X-Rspamd-Action: no action

On 1/22/26 5:34 PM, Alexey Minnekhanov wrote:
> On 22.01.2026 14:40, Konrad Dybcio wrote:
>> On 1/21/26 9:30 PM, Gianluca Boiano wrote:
>>> On Tue, Jan 21, 2026, Konrad Dybcio wrote:
>>>> Why regulator-always-on for l3b?
>>>
>>> This regulator powers the touchscreen. Without always-on, display
>>> initialization fails during boot. This matches downstream behavior.
>>> I can add a comment explaining this if preferred.
>>
>> Is there a chance it simply needs to be power sequenced in a specific
>> order vs the display itself? (seed drm_panel_add_follower())
>>
> 
> According to my schematics for e.g lavender, vreg_l3b_3p3 does not power
> anything directly controlled by HLOS (Linux), it seems to be connected
> to p-sensor only, and goes to bottom board.
> 
> The change is done by vendor (Xiaomi) and as far as I remember is there
> for every xiaomi-sdm660 device [1].

I wouldn't be too surprised, e.g. sdm845-samsung-starqtlechn has a
fake supply hooked up to slpi, as it likely powers some sensors which
are governed by it

Konrad

