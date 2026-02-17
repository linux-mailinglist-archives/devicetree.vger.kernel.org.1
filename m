Return-Path: <devicetree+bounces-265973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPxKFhIOlGn4/QEAu9opvQ
	(envelope-from <devicetree+bounces-265973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:43:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F08B51490D4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 266D83006178
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F210B2C11D5;
	Tue, 17 Feb 2026 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YmSmABQl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M3yJL3b7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC872BEFF5
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771310603; cv=none; b=SeF68LFtXSKLw3ObGi9Tbzuuk3y+8U7F6tjAb0kJfV4lAiZirVl6GeZJr3KEZsVX7hmyE40No46R++KAj/B0gl07+5cILnZgCPaVHw6++UibHatMkFuHafDvK1hGxAfRUyrqNqT6aIEW8Hypz5weMY8d4Ubx22tgsv++DmgTQXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771310603; c=relaxed/simple;
	bh=N2FhpvHPlWjKFIPAP1HDBoGC7hUdQXI86alOPp1ZYII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TCAZ7E0D4Pf0G53bs3BPtHjrNFz4u839zbPlfFoiHaJORQI4RE/LgKKU+SrIdPODXBFbzFej0/8/D6eGJcQHzAt2dDkYbMmILiJ1g2GOSb6olkBWfLwS/7BgtWrU+bos9X5LJrPQmR6bvU510adW/+JGLtvNUSEHfFrovI3ZGu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YmSmABQl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M3yJL3b7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H0P1du1223109
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N2FhpvHPlWjKFIPAP1HDBoGC7hUdQXI86alOPp1ZYII=; b=YmSmABQloj+SiV2m
	+BXkkrmElvGI6J0ASwHxVek5dYe9fX6ipOCJVyOb22DqD0f6rbOV0ZXXQ7AAS0g+
	PCqYNJyy6Grt5GVQazsKHHNvaiRo9QuwdCf3jrIJDkGyPHlsgsWIw1aNemR4jyvu
	n/wI2+3ceJnlcS3CCX9PUplYHle0eVqTDinFDJQi2HgnHOuNm8Z/2/nlxEd/1dX/
	99cW9TjDJA6hx4Vc6dmYrpc7kYxaQJGlCD6R4Z025yUwIIiLTP2a5K/6HVVjzSAB
	5NHovkDJKicH3OLY/MPrbtLZenO4MogIUl2qglSF0L5S8BaprjJ2fgJl7eksWxMF
	bo76pg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrscb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:43:21 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35679eb61b5so1659015a91.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 22:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771310601; x=1771915401; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N2FhpvHPlWjKFIPAP1HDBoGC7hUdQXI86alOPp1ZYII=;
        b=M3yJL3b7gv/Wlr0Vf9ssTV2sIYZBcFuap4GqJd2D69b8PkLAG/7nSv1FhGKF7ViaaC
         gZyyjzDxjMwPextB5/j8SJDjCFa09Gn49WwhjsrRiGrqFvIagWZAhm/vXcgtN/458ncT
         aEYV6wU4qgVkMFQ7AgBt63/dcQ7bFoUcAOOOraalV7pSgSX389s0e+74Ani83kXRew9D
         Wz6rRfQUldlRFxqTD1rR2TLeD+iJNQO21qJaVjYsuPjy0ShjOqgpMmLCbX7poq9TAyxm
         yRk106TUD/naiHUr6kZDcWWPJxnVq6tNcUjIupuurlpTuzuWgAknQl3PpE4pym28yGki
         WA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771310601; x=1771915401;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2FhpvHPlWjKFIPAP1HDBoGC7hUdQXI86alOPp1ZYII=;
        b=Ql4wAHvwHPC7tF2TKyMvDcbnjnRBt5BT9KiG+yGF26uDOkqMcx7STjl/ogKy0Bcwou
         EcUIqPI3Cjzse8ekpP0QMuiu+CYI5+F26SgZ+fVVe7Nf6YHvUBl0yXXOioZJi+vTA4KV
         9B0UR5dTc55m6DyVoa9vMB8apXZljDdSrQp3S0+COTM/yiZMJPZY/bW0JNc4h98SiMy5
         b8FTKyJuu4FKZ+QWVCsHEU4aRjhAxqueRgb/UjGTpHVW6bmOpUs6l00UHn2kQG0xznKx
         Ztt0m3zujNKwZaYLfLKHAWLcAIflDqryXLQ7642fUSIPKhJEuTGOoz0l8CQpLwUKxWGX
         ci3w==
X-Forwarded-Encrypted: i=1; AJvYcCVeyapoc/NEKaqnCB6iLpnqwzJ6ZW6dZtYQALYXlidPtYrU3T+g21xHpGuqFJFHXi5EGUFT/NP0H+4I@vger.kernel.org
X-Gm-Message-State: AOJu0YwT567sNlomHV4jOeB6c6HVdeCojNkuGPmRp/9+xfSW1kGruOBi
	LzoxsJqI5PqzbmskHeAwasfpGA0X3cevOGp0qOek2Q6ZRYi20odk8V+nWVDT4rsOqFt8cepg7cr
	n51RNPpAuLaSZWDBCUlNW67H0dX1Ygh7NumL5fOf+buF8yQuLsmcQoHVvOlzqCLLu
X-Gm-Gg: AZuq6aKjjLfUHOlZJizPl7lMUkQao63pz9vy4epJ6ULLmEn1WU6QrlnWT54Kcr5ZmCb
	XyXOvLWj4LdBHCmRO3mnt0EChJzo8evhvF7d5VXlyMBJyZdzqeRG384Zk3T1vMiu8p/2yy/nY4v
	KF7k63WfsDPStldHUd4o0IQpVJndGxUD7lK9qjH6dD5NccFxnVUaU4kNLK6gS7ojLLy5WCYOdPh
	brMlrvG+cEMQeyaxyT5n0vTM7qG9EIthR5a099A3TehbKiSQRiE6B88eWJSgbSjT5Aeje5bXF0h
	ECAf+qRX+8fE0W6iibNKamXC7+C8qCG+hp3ZK+6/1/Ps58+j64rcDF6TGtcNVgKkMZwatsFXJzz
	0JJTS5Dbfvmz6svB86za656Ql034SJORIUJ4qxTAc+INf+ZjNZw==
X-Received: by 2002:a17:90b:2cc5:b0:356:1f2b:7e9b with SMTP id 98e67ed59e1d1-356a6e38413mr9133040a91.0.1771310600660;
        Mon, 16 Feb 2026 22:43:20 -0800 (PST)
X-Received: by 2002:a17:90b:2cc5:b0:356:1f2b:7e9b with SMTP id 98e67ed59e1d1-356a6e38413mr9133024a91.0.1771310600177;
        Mon, 16 Feb 2026 22:43:20 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662f8cc57sm22053476a91.13.2026.02.16.22.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 22:43:19 -0800 (PST)
Message-ID: <88ba2bd9-e7d2-4a7e-b48d-1eb4d3d40aee@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 12:13:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
 <957d7896-cd01-4864-bf07-e6dbdfff1273@oss.qualcomm.com>
 <2d688258-2e2a-4a86-aa98-eca31627d418@oss.qualcomm.com>
 <af15dfbc-806e-4731-a7a3-6832a781154e@oss.qualcomm.com>
 <be4fc7dd-e7c4-4f2e-ab5c-543d8fedf7d6@oss.qualcomm.com>
 <eec690df-5ab6-42b4-a9f1-ea8588f21713@oss.qualcomm.com>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <eec690df-5ab6-42b4-a9f1-ea8588f21713@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69940e09 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=QtLaxJc4UxdN8FgP6j4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA1NCBTYWx0ZWRfXx5NLsw6FbxUz
 MpXs1PEezp6vgejCK7JraRNjwZ1rQR12ipdDPQmIvzfk1VillP2uNlju6NylkpoCnPbj/G14nDs
 LUuy3TIEzCea+baT+aRP+7P74MyrHQSEXt1hXcYFjEx4MD51R1HulYhuz8Hl5lbcWh5RZz1IUAZ
 CA+ncVYk+Dl7Bl0k46m4PBgd4AahR66kSVO97t8GCl0lAPR1Y4ZfgkwcYdx12VPrIQI+V9xuJud
 jSHNG047ZvEmEbIsEDjn9Ragp5wynjHI2eERyKa3nytULUUqFEltoZjw7ZCV1CtxuM/OfwpHyVM
 kKYxbx+QwWSGJEQ9RFUIEEk4PWnQ2Q5NyI0g3fBfvM1JgzFoyEvOiiIxChlMCFt/IEbsnUHE2sD
 eRJMAuOBJkXvYzwOys0hYAAqwXpv0R+imTO0VDPd4Jsy2sCTxUXE/WbdjgJHS3PTrtbw2UhyBLO
 3BpJcS6PN8Ozk0C2zeg==
X-Proofpoint-ORIG-GUID: HKmfLKXQ1QU2ZKNB5T3e8ssEq3qzDfZ_
X-Proofpoint-GUID: HKmfLKXQ1QU2ZKNB5T3e8ssEq3qzDfZ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265973-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F08B51490D4
X-Rspamd-Action: no action


On 2/16/2026 4:44 PM, Konrad Dybcio wrote:
> On 2/16/26 9:04 AM, Umang Chheda wrote:
>> On 2/12/2026 9:59 PM, Konrad Dybcio wrote:
>>> On 2/12/26 4:50 PM, Umang Chheda wrote:
>>>> Hi Konrad,
>>>>
>>>> On 2/12/2026 7:10 PM, Konrad Dybcio wrote:
>>>>> On 2/10/26 11:38 AM, Umang Chheda wrote:
>>>>>> The Mezzanine is an hardware expansion add-on board designed
>>>>> There's normally multiple mezzanine boards (e.g. a "vision mezzanine"),
>>>>> is there a better name for it?
>>>> Does, Interface Plus (IFP) Mezz sounds good ?
>>> I don't know, does it stay Interface Plus on the silkscreen or similar?
>>
>> I checked the board - there is nothing written on the silkscreen. Internally we call this board Interface Plus (IFP) mezz.
> Let's keep using that name then please


Ack, Should I also rename the DTSO filename to "monaco-evk-ifp-mezz.dtso" ? 

>
> Konrad


Thanks,
Umang


