Return-Path: <devicetree+bounces-259419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCdUDZk7d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:02:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0F7865BF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 965A0301D044
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EE532E69F;
	Mon, 26 Jan 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cCBEKBAi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="khL3jtIp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D37232AAD0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421632; cv=none; b=Wz+x4y3d+ckSkBO2hTADMfyChdRx9bWiShL9w79lA9TGO5pJ9ebDc4mwkylZ9hslzgM2GxnRBiCVqEO+Vj0wa4aKi8ORBOcpbKq+mIGZpl+WeKC6w5zug9CMetIx8xKJ5ueCWBTmDALqEI21fLZS20wBaw5zFxdreVigmX5bIG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421632; c=relaxed/simple;
	bh=0nx8zUDWkK9WrQ3HjuMSpxEdNZinAHVQoSH+iyhLpws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RRiMexTLcEI9Hw2WS70dpM0CWxGszkTeZjnHC1bbYqY9mpWaF7iewu+jpzDnsLEMSIxJ3TR8MUPi6MNXCaC57CzB6ZRvP0x/ykciUUIJkqe+drSB9eF79AU8lNln0ieSW1HCodFEiKlxwM20Gc5HBDZJQ9ZLJOI7iyTI/jAhU0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cCBEKBAi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=khL3jtIp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q9HmFF211676
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:00:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z2NcQNiRQpQSmkaW1sS83QhtWA//oCEj7r8nYuk+mDs=; b=cCBEKBAiAM9UYNh+
	bwXW90fzwGCbzbdjXsedo1MtwV40rM0/CY8MEZ38ARuMRKLI9fE/cd6N1MVryEM9
	llGLPxCLduW0JaiQKtH+pKE+C7i8ouMphTBD1YicvnofiBK/c/Uy45qEIjF66nin
	kvngx7NQs5VyH41j6QNJjL+MWEr/9U3p4GlnLr5IKPIkitpdiHR4r3jR9QpUzvxl
	qzS1SWEhEedPvW3XDq+fKwvb7IQDfa3zp8jjDqs6GUTbGqox+LdZcCLHlchWgMIr
	VlhAobO5QU8ibSKP4nUAKoqvHbJRm8KnyIORflU4EL0sRHR598hpOAPI6T2AjfZr
	1sO6lw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6xv49h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:00:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88882c9b4d0so12081926d6.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769421629; x=1770026429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z2NcQNiRQpQSmkaW1sS83QhtWA//oCEj7r8nYuk+mDs=;
        b=khL3jtIp6fLn33j4BVkaHejokoWAiurt2vsFW5kSOZO8dywL3AlSEHwp0QHIVCxC0A
         /POzUhtjooba2EbNj/XIMDv0sEGJ6wLtg1RtsrJfxsw/Nuypky22cwiBU82VOjY/6Wyv
         K3UWJk02QA/vRCXIL5NRNGZYbhqD2MauWdxIq0bd7SEOGf8th0R3oQ9SH++AOec88aXz
         DjwLdvHMiWU3kAKEbMVMc9Aq8UhXQh5ure+P/54m/To536m1FJ92zWtPJkyeRst/BtZd
         f7HO2952ZXhsXX2njDn2XbPMbpAbt2bw7lb2uOizRg6HUcox1hqrSuSDtyK18Vn/1Mk7
         UOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769421629; x=1770026429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z2NcQNiRQpQSmkaW1sS83QhtWA//oCEj7r8nYuk+mDs=;
        b=cZW8lQsf6Jg9UHeVVq3iH+cnvVMrbI5bJO8is1rTSlmywgeR0bd7B8asXbVyTY6GcC
         OhxTQxbOFIF7NwaXCfqQyPpv3ecgPdXlkqZFraAtQpvXPLVDL/zZqLk27BgqJ+cy+u3c
         xKW5IaF2s4ZfI5CRQ90jF1/QgYAevjNNM0St4te7wGGgpFxXxD5d2abTZYspxcHq6y2D
         LpH2qcRDBCQr2zjaagrZx6ikm0XanbcdijiK724pTRKWEoMukz1sNdej1avW+Zt2/Gxk
         IMcxcfiGuR7B4yZXF/Njd7VtTltf74nnizeFaf9t2LImV7BsX1bCET9ugwmv9M5osSee
         jyFA==
X-Forwarded-Encrypted: i=1; AJvYcCWG8CHJTnuQndP7nWcX1mAQLDTBKApgr7D3b3KR/8iAaPCOwjOgBBZowFfMNXm41ok5rns4PTdezQsO@vger.kernel.org
X-Gm-Message-State: AOJu0YwC1fNNSqrhajZPhsSTh6LzkXsC5UDi4cpaa6oQXygvmRJdf4OB
	jAzzLFpW+j1sQ2Wq3kXqspJ6CxGAtVfS1aUmh4F8yFbKDB1N9MIuN1aso+6/hXxW8M9ttWiteX1
	ShuZgbCe4+zz5CW7PEuP4cMdkCJmZ1Irt9RH+Bvgtbwah7vf0E2DHpUuHkWpYUOuYzSeUOa5E
X-Gm-Gg: AZuq6aJy0bTh6ZGbXmwUoRe2VknDyk4OWtkM2rPAtic5l1UDkPeYI/7W1V0+rOlaPFI
	pQUfRUw6TBHUPe/g4SoBddMkDb1ACVqh+34q6D2Sl1ESzC/YGIFl36+QoEvA6jA8n08murgxTHv
	YV5GgERfyTKIs9VRqeeQDLCawXoL8kBGgcZcf+0Sycc4uvi+TT7wYbG+iJtzhWuSVYo4IzkEDai
	V+MIaXUq2IbTSepYtIMjhkU8dZSpfx1l9UUzveZJZq8pizLwOeVyIijyFWl1H1yC65M0VyolNOf
	yB4S33lnFc+rtq+Ixh0MjojhYBvi4tIZ9Vl/PMDd/MRGf/yDd7s+L1ryVvL8KkC1IrNNsSEZ3rS
	HV9MLMZ1g5sh9wlwhETsabh9bAuf850I0HHI6KJ44s8J1GfGhcyepimQVT8F8d4cZUus=
X-Received: by 2002:a05:6214:3303:b0:889:e38c:d13a with SMTP id 6a1803df08f44-894b07941dfmr34993646d6.5.1769421629517;
        Mon, 26 Jan 2026 02:00:29 -0800 (PST)
X-Received: by 2002:a05:6214:3303:b0:889:e38c:d13a with SMTP id 6a1803df08f44-894b07941dfmr34993366d6.5.1769421629019;
        Mon, 26 Jan 2026 02:00:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1a6c87sm27374691fa.36.2026.01.26.02.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:00:28 -0800 (PST)
Message-ID: <136bf12f-cead-4485-b689-af780c937e2d@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 11:00:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/7] arm64: dts: qcom: sc8280xp: Add Venus
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-4-d21861a9ea33@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-4-d21861a9ea33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: N2g55DNQ7B5PSeZrffqrgdQsMtr7O8N8
X-Proofpoint-ORIG-GUID: N2g55DNQ7B5PSeZrffqrgdQsMtr7O8N8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NSBTYWx0ZWRfX+6to8qo974K3
 fX5JKXpFRo07etm4RoBYlpWNNG7kaEPSm2g9rG03TR5S8yAnmbLQG011QhhWHdlUS520z29fnR0
 iIMuFGrVDDjoHp5Ii6ta6rnSWf5+v5mEreAkXmV8/kao+Jf3TYFhcx/Ab8ODvMHfjIH7s0xkoSd
 peAvj8e6sardJYX6mOgon7AQ0dqzDcbMB5EJfM29JXZlcAkjt8CArcuvMsnqV/P2/CbTBYirs94
 7FcKdXWUpJICS/dE6YcKUdcWsKfocMs4MviZRDnAo4VNjjwVZ28ANno+e+RrjrQ+VJikPB4okcD
 K4JzzpmwBPoCZgEMNY6rrPyUR6oAZ6pMpWrqAP8yiqyEiWEZSKNnkNaZHIOHOmKAw2qLZRZG5bn
 X/iSRHdOjXRdtpuOwBQIhebSA0BC65XnUUBfWzSfHdkD4fRcTSJw+8UktzHbOLgrIZbpjgvRIoR
 sJdwAaIqgZeKO7t8reQ==
X-Authority-Analysis: v=2.4 cv=Htd72kTS c=1 sm=1 tr=0 ts=69773b3e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=q7sET-JBz6qvjIJve7kA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259419-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,abf0000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8A0F7865BF
X-Rspamd-Action: no action

On 1/25/26 4:33 PM, Dmitry Baryshkov wrote:
> From: Konrad Dybcio <konradybcio@kernel.org>
> 
> Add the required nodes to enable Venus on sc8280xp.
> 
> [ bod: added interconnect tags ]
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> [ johan: use sm8350 videocc defines ]
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> [ bod: dropped video encoder/decoder declarations ]
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> [ db: dropped llcc icc, switched to sc8280xp compat, added more freqs ]
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +			venus_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-720000000 {
> +					opp-hz = /bits/ 64 <720000000>;

You need to div3 all of these, otherwise this LOW_SVS OPP
will actually apply a more-than-TURBO_L1-requiring frequency..

[...]
> +		videocc: clock-controller@abf0000 {
> +			compatible = "qcom,sc8280xp-videocc";
> +			reg = <0 0x0abf0000 0 0x10000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK_A>,
> +				 <&sleep_clk>;
> +			power-domains = <&rpmhpd SC8280XP_MMCX>;
> +			required-opps = <&rpmhpd_opp_low_svs>;

AFAICS the PLLs will not turn on if *MX* is at < LOWSVS, but they still
need to be scaled 1:1 with MMCX as the freuqency rises, so you need to
wire up 2 power domains to the OPP table

PLL0 supplies core0 (iris) and PLL1 supplies core1 (CVP)

Konrad

