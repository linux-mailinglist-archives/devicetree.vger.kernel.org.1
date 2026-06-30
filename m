Return-Path: <devicetree+bounces-317716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p4iLHluxQ2oPfQoAu9opvQ
	(envelope-from <devicetree+bounces-317716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:06:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E136E3FAC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:06:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=fqPcoPr3;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=bFBOSbpH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317716-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317716-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B43930D1291
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7873409637;
	Tue, 30 Jun 2026 12:02:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719B1408631
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 12:02:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782820976; cv=none; b=JZlNS3rKd9dy2rtc//X9R65Oqx+OSoSDEZQz5moTCT1ybedawzL5eGDUvvHpK1rZhK7lZGrx/RiCS2eBrXPs8J1oDAtWy54NvFKAoWVmdZD4AaJE391+keia/Ya3YxfXr23/GVHOqHTU+6j2NcBLrJvgOhdl0oslIwq7pTJGHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782820976; c=relaxed/simple;
	bh=m36jsyAycMVSi7YVFXGixujl5ekvhLWEIJ639PHDh/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t1aH90eyFMZPyEFIXldVEY3x+Hso5lnI6sU6ZqYQcqnOfp+CA5/lCBtp/1+JObhzBCTOc9gsEtH63/C0f0G/HDNY4Spa7HyYs2ghq5IKfxwS0n3x9A4NG53q3MgAk0AA7ENnuAemVrvXBvUds4pTOy8x20KStIrcANV74qnwZLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fqPcoPr3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bFBOSbpH; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9mtpw1611941
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 12:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahE2p2dAS19cHDIc/jSn587S0dYsE0vydLN/rr5G33w=; b=fqPcoPr3CB9q+uhl
	nqvGl4HKve7AzB69c30OvwRuEy78EgKG5K1+adJhsTHqHtdRq2Ey0rNPpiMKL9BL
	zhYrB+x9Rgppo62XJudzXMjIA1Mqlz8Ea/DHutY2Vs/rsLPqf+5aaCNAPeGA1KZw
	xSJkawPCSJ0wsIje3ohZMNvNKaa2LJoWvIe+26KWlDiNQoeV5TWF3j6loWF8IXAJ
	+0akABH8c+76lTWB7wRMQcWWJXS6bd7JdUkv+IffnS/Uz/spVpHR6jWZib9ifgWq
	BmBm+9KSVU4KOBBKvCV2FLESBxjTeDiBW9jmq94VzhQuEB15lTfCFV5Wi1mxn4YK
	HpkY4A==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f441gtg1u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 12:02:54 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-448b0b61771so732718fac.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 05:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782820974; x=1783425774; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ahE2p2dAS19cHDIc/jSn587S0dYsE0vydLN/rr5G33w=;
        b=bFBOSbpHtHKYCZH8es1x8Alo1a5mAuzbMfvRRLzFSKgbGyFv/udM9CFDE1cMC7mYJI
         LowB1OQOeMRLmMf/gTDg8rGv0dZnyI+wnxpamF0goMQuyekX+QwTEk7iagNTxM+RVzud
         /gr+ozyXJc5nHn/Fb9AwoR7LxPXbvsNmViNjp1iSdBG4pJH+bellViLlCz9R/iCd5Mup
         6j8iw/bxH88hOQA4oI6/ir7xakzduznPuvTl1szhkTSQ2gNFkwn0thMXT6jz18slqgKe
         ZeXAHCegzv0xdt983LqC4J+u1fFUv9KEikQRMHt+hB2uvOaDD/XZsOJlaX+2cN/ebpml
         wfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782820974; x=1783425774;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ahE2p2dAS19cHDIc/jSn587S0dYsE0vydLN/rr5G33w=;
        b=Me5yNjWGo+Iw6g1qTLqaGSEhyuo2K67xStahMXvQXJmOUIw0aaJfbbYUQcfEQSlC67
         t6DTuFz5eUdYqvY/wY8qPq3kv38OW/sF7c9vw10RYH4LsWQw+TT1V2o0cczKMb9GogXD
         n+mVDHaHK4fDHzA/QwKJCYE5QNYae0ZBtIg0/3Mu8FBOa14cH67+WhllLzG/wmpravL8
         SKkgqroVWLNq03DsmS8BdHEzv3P/cL1T1+a7ipeFXAWwceLm1KguH5qvFj7N/KyHJK8N
         jGKKRIKcWW4YRIRFzxBTvUVIOKdvQ+cotCG8AAI2t8vyhpH3XK8sZtFOW9Uwkzoqd01U
         8u0w==
X-Forwarded-Encrypted: i=1; AFNElJ/p5MeBxRkLPTtJFOEn1gYL3yB4JN+KkSsaR1Up91fgaDB6stX38sOisQBtSO7TsR9gs8pOcP56m0Y2@vger.kernel.org
X-Gm-Message-State: AOJu0YwIZb2wcUFL1k1rqvuLABRUI7S87RtfBslbuzmP+1dMg8INhHlD
	eEbVgds/RTE3bxTeREb+cIfKdi+Zp8PYVk9ywUH3fViPgEAcNrljbCjiOWtPfJ5hcMMrSBwJt5b
	cIAYTPWnkf6vBlUzGPq7KJbyVGIS3jLg7au4+w9/FtTXOn6ju3cKSTLT5AZJFIHl+
X-Gm-Gg: AfdE7cnKxOIcTYT69oz7X9qh4EMSeiV/A46m61Xd9xgkQPt1i6Fq4v9OO75TQ2p05tH
	VdJfgBI+M9ZJStGfvifPlSueeIIVw9vx0TweLeJVHKR42uzmlylwwvQq66tMfroQM7XkvMmnnf4
	CLisfadixR2pJUPxZa0ok3iW6gTJjR7NqOR/z1Q8gx2qKac6mW0bh4Wb+LyUTkx5vLBOjYgbjYY
	VGW8/WTXngxuE5lqFeQsf3ImuIN+hOosZZ3yQMPbyuARAHf4+ynNW7Wkyip7nvLkzNgKyKShY87
	KMKVt2SEIwGWfW1qmuBS5pTkEYooHDbby72amm1C31M1x4lnyq5rgZnkzWBquDCqCnv9zhs6a3L
	R/vN5YNOHCmUUOy5oRsDbIAlQ5OpmHWVUB8Y=
X-Received: by 2002:a05:6808:4f14:b0:48a:a688:7542 with SMTP id 5614622812f47-495eb29f1f4mr2215134b6e.6.1782820973456;
        Tue, 30 Jun 2026 05:02:53 -0700 (PDT)
X-Received: by 2002:a05:6808:4f14:b0:48a:a688:7542 with SMTP id 5614622812f47-495eb29f1f4mr2215090b6e.6.1782820972907;
        Tue, 30 Jun 2026 05:02:52 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1288d1d61asm113927666b.13.2026.06.30.05.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 05:02:51 -0700 (PDT)
Message-ID: <760ee357-642c-43ba-89df-a41a7ef23a16@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 14:02:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: monaco-pmics: Add ADC support
 for PMM8620AU
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ayyagari Ushasreevalli <aushasre@qti.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20260614-adc5_gen3_dt-v2-0-32ec576c5865@oss.qualcomm.com>
 <20260614-adc5_gen3_dt-v2-3-32ec576c5865@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260614-adc5_gen3_dt-v2-3-32ec576c5865@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDExMSBTYWx0ZWRfX1KFzBx7BnBDQ
 Sw0yBBFtlrXYuO4VZcsQvFNbf7ZnNQK9VsxVUci1sIp6UIm6/ZhxjchKeIJ1NAZO/4604GuFMNX
 nAoWSV3IaBULspzTav82o28j9omekOQ=
X-Proofpoint-ORIG-GUID: lj7CqH74R3XBFyA8vUJeIOTZAj59COLA
X-Authority-Analysis: v=2.4 cv=F8dnsKhN c=1 sm=1 tr=0 ts=6a43b06e cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=EBNW3jZg_YQHoa0aFUIA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDExMSBTYWx0ZWRfX/yIcOFE0H0MT
 vS1WuegtUZTQXvJ4C7fTGocI1tasvbQRBpymtUx5+WY+MYNTHzH5N54YmnTbywp81Vdi5I2Zsem
 s9jxfcK8XD8ywCl6m1ZjWIFyRtJ4T6L4IDRiAkXWmXTtkhbMdyoO6fEYCwTSVWuwsrXDeFiAO3e
 3epMmOH3AcECn31IniOfeqByxM2rO28KWkgVcyAYrq7dky9D5XnNnEET2BFRI+AMqLNzepCTUmG
 EOm9I6ZzEEvUi4f/AdQo5CUQUHqx/gJ/YWiO5nqE30sVCMc2PtlmMUm4OWY82o9yzjrTH00nfUZ
 jXobLRUHntmK/acJ7qJpFHPF7XK/tHOUYaRe1Vhai2MKPoWhvCDT9cyTlmc+HjHorC0+Rljg4/4
 PHMTsYVzAcXaAHbBABE9AcZUrA/tk6RdmvUpM6M/vTYhrBc/+h2FZnjwQDhW4zEWohOLSEdQMCT
 eUtb2GVO1dk9hEuzzlg==
X-Proofpoint-GUID: lj7CqH74R3XBFyA8vUJeIOTZAj59COLA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 impostorscore=0 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300111
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317716-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jishnu.prakash@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aushasre@qti.qualcomm.com,m:kamal.wadhwa@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0E136E3FAC

On 6/14/26 10:05 AM, Jishnu Prakash wrote:
> From: Ayyagari Ushasreevalli <aushasre@qti.qualcomm.com>
> 
> Add ADC nodes for PMM8620AU PMIC instances (SID 0 and SID 2)
> present on the Monaco platform.
> 
> Each ADC node exposes the following ADC channels:
>  - DIE_TEMP: PMIC die temperature channel
>  - VPH_PWR: Battery/supply voltage channel
> 
> Signed-off-by: Ayyagari Ushasreevalli <aushasre@qti.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-pmics.dtsi | 43 ++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> index e990d7367719..232bcb942b54 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/spmi/spmi.h>
> +#include "qcom-adc5-gen3.h"
>  
>  &spmi_bus {
>  	pmm8620au_0: pmic@0 {
> @@ -20,6 +21,27 @@ pmm8620au_0_rtc: rtc@6100 {
>  			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
> +		pmm8620au_0_adc: adc@8000 {
> +			compatible = "qcom,spmi-adc5-gen3";
> +			reg = <0x8000>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			interrupts = <0x0 0x80 0x1 IRQ_TYPE_EDGE_RISING>;

nit: interrupts above cells properties

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

