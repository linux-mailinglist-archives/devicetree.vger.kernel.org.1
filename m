Return-Path: <devicetree+bounces-262105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBVwHle4gWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:56:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C33F1D67A3
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6BEED30046B6
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F03396B84;
	Tue,  3 Feb 2026 08:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AGgBQgo8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZwAZI0uJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F908396B74
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770109009; cv=none; b=qw5rqcdESLR6b/xbH2a8S8QbCkcFry5xe88tbkFBuacQBU+z2Pw48fluT/I62TJOkHFFQ8VKk+1uT+V4zLYuPemUdpdP0bk4jzH7FKkwBbeYnmnBIh18Gyz9meiiO4j7cUbVFPBKOjY3vImRA3FlRvz5jCp4RQq7wlYHd0wtbUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770109009; c=relaxed/simple;
	bh=mQdxUP2+dADPWqBHnoh+kFeK1NcU2GgirtlLTlKj0Co=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nt1oHG6OEeXgVX54RPcY7Dz8RB8wIA3Kg0//Jv9WOqI/l8MDaBqRxwYktMbaOqMt0SHRHIfXmSMfukIZKVYnRBd7DPKsusf5p7e67pR9CvkX96rW2REI7H8BWrQ4S9MSluHTP3NXH2kh4VKz63RSYdqO8u/25zKniegWb0reLME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AGgBQgo8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZwAZI0uJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132j2Xj3386990
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 08:56:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tu+qqR8vC6JdMxD7zlcN7+zYBe5/4iYI6bNeqqyUrIQ=; b=AGgBQgo8DwnyjmCA
	O0yaIkTZfmS8rKITYNPLuSNmq7mJv5urIzSCX2s5hZIG49XVJLsJFwWPn4ssk3Gz
	GEwrgb1pDOqkQhy4OaRWVZztyuntU671uPlxUAlPz/Dux5TMicBqJFl+amzSWO8Z
	+JCKAciRM9Zonef7wFsS2XotgVxi7s/M+u3uzx4oBhIMRk0A/JyNLxLmygv92n5v
	tr9VGCed98IOfUtfmBvEP6vWKnsiIfxblYu7M65fwnKh3DPEv81UrKGVHK/RNsC6
	+XNuDT/3jqAWpcsEyjpYrJFsHvb5eoK5rhIbXDn1F0Cgk2kMcHNuDhAY/8ajoB8b
	290dSw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbtt1j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:56:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a182d4e1so100804085a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770109006; x=1770713806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tu+qqR8vC6JdMxD7zlcN7+zYBe5/4iYI6bNeqqyUrIQ=;
        b=ZwAZI0uJD0bAyB3zLhhk/caY8zHR38bMQkjrzG8ffxwHSDezRxHyPYYLF6UZXlBfGx
         yYUcDlzr4ZZ42zLgzB2HweEyTcRRdkik2hyc4423KTM7qCA5OIDLcaH4nyBSoCsU9PtZ
         l6sQE0xl9VpbWmS5CmvYJ/OcinKGnM7PY3FoxDlUPmdiwlxOd7MlScLUU8e2HncrV1Sb
         /gerpeFxASecAFq6YM1Z0/GC8k26aVB7uch8EN3WrQeWreiBUaTsqpgVcXFKH5scVIeo
         /dmoRhZzvwz2MEE9w0EgXwftwmJsOq0Arivs6iquiByzaHGOC+QGwHr6nwRChbuwoxBd
         E/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770109006; x=1770713806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tu+qqR8vC6JdMxD7zlcN7+zYBe5/4iYI6bNeqqyUrIQ=;
        b=hYHpx7ECsJ2sMbqVc7LyvT6ALRqbG4nm1aXMccHDhWSQbbNZwcmez7gpJmVlu0DBue
         AYyPeBsri7kcGz0UZMc+zDVuR6oMxQvkcVEIY4TdERYYjCIE28vQGsUdSpKMFnzUyfnV
         aKuxSwrOYN+kpcqDR/ruliCc48j/pxFYL07RchSWIJcukiLLSQGP0jyzWdd7wL2fEO2j
         lVBRH6WzSKckk0Njt0u5+ceEtaAh557BZHgRsrKba7pF1H64vBK6fpzsDy9R4prNGb8U
         9/WhNa6cFbuUNSKncxmTMTTFS5k21J+8pbwCRHGpdwVccPcfGlBFHErEMkAy9l00lUF9
         DAhA==
X-Forwarded-Encrypted: i=1; AJvYcCU6L1QqDkyhGzzEzmC9xWZ4UQV1YyNvCPRAbdWTREMFRrtiiGsYYvFXeuiPvKsq/teeQX2U4LeIERf/@vger.kernel.org
X-Gm-Message-State: AOJu0YxxBGTpO7N/SOjr8OZ8GzZ/EWf8TdTNGIisKi4eWJtHmExaP58t
	4I9mHuADck8c+HTHGzLLQ7/DtvwonDzju7ZIm5CcfNGVaHPJG4hd6BTQe7odJtcI154OwHyF/e2
	HeQg90yXgu0grsjbL/c31+RoGfRzWmoB9S/HmUFQszb60PEMqdyPPKp1kVqkPwaoe
X-Gm-Gg: AZuq6aI3E1Fn1ZxSgS2xREPD7JkJeCgaeEKLWroiwwk/iAVgGBQNbJApDT14+jhTpgb
	kpWZBSZIiHURoyj2tXyP5Q7beMFMJyuYhDuN4bQxjf3EKs0PH/JFtINuFphP+x0yJ7Mc6oCfkMt
	48fdltOe/dxGeWV4lhQLAsk3Ha90Zd8QtaB7xodMWvke/1gixmrVzvhrMjLTXtbSs77r1pHHQIY
	wPu1dxMxBp18Y9YWjIr+VA7+eN3TUuHdV1zhYo2n/yl6gisH/bOh+QvtcALkrf4jHXayNWsYh6Q
	BjZk1Q3VPpwX00mkFtE+O+txmTEaVqe+vKNN1pPMEUuCrDkm6aOMdiOCutFrOICQ0F+qb+Sl/A6
	4KjWFML7zEehtbRoyvj6bsCP2ljC30C11M3osAFHODimqABxmDZalI8GqxW7lfURW+i8=
X-Received: by 2002:a05:620a:45a6:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c9eb229dc6mr1519796685a.1.1770109006437;
        Tue, 03 Feb 2026 00:56:46 -0800 (PST)
X-Received: by 2002:a05:620a:45a6:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c9eb229dc6mr1519796185a.1.1770109006048;
        Tue, 03 Feb 2026 00:56:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2f3e26sm1007806266b.67.2026.02.03.00.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 00:56:45 -0800 (PST)
Message-ID: <d91d62ce-8d85-4182-a0e6-9253f07bd002@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 09:56:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: pakala: enable ETR and CTCU devices
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
 <20260203-enable-ctcu-and-etr-v1-3-a5371a2ec2b8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260203-enable-ctcu-and-etr-v1-3-a5371a2ec2b8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Yde-7Qav2XW7-RqqiqqmnTfJpO666hnj
X-Proofpoint-ORIG-GUID: Yde-7Qav2XW7-RqqiqqmnTfJpO666hnj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3MSBTYWx0ZWRfX7Q+u0Bc8HIFh
 aa8KmwuAmFpRkn1ROqAqiflcXBfbkOaApDOMs5LCuAfqm2C5NQE3CwzjKnQy3jBbU3vI9lgp+Ot
 hn1CrXjEmgb6OxtVLxvjQihrqzja1KhUnp3lPwgQUlG4N9oVlHN62T63HxMZKlfs4u5j8qdrpt2
 iU9JHG5uXkZYbk1wBmpHWCLyoRB46bi1tG5viyCDiz9Og+yzaeG/hkS16oWu/1VhNtcN0+SV5bf
 Q6jxI43+ODXFojIpLLxZ0F2RRsHC7JbcG+x61++4NSGSNJmsPjwqDupP2RwRphwmUbBDEN7nY5p
 0b2E0W3uk9AaH4nYEcN5pMbPtlB1Kg97VRPZ+JWZDQFFwn0urqG8rw2b93wQRfj8g0XXUVqA5qf
 F8IJSKbt64EzfDTHCVbEb4jpi0epIqgrL9oNB+/BFFZf7j7yyWsCD3R/0Cg/Lm3knmtEVPyQWmo
 F9+S88Zag0vM9LRgUAg==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981b84f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=iWN5h_POgodqhNU-qcIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030071
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262105-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.152.154.104:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C33F1D67A3
X-Rspamd-Action: no action

On 2/3/26 9:08 AM, Jie Gan wrote:
> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
> tracing data from source device and the CTCU device serves as the
> control unit for the ETR device.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 177 +++++++++++++++++++++++++++++++++++
>  1 file changed, 177 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index f56b1f889b85..1e39503360ef 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -3574,6 +3574,35 @@ tcsrcc: clock-controller@f204008 {
>  			#reset-cells = <1>;
>  		};
>  
> +		ctcu@10001000 {
> +			compatible = "qcom,pakala-ctcu", "qcom,sa8775p-ctcu";

With "sm8750" in the compatible:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

