Return-Path: <devicetree+bounces-264298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEtXJYD/imnJPAAAu9opvQ
	(envelope-from <devicetree+bounces-264298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:50:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4192A1191F3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3303F305DB8A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40AD342512;
	Tue, 10 Feb 2026 09:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZZqvIjDF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pllnqki+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4922F342518
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716882; cv=none; b=o+s+pU3XaEVUwkiFyYzIdtHeYojvib55/gk7nAUbT7i2FPfAHA/y/ZtJ81ybb4d5XOgplHOsDVC9kCYxW/wm7lzFXxzwx+klpEQLJBR44I7Orr0y31a3VOl0+r1DgZ1fLGHUv0SLVZhMa1wyZ4BALvVPre9j3FkQpAXZzRr6HAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716882; c=relaxed/simple;
	bh=KfTVOP+VDKEfd7TYraAVx1WA3urkg/oj12+F7hc8BWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QdMvciI14IRuBAggmsWNtwvABPQXSopCfLi4gGvJftk2Ii3RyFsr5aygJSDJPc83SA7Q5mWJfq01JOiMbqNDQRYJ4qPnkbNgWNLX6TFGXQ8B1jMoxEH/AqNbP8YfC7p0O94gOI8dnscDbtAaKN40pwLZTdCbV9qfN0hQWUJrRyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZZqvIjDF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pllnqki+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A76xJC857215
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zLCh1JGBV52dHjySo9t/HDDqXRuRe7Sc9k85IF1Tj4M=; b=ZZqvIjDFVNHsW3Li
	OtiGMICH4C9QXXC+IZ1OdPiYxRYK6TH63MssIbB0OjxUlr3B1VYizG0MmIWLKFdP
	S7/gZmpJdkTNmpEgvNS7pMx4FSxHXNee4Vc+Tg6upXlI6rPCavgc5zobkoowPO4b
	fd7uQ5lv1CrRNgqfn4v9oShLfxLU1xGhOUy5HpnWwenUSYuLZEGe4ShoU5hbuU+E
	qfgddhDfSECbtjHrBFAM9EHaneQCXQb6a7pPeVYxvvjEbbhXpPpMsQFLOz1FpLr6
	8aMT5CsB2lpKMT9Dr2DqAzAgi5zYxJWASxHMZoafYRx3LDgQS8bmBMj+hQ90co6u
	CNGNtQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7ga63pv2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:47:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c7177d4ab4so138919185a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770716879; x=1771321679; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zLCh1JGBV52dHjySo9t/HDDqXRuRe7Sc9k85IF1Tj4M=;
        b=Pllnqki+xFshHesLO7o8B+jYqIb/2xXTX+3WEdSGwnxjWaY68DaQZVGB1wHLoxuh6E
         73WWk0ywRZNXXW5IhySPYOn4Gu3x8ket1kLUeso9fnV8bva1R+TqxC0zfSgwxy4KIxVa
         UCN5eWBXy9OLmvnKnezC7DpbsFl6cFycf0mKkeaS6Z9eAG+NSmUAaOs6vPfYnRRmIvBz
         VkEW61uN/qshcr3z6egKJPevrDLUfShzjp0fRatpgeG1pzkMc4nrBT9TPcPapG9WdIGv
         07+4fs3FsiShUyIP1MZP9l1Z4icHnklkY151gMfcCSnWrNZzajxl2pTtfvCF9JOP0+ga
         hCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716879; x=1771321679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zLCh1JGBV52dHjySo9t/HDDqXRuRe7Sc9k85IF1Tj4M=;
        b=UkUo/UqHOgbPSTMzNTBBV7KO8Ik3tLbXSpkXOgKb/lS+X/caeJ6oL5NiDpfHUzz2AN
         l/MqD0IxGuM6N54r1OTb47S2TRJY6thJ7SX6otFJJETnebQ74xZhX9fYcvG8Ts2wdPkt
         9wyJIFyIXJm9NQfhbwlmn69LZt4TUSghLHgXWpnVei1ZL/MmKyY0WPnDCYx6/IkbWYWL
         UtXdWoKnj/CoEttDL3aWapfiGPSdbO5/LjIjTSRm53wQgESsl5wZw79txl9FqcAhZk8x
         qZHZH3h8W0egBON/yXr3jFeBymjFJ/cwKuFoT80p7ZorAsp7vdq++XeTiC60S+ikEh2i
         2dDw==
X-Forwarded-Encrypted: i=1; AJvYcCX1uOjYID7iJ3h2nUYNtdejxiaAJNISAc6oVzZ6x94EX8ovp/w8OLrNJPbqUdGgFV7ACMk/mgqPB7zn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9XtVN1qAgNroR+hD2XvPlRkNhMwpCdktRAjQXDY+poS7mgLku
	KdTb0L9lTBmC4YyvKZnzTwnaE4fqbSPfD3LgOE85fOTwgO/rouYYtV6hIIhz3df8wVarRptfH0T
	D5vcjTmvJEU+R1UQJulZyG0YKtm/0p+ld6Oe9XGIEnJbFUcM85qWCjmBgoY0smVX/
X-Gm-Gg: AZuq6aIbYddMXgWZR0w69d9LK7oyld0Nt8KG6UqBBBQv+QkWp2Z0a1vfzuOu3qCIOxk
	4jLM8hpHWpWaWs1Ht10+dMnHgY/DdsvSFrg6AdauSiY2L6sY0LET+OzFDPvvW4vfv5rcgvajZxl
	cwjwoFYKXvIxjs3HAN93GbBh92NDC9GTLhd5ljZ49W2NwRWpH/DXhfVfQNeTp7sVWx5PygvDHCh
	xDp4iOboj2KQYbSyWzB4lJHAVXwelIotDibmHjLsjE4o0IzjnXoqQkikgWaoVS9MuFWIgbC+/Sn
	9EuuUeo+OuaIsb1HYYflxSGVpsW1Di8qrwUE2uN2S1ZbzF1QMMQJ0gqVtHl7kwzae0L61nkZp5U
	fwpTrSzrd1vi+fJr0IlpLhplLxm3l9owhJitoDkQoUVoawjpMfCkvOG3auceA9RIY87X54pSlUA
	X9OJs=
X-Received: by 2002:a05:620a:390a:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb1ff494bamr103204785a.6.1770716878598;
        Tue, 10 Feb 2026 01:47:58 -0800 (PST)
X-Received: by 2002:a05:620a:390a:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb1ff494bamr103203985a.6.1770716878222;
        Tue, 10 Feb 2026 01:47:58 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae3c255sm499071466b.62.2026.02.10.01.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:47:57 -0800 (PST)
Message-ID: <857590d7-2cc7-41fe-ba40-62a8ef74bc11@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:47:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/5] soc: qcom: pmic_glink: Add charger PDR service
 information to client data
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
 <20260209204915.1983997-3-anjelique.melendez@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260209204915.1983997-3-anjelique.melendez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _67B1z9GXmxnpI7ru-uzSXAuxOY8VtXE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MSBTYWx0ZWRfXxCywVLeaP6VJ
 xZtWUN7bRYjSnwHfCCn7IEiflGSQcY4bYZ7h9NUc0K+7vw3gMQv8zEi1XUMSOIVUW4/aUNWfdGu
 BZQajjef1pei9Wfff1nDoHFMXlSE5OxWDGsikW6KwLUm2+k3mMykdZnFycW84Cl41m/uo3a1a/+
 WWa89Vbb/jHel4OJ1Lbvgu5yYfVrdxO7idRWWCOrdQVKzdbA0wa0i1j1PSdMdNgjUBMns7OlJkF
 i10O6DtauZWjL+iT/1a8XouQKsbtcj7LYwvMjrUZLlcYQr1OLtjW+oy6/j8yVbsfthRd9qnlsBR
 8Y9OErBRA9gsr82XCF5L2GcfHWJUyiohuCVgsJ8rd3l1E5wO9SsRivmbXAoBGS71KsaPWAp72k0
 O5tQ0F68eruSseZOXHBsE0JZCa9c8ARDkiDoaU7tW1+Rx9M3sOnYXWfv6um4yBa8/Uu+sZB0lk3
 g6WA/OwqgWD/Zr0/HJA==
X-Authority-Analysis: v=2.4 cv=WK1yn3sR c=1 sm=1 tr=0 ts=698afecf cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ES-LWyGZB6HvuNGBYh8A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: _67B1z9GXmxnpI7ru-uzSXAuxOY8VtXE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264298-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4192A1191F3
X-Rspamd-Action: no action

On 2/9/26 9:49 PM, Anjelique Melendez wrote:
> Currently, the charger PD service path and service name are hard coded
> however these paths are not guaranteed to be the same between SOCs.
> 
> Define charger PDR service path and service name as client data so that
> each PMIC generation can properly define these paths.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

