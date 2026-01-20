Return-Path: <devicetree+bounces-257438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BPgBLuob2kZEwAAu9opvQ
	(envelope-from <devicetree+bounces-257438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:09:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9713C471F3
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 65FF276C557
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 14:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71B243901B;
	Tue, 20 Jan 2026 14:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LqSZX06w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HzoCPsYi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2915444105A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768918380; cv=none; b=TzunH/D7XwoIgSLGnYnCxelzXu5nOM7uz0Sg6VZUoSM+i/A58a9TXrFDPsIy9zdW4c1p8SqIhzA5vmzJRozFnz5w0qwqgXFfVoO0AoqrH7aUegzYoMztIc0DFoB6OKSmKliMt4ZONUyQc77VpD4wuIb6VaSmR8QXaqU0FFvrx/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768918380; c=relaxed/simple;
	bh=YisKAKLmsEzq7as9dr6tbJOdgMgNjkPbMldhfyvZeIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sqQRAyZF7YIZnFClSj4zu/cCpAoKvKxZxOJvY8FBeF1YZYCxcqW1PT9frL9o5qGcgZYE89u+OankHzD2kQ1xvhTQcZbloN404xP9qG/ydcXuvhrAO2CRkSJLOkxQoS0kLRCYPqM9MpsbOxF36mkvyqvpXWC2HDrervu6SHOgj40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LqSZX06w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HzoCPsYi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KD9JDG511987
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:12:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EHBfsKrItXne6uZzgw/96JIwvuMEC+kFda/9wO1JJ/Q=; b=LqSZX06w8/zufVqy
	Pmb5AdcwYg9oKFdBNypfjr8ReB5v7hZJGnZ7yNT6e0s5AVtPzL8e3tfVQjhDgiqh
	uIfgCI1xM1nn9fxNgK37M0TzoUKtmNCdmmkx0FfBHLq+IGrLv/pyHJaeXQMCBfly
	BbNv3j0YLtXdpu5SPuWZhqbQ0pnpaFsrZaVUS0PV6UmVFMF6ADidMHRTYY58rrK4
	5Mx26jiklWOr87QA1Qns2Pf3G9+yPrBEEJvB5pHPir1MTZs26ITWfvy4lakrB7qw
	G0vO0iT1J+ecLAKkQLpd8HqxyBMINPxn17ch/vGCQuuISNbrlVleAvhHM4u+fl5H
	SJ2OWA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btabe05tv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:12:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c532029e50so181056985a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768918377; x=1769523177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EHBfsKrItXne6uZzgw/96JIwvuMEC+kFda/9wO1JJ/Q=;
        b=HzoCPsYiUd0eKek8c0pQWRdy8fI8P8bzDj6QcuDPrmDHYZobfSsj8iTdLs9u6cQcmF
         elmrk5QJjiXKfLatQ+RzyK3D24UAvv2j99qPCASkmNN4FvzM76jpcTzmpbcsZ8IWLu9t
         ZfoBiFXYlN6FguWynNfj/ORoA0ikdZ0qboeEgw/vUYB2baJqz6SG71rRLVriR7Qbs2DS
         OO+Q4fMcxp5+6LRfxGicmBQ0YyoGG8mPOq2ySXHd87Idly3xcQ5daphogNgMCxPhLX7V
         43UcD227g2cdlz/4vWDWCrYnSqWd8MVh7aHVs+Oh9QptOV2Yc6t5xXpl9zoESPRINehR
         d2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768918377; x=1769523177;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EHBfsKrItXne6uZzgw/96JIwvuMEC+kFda/9wO1JJ/Q=;
        b=PHDcnXkDrumuetu6YdcEBBGUKDGy1kZ4sCbHmSdM6Ud78GZ/UL/x4UVDrm5CjsHGdv
         gYcdw5QpS8afMY7KegU01ue+4E6gg5H2dzqlbm7oWTBnSVSkdJaQ7aIdackT6i74/7yO
         /30nZth+bFOcMWlAjRnGSC1pR/UZQq0LclYMkkaXH6Xp+77oVXQFWpt03XPBeCXmj0vb
         w15IR6hGg/YY0JJv8pw3bCmQKIMVfrAspxqStCufRBBeO3XfjkbToCM8FEk04s5SrNoV
         KHyqSSb4Bcbv2wZwvBPJ5dtx3a7klTFXQkyWSbIOETUHIOFjQvwBi8KONVzeraKYfxSO
         HJpg==
X-Forwarded-Encrypted: i=1; AJvYcCVb3L75flCDUlI3S8PUrzx00gunPfYopKZcbZmhHP04/99fDuqUECtbVZ9TWsoY+BsPt9ywC0Su8Ra8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg5SZDFWD+4bRdFPDjCEJrkVIvCpxmsOGOBfxTmBvlQFguHvC5
	OkLSi6CilVwAKdMltspXMOEzeJVstuVJQvgVjOUuNr0KlyiJttHPm/FL6CSf+nLJN5C4Ffjqsr5
	OFlF7wjLBXXITd9jRt0cBZA5Uh4J7GI9RdE1o+9nsVLbqjS/gDVxPGCb+q3Ys66KV
X-Gm-Gg: AY/fxX6T4UMeetkHW4+cjwOxGrU1TAd8OASI6PIY4JUBCmsmgvmD7Kb+FU/P5cyBN95
	UyqspfsRAzuswMMcgz6N+DRQpBsxJQyWTNtqMPDsBqSNAa5W/+4HXRiGxgz1Wn/B8V41thztT8N
	XPUVyMOTNwTwKotN+x19II1V47Fe5GDoB0YnBu+CQjBU29o4aiZzZWX4TwMtOXvyA7+AER2E+s5
	Rs+DN6CjwY7hc9VSdenuBU01CYVeGdar144f0nUumS9sx/EtpPq0oG1i5fKOw1Awd3vup7no3Op
	335i6GrfEUqboz6rXt+s488KYYtMlqPDIxANiNRG4k5jgrQ5JfMLfrMlXfs3z6S8hCoYOf3wOYR
	Kms/259YekvzahQY/4JWb5lrxMZYUmiwMJQMFY7Oz/fXTSQxUJOqAXv2Zb7ZiUjMSN9w=
X-Received: by 2002:a05:620a:711c:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c6ca3a8fcdmr320035785a.1.1768918377258;
        Tue, 20 Jan 2026 06:12:57 -0800 (PST)
X-Received: by 2002:a05:620a:711c:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c6ca3a8fcdmr320020385a.1.1768918375214;
        Tue, 20 Jan 2026 06:12:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452ddfb76sm13260091a12.15.2026.01.20.06.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 06:12:54 -0800 (PST)
Message-ID: <41840083-0cf9-493f-a9be-d671b4d59a0d@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 15:12:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: milos: Split up uart11 pinctrl
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-2-27b4fbb77e9c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-2-27b4fbb77e9c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SI5BFrEVJm28iQIz8S5k0zVagcMW6Uxa
X-Authority-Analysis: v=2.4 cv=Q43fIo2a c=1 sm=1 tr=0 ts=696f8d6a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=yynwHhEk3PJQGNIDankA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: SI5BFrEVJm28iQIz8S5k0zVagcMW6Uxa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDExOCBTYWx0ZWRfX5otSCTQ3RNrM
 hb7VYwH+COg6YF6HMRni0yL5my2CnxvV6ilNxGxxvIbj8ceMu8oYCF4rbeiN82UeX21fOzmNKtp
 kTMQ3uJnD+dadW/wa/Wz5xkEzn0pupzXAItAllxepw3nIHMvD1q4cFZDYqY55SrdZ2I5HuITIPb
 cU05C+8ZtvFA6+e/5HbxaDj28ym5hd25dxVmX36guLVZP2J/cz/x0LMKF/QK9Re15V/kXO6gADR
 taFxkaMFSTl3fvkleCfwU7GHbdxVTBtGhtfTwKWJS/67md/YIinrWeBBwpYuSJG3ROhT6sTkacK
 AkE7R6TzuoQGbz8PyZzSEX1TB33a9MCRt5OCZZUCBXTHmvc2pz7uLUaBNdDQEe2jXcvBvTvI91y
 JwD3WZqF8ewcpf10+DiZxmVjo7AmZGMINc1Hp1uvMvL9DH5Ui3UiY099I1WC9PwSUopycE9l0GW
 Uke4QE28p1f/fl6nzVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200118
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257438-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,fairphone.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9713C471F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/16/26 3:50 PM, Luca Weiss wrote:
> In order to set the pinctrl for the individual CTS, RTS, TX and RX pins,
> split up the pinctrl configuration into 4 nodes so that boards can set
> some properties separately.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 26 +++++++++++++++-----------
>  1 file changed, 15 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> index 0f69deabb60c..024e1c9992fe 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> @@ -915,7 +915,7 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
>  				interconnect-names = "qup-core",
>  						     "qup-config";
>  
> -				pinctrl-0 = <&qup_uart11_default>, <&qup_uart11_cts_rts>;
> +				pinctrl-0 = <&qup_uart11_cts>, <&qup_uart11_rts>, <&qup_uart11_tx>, <&qup_uart11_rx>;
>  				pinctrl-names = "default";
>  
>  				status = "disabled";
> @@ -1835,20 +1835,24 @@ qup_uart5_default: qup-uart5-default-state {
>  				bias-disable;
>  			};
>  
> -			qup_uart11_default: qup-uart11-default-state {
> -				/* TX, RX */
> -				pins = "gpio50", "gpio51";
> +			qup_uart11_cts: qup-uart11-cts-state {
> +				pins = "gpio48";
>  				function = "qup1_se4";
> -				drive-strength = <2>;
> -				bias-pull-up;
>  			};

I think the best setup is

qup_uart11_default: foo-state {
	qup_uart11_tx: bar-pins {
		...
	};
};

qup_uart11_cts_rts: foo-state {
	qup_uart11_rts: bar-pins {
		...
	};
};

Since  there's a lower amount of references at the user (default vs
cts/rts still makes sense as that's a wiring difference) but we still
keep a label for customizing the properties

Konrad

