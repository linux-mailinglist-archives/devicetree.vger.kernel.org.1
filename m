Return-Path: <devicetree+bounces-308216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nkKyOJadJmpxZwIAu9opvQ
	(envelope-from <devicetree+bounces-308216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:46:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7881B6554DE
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:46:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="Xh/NHPl8";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=d6l4z+Io;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308216-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308216-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1C03302DF66
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 10:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02DE3BAD81;
	Mon,  8 Jun 2026 10:40:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9AD3B47EF
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 10:40:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780915229; cv=none; b=aOFpqRE9f0Z03jqL3I9kusfey3Ul8iSMWH5jJaItNmTqO+2HW+kRjXisdhPT9GtMGdraHBL46JUI1h9IoHHQepofY+2757Ff3GdLwYbrJo1sw2sNHJ4zn02112DvTbnouI3J1WH4HJlGIjbqH3XWrt/aqqdIEwEB8aymdOSVM+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780915229; c=relaxed/simple;
	bh=mVvTmTFwOrEZPN7LSlVxRMK7dPOvMgDe6crr2ypA51s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KrKZsVy5E+IgMtQzgAPO8LNZwbIX+dDZHcdob8g6+tPwftBviJmjtLSGTrVaptQmKdvOPKwB/vadxptLs/9eein52D/Fjb8MnnUFwdKwQ3a1dtSRTZZeuAA6ExO9ocEaCqxczr9AMmcb1KKTOgp22Z21u+02Qa2VDDICZtVY8iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xh/NHPl8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d6l4z+Io; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658A3KpH3308852
	for <devicetree@vger.kernel.org>; Mon, 8 Jun 2026 10:40:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tveSNRQ+h6fN2eRH75FNEmJTO0yYAeUsEKQ0M1WDmbc=; b=Xh/NHPl8SuBYxP6X
	caNzrzGEU4RACsw9uhw+2TwPnuajGd9102JDEiZeiZ7bucvwXPV1rRBsQ3CzdHUf
	n5RFO7d3CvX3uTOIqyVgWNQEVCwDDkJ9JeGeI9Xc/oU0wr3eehmyRA+k5ssidZS9
	UmzCA5I1RCChgGLmbFMoXEbvWNmZKgHzVFlGCHaO3owwK+fTGK4Yaz8HqyXP6V9p
	KIpvWBLYn7cdfz5oeWOqlxuMLiqPO/ADJC17v1NE//qGiBWfIMjcmFue2G1+FMf6
	T+c2uMliiCR+aqePeDyJHfPJerRlUFyEWdd0rJNla5wX6P1IRU4XqpwOu6OTEs+C
	UoWB5Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun8g5f2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 10:40:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9157263095fso106049385a.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 03:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780915227; x=1781520027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tveSNRQ+h6fN2eRH75FNEmJTO0yYAeUsEKQ0M1WDmbc=;
        b=d6l4z+IoMoWELXLdUNgg97ZW5tmFg57SHP5P1VO1DGDGt5Te4I0AOM37MpPObLgOJm
         MlPSNq2Djs3u9J7n4UTV7aoUT0wmD3FK9h75m49BtHFg7rMWts8r/gaWpBgEB9XckpaY
         +Iisx80LaVgILRjEq/W452O2OuiUrZIAwfZ6Y4iQnVzGno1DxphxnFdvlBj490Bm3WW0
         IVMsrKu4cgKwO4N+XIzbFEnlbjr3U9yj320NXB67FQfZi/c1xpRGvAhDK6RXl09gNwK4
         dKG470uJfKW08hAVmul3HB24MMLhF7DQsmLop2SE58SLqAEW0fctILadplHZaiLQKMoE
         m9Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780915227; x=1781520027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tveSNRQ+h6fN2eRH75FNEmJTO0yYAeUsEKQ0M1WDmbc=;
        b=n/MKdO+o6jzRTHoBl2OyxSKkDpoqOsgTQ745rEHzrGc+idJProCCpa5ImpqC0tSicW
         MjNxW0j3jDey2PUjivc5EdWwVRCx1HclP67YFR7kAzPmm0EulHHrkR1KPIhqcDi0uXWk
         sYlKLJsD8/tStqF3XCxgZBoJbjDSHlCXl9pH+lTg8hLyN9NoenCaVod7p+AgDUXx49Ct
         n6EcNR/UvdR+h6GLnWEKuXTQ+pBKZ4pDlGG3opfjGZPiYmw7n4Kn6rIALDHiizuId3YU
         1uQJe2DZwIzLFtFKQpl5RJXHT0Nr4dtR92U3yc0+LaO2K+GIZ9VnWQr62GgOSDPWLpLs
         iB3g==
X-Forwarded-Encrypted: i=1; AFNElJ/9HzeFLR2r3+5+Fc9Q+5ApWXqV801rAW5r6i+hBy2WoDFkYfMgC83Er92qs7mIJZOfdLfrDrkDZF1r@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/4kRP6gg/CIP4MMSV1qHx4I99cO4Rv1MsHlDzBWk73xVn+m1Z
	acWsXOv6tzTZWu2EMmY8fYXhEnLmI0VUZKbnoDrur5HftoPTvQO9tQSs8vO4VGM4fSouUqTHGaP
	PbHNBNO2c/54rhVRj0VNcpjSP9ZMrV6O6SKMfH6J/EOidqPzhAvsd2jJS/cNTpjR9
X-Gm-Gg: Acq92OHBwUnO6S59uVkKAvzF7/H9rslCleHabdNoLMlPgfFl3gfsDBhZUlHgZQ5gQvO
	oSpmU6sFjtWqV1lmO5aMdYssm4m7zgnwoFkT/fAv9ZGXD/vghfK78NQx1R7lrD8A8yHC4CcEyqb
	dZyw+TB4i0gpbeqgbTzMNgnZ1USg2z9Y6+DIBkB0Kk1/YGaqO3+r7lYjbPB1gslyyfNOi+esDip
	SKvhbfO2SJRGk/Q42sp0JmOvfyW7/CKhCGSX/lJqDcYRAyfvirhkmDzPduY3pOf3B9zQZthDw3y
	LG+foQWwHZ4ruTtLo6ulrgnU/d9NWV4nTfgWWQap60SyaTfeVVGwTeyFscAM84WZyziZ6Td4TCx
	4biruIkA16QKNARxRcSxfqyV3S72R+DzbisAhSDouozvi31tugvWIFDaO
X-Received: by 2002:a05:620a:28cc:b0:915:4ca0:1210 with SMTP id af79cd13be357-915a9d9a69emr1477145385a.3.1780915226523;
        Mon, 08 Jun 2026 03:40:26 -0700 (PDT)
X-Received: by 2002:a05:620a:28cc:b0:915:4ca0:1210 with SMTP id af79cd13be357-915a9d9a69emr1477142585a.3.1780915226033;
        Mon, 08 Jun 2026 03:40:26 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65868049sm6890844a12.24.2026.06.08.03.40.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 03:40:24 -0700 (PDT)
Message-ID: <cdd7d88c-224d-49cd-9a7e-6d4a2ae74d01@oss.qualcomm.com>
Date: Mon, 8 Jun 2026 12:40:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] soc: qcom: rpmh-rsc: Skip TCS init when RSC is
 managed by firmware
To: Gekko <graham.oconnor@gmail.com>, linux-arm-msm@vger.kernel.org,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260522060645.4399-1-graham.oconnor@gmail.com>
 <20260522060645.4399-2-graham.oconnor@gmail.com>
 <934e6039-4639-49bd-8cf9-a1674f86b8c8@oss.qualcomm.com>
 <4b911ed0-64b1-48aa-a00f-e2ade66afa1c@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4b911ed0-64b1-48aa-a00f-e2ade66afa1c@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDEwMCBTYWx0ZWRfX8atThd9tSfQu
 1EA9Q8qq71hb9tUyUusd88aLrpY+nObdgkVKX56zlFtZXNgNmFMjFQz4YIxJQktIZ2J+anvbws3
 7dRrgaII5o1A9ut+cn7bgeS2UeBiNJe2PASkdtKh9OdMum+ZEQOu088wvqYZEwluYvgEkS08lXG
 0UJI6E09LLZ9dZm9dujIdb/S1pyMefv3zz4X21Jdld/295pSViiNFnFmPBy6an5IwMIrGwxVbb6
 j5WZqcGK7eSEhGqQ2jAb+xXRpWGHA6DvBwC76IfVcgxxJAPBxFLcfPJXYJ39DXC6+LtNKpzVm4N
 a5Z2OZhSnUfVPPTls2LTDWvD9lVeJ+ZBrjVrcaPxfPNudmFGL8MPaLhab/fFVR/tF/S0t43YrC9
 yfBpfgLjY0gsTNDBs0CGgsaowsCueUIpmRLDXfFnLseQMTvIenJ3dMuoGNATvUlV5my/s3raRAm
 NYA9a5dvBBmgenBeHWQ==
X-Proofpoint-ORIG-GUID: UZnA6-3-nvvLKu0j5zXa1-K1tgtDcbTA
X-Proofpoint-GUID: UZnA6-3-nvvLKu0j5zXa1-K1tgtDcbTA
X-Authority-Analysis: v=2.4 cv=Z7rc2nRA c=1 sm=1 tr=0 ts=6a269c1b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=dIxFNMqCpUz1sDLjZpAA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080100
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308216-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS(0.00)[m:graham.oconnor@gmail.com,m:linux-arm-msm@vger.kernel.org,m:maulik.shah@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:grahamoconnor@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7881B6554DE

On 5/27/26 10:30 PM, Gekko wrote:
> Hi Konrad,
> 
> This one is confusing.
> 
> I started the bring-up on this board on gentoo-sources 6.18.18 but the board would not boot. After an almost subliminal flash of tux the board would lock every time.I found the solution from PostmarketOS who obviously faced the same issue which formed the genesis of this patch. With this patch applied the board booted fine so I've applied it ever since.
> 
> However, as a result of your response here I tried booting my current kernel (gentoo-sources 7.0.10) without the patch and to my surprise it booted just fine. This leaves a few options, including:
> 1) the kernel source has changed
> 2) this is a firmware issue and a firmware update fixed it
> 3) It's a timing issue.
> 
> To eliminate 2 I would have to test 6.18.18 with the current firmware, then regress the firmware and test again. The do the same with 7.0.10. I can't honestly recall whether the firmware upgrade was before or after this issue first appeared.
> 
> If it's a timing issue it's a bit more concerning. If the kernel is taking slightly longer to initialise before calling rpmh_probe_tcs_config() then it may just be missing the solver activation, everything appears to work and nobody is any the wiser. If the existing solver code doesn't deal with early firmware TCS initialisation then it could, under some circumstances, lead to the security reset that I was seeing. This patch specifically tests for that case.
> 
> Based on the AI review feedback I've also modified the patch to not simply return early but to just skip the sensitive parts of the code to allow any other setup to complete normally.
> 
> My current objective evidence is that the board boots without this patch and it's quite possible this patch is unnecessary if the above is incorrect.

I would skew towards this being a firmware issue. But I'm interested
in any findings you encounter.

Maybe +Maulik could know more

Konrad

