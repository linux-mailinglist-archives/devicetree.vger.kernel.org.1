Return-Path: <devicetree+bounces-276047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAoQKWzQt2n0VgEAu9opvQ
	(envelope-from <devicetree+bounces-276047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:42:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1058229738F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7A8E303457E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B45A37BE6A;
	Mon, 16 Mar 2026 09:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZIKTkxUd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NysbOBfa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0A538A285
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653955; cv=none; b=WxxqPRv9MOmbWJJvQvRTuYLFPPwFD1kjyvDqxFds7JbIjaPkYpm+q9Y9ORQVpenajHi6FTuTKKUfYOw9fGRAvYmgehcrYqhIEySfKZFzVIpqh0oiwkiNdQsZ7Fsz9q+0OggL2ys4guTDBa99plXHF8Kf3cv7GvEAb9VWm3aQ6Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653955; c=relaxed/simple;
	bh=B3OU56y38JhZLA9jQM1FfR0bPEJ4Iw/MDlK/lajt/gk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MXZYsu3DN3kHSTry3VResu9gFF8ZQUgVIkGKtmfyrQte+/LCUkeJCUmVSweLxHKrk4fNaNYROQOdHCfIlVlTm3l0PZrDhEI/MORTdAshn2NbDrxfZXqUnMxOVMyjJp6SQHf4sMhzRvCPQkpSbGTTB/COOilnxXvs42IG60kuFY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZIKTkxUd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NysbOBfa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64eNk1282091
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1OLd1BUVc4e9AOajpXP8LC0jhT/oCscnk1JKQjEkAfk=; b=ZIKTkxUdBdd+OP5o
	RdvMar9RYFLh4pwe8RHW/Z4L7D/JJM1Nm9QrpYwRecKfkIgYB3vsTOuUtLf7ZyaL
	C+QlpcjVVeBZRF5O9ixgVrY44Pe+fcUblMYol/aokFGbdlhqcs66S9g2aO0/AHWY
	mx6unKpjZQ0ynRRXih6dwWdvhMUvjVyMFsOjV5AtQONzyK4izbqGMTHeIjL0CSkz
	ItT/eZfgwziAbU+dPxiirw57GtzpCPCjtRIz5kBMXQ/RpfMh4ioR5MyO+fJF8ERL
	iyr/FakdMVAS8pCAzeosqOZuClnVAhgtnj4+I3h9cS+o1zncLlsPP1T3b518DD6b
	bccplQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc4yy9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:39:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd8198fe16so343880585a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773653953; x=1774258753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1OLd1BUVc4e9AOajpXP8LC0jhT/oCscnk1JKQjEkAfk=;
        b=NysbOBfaGpegOPUNNQU6hDEqPy/mAXE9cM7ApQC8elm7oDGbqU91vn6slNDpmeXTw2
         B35JCvggzDZn1uxwYwxwqX/WrNlVBim7wxQs5ZVlic3DPlISTHYso1Uycr1fCGMaNq37
         PDfx8MuTOkFn3V6S/9WSNP09SKMRs3gwVffJGZKjplz8TBDUYUksfzABKR971LiQhuEa
         MZ1Q83laSnYUMGwg99nSSaMuF//XwCiP/i+p8JhbzbA9GbAOIazkduNlfXKvDQhhmba7
         vOJahRmt+vEVjHXjHS0lUhWaCx1oi/K5wtNaioccSQEvkkYHZLxxnYjYqnekEaYMz5MY
         9hwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773653953; x=1774258753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1OLd1BUVc4e9AOajpXP8LC0jhT/oCscnk1JKQjEkAfk=;
        b=GOs11t8mpwhliYnp8PfzvZ9zhLJGbGLbOFoZMWOWIuxcQUc0vWKTiYDsdRrO/Yx69/
         /XcpKnj2UW9wzPgllrECsygqJDyG+90DLLYFIxB+nj5mYANCVC3BxsgQCTTeC6vSV0N2
         qeco9XIPHVqw1e3jvJa+JBvkBs/GbUk4IbGt2MSomFSF//zo56QLLXvRGgh6a+IKEbsy
         Mahrp6A1v6FDIl7pv+yVmXavPTcEwt0JlkInhj/KG4occIHxl49y0xsxTPWSJQbqrk4p
         qpItTa18oDuf4OABE2WYafU6GX4ux5VwDYba7v2pAZmcO07jnSkm5oEy5hbcqXE+z2YC
         nXaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbfolpJTMuNyFENJuRuSmYZJRxqWWmd0iAD5x45y43Vwq9PCnYRcSZbqGwjEOR9Yg85bwS7uPVxymi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/mD5+tczTX5WLEu4svI6+cj+jJtU9LGpMsHajTfbPJZHF8ZTb
	mKj4IZCbZtePQYB20T34Wpa1y5kxhhkpeE7H7e7w1/VJ/NM7PCKZoONq44HeYZ3laVYB7nItgs9
	GSgK+9vdpQ6trR0tFteKRgqVtiwDVjywWgsAF7EC4JstYQuPpMoRM5SWogtscTVQe
X-Gm-Gg: ATEYQzyfcHcuwB9oPkLNfpQxlB23mW9ky6g25Wmea+mMTwYrckO8tN41+/BZr4oeDUW
	iKczHAHr1WfT9E7X2BqzwdepCnrzMep7t3R1+nI3+VtBDhBiGSvS/T2FPCsUfkczbPBXR9a5r1o
	aGh6GQgWsm7BNRSC+s8pprt9rgudAZe/2XPoTF4C+XRBYvEFI23kTEA8K8zGPhefcR77efVpXSU
	zIZ1I+H3+2Bm83zlhoJE4het8JMK4T/S59pL2zmL5bl2kvrBwF/YDGF2MrRlSlpupVoZG64RMrs
	qqJKgiQLRtodBr10QJmzVpMbROTgkkDDVKOqfj/YrHYiUDX6JWG/DCaECNIUY8YEtS32WeuKO5O
	pYHZYoIzCdkj5IvwK9NMG/XK6Ljxkq8wF9iHG1Hj1BHdGT4KqS0GJ2MTP5vwZSP2vc/s7sKQipt
	to15k=
X-Received: by 2002:a05:620a:44d3:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cdb5bb356dmr1363741785a.8.1773653952594;
        Mon, 16 Mar 2026 02:39:12 -0700 (PDT)
X-Received: by 2002:a05:620a:44d3:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cdb5bb356dmr1363739885a.8.1773653952142;
        Mon, 16 Mar 2026 02:39:12 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cf49fa6sm529902066b.58.2026.03.16.02.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:39:11 -0700 (PDT)
Message-ID: <822cc610-7984-4684-99d3-8abd679eb06d@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:39:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
 <198ccf60-a4b9-438b-ad92-bc4d2cc84b83@oss.qualcomm.com>
 <90b3a7df-cd02-4878-b614-1499589f0906@oss.qualcomm.com>
 <uukjr4c2uymzj2pe544hn2w5ecpmqle56mir642zieip4ixwor@3uuhplnfo5qt>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <uukjr4c2uymzj2pe544hn2w5ecpmqle56mir642zieip4ixwor@3uuhplnfo5qt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b7cfc1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=GTjZm-GAFzhKDQlTXa8A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: zc2wC6jtrszQpZBHdTbYruspX06UHgVH
X-Proofpoint-ORIG-GUID: zc2wC6jtrszQpZBHdTbYruspX06UHgVH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3MyBTYWx0ZWRfX8OURqcCZLNWn
 ojMeSJdwgCuWE7bukECfv80pmWS7AbYMD9spNYxwiXanw2Wz4EzHjFp3apJIXLeFRsr8fVOV2yj
 sTXkKX6zvXIBvHKbd6P68rgS4xVYiI5HmprhWJXaYFrwic7L9iY98eKh57xGG1b1FLc6Yp+VM2B
 MK+UHBpdEvTXxHKN3emmrqY+p82R75CHZAl8rHSZosA4uYvFjXhqpq8o8DNV87cDNinnHf9vgjZ
 3LyjOaVjdreSfnHyg9F+nV+O72BZkAILiIbcPXfjxWgnPOCvV2s5ikXRxELd6MxaMBkx2xWtT5G
 PnAMtP0GNyq+2yTRdPZ0Zzd6OO70L2llqCZJ4/fx6joMY1tJaCnMghH0Fqx2txOeL55aKpBK3mn
 wTsvUv1JYwn4S6bpOPZYbI+gE8aOGGZarq+0+jUbEMTl5IpCWIQHsgAZXFx20E/XuKQekJPBDI0
 jRcSoxkQrVvdWjifj0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160073
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276047-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1058229738F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 3:48 PM, Dmitry Baryshkov wrote:
> On Fri, Mar 13, 2026 at 12:59:46PM +0100, Konrad Dybcio wrote:
>> On 3/13/26 11:12 AM, Maulik Shah (mkshah) wrote:
>>> On 3/13/2026 7:41 AM, Dmitry Baryshkov wrote:
>>>> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
>>
>>> d) Add separate SCM child device (with interconnects) under SoC.
>>
>> We'd then have to probe it as an aux device or something, which would
>> either delay the probing of SCM, or introduce the need to ping-pong for
>> PAS availability between the API provider and consumer, since some calls
>> work perfectly fine without the ICC path, while others could really use
>> it
> 
> qcom_scm_pas_is_available() ?

This comes back to either having to wait for the interconnect provider
anyway, or allowing the ICC-enhanced calls to take place before they that
happens, stripping us of the benefits.

Konrad

