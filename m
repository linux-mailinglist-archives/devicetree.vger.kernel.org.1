Return-Path: <devicetree+bounces-312931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hJzVKwiCMmp91AUAu9opvQ
	(envelope-from <devicetree+bounces-312931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:16:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 42113698E6B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:16:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Lth+AvOz;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=TqkNxUr2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312931-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312931-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C5FD331F9A64
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7603BFAD9;
	Wed, 17 Jun 2026 10:57:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD9539EF34
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:57:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781693834; cv=none; b=iFO+sbWsKBHulZ91lWJ2zufiYTvTYnt5PcX5pARSV2Fc8iH6IXE5VCYNwQG6D7LlxE04dkr6BylePyKjaFyrAxKVYvGZhjs9jx+aCXKOlodXegiXAZVlZ84p12H+v6L2Vy4RjxS78kU2Xk+e4DbTDc/DyWrS9lNHizhFaK5pnpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781693834; c=relaxed/simple;
	bh=kDkKS67hN3RnVTeB7mYSl6BC188BCbO+mJkU8ds4bNU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R1kTx6fJzJTcT4YzDDDzvWTEZ6nXN+xTSs1MJSb5Lk2lN0i8IzC7aGnL6k72tu8lH5INsiqhlKMX/y21rSHtSz1jyXvztYNabn4gka1mqhe7QVB7uxn0pHwbt0FMw8mthIZbogQ9gTapyn3Nue8NP983oFGJpMu+tS/knX0FXA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lth+AvOz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TqkNxUr2; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65H8UXWc2217612
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:57:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P7KjoRg8s50uo75jYibfLq42V4xZVCBOHimACuml5Pk=; b=Lth+AvOz/tqHY0bb
	AiWakXPKnSdnUlJHJKPAoylcUytC8X/a3+st6cUSuYrdUPTBDBjs2meJ4baJM/d9
	v0dSD7x37n95NEX99DKGVrxCtWxLDTqtebFxWQ4EUQMmZVrOayrrYiUkBUxQSQgI
	3GcHf/S+Y5PgUIzJrGbK7/zXyZXKngCT+mUssA8swzSuQpGa+EquhasrdtesSiez
	9yU8Am5GWm3GNhqv/Aq4HfZ23p930GKaQ9Sw5CuMXWHkihWNHx9nN//16AQFkAuo
	RVxWXad/la5Bs+vYZpBSLHCVZqU97M724tiryZCbgeqWDoziuDFbBSljlbv5bmlh
	X4nfng==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eueerasqk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:57:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9158ecbfbc2so43631785a.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 03:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781693832; x=1782298632; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P7KjoRg8s50uo75jYibfLq42V4xZVCBOHimACuml5Pk=;
        b=TqkNxUr2X0toUDwJOo+tuyoAp0InoLyXR9Dlz83jy9FIIFbcT7jISSQ2NE7wk4tUO/
         LR3R0LbHdTS+zeHbzYqEZNRjzpyWWXDqrHc+sdjANO4jAgcGh+RYVk4juI+PeDT2E7Tp
         7tWv8Y5o4bLh/jWfha9FoEn/KR+SxoDdcY3x46pDBg10dWKifwzKSVmJQG8Pd2Bgm3Mg
         xn7ex9OrIzLu3jvukxXt8fVvTuFcp3ESGV0sCXh0bNNZxDrSeCfJ0j3ZcfHJS7HOxxPh
         V6ivAZ5Va1T0iJuOkJTPXX0+CkL8VL3rpcvrDQUEfl5bT8Kv3TxGtbNLbqsHEIi2Dl6Z
         lSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781693832; x=1782298632;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P7KjoRg8s50uo75jYibfLq42V4xZVCBOHimACuml5Pk=;
        b=rKKUZHZUZS45XGwW0ZR+4R+x63hc5ZOGNoF80MGugRPtAQ4+HJ6vLY10Xd5fLbzx68
         pKo/+z9eBIsmaNusdDpTp7KTyeVz3mwGhAjdP+dDGiThc0DRCL7+LVTZ87cvuzIxGjAD
         65UlLxUNozWem9P1Qo82NNNG1PEHBcwevPphouhcteh46Udesk3DCUGyuyRN8JqTGxG6
         8oe7todkjcDvOrFOZ/MzhoSO97GFhvYR61ieSBLreDolzRs+xqJVERYt1wLsS3rzEBNB
         kJQ93SI+nLi1SdtMiWV5Rdv0AGQ6a5vSkz5K98F4jzz7PI7BsafvCtvEmMGhJu0DBYNv
         XKjg==
X-Forwarded-Encrypted: i=1; AFNElJ+o4+XfJGdOsQngftLA3NpwXrdcERTKYgMQ2FpESMT/bkYrtZs+GWiSB1qZzlrpr3nPSR99CfcNxoC+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwh8uOyHPduUinY5A/1aD4OiEGskTLhz6ihXTzCHjazlYWjvWQ
	Vv/IlblR4HB7lJBUxPY2sqtzx/qfKzytfMU02FewClhlrmv+5b1itOeU1RfbyMHiCFhqqGHvx4K
	12rcCjqIMUHrtjv+Bagr0AQAHBLXfQwxMQEM71PCTMXqJLdFW3UfDsf4b/tRzlHr5
X-Gm-Gg: Acq92OE17wmHk2gh/Rm+I9t1IbUVQTgMBjPqI0/v7Qc5RrfvB/lwZRNrreDZL/9E4ps
	RKigh06Yll5yHxohXIOJRNT//E2+1+FGfhjEttXM7dVJahWlb6987pCsztDBlLmL97WuFfVfF/H
	vcljElynur/2u7LlCL7qOWEG+Z/RE7IL34pvPO+/hEt/po0AFKbZBXdzEpNonvCWOqV1PKwNCTT
	zlgVWd9r6K/CFM29qFK8GCAuFF2GCuAiK6Nra23q++8ysiwTvRVcF51v1M0nMtxCEXldT84Yv6O
	rHgK92E2f6vfvFF8l+G57IemM1kWrP5PGSbL+zbxn2FoN8ySTWlKSRRRM96zg1W/nfGnv2+Ay6a
	N351XL5D6WJCburZxPkck/LiDjF2HwD9I5iU=
X-Received: by 2002:a05:620a:f01:b0:915:7d6a:4f99 with SMTP id af79cd13be357-91d8d5b295fmr353260985a.5.1781693831885;
        Wed, 17 Jun 2026 03:57:11 -0700 (PDT)
X-Received: by 2002:a05:620a:f01:b0:915:7d6a:4f99 with SMTP id af79cd13be357-91d8d5b295fmr353258885a.5.1781693831507;
        Wed, 17 Jun 2026 03:57:11 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c01d667f63asm507620366b.19.2026.06.17.03.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 03:57:10 -0700 (PDT)
Message-ID: <8a4cbd27-6a91-409b-b6b1-047becb57480@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 12:57:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] spi: qcom-geni: Use geni_se_resources_init() for
 resource initialization
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
 <20260604-enable-spi-on-sa8255p-v3-2-43984eac4c67@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260604-enable-spi-on-sa8255p-v3-2-43984eac4c67@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDEwMyBTYWx0ZWRfXw0sxCyWIHvh3
 n6PNt4c3oheyx9wly46CVnmN0NmXFHDgbxNdcKsllyK4o+iCz/3MpIYwF6bZ2YAJpnIUWPTr4pe
 uXsNxKgn718kcvzraCEFsZiLr+bOsY4=
X-Proofpoint-GUID: juhbPli1EuBZ4HxUVDx3egT-VMxmxTM0
X-Authority-Analysis: v=2.4 cv=d4fFDxjE c=1 sm=1 tr=0 ts=6a327d88 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=G_i3bwEB9gotEOBRcW0A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDEwMyBTYWx0ZWRfX+N1F8seE6S1E
 EOsm2TYJiBaUKrG7foeWrdXx1oAGDGTFVzaAVx2OU4jemQZQ1V9dLPvczE4hZ6AbvyzHjVSmfWK
 aOSobK3esoL7GIXV+qfXGB/CdWvrRIoxF9MjcUIQ+tt/Srf6ytHrIfSag/OyDri+XOE7JW4UDyb
 CsWeATrDEIzlXx1IY6Dw2R3g8L/ME0nrTJ4C47WsTR3a7qu18QhTR1JcHDU+xHUdoaSweCG+X8j
 Yl04NTFzk/BKszmtlFG1+fFLZ+XenrTaCWv6pefTJcR9xT28IvnfRrLmLXzs6eO8bnPDi2R3Xe0
 VWSIykQz8wi1SBxY8AU4qnj1ZBzrYUwETF2LUIZJJGq9TuaaYJ4ANTYQmXZL7a4OWr/QqG/GCMo
 zM9toXgMyhaEvJSAFlxTikso8ClgE56qYQCySg4REZ5q2T6ZI+UYNWbrPqdd6fZWbw+ZbK7ELVL
 +npJMqt5lPGANcbg+iQ==
X-Proofpoint-ORIG-GUID: juhbPli1EuBZ4HxUVDx3egT-VMxmxTM0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_01,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606170103
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312931-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:praveen.talari@oss.qualcomm.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bjorn.andersson@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mukesh.savaliya@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,m:chandana.chiluveru@oss.qualcomm.com,m:jyothi.seerapu@oss.qualcomm.com,m:chiluka.harish@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42113698E6B

On 6/4/26 8:50 AM, Praveen Talari wrote:
> Replace resources initialization such as clocks, ICC path and OPP with the
> common geni_se_resources_init() function to avoid code duplication across
> all drivers.
> 
> The geni_se_resources_init() function handles all these resources
> internally, reducing code duplication and ensuring consistent resource
> management across GENI SE drivers.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

