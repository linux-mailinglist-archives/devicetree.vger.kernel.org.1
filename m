Return-Path: <devicetree+bounces-261762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPssOLyDgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:00:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95654CB620
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C215304A886
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209EB35CBD5;
	Mon,  2 Feb 2026 10:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dpt1V3u9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fPTVHbo5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2AEB35D5F9
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029846; cv=none; b=tMrjyzIb1HWmnYqICMAtiFMyxzkUQK7oxUs88TuA4Ml1xeEaqDNvuTqgcXduVOY2HzpnNToMfwOa2RFP6m48E+LlofmyOgJUUXaq4dWAWPv6/T/B2+RuSXGWsh99HID0tJNSek+wJESSWhsgy7tMmHVCp48bvyzSb7f4+LPylZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029846; c=relaxed/simple;
	bh=TFTxp9Whu76WPWc8LoRr1IbswWOT2EZOfWCEsAXG3cE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p/ziWoL2U63OGSApXmI5g0CSLQ8a0O9b7Mlv6ojdLZMnN0zrvJ64xtzmM/nixKAqhIlGyS3zQ9Ompe30v/6WY+dmjJhmbEGP4zyCLNAnT5MyGA9JvW/wQ3m5G8rlen6Y7n3sOkjOL1HXWi0rg92QgQQB1ISxV2KqckyaWCbYoeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dpt1V3u9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fPTVHbo5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612APET22107174
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:57:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UuulFgRx9rd/kvUwhvAhL2lf6p7QUWW0dftJxb5MCVA=; b=Dpt1V3u9rKUpY5Oi
	GIjOPuOONwb0nuY3VNAVkxQHYXLsyznSjcYRh/g8lQmTfq8Mft9pVlCt5jsoOxFo
	RFH2Tya5hatwejqa0yztCYXi82sGp+Q/9C5NFJXRtQWiZY3VcuJrJJ7k/jhTLlT8
	uVbTosc1f7IGFO5gz5p47UG0DyX6w9MgenSLUOs9lalDMPCCChdc3//mvNVu3Tti
	kdly3kRD6R1IfsXWyJ5KtkkYrmWnIbLF+BxttNFvUNMvlOFG9Cek7GZP/qDYRVpa
	uOu4Gl3u8IWYq3Ro4W+nrenvnls67qtvuP2iQVLgc/u3g7ML0x5bHr9uQ0AyA9hn
	rZ5Rjg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5e834n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:57:22 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6b48c08deso70504585a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029842; x=1770634642; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UuulFgRx9rd/kvUwhvAhL2lf6p7QUWW0dftJxb5MCVA=;
        b=fPTVHbo5wUOSfOKVziEtvkjOMOzbXeQDw9tREExTRWFiavEyDUCN0vWQwmo+oVajqZ
         PGenC8zewOi/jvtDoyXo345xS6JtP35Xa6ohAmTOqsAmnLb1WMmnyo2hrcq/Argb2ZWC
         /IktTUWd6gKlsFzPdV1JPSxTLWX2T/0/GAWfMJ1n/ifgcRaoEjGeL1UYMNK9idu6aPuR
         hQ4R0Jp0pajoSYkPo1uBpJXZdacjNlefx+qB9Qy9n3uK7WWYrACnZww/pXUR6C+J3/rD
         Ml758mhJfl2nu+b8wgzfWuNuTbdVWlYgNZT0U82A3LOoYMTijwgnOzN3/d7e7lMVb4WR
         PUWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029842; x=1770634642;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UuulFgRx9rd/kvUwhvAhL2lf6p7QUWW0dftJxb5MCVA=;
        b=QuOZiK2bZ2bICey2GexwNR9SkZLvK8W/L2TK+xlt4Rc59GpKww0R3J4n0EzswgJDiI
         NPao3OqdFCKk8+04KpJH739osOyurvUybL3tlqG5mk/NZ33SwcV6pqlcBxZHNgvDwzYX
         4Ki8xR8qU7hz3c2hi3wrA1G4n4Df7MViAPIfM/IRBswawJ/bfgEh9Y3yNd1siVDCbznP
         YOd36PuSvpJYdzYI7BXH/qn55s4kGuJHo/527JLY7wCcMEbtnUrIAbwoPGZpd2JuHRfV
         gID0K9OI8bpXb6onxt+sNCC740Qm40lB2tgguIVvg+fPpdK9d1hsowzqXhHqL5M+DnZQ
         M2iw==
X-Forwarded-Encrypted: i=1; AJvYcCV8uCMb98etGObqkux9/n5msopUTK57cOR5pSms9GcLsLCkSKEYwmTWVj3bnzgLLzrojgw0algWhjwb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8qFhZA6gAZbipuS72ajXYxXffIdiLMuwm2wDr6xxz564vW4G6
	vKr4PuUEZqof2/Hlf16cevqehvw6YXtjpId0giD2+k8Hd2iywWcUJgBHAefyU2wbOwE0erEJ862
	ZG5RDjYiS0Kne7ZmCneWEk4x3jJs0L1kicnC0ANN7Q6rO0oW2aPBVATNMx1/aV7IL
X-Gm-Gg: AZuq6aIKSe9IPTx9azLvEXURiYZbkCKiQvgMpv3jRjYr8LsxLyI6gb0U2XqVU22Asfq
	5PRnbhkWehQZ3466IV1txcnCn4rWIhJpoYe6GS6Kd4V+xUGHWSqtto4UNwNYJ/ST/fctiPtjLyK
	9JcFZpN9CF+tDG/u8dw+Q+ah0KGQc8pRUr76akm8VN6wcantE+OwcnpxOXVCd3IYK5RKm01CB7f
	aCvizdpCjz76CQNFfZ7rPS5u2EXCfHc+Xlfbi6Xih0rHHMaeTNorrKh4XXrzfGi43WeaqYxRCPb
	9lvlGmnvO90jRHfUvS7xty63lAOuFkL1f78mm4FFDwRI9vUij2IE3PlSa9MEGJJ+r2Ta1evE/vX
	CTPxC68/w/GD2XQCp3WZtrNn9XJDZp3AfQhZcTh8mQPvFMY5OjNsmqkAr8OuRaU+fqic=
X-Received: by 2002:a05:620a:4141:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c9eb20cebcmr1085527885a.2.1770029841933;
        Mon, 02 Feb 2026 02:57:21 -0800 (PST)
X-Received: by 2002:a05:620a:4141:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c9eb20cebcmr1085526585a.2.1770029841519;
        Mon, 02 Feb 2026 02:57:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf183ccbsm843100366b.34.2026.02.02.02.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:57:19 -0800 (PST)
Message-ID: <9b4ce86a-8529-4c55-9dcf-caecf81e46d8@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:57:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] remoteproc: qcom_wcnss: Fix handling the lack of PD
 regulators in v3
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>
Cc: =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>,
        Luca Weiss <luca@lucaweiss.eu>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, llvm@lists.linux.dev
References: <20260201210230.911220-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260201210230.911220-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfXzMwU4+xc0RXd
 IkihLehTt54AU0MCaLYx2vwK5ueCg2VLr8Y5eJqpq3UfkUX64DrPsO/oRK4O6wzM+deCUV5v/ea
 uSQv8yRVjSaDJKqq7+UCMka62TiOt9kDt7u1W+Yoctnkj2ucKcEzTVhQGMrSOavhMleEfCtCXTx
 vVSal2L+JVqc62dPS1cmoSCxYBVSAt0srzMdMcn3r8AjQ9hBAnlW3+L3nd98AFVRDHVtrgc0DEc
 m1vayZKmWoKPveyBkPNXfh2vTKtriz1H6f5cq/pnH/3nAVsjUfRC2juUrox3AKh6nz4VHNP7eM+
 GpLu+gD9fBspEjVDyJQzIM7BlK4h4Htuz6IzCLLBlcsTpFR4a52vNI6wKgN/qVAi5T70pMGoafy
 Lc4DoELuRKleesQZ3anmL9h7y4IiCizIpWm+kk5Mr36p6PoREF+iqiALEhfIxrY20R/cwyMZQSa
 YXfKDRZtTdXiuoITR9g==
X-Proofpoint-GUID: 8lG-lhoeRQtZKJb2B7_RA_9mtfYXxwrK
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=69808312 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1XiK3UaZtGXvnlVxuGgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 8lG-lhoeRQtZKJb2B7_RA_9mtfYXxwrK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261762-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[packett.cool,kernel.org,linaro.org,gmail.com,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lucaweiss.eu,mainlining.org,oss.qualcomm.com,lists.sr.ht,vger.kernel.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,lkml];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 95654CB620
X-Rspamd-Action: no action

On 2/1/26 9:55 PM, Val Packett wrote:
> The changes introduced to handle single power domain platforms have
> swapped the info pointer increment from num_pd_vregs to num_pds, which
> would shift the info pointer past the end of the array for pronto-v3,
> which does not list power domain regulators in vregs.
> 
> This showed up as a difference between GCC- and LLVM-compiled kernels
> on SDM632 devices, where only with LLVM one would get the
> "regulator request with no identifier" error, because the out-of-bounds
> memory ended up being zeroed. Fix by skipping the increment when there
> are more power domains than regulators.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

