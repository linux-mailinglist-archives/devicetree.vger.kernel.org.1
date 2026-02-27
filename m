Return-Path: <devicetree+bounces-269356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOhEIRDLoWm8wQQAu9opvQ
	(envelope-from <devicetree+bounces-269356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:49:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 289BB1BAFD4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:49:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 89039302C2BB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64BA1346FA8;
	Fri, 27 Feb 2026 16:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Htr0BPJy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FNtJMaPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198F418BC3D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772210958; cv=none; b=E8o0lX6t7xW5xpdS02wuAwsnCKNygkDghsMsKXl6MRlcpPLUGZdGu3JTmSuner3rpRpmh3GHUHZRNy43Pf0AI6L+S1g6HFzXLSjm14d82tVLARpbNQBwETD6/gU+ryTj41MbGkMVnBwfnAuxHeBwosWhiq3EEjByorOunNMo9m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772210958; c=relaxed/simple;
	bh=qS+jq1JrvcU5hElzUv5cMkCRMKosDacHXQdATwP+kLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I1pk8mXcDVjgqHctBPFZcWxafnPuXIPHDZLBazjwnp0pbfnhsy2NfRLCsniUaNW69pImRZjjEk1RNxdgBwkjcObddEIL2FW/NfjmrP/vmLVjzxETkfisSjImYxsNj5vGZSx+ejqO+kLHTQG2mjEO4BjYUkcSx4XeDkuKYXqOZdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Htr0BPJy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FNtJMaPQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RGinWg3911081
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:49:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GF8gzs0Y2ObftuKtilXKIdvF2o6qLBxvxxDd8LVJ5J8=; b=Htr0BPJyfQzNZWnH
	KGwS/K4b90TqkpIVkjY0WQe6wv7osT/++zLDbJdsOlQu1wgmilzT7eDC5LNmjtBu
	IlenPEPLjuXuquEQTglM37TkAYLMnDs4mKZWEg8xDM4bioZKTH3GWGBSwnOg7YyT
	7w/lZ2t6yKpOev3+azKx/xeNjxEfSRHZmAxuUaJlcYXapHUVVbO4FoOs3OAW0APm
	mUdv8HKkeat8x4wHvfBDsRCDcApnTWrd1OWtuU6Q3zZ/7d9JCyteLxHjzql7M7e2
	hL5NP0g0Wal1Areu0rTQ9JeiMT0iYJfEBo18krSVBCKFe7r8wdIqrsoOAVXh+Wkx
	/OmJjg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck73q1par-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:49:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3978cdb2so209187585a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772210955; x=1772815755; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GF8gzs0Y2ObftuKtilXKIdvF2o6qLBxvxxDd8LVJ5J8=;
        b=FNtJMaPQATrG8s1+k8Hlzu5HQKY71NYgozN7S6ONOztynrk8wDh7V1GplrxpL6txiE
         C8wx4T32ER7AE6imyL+OyBoD5Hq5Anw8Q02n6j+qQqNSFekut1UjuLShjSzociUA19MN
         NOWsVx+bECAiwZNEq2z3cy4Jkst8khFRIN0W9JI8KMhT6qT5JRFtec8RaqCXrzPHUIRz
         g0QGANQcqcRYfHooRx4ta5GyShsHjqcTG96katc/aoQxCwkxBLBTlkwj+oK08qiBhCZ5
         6zEF7MI1NSY+9Nk0SZ/QfPcvlTOf4N+gUZu9kgS8PnyWJlwcZQ7ezwjNF3vKJ7Nhsk0o
         myWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772210955; x=1772815755;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GF8gzs0Y2ObftuKtilXKIdvF2o6qLBxvxxDd8LVJ5J8=;
        b=HSNQ9Y8HbwS7KX7XgLyYwttok1C1Oou8OEuM84mxshEGtPQghMn3XjtYz7Dv8H0xQi
         TVTxgRoOzcPaYvc1JrLrLngF6NIacLIK7wxCFWvcUBWzczn7papDRrmTSMvlz68ez9Kt
         7XAgQyo2IWhzc6EJXTxxtkHGN3st4YbnkIP8+wCY/pUN0MjCJy8eODAZcVipVq6kqub6
         9v+dQbcxHqv287A5WyNVxFHEP7XDz2QpeAqGwMyWJwDNHsXgnp+iTsWgWfwp5O334SEY
         yXDFFxNO/LvI1yETWrFSKJGHsHG7Fklpsak9UzozCrCjx1SDurfGB8Jnlma82GR87vcT
         HfKg==
X-Forwarded-Encrypted: i=1; AJvYcCWv65ISCXROLT5X879NEBRiIpcEHzLOQJLgtHDlDVryO8IH5adjPH2r/ulXFwXZILAk9VrUixW+Zm3d@vger.kernel.org
X-Gm-Message-State: AOJu0YzFFxsM3ofMjkPccpSZEY09sZnYDJo9Fc7xbj3CffMghYV0Sxtt
	V8INQixV+i69YIpZp5GCyWdXtZGy3Cq7MQBEMfxduVriVkEfw43m2mKwOzoqSFBwwfVwH9gjMnQ
	QMoCNMYDrYu9Iod55CtlZZuo/0i1i9B5PDh3L6VACM6jV3xV9CRqyaqcJwt8zSp5E
X-Gm-Gg: ATEYQzy4AlGKyfLtjy3JXVvXu28pdu0jp3A31c6lfODPz0EdXpFX8b8vSAv/X6HXJXh
	U91SklLefVqfILsDc0xiXkivx/HUV5sZTiC9B/yAdJiRlbMTEWKrRaNpRWM49Z80ws018Bi+tda
	3frVB7IGc/4ilWpHb63gs+t0+5q9GQL7ZadWacmx/1+YELdfECS9CbFnoLb0O0xyE72Bar/LByx
	lKzw/mhYfhdo4Wy6159myPjMbFLZoU7WUgI7jzyUsdcBhSJTpx9ZSDwtsMyRBOkqqAKg1PKou1Z
	koVaHt8yEnBBc4Y1GOtler5cyR5lmX6jCI2wozbb8g4N34GxiSsDwCw8kURErtDKssG062Kq8Ka
	psROE63Dc0IPF6TYx4QpbZhA8Wu6z/KLKlNCrsCLJuntauj3/NHTgMfRQI8+KAlVCI+yyuFVair
	eSXT4=
X-Received: by 2002:a05:620a:25c7:b0:8c7:f61:eff8 with SMTP id af79cd13be357-8cbc8f5a1aamr328587185a.10.1772210955375;
        Fri, 27 Feb 2026 08:49:15 -0800 (PST)
X-Received: by 2002:a05:620a:25c7:b0:8c7:f61:eff8 with SMTP id af79cd13be357-8cbc8f5a1aamr328583485a.10.1772210954927;
        Fri, 27 Feb 2026 08:49:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aec4426sm162355466b.56.2026.02.27.08.49.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 08:49:14 -0800 (PST)
Message-ID: <6fe3a1a8-46c7-427c-abb5-2e7366a43392@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 17:49:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] media: iris: switch to hardware mode after
 firmware boot
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-2-850043ac3933@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227-kaanapali-iris-v2-2-850043ac3933@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE1MCBTYWx0ZWRfX3GyPrQwhzs32
 xYXrMAjqa885mDRErKeRI5l7xEAAnJj/2vYFeKc+Np57bOnuharHyud2wKmYFkNpd3oaekiMVBr
 xW4r5yFySG3oeNAIuJX1xR4tj9pme0Hcc64Qde6nq72Sc2C2CRJxqgx4lKFecXPVbknbOL70f6z
 xLJYCVjY4AJRsJ6mVtvJr8X/Z91xTznfeff3aBR2fNQ6ACE7wwfNOYjUMB0kPHmqf4ZjLhcgakX
 32ZwSjh4F4MVYV4OMy4FGGWlaHKFJ8nRna0HZtfxS2W3adwtwHTtcdJrADBzN2ZanIL87vVrq85
 bhBJMXD94/EBxH0fxaWpd3IhioYlzQTXf275Ny4INrPiobXX+7RXFeO40eFP0XdrlYgwr+l0ffC
 1BbFOY3dwy4urL43WMoY7TYI3a+EOjprtwJ8vlSTdsCSfN/9NZgROLBAPHHqfRTTU5mXcaR4Wjx
 sjFifsKRp623BX+zsZQ==
X-Authority-Analysis: v=2.4 cv=KL9XzVFo c=1 sm=1 tr=0 ts=69a1cb0b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=uMIPjMpX8He5E15aO8IA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Ebbsh7pySjK39n_48euX0Fc1Ky7vKzWD
X-Proofpoint-GUID: Ebbsh7pySjK39n_48euX0Fc1Ky7vKzWD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270150
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
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269356-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 289BB1BAFD4
X-Rspamd-Action: no action

On 2/27/26 3:11 PM, Vikash Garodia wrote:
> Currently the driver switches the vcodec GDSC to hardware (HW) mode
> before firmware load and boot sequence. GDSC can be powered off, keeping
> in hw mode, thereby the vcodec registers programmed in TrustZone (TZ)
> carry default (reset) values.
> Move the transition to HW mode after firmware load and boot sequence.
> 
> The bug was exposed with driver configuring different stream ids to
> different devices via iommu-map. With registers carrying reset values,
> VPU would not generate desired stream-id, thereby leading to SMMU fault.
> 
> For vpu4, when GDSC is switched to HW mode, there is a need to perform
> the reset operation. Without reset, there are occassional issues of
> register corruption observed. Hence the vpu GDSC switch also involves
> the reset.

Is that a characteristic of the hardware (e.g. also seen downstream), or
is that required with upstream iris only?

Konrad

