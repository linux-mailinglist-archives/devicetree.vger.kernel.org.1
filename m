Return-Path: <devicetree+bounces-312934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z2xMEV2CMmqf1AUAu9opvQ
	(envelope-from <devicetree+bounces-312934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:17:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D641C698ED2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:17:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=buHvTJXr;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=dBSwxZBQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312934-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312934-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E9713023045
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93ED83C09EA;
	Wed, 17 Jun 2026 10:59:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457D93BBFCD
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:59:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781693990; cv=none; b=kgsFyyL5JXm8ENCI/EhE7y6lJZHA7EwR73y3Cfw1iOAOIn3VfGtZgxJS1qCs4hv25kTcjsAXeR26rUE3r9a1RJG034v/RtFdNEJbfUt9dPPkqth4+K7R498RTYl/1KJ3JXtcJihvHp32+SZhE+petyInItg8BESUIWIVchqZnE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781693990; c=relaxed/simple;
	bh=XBkfdZqma9YJXH4WQfN/4BdC4I4nvOEcDzN0FNhnRUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UUaH/m4O7BO0eQ1ODsGX2IWDp6y9ArrjQ5ByCGi+DEO+yFlDhJvLvuP1jVcBJWT8XqVUDs/jH21W8qQy4tn7UTWsWWbgNRihxktQWeyPEDQKxJkKtxDe20zKOFao5dCKorBX5QcvE+glthd1PGqsWgtMhCy7JFpfNiDxaOl9uVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=buHvTJXr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dBSwxZBQ; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65H8UKK3239740
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	28m5qJHxJ5Tg+COf1JCEhZftnpMn24hnH5Aw1jUzrv0=; b=buHvTJXrJICsoivI
	+YU2p6u+FK/5qV5gnZWGkCfUAuZ8NL8/jkvh5D+L3SdKsj2dd89wOXOPikNgXs0e
	c/TAqM8lDKffSD/Sesd+dpgFL/oAnrHapOHIqFqOHXoxDX9s7wtvZfdpQ2/5XuVh
	N3dTRzaZwD0W5kiB4rAdsPkL7CUCd06l2AL8vJBg82DbsLfPznyKC1fm0Yp7mLzN
	BNlVgmMzsXitpe1j+C20zY8GAppmBpMVIGBbISOJfGBlH8Vsbxw/LgqpXSzbkj+L
	OHCtyLR1dQ6YQy1eFHtfRfM925NgYLO8hSlHGB9KT0nra+B78xbNiknYI88T/nWy
	OXpV5w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eueepjpcs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:59:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-915ccc2d4d2so119364085a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 03:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781693987; x=1782298787; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=28m5qJHxJ5Tg+COf1JCEhZftnpMn24hnH5Aw1jUzrv0=;
        b=dBSwxZBQeqy6OpitOeJt622C7lk2LLqGyh6x1pwXo7wmxXN83npLqicJUtE3Ht2yAy
         UdL3tX+x3QrgDY0sIhRAKUhz4Zh7p2TZr0/MOKEI03bddmC09kow/m16z2ODwnlJ662x
         YhUaEDL/CdM/swS56MIxFQ8pPhvHzS5q4aSEluMudMB2u1c67I3T18AoldwPrZ9a/6XF
         pKyZY+AiSLfFV1ETbhm3KWGwDsSJGaj0OJc3TVOvIw3gCoYAiC4L6B3Rl+KMYJSbeOtY
         MhcVWiELGYzAxTvEdfhMM35pvYFdCzXDJmSn7xMPU64V3lgdV4c2IhVCDlTkT8V9QpQN
         YMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781693987; x=1782298787;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=28m5qJHxJ5Tg+COf1JCEhZftnpMn24hnH5Aw1jUzrv0=;
        b=Rjz+K1BvQZ+mguxQiYxkFd/em8a27gdO0ChMnPB+W8fK3qZx871lwMJbe2HN3W21dG
         cKGSJb1GVuynIjsn0yTNDzPQ8stnRHRJl2JBLYF3kVPNSwtBs/aRhUxTq4sFiF3ZW0KB
         8YLidRBlsSlYgz4mIE0A90Lx3nEV4lTUG2sCvwo9DfYmmNUWWZQm+YMwstidORrb7fpn
         lryZ17YW/O4pk3h8W1Wzxh0jFUn8CJ6kaoPtmy9/mu8VAUzDhtdMEKeUhyCS1yirdMg7
         eUVYXOvt/8zLrr5eqyIGAr951IlEbS8zXRVQF/FuLbw4i46CwEMxhZ58n+qsiKlqf67l
         4dzQ==
X-Forwarded-Encrypted: i=1; AFNElJ8mTVlBm3QVCobVzeyt1AADTT+5qasNHKIgK+anSrkhNgxmutPqc/eCNkuh5fiAIVWVUzfkqvDGlzMD@vger.kernel.org
X-Gm-Message-State: AOJu0YxuuAPSbLn/+N6m/9N0Z0sRA6kblkaADoC8J+AjhyEFs576qDIb
	62u1gNFC5FCb6bpLwVik/aemB8a8+8hYW1ykknDBQ9jMaFB7lawiDOfHK4NrKUIKEh7LcxN3I8I
	613qbKdZttCmo+Q1gh379dke7DrFcC391xVyKttzwd//fei0EoQgM0JUYwWNoe1S4
X-Gm-Gg: Acq92OFoJngAI0cz/rtyZDuErgKbtRyZmGblzRWsmhy6JjlRv7ythxv9hOGapBsHP9k
	TWLCrWYjgOAsu+Dz7CSPvxP9miYQMe7uQB2i9vsfYCq8va1dfHDXZ/DWtqj6d3eIuL3mq8Btmxj
	Qbqa3X3u4DOOsV2LDC40SbgYtbsEX25oOYjY6PbYv2FsZKKH/irvaTAF39P6WHalb5cTf8HFvGP
	iv+0lEIuQZZrGeMUnbF+R9VcTtSYVFTx2iB/gaDSISiXFS9TOLvMh7HhvvQce4Z7jVBFg8/FTrY
	dY0WAxqx90lUVPyAW871qYxM/Ythmll5zoWhioMcBZ0QBYKKYWJetlUjWbpt6MBNc3T1PRf1Ejq
	3AArPk7U99wERSBzYHQNq+qqbCipyWYTpdwU=
X-Received: by 2002:a05:620a:bce:b0:8cf:d953:b4ec with SMTP id af79cd13be357-91d8acdc2e3mr362784085a.3.1781693987631;
        Wed, 17 Jun 2026 03:59:47 -0700 (PDT)
X-Received: by 2002:a05:620a:bce:b0:8cf:d953:b4ec with SMTP id af79cd13be357-91d8acdc2e3mr362779785a.3.1781693987028;
        Wed, 17 Jun 2026 03:59:47 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb8341840sm791241866b.43.2026.06.17.03.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 03:59:46 -0700 (PDT)
Message-ID: <ff8c29a7-9b45-4ec6-b10b-4df93f37ba92@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 12:59:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] spi: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, bjorn.andersson@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
References: <20260604-enable-spi-on-sa8255p-v3-0-43984eac4c67@oss.qualcomm.com>
 <20260604-enable-spi-on-sa8255p-v3-3-43984eac4c67@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260604-enable-spi-on-sa8255p-v3-3-43984eac4c67@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AY+B2XXG c=1 sm=1 tr=0 ts=6a327e24 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=KDfMXkAB15iQ4YLeNhcA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 0L-MpaLPt5GAvvk4QKw7jrp-xRXFHkf6
X-Proofpoint-ORIG-GUID: 0L-MpaLPt5GAvvk4QKw7jrp-xRXFHkf6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDEwNCBTYWx0ZWRfX6feAx6tFcjip
 +FKMjdF17jC7+oJiWTtobD9tuV8FufRsRmyMXEy6L/4QAiLRphgeCbTaa325jtHGmavlwleMFk2
 219lG3QJ5dOvTk7+BCSqY9WGR3afnGCxegrTR41ruvItniNezOyJncc5lgW+Sv8YEuXyG1ewCkj
 Ol2oQwH+hL8CbSuLI3f7rdb/qOwFY94z+GARhffQtVEeI73n4QHegk2jjZYvAbZQ9t3iTZ0ZLR6
 rkNEpCkf42T2i9CN05+3l/NmWk86DNmwsd7+x/ATpCmGRuWduDuaM65LqkrSuanxYgB2vEhaDf3
 uaCn6z8kSJNff7AG4oZpfmwP3h77prW9UleBpLs2f3fU2SAK+CS4Vdy64qn56xuKEzFuOVALRla
 9qGPYLtOZcOnlDliJaO4QjBvFgvF6fL/dg1z7/WE9+29O70noxC4Xp9B6JDgQvV84XIfTIrCqPb
 qZ5Cs6Sf1Lt0qfRpbpw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDEwNCBTYWx0ZWRfX8Huw5LMLMFEO
 hkvfK1fvWFoUyOiGBDak8UFtyyp1o7R/uQPhTjmihKlNwOtu/ad6gG4Zr5s06rrGaJy5UI3FVqU
 ryKn2dVGw9GlPfONG234w52siO5buP8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_01,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606170104
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312934-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:praveen.talari@oss.qualcomm.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bjorn.andersson@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mukesh.savaliya@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,m:chandana.chiluveru@oss.qualcomm.com,m:jyothi.seerapu@oss.qualcomm.com,m:chiluka.harish@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D641C698ED2

On 6/4/26 8:50 AM, Praveen Talari wrote:
> To manage GENI serial engine resources during runtime power management,
> drivers currently need to call functions for ICC, clock, and
> SE resource operations in both suspend and resume paths, resulting in
> code duplication across drivers.
> 
> The new geni_se_resources_activate() and geni_se_resources_deactivate()
> helper APIs addresses this issue by providing a streamlined method to
> enable or disable all resources based, thereby eliminating redundancy
> across drivers.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

