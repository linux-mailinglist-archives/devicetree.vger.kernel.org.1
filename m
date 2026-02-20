Return-Path: <devicetree+bounces-266880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGI5GDgsmGlqBwMAu9opvQ
	(envelope-from <devicetree+bounces-266880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:41:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D09B6166570
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB34130158B2
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FCD03242DD;
	Fri, 20 Feb 2026 09:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S/mzWkJk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RvgTEi+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137A3203B4
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771580470; cv=none; b=KXAsoKdG4BbMa7ffJw3aV0SDcVmBxxZOB4XaHCITWQTvKyNBjSsgDJ+99/NM2paAbuqlm2VPGq2yIz4XwEnIHnS54Qq3wd1F0M86wvy58ssh7KFln5G64p8uF3Uo3h87Sw/rNleoeCPlrq+wToGn6bSyusWWq+9DbxvqrXvPGWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771580470; c=relaxed/simple;
	bh=qbUXmwR570rq9nrHQF/Vyqde3e9v1pwrpQxkM4HhG9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bGwBIQVRpS+LvPYf/AuSnjzkXMoDROXfN12s8n2O4X6RzYuCxvTjWvNcq6iNdytfMMnARLifhhof5d/dH46HdzvktEFdXSYaW7x04sxtei/vV/GCCQTY/KnBMwIkcVesdytnlfSlDMVqn212Udj6VCmvPjzrAzX0mXQsNsCxrNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S/mzWkJk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RvgTEi+1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S2ac1851524
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:41:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6WbDl17tScfovQZkpgbjXLkoJh1qbl/GssicBwPPp/E=; b=S/mzWkJkxoukhdiu
	E0yaKqgLVUxL603LW37J8vD5BFI1HL76AGAHXa2yqYrCntyJM4bHarLYuaiAG+t2
	f3pMd3t16eBB/DiZb5rKUObi4QnVw3HXNhiuFjeX6bUj0UbLBUpqXAw+EODC7uTY
	nZf26SAJShocxG2Z+hfH+//JcCppu2atmkdpbdQHc0YAl+836keJlDjjNjwhotf7
	HD5MDHzgA2+VDzEbFD6mXrcqbXdclOv0ThMoPMNrnOYoB2v0bMhGiAMcrjryev2R
	XtQlQSzTcg3cDcg8qeKDXAyrcyuOcDDEPm7AyCiqbyrHplFm0kVdEB0czeuv+2/g
	S9NPkQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce9ng9qta-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:41:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb5a76f13eso128312085a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771580466; x=1772185266; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6WbDl17tScfovQZkpgbjXLkoJh1qbl/GssicBwPPp/E=;
        b=RvgTEi+1Q5uS2kJPMQZAq7radfdFf8MUB/7qRWYKTbFTVw7VaOVNfhR9tSdvliyFGQ
         eNxNCz8LY2HJ+sgJhy+/mfX9oULmGndey8Qdnl/p8VT7IYP322RXXwx9GfcoolllCvOh
         ANmTjBzb1QsxMtfI51KjGM9DaAI39h91cjA/UG/MophrkDxU9BGbTAeaLlGxtxwk5yp8
         ycjvPmbBHIFeOyNNTq7NFdm0Pb5lBAW8WDZcynZHYLsnvZXlPiidGK75QncQUhon0Xpu
         vMHALN8frm5soBQmH8qecB8xxZhOgfypXzhf6MM+GU0MwH8RrIWawLl2cT1SrZVWGw70
         cn4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771580466; x=1772185266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6WbDl17tScfovQZkpgbjXLkoJh1qbl/GssicBwPPp/E=;
        b=oEoSVm1l7zvcD0LxQ9egKTWZDsMITIewAKXIBaTibCv1DAj+2o/3DNyEzLI/Vv1IGI
         c72ZX7udmwSXyc8zTh/y2EynpQZesxo2YpIQf8pJYa1lpU2tFtcIEBW3dYBL/jOgIXFj
         +pYgXLVxNXI7FIk2ehCsq1vgvbfndEqJzNYfWGa5y46Hyt74N6857cYBPClramWi9FcL
         Iovq7pSGgJT3z63MI010d6gw13DyY4tIFLCt6oj2HKF9zQtZuB+kJd+Z2jOTLU9X5wbh
         6Qq71tP3LTrccbkgL0KBKKAP96VblhwAQJ8Ufbkc+snJAzcC7oww/P+8uQhr6lXD6bYZ
         Ml/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUbLrrWUvvVsh3/JC/csmXA7N3c6o61f3T+4of6i0lrQ4xZtPWMi5FBSiqD0aT6NpSyoqoZ553pKCsM@vger.kernel.org
X-Gm-Message-State: AOJu0YxOq1vWQaUYix1JLRjv4OWcOUgElHgP6xTLgpqq5z+sYB56z8AD
	ImUD7MAQZpQcqcaCoAJARvAQ3qCsTd+OzYg8q30lOQz/lhf0I6LQsVW5ss88FETWzeONq7cS42l
	qw7mu54S/SRCVdtf9PMDp7MzahqTjFmLxIsM23qMAdKlrB+niup9PKXZ7v0QbdMzy
X-Gm-Gg: AZuq6aK4qh906mR5FNb8PGwQomdufeUEVQ7eVaxPrX9J6ChR8mgbpyhq3w66jqwOgZ2
	IqBNh0xArcfa35TTOMeNZWl0s83Mh2vKQyzAn4V/LrLasX0fwa0nRBz/nTBK3ZUIIbm9s89YFSd
	WgujdE0O32nVj1b3Y9J8qXFizrAu73t3BEte68BBSm2gAp4PpDRLy8n0GtqyDPui21QsFQ9TVou
	szKBxFgM7MTfzFf1fRN7otfgpertFgi0TL0WYxE049PmE8SSMBbfU13yrTZQPVAI8VcbXEEfHh3
	LyUDqvDoAGlNM2Ac0wIGLLUnH4kQTeLtebzAnxrIkgDpbA7gv7q/MhozGnDDUMNcB2GHeM4ywh4
	otCAZfWShpmZyzRbAknWVAQ/OdP6T/Rf3kjD5rSt0buL7aKJ3IB8RyhF2t1ZqRONYajzZVvyuuI
	RU9LY=
X-Received: by 2002:a05:620a:46a6:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8cb408c87ccmr2346576085a.6.1771580466570;
        Fri, 20 Feb 2026 01:41:06 -0800 (PST)
X-Received: by 2002:a05:620a:46a6:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8cb408c87ccmr2346574385a.6.1771580466205;
        Fri, 20 Feb 2026 01:41:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e3538sm4771046a12.20.2026.02.20.01.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 01:41:05 -0800 (PST)
Message-ID: <8e670f28-9a2e-4495-9b84-8b1d9c0542ba@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 10:41:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa/x1: fix idle exit latency
To: Daniel J Blueman <daniel@quora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260220070204.101672-1-daniel@quora.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220070204.101672-1-daniel@quora.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4NCBTYWx0ZWRfX7DTPEo7QyaiY
 YavK5opOgwyQGQw8RxN0dcUukQGx4/P3hvvwsV0jUY2W7rnhljbjv6VpYOOfhWhMXZRxmhx+FrC
 mFZES2QNIp486Fp2VRFidVU2QEay800irPx3FT7RXAeLGiT1nI1L71JwnnfU7ergxIde/HQu+CE
 pn5jlLMOk09uVCsXDPYAlouuRhbd4Ls+LyEqkJkKWXVyDJ954bvrTH6bHEluy0lrLzrfhMtaFr4
 b0MRXpnE4iZuo19BMCsPYfW1Nh3YQ02BPvKE7oFbiX4ij49GVw+UMKnXq/YF9mDzSYknqMFulKr
 KzZjQwuQMNNm/3++MNIIR3Ycl6OTRwwSte1s2fYz6v4WmQqMafvgPKX6YB0nlVv40/akF1HrNe2
 VZhUewyPFMpGcFHuAL1/6cXQmiWcyBgPVyIpgEpidU8v/6bllwK0MCccGRqpaqn4vdVHgdnb5Yb
 JumWPhArdwAf7J7/DTQ==
X-Proofpoint-ORIG-GUID: vfk6cwFwimMuhUnfwG4jns59R5ZNKAIb
X-Authority-Analysis: v=2.4 cv=Sbj6t/Ru c=1 sm=1 tr=0 ts=69982c34 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=t9ty7G3lAAAA:8 a=CtgGTwNqbZ-k40dbDgUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=CsAS6f0m0zARWR-uHzm3:22
X-Proofpoint-GUID: vfk6cwFwimMuhUnfwG4jns59R5ZNKAIb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,quora.org:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266880-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D09B6166570
X-Rspamd-Action: no action

On 2/20/26 8:02 AM, Daniel J Blueman wrote:
> Designs based on the Qualcomm X1 Hamoa reference platform report:
> driver: Idle state 1 target residency too low
> 
> This is because the declared X1 idle entry plus exit latency of 680us
> exceeds the declared minimum 600us residency time:
>   entry-latency-us = <180>;
>   exit-latency-us = <500>;
>   min-residency-us = <600>;
> 
> As 500us idle exit latency is overly conservative, fix this to be a more
> realistic 200us, in range of similar silicon. Tested on a Lenovo Yoga Slim
> 7x with Qualcomm X1E-80-100.
> 
> Signed-off-by: Daniel J Blueman <daniel@quora.org>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index a17900eacb20..b870f4dc9c42 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -269,7 +269,7 @@ cluster_c4: cpu-sleep-0 {
>  				idle-state-name = "ret";
>  				arm,psci-suspend-param = <0x00000004>;
>  				entry-latency-us = <180>;
> -				exit-latency-us = <500>;
> +				exit-latency-us = <200>;
>  				min-residency-us = <600>;

+Maulik?

Konrad

