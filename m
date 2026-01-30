Return-Path: <devicetree+bounces-261220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENtLLbetfGkaOQIAu9opvQ
	(envelope-from <devicetree+bounces-261220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:10:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9D1BAE30
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 099E3300A766
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D03303C87;
	Fri, 30 Jan 2026 13:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IYK5XYgD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fUqtafnZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263BA2D47E3
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769778608; cv=none; b=FzWqjJc33Mq/CmYa0F0hEPzh4ZhtLRy4jY7J5l5sPwDQiEr+4okJut1f/WjICcQO3weqGTFousX0M+toqnVWeaduUjjZ+zknCWsNtdQKXXrUP2S9HtRJDliaJZlCPRFfI1V2UR3vtG132aDak2xXZjz2uRem007xvlwr+OWS7Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769778608; c=relaxed/simple;
	bh=ue2pgGEPVVqzliJDap+usjW5cxaDJgNFBSSXKcQYC4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tSZFiDKHWIr1bmmMyp6+RwXLaC7YzOGh5QLx57t8vn4e02CpUIH9zoEyFGLBflKNAgazgAez2XkaXZ8nGKJqaS5gy2/9f6iGYvpP5PO8mIrPVuw5ak5OdoZb/NRal4J2OM4jE2KRyiZWXCWybEoO/uBcUxBKdfSL3XIxaBMJvgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IYK5XYgD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fUqtafnZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UCfqg41826326
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:10:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rl+xUCphXEtVtqu6vckflZwGiaWvY7jjVvtcp3DZnHA=; b=IYK5XYgD2Qy8X2Ww
	aHLu/+oN+7OraHLq7I5xSXPtgrQm/w+IU9T2DsH/bA3eQAmrPXgYClMAZCK89xPL
	/qIt/6xb1ilkrHRhKUH4UwZmsassa9y2gJtkJdmSobe81cYIYp9lemhg8cKbvIWf
	lbqQa3OiTnwDja2CLc0/LPHP+qAp9ZMEWCzlxApFpqx/Al/EEc6bCMjNwHiTTx/S
	jJA8GZeys/am0EBwkS0Mgb0lubbVPP+m2brkGfTW0xtcC2A3uxFyeBHXud49gYF9
	lWY7z0Eox9haSdx5mP9gqljQW39Y5PzNVPlvPWag4PIhxeROWPbD+IB5EchvbLG5
	hXJYpg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsmsdpd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:10:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a8ec19da48so610305ad.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769778605; x=1770383405; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rl+xUCphXEtVtqu6vckflZwGiaWvY7jjVvtcp3DZnHA=;
        b=fUqtafnZrJ7HejN5RdfxTXusiELxLwvIwIGCsHSZnj7nD8kQmRFZtupi7KgxuU8LwW
         bA4Bx+qFkhGRJ8AXJ/OWzugOzih1VbLf4tYnLHqFhHZ3H9MyAqVefv4dW/1muo5sLZ8Y
         146fV47IYgsB1DM/C1hXZnziuL3gvyVdOj8tqKzcCvbxEfwRXEVSc0isxTfg/YgmvxjV
         Dr1/Ki1mxHspdYaSPCsbjeR3s/WDLoth/zzvpfUQ9fyDyU6wCaaoNVwJj6o63bXbSt/U
         GKiUANs/nokA9uEhU1aY5iFUVx/2ezD1xQiSz+AINfWmEGpJ0zDkJnQSVv0L1BYZbCJI
         FvNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769778605; x=1770383405;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rl+xUCphXEtVtqu6vckflZwGiaWvY7jjVvtcp3DZnHA=;
        b=A45Mu+8BOM4v4nqa64aeZrFYfAcRuzrmzRgHfgN8SzxUOnlArgIBz4WZOl5EVtc1So
         5lFuVjlunhphD3+DCPfhxyxp6z3MpBfGTy2OFyZBRFoOvPif3JLZlEZ7z9A8G3dW5sTN
         OdQORY2gEQsWzd3no1o4fuB60KAalWHlfpd3j9yUUQ/J20D4IAxx4ICfEPYzT57mpoeB
         iyALBz1F42sQ9siksln44X76TXD5aNO9SkuU44Z2gqUNzftUqEBu4lWu4yRVp0fKR7qt
         nLS+rAsq33d+rLnjIGCiDJlWpHVgWQ0hbYm0KG4ZE7kGg3f32ahz6UeEdDWd4TG/45Yv
         XOOg==
X-Forwarded-Encrypted: i=1; AJvYcCWWwjnAgJcGy/pdYeJbsmljpLnqDlxsjsgZmpqRaD+mTDDq5z7RpEGY68hJ3eAsVjUoeRHOvOKf68xa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2oExNCYrd3PWijbPwJr6kzUUhj128R7FBPa11Ym7xwMzoCwLz
	n9emkg4250WR6jN0AlK1+QRRKQFmWd5+BcSjtFIJv66H+AX0pso4rzqhgzIjsK9LByeXiOOnj7o
	Fmexdne2yRhF2jGslxL7OHizKNTY7gldzZr7nXd6MANcer+kRX9FZwb2kYIi/ocyD
X-Gm-Gg: AZuq6aIngfuCXurMkLSHm8YH5PoCgicAimaEr9Io8WykndOlbAal8igzsxjprhB6NEC
	Sbv3xiAVN/K/s9bwEbwi1+tsnnEXzA1lYfec1gIPwk84WdRpgsmnvbvcnOfxV7D5gApS4OivBoP
	CaL59WznCymsjl5kQgp/eXNgTNeQVfphLnB8+J7K5PK3q0CPMiMLsqMT//1nOyzgs/mjzfV9ibn
	E3zgAIw5qVPwQvUXupkO1NFl1ZLqJ3JP5XKez9qMaZJGHmKOPUV4UMSoS+J2QsTkjBzA/regTR0
	oQ+9iOZCA6T0NKhEj/vg7hp4c5ErIrSBex6WRrF6CVumJxfcoDbpsNU0Gq4sIt24hrZw4aMdZik
	la/q4zn2g1wYNiX1iQDH2boRNh5xIU/aZVjkmueM=
X-Received: by 2002:a17:902:cf43:b0:298:639b:a64f with SMTP id d9443c01a7336-2a8d96cb2a4mr28296575ad.6.1769778604641;
        Fri, 30 Jan 2026 05:10:04 -0800 (PST)
X-Received: by 2002:a17:902:cf43:b0:298:639b:a64f with SMTP id d9443c01a7336-2a8d96cb2a4mr28296085ad.6.1769778604007;
        Fri, 30 Jan 2026 05:10:04 -0800 (PST)
Received: from [10.0.0.3] ([106.222.235.0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b6e5fb0sm77507525ad.91.2026.01.30.05.09.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 05:10:03 -0800 (PST)
Message-ID: <de31dd12-e9e6-f1da-c0d4-498affbb3e59@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 18:39:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 4/7] arm64: dts: qcom: sc8280xp: Add Venus
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-4-d21861a9ea33@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-4-d21861a9ea33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEwNyBTYWx0ZWRfX1XDKSpqEH/O9
 ntTTdiZN3CoylqQYDeCupLEOcWnhG9aDs4s9hG1rI7D0g0GoVwEWs6zl6x0nZ9Y9E0hqFZ2alYY
 JgCTFFq0VXtvlR8BVXcEGcBiWaibpdtgc+e+b3Xr7etH0VeiDUv0+YIh7uH163FewiYSqzKv5NW
 Q1swGC+n4M6BWnV4zO0hY8cv4cRAt8pVlmT5qpoMKk/XcH59aySOCFFizXrbDnvcrfcmU87uGtM
 zFh/+zqdpVaR0zWZOZkBxyPfhLAHHkqy67fOEs4v4wEAy08vZOfXLMfGtZIo9j4uM08nomAXe4/
 PfLYQ5xDyglC21k6uGvI4FwdgDErkvo8A6JODOa+hTo3GjG61MAHeXF2CPy5JGFlN3H0+nmCboc
 y/RrzEOGcD3RdplXto35xwa3anePfeKGLfvBO941+VpL6k5FtiPeW2Bv0jCPZpq9toqbRS9Mg/N
 BsRfrn6INOTTtfd8bCA==
X-Proofpoint-GUID: Y7JPQQfmvmdXS7nrgNbZ0FVSlt5hCPw6
X-Proofpoint-ORIG-GUID: Y7JPQQfmvmdXS7nrgNbZ0FVSlt5hCPw6
X-Authority-Analysis: v=2.4 cv=HMbO14tv c=1 sm=1 tr=0 ts=697cadad cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=6cH4IgXjao/mkWo6W7aGpA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=etHSnHyIjY8EvxFTglAA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300107
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261220-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,85b00000:email,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,86c00000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[5.42.239.224:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1B9D1BAE30
X-Rspamd-Action: no action



On 1/25/2026 9:03 PM, Dmitry Baryshkov wrote:
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
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 89 ++++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 41c57e7dc433..66a65ae50f00 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -10,7 +10,9 @@
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
>  #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
> +#include <dt-bindings/clock/qcom,sm8350-videocc.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
> +#include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,osm-l3.h>
>  #include <dt-bindings/interconnect/qcom,sc8280xp.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -691,6 +693,11 @@ reserved-region@85b00000 {
>  			no-map;
>  		};
>  
> +		pil_video_mem: pil_video_region@86700000 {
> +			reg = <0 0x86700000 0 0x500000>;
> +			no-map;
> +		};
> +
>  		pil_adsp_mem: adsp-region@86c00000 {
>  			reg = <0 0x86c00000 0 0x2000000>;
>  			no-map;
> @@ -4181,6 +4188,88 @@ usb_1_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		venus: video-codec@aa00000 {

Pls name this as iris instead of venus.

> +			compatible = "qcom,sc8280xp-venus";
> +			reg = <0 0x0aa00000 0 0x100000>;
> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +				 <&videocc VIDEO_CC_MVS0C_CLK>,
> +				 <&videocc VIDEO_CC_MVS0_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "vcodec0_core";
> +			power-domains = <&videocc MVS0C_GDSC>,
> +					<&videocc MVS0_GDSC>,
> +					<&rpmhpd SC8280XP_MX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "mx";
> +
> +			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
> +			reset-names = "core";

should be names as 'bus'

> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "cpu-cfg",
> +					     "video-mem";
> +
> +			operating-points-v2 = <&venus_opp_table>;

s/venus_opp_table/iris_opp_table

> +			iommus = <&apps_smmu 0x2e00 0x400>;
> +			memory-region = <&pil_video_mem>;
> +
> +			status = "disabled";
> +
> +			venus_opp_table: opp-table {
> +				compatible = "operating-points-v2";

Thanks,
Dikshita

