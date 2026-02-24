Return-Path: <devicetree+bounces-267897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCoiKXiinWlrQwQAu9opvQ
	(envelope-from <devicetree+bounces-267897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:07:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A87187625
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A30733015114
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCE539C621;
	Tue, 24 Feb 2026 13:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AoZ0Yktn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZmR1QdUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9656339A7F2
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938422; cv=none; b=S4QfisytpRUbtg3v63KnrW8boH39EOM8EBnTZUcDZpRGSVCeZDeypE7so0i4U4lDxVTypQr+cv8iNiDbih+ULtO/i/7LwX734tp8XHplyuwHcXVmz5DyLwVI8FXdkbZn7PpMGBatvUqHLSUtd+fD58cPfXMn1GQpkbfkswYDQ9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938422; c=relaxed/simple;
	bh=N67c23nboT3hiZe7JPhtP19+yAyWgkt4A8smGz+i1es=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V4Byrj8VxXrMVeDx7zRXrFsF1KEqhjkgFyFwZKhSVTtGKZ8Mk05ToTDLpJLoWq2F4LV6oo+Ix6ohfD2oHK5vk5KB6TFwPJb4RVt13drT7leODL/2PVl8iSVrkJ3Lth5/X+TQnfId8JT0jYtJ0Kk6Poge2K58El/v6JEhUqsBNWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AoZ0Yktn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZmR1QdUU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFM0N2006341
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WfG01eFAuSy/SnLukomo4hHe1riuh7TuQZOpyI1E1zQ=; b=AoZ0YktnBsSkE6e2
	FtCIEBxhgSm40+1t7nkG4n7GPmXS22KnlA6gANMxhgFD0+AV35Z9rtTY/KAz6rab
	0aW0lBMfuks0L4YudgNZqWXMAzB2uE+/9lVz0Y3+555zcAXfDdmFkA3hkV5+eetr
	pxMYgwh6sZLwP+c5An55bE0jjIZUave+KUEQfqQHb+mLcULGf1JQHw1W6WlG+g5E
	Z7B2a6Ln/ABzcsf4jhcy349hxKZRhtnjcUoKoXNkukGe0MG0VdfK3qLvTHSxZyEa
	KiqJKP5I9iAyFitchWFQpgjFy2crR2BqMF36bFC5H6je7+fyJf30hQhUZopT+4VF
	+xMjQg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4569j33-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:06:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899ad205819so2274976d6.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771938419; x=1772543219; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WfG01eFAuSy/SnLukomo4hHe1riuh7TuQZOpyI1E1zQ=;
        b=ZmR1QdUUSG+CvWPc1gDBB9inwLIODx5diHsWJHFeDTM16cA81NyJdrxOFkRAs+fcHE
         9xiZ6I2R2xQoUpecLQaSDkKj847pRRGEFVRIK2fTEv/+gBNgeaVOef7dvKjyaj+yGc3A
         ohEUBY9eHxN6vYEz95n7VZcrq1VEgfhPZH3JakmtF39pG5hv18kMUv5ZeXHp5NQsC1Oo
         dcrV002T1iugn33nGlNGMnaugHSKqxQdchWRMUIXkQlr5uJPrW4S86txu8CC8o7/PYYK
         aHqCFm4/XOsJYa+1V2Dv8oA/5IuEDialQ/mNo7/H7a0SCWQHQyhZaftKl+u86dyV38gY
         fiwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938419; x=1772543219;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WfG01eFAuSy/SnLukomo4hHe1riuh7TuQZOpyI1E1zQ=;
        b=P5Qv2pilQaPrwa3mMex5yCs30EVHgEbDErfIvajN8vhzcVDNiIcu2FiyFObP+yVd3C
         y09KaViFfg2zh7B5gzo3wH08vjISuWmbPEY3pZ1BAkjbWU5AZZ5M8srUCmqUJl+49LcW
         1P9/RtSDQKSJCJQV07hqXzWtqoI55EegU/EJh3gm1zF8LeqyxgtiOGbvXuGOqfwrnp9o
         Tdzv8UU3V4PITyaTIxcwFDDk06naOtUigYIXRbPqQJNww3eUAzjKv7RljQsMjH+x3udb
         i6NrbyRmOdgJ7i0ETCJS256c2VSwpR45Y6qtopYscfbux7vulqDafzLTZO5XvJ1vP79i
         O32g==
X-Forwarded-Encrypted: i=1; AJvYcCUMhf6iCIWPmSX/eGd8gIDPTsJ0qntZtqj7O+b8wCQTz2vRo7EuxtjQ/MNJOWe4xsI0WECEgoSLWpoN@vger.kernel.org
X-Gm-Message-State: AOJu0YxSUEgMgExokD0MHHNqtDhYybR6yUjRHnXddYboyUYJVE4x+C80
	d5KKMObJ270PSyBoCC/gq0efTT31sNxB5+wHNVURxhuezt+uy2VnRSGNoTXoCaMKG5FtijoMwND
	0bCYV7oRm2nbav+IUP3tDn1nlNDJzzZwXPIDUkdarXLlq1WfxDyFn3r/G6qmCncmd
X-Gm-Gg: ATEYQzy8VKBK0oD6XWb21ikkhPC/hX4yVSNAB9rfzIyPXOp24dJGC7cmyg2ozntAK/I
	rwdvsDupLVgTLZ6wXD3pBiAYgA08RaaUsafIyKdQsZXqqAwCvMpQurNP/lQglWHAue3pkx0l7ox
	WXFQSu+0wmMuNp3l8lG2+eS2RzP4xpUUth00tXxzD/fR8LRqy8NfdYy1oxubSBYh3FgEhEq+zTi
	/nGLz5+CPNdtIr3S0rbeCllp0BdQkj9L49aYbje+qtRwyUOb5vOEP0kh0WCwMlOACAbHSQnSeg4
	vD3ix4ereYp9lcPi4uTm3+CK7EKSMU0wCbVkSSzL0I8gicte7iF7rrXdwBl57uqTytaQS9VvXWo
	4kF9cAjeXbPOK7YD2u0QOUj3Oifds3GU9hQGtqPsgUwnE46ruX/+vylzcJwE7NuW3QmH9+uju2n
	Qo6cs=
X-Received: by 2002:a0c:ef86:0:b0:899:a83f:a8bc with SMTP id 6a1803df08f44-899a83faf34mr10657936d6.5.1771938418674;
        Tue, 24 Feb 2026 05:06:58 -0800 (PST)
X-Received: by 2002:a0c:ef86:0:b0:899:a83f:a8bc with SMTP id 6a1803df08f44-899a83faf34mr10657526d6.5.1771938418026;
        Tue, 24 Feb 2026 05:06:58 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b91dacfcf77sm70612466b.13.2026.02.24.05.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 05:06:57 -0800 (PST)
Message-ID: <521fcb9d-6538-430a-910e-0e4e9df2c693@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 14:06:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
 <20260224-eliza-base-dt-v1-2-54e8e3a5fe43@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260224-eliza-base-dt-v1-2-54e8e3a5fe43@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _tJrcVQolBnSnHhJ8nsK0TPkuqCs2Lif
X-Proofpoint-ORIG-GUID: _tJrcVQolBnSnHhJ8nsK0TPkuqCs2Lif
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwNyBTYWx0ZWRfX57v9Cy1ojRJU
 fccngFv6LcDJEdw3TUGdiFDYyAlWI6rg06fvsYe4M+fgw6QPqNJ7i2rHkY0ccsRM+s30yseG3QH
 H8mcQG4wCwGx46dwQVvRH/jfh0T2UprHvV7TA1Et2QATThdkMUlxZHTCFTXurje/gnRWIUxWqto
 Iff7k+P1+wsD9/pxcLg/z+z/xOlkKlSxR2RIsR7B7vWXTC3oEEQgIPT7CIPAAEcvjPYFfxGObYN
 rr0+UHOXdjgRED/GjjVShvOC4qtNB0La6tujNoH66aGSZMcNUZF1hPKyuLEfgjXOR3x1Yn9A9Pq
 tw5N5gHUa1KuH5wUOksD/Rb/WB7RXbAiUJxEwy3hbutj/15agrxlIZtDk710rAhSkcxrTxp/xj7
 JKVCkNgA1SvV4M3Da97Ce2huYMzIUNTl9109Bm44pbKPaehDS8EGs2zmKZSS/s4AeV+O2BigP3X
 KaSMqToNpRZtMYAfSEQ==
X-Authority-Analysis: v=2.4 cv=J8enLQnS c=1 sm=1 tr=0 ts=699da273 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=LpQP-O61AAAA:8 a=EUspDBNiAAAA:8 a=UxlHS0PAVOFXE2oJ6SYA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=pioyyrs4ZptJ924tMmac:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,1.4.236.224:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267897-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 44A87187625
X-Rspamd-Action: no action

On 2/24/26 1:13 PM, Abel Vesa wrote:
> Introduce the initial support for the Qualcomm Eliza SoC.
> It is a high-tier SoC designed for mobile platforms.
> 
> The initial submission enables support for:
> - CPU nodes with cpufreq and cpuidle support
> - Global Clock Controller (GCC)
> - Resource State Coordinator (RSC) with clock controller & genpd provider
> - Interrupt controller
> - Power Domain Controller (PDC)
> - Vendor specific SMMU
> - SPMI bus arbiter
> - Top Control and Status Register (TCSR)
> - Top Level Mode Multiplexer (TLMM)
> - Debug UART
> - Reserved memory nodes
> - Interconnect providers
> - System timer
> - UFS
> 
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;

The values of the MPIDR register (also present in 'reg' of CPU nodes)
suggest all these CPUs form a single logical cluster

[...]

> +		l3: l3-cache {
> +			compatible = "cache";
> +			cache-level = <3>;
> +			cache-unified;
> +		};

So far this has been defined as a child of one of the L2 caches, any
reason for a change?

[...]

> +	firmware {
> +		scm: scm {
> +			compatible = "qcom,scm-eliza", "qcom,scm";
> +			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			qcom,dload-mode = <&tcsr 0x1A000>;

lowercase hex, please 

[...]

> +			ufs_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-75000000 {
> +					opp-hz = /bits/ 64 <75000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <75000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_low_svs_d1>;
> +				};

This OPP is not supported

> +
> +				opp-100000000 {
> +					opp-hz = /bits/ 64 <100000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <100000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};

There's another one (201.5 MHz) @ SVS

[...]

> +		tcsr: clock-controller@1fbf000 {
> +			compatible = "qcom,eliza-tcsr", "syscon";
> +			reg = <0x0 0x01fbf000 0x0 0x21000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};

[...]

> +		pdc: interrupt-controller@b220000 {
> +			compatible = "qcom,eliza-pdc", "qcom,pdc";
> +			reg = <0x0 0x0b220000 0x0 0x10000>,

sz=0x40_000

> +			      <0x0 0x174000f0 0x0 0x64>;

I see this region is allowed by bindings, but not consumed by the
upstream driver

On msm-x.y, this is acessed (optionally via SCM r/w calls) to write
APSS_SHARED_SPI_CONFIG_n..

Seems like Lina tried to get this upstream at one point, but the
discussion stalled

https://lore.kernel.org/linux-arm-msm/1568411962-1022-8-git-send-email-ilina@codeaurora.org/

If I'm reading this right, we do indeed want this register write to
tell the firmware about the actual edge/level trigger that's requested,
but maybe we should do it via a syscon instead

> +
> +			qcom,pdc-ranges = <0 480 8>, <8 719 1>, <9 718 1>,
> +					  <10 230 1>, <11 724 1>, <12 716 1>,
> +					  <13 727 1>, <14 720 1>, <15 726 1>,
> +					  <16 721 1>, <17 262 1>, <18 70 1>,
> +					  <19 723 1>, <20 234 1>, <22 725 1>,
> +					  <23 231 1>, <24 504 5>, <30 510 8>,
> +					  <40 520 6>, <51 531 4>, <58 538 2>,
> +					  <61 541 5>, <66 92 1>, <67 547 13>,
> +					  <80 240 1>, <81 235 1>, <82 310 2>,
> +					  <84 248 1>, <85 241 1>, <86 238 2>,
> +					  <88 254 1>, <89 509 1>, <90 563 1>,
> +					  <91 259 2>, <93 201 1>, <94 246 1>,
> +					  <95 93 1>, <96 611 29>, <125 63 1>,
> +					  <126 366 2>, <128 374 1>, <129 377 1>,
> +					  <130 428 1>, <131 434 2>, <133 437 1>,
> +					  <134 452 2>, <136 458 2>, <138 464 11>,
> +					  <149 671 1>, <150 688 1>, <151 714 2>,
> +					  <153 722 1>, <154 255 1>, <155 269 2>,
> +					  <157 276 1>, <158 287 1>, <159 306 4>;

I'm just going to trust you this is correct..

[...]

> +		spmi_bus: spmi@c400000 {
> +			compatible = "qcom,spmi-pmic-arb";
> +			reg = <0x0 0x0c400000 0x0 0x3000>,
> +			      <0x0 0x0c500000 0x0 0x400000>,
> +			      <0x0 0x0c440000 0x0 0x80000>,
> +			      <0x0 0x0c4c0000 0x0 0x10000>,
> +			      <0x0 0x0c42d000 0x0 0x4000>;

The bus is partitioned, just like on Hamoa, please describe the
secondary one too

[...]

> +		intc: interrupt-controller@17100000 {
> +			compatible = "arm,gic-v3";
> +			reg = <0x0 0x17100000 0x0 0x10000>,
> +			      <0x0 0x17180000 0x0 0x200000>;
> +
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +
> +			#redistributor-regions = <1>;
> +			redistributor-stride = <0x0 0x40000>;
> +
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			gic_its: msi-controller@17140000 {
> +				compatible = "arm,gic-v3-its";
> +				reg = <0x0 0x17140000 0x0 0x20000>;

This is supposed to be 0x40_000 long, otherwise GITS_SGIR is cut off

I see many DTs have this issue, I'll do a mass fixup


> +		nsp_noc: interconnect@320c0000 {
> +			compatible = "qcom,eliza-nsp-noc";
> +			reg = <0x0 0x320c0000 0x0 0xe080>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +			#interconnect-cells = <2>;
> +		};
> +
> +	};

stray \n above

Konrad

