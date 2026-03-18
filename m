Return-Path: <devicetree+bounces-277175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DGXOX6RumncYwIAu9opvQ
	(envelope-from <devicetree+bounces-277175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:50:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE022BB174
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:50:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 388E030074D3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B263D3006;
	Wed, 18 Mar 2026 11:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PvGlctYe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="djo9YO5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECD93A7F74
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834574; cv=none; b=TvrAprGW7xPaXBufoxo1G5XKke6au+PjYcolC7E0D4E8WZr7lANjjhpB3zmblQcHTc6t3rhtgI6sv3oPy1xO/7lrKx2zZI/S/5uMwBDdn+R39ieN6jEMFtGeAeX4dxnPI8qJOTKRPvZSbITch/HkLy+B+EfA0gvxZUtaeMt1SAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834574; c=relaxed/simple;
	bh=rBOS0ej5yvstPJpN7/12hCBamhtOK4e9RXqnzoQFezM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nUnlbkJXPPjulGJEDhe9Nycl8KiU1sWbLHETE4OD7QjlRCr3JpO6L6XiGNaeSco3jDqd+vdP4Z8iKY/vi8YNNm9NfzwgkvrBx15/SseQkIigj41I74Zhz8m1Hk278jb2rF7ZEhJikaXAfqelXvVW/fBzHcWYNJZpZ70CcA0R6AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PvGlctYe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=djo9YO5L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8spZM2730120
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:49:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kUN6NuA9E0A6Euv+7NTzfaobQJSV6Fe3Lnfqqc9SXAY=; b=PvGlctYeeBT1dA7G
	RwPpFl5T2vcc8r021RTxtqtq8x4jLuHXSnWRaHaLjD5859+tMWClat341bT7mLXP
	OmjHRXJFqeFGlNuwBon+fUzODu0HXpMoLg+r96wcf+r4+yTBcNpQqhYwOuVTnk6o
	GBhYXoOnpaXUcMG1GBXzSJedo0Fix1cVN4uHfl0Z5zB4eQITkl5j3W2mrZclLoCg
	lrqZptJ98MQaWqY6M8tmLSuDqE/I+EFgk7N9xGGJiYz6E/fp2Sy7zSNPFISfmdfe
	kPUqZjqrxSoItgY6CZ/KfYgo5gB+S+uyz1UaOPXObjYhyv+7vLfyQsw17eQu6hy7
	XZ5Wqg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy8kjvna2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:49:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50923dc39f4so48134281cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773834570; x=1774439370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kUN6NuA9E0A6Euv+7NTzfaobQJSV6Fe3Lnfqqc9SXAY=;
        b=djo9YO5LW+9Ra9ij5RIAH3ee10e9y+MKBoyxYiqVjWBQesTeOj3BAps15yk/5Onkix
         9vR7rK0NNygKbu3EGAasjKE1aIP42JbbPjShhzQCAL7oarbJgqNsH6XdtfEvIeHjjd4p
         gsRxIOKmBwE1RESZEDiux1zu/PGI3M5/IcwpVRwif2Z029y+kI9CO4xEE16Bl4PFJmHd
         vRJJy4aSBZgfINx+w8m2b11QekhmVDwxzetqPqqjE9yx3Yv7j2SNoof5TOnI0s+QSOHw
         aBpf84GSLRxBzXBI0IZeGAfwo+ofaum5k5SWPhGVL5qObXDX1jikic5SyV7c3V1nkfTM
         qRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773834570; x=1774439370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUN6NuA9E0A6Euv+7NTzfaobQJSV6Fe3Lnfqqc9SXAY=;
        b=Cl0OjPKtqe0jDX0DdoFZlZIcM5Xz/yX70VMbUVhkZd5Qc5STc5PwkN9SzbwV4OraH5
         Cb7El+4AE++nfUQ94CrS1BavzZT1DBrQ9oWADs5yc76qtfbzHOY7b2UdL42L3fQW30ph
         1VRaIs8s7XIazWmWzU5K62dHbpJaxd+SLJoyLfXwmX61TD9ohTCa26Yf2uMuvkYygddN
         4VeT15Fv9Jz50KlDL2ugLvTXdTz3XQX1mP3eVUKwJfs5/SmUYYTW6A0TaGFbm9VKjUfY
         yyWomdiDF8HxCKCW93YQHr3ZoRrbpJemphQJ8mkKh2wTrXC7GZDDFA4gr8bBineJG2Px
         YRMA==
X-Forwarded-Encrypted: i=1; AJvYcCXg/3rUmZF2XrHzFjxTJuOYd5M8dDma9t4vRDBY1rteqJVmIPcjHk5P8IFLHmCsFENBOA9Mv9B7TKVh@vger.kernel.org
X-Gm-Message-State: AOJu0YzLH7L7Qa8cdMGEY4mUHPmirKrsypIma5JglzRJo0I/KRlUxqdB
	IP4nIBuaZAo1SJBck+LS4p6X+PZw/NTzAYk0ppLPvOJRgsEiPuommCRSMgoByw6+UXrBBvp/soM
	lQiU/SvWjbY6nqujrifseU+AT0jUqiAS+VXiwn4BJn7GGcsjuUWoGyrlJuUHyZM/o
X-Gm-Gg: ATEYQzy2XXXWTV8WLJrE5XYn9Bu6mI5W5WMrpsYeDmMXwyy4Ktl4yZHwhCV1x10O/1J
	tyzVIsA+UVAfyk96rmZvAt3DULo6nkmatSXimYW0DMPDF30t6wgLSKgcjX3WvG3kSXkXf6oigOW
	ZH0U1GysaHPFCFKmSAE4ob3l8Y/n0P2JFL8yc+9VLg/QBAHV45YFuRUVWvMBqXhWP3bQwD5brHC
	B9fBmlp9GfZA1wHrnEa/vpYTFmE3K9Y15FbE1x8mYTlaFcOTexQb4rfp0nHlXQite0Fo288FusA
	oPTInx6cknLDHTHHmvPfQ7k8bes4yKQpXmBzJev2n+A6zvuXIqovKBe9cpl9twZ4Wu/c91+sqmT
	IFBAZTQi7yAZKy19vSeuKyyzS12UbhKHGHPHRuDqGsgT74rnkHN5xZvXMsdiDUzpIQIyWtishOY
	iXehA=
X-Received: by 2002:a05:622a:10b:b0:509:2a92:8088 with SMTP id d75a77b69052e-50b14752dcemr27744421cf.1.1773834570101;
        Wed, 18 Mar 2026 04:49:30 -0700 (PDT)
X-Received: by 2002:a05:622a:10b:b0:509:2a92:8088 with SMTP id d75a77b69052e-50b14752dcemr27744241cf.1.1773834569701;
        Wed, 18 Mar 2026 04:49:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667ac611b88sm1815696a12.0.2026.03.18.04.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:49:28 -0700 (PDT)
Message-ID: <9148cecd-6632-46f2-88f3-152c6d6df10c@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:49:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH WIP v2 11/11] arm64: dts: qcom: sdm845-google: Add STM FTS
 touchscreen support
To: david@ixit.cz, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Henrik Rydberg <rydberg@bitmath.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Petr Hodina <petr.hodina@protonmail.com>, linux-input@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org
References: <20260315-stmfts5-v2-0-70bc83ee9591@ixit.cz>
 <20260315-stmfts5-v2-11-70bc83ee9591@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260315-stmfts5-v2-11-70bc83ee9591@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5OSBTYWx0ZWRfX/rrTUC1ARMeF
 OXZ543aj0KFcqhO7MH1K1iXGqZkwQLs+IU45kKSY0OQj0XXfQmvRYaMGrMKk9l72yVQBLK5XPR3
 mJZNYAsgigULEwlfhZ1MoTQkYvPb1xOz29mpbMQLOjI2Y1L+Nx1gBfZO0Dpig+TqGcsVkPDHKdZ
 0vN+j6mkgcMFUbTCseWArKZOY4qYXHzhsYxAan2ebQ4nA7LTNyqBJw4zR+lvm7v0wBti2JHxWKu
 J9IZr+292ANBUQhs1l7QInI9BrtCAcYWfZ3AN7AQT3g+nXkNzQhTcZCaNPl6OwXjGz+rIfyeDZt
 Pmu5NQw+E4QPRWcAwX7YafbmlAHKt/61IJS/9EvEVLSgwbKe//ZS7dhGvPfPNnVC8anden1Zbzd
 yHoLmr/BwUak9/0bdop3d2ywcRRsabHH3cU5wnhUnc0lhYPRD7Bo3rNHmlzlKmsJ/LWpRP6Qhul
 ZcDnSA/zUFmJngr3NaQ==
X-Authority-Analysis: v=2.4 cv=P8I3RyAu c=1 sm=1 tr=0 ts=69ba914a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=sfOm8-O8AAAA:8 a=8wVjoaYgGRnUAGDsoUAA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: PHn78tsekn6-BeHarXI0KT1NeXmahWMN
X-Proofpoint-GUID: PHn78tsekn6-BeHarXI0KT1NeXmahWMN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[protonmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,kernel.org];
	TAGGED_FROM(0.00)[bounces-277175-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ixit.cz:email,protonmail.com:email];
	FREEMAIL_TO(0.00)[ixit.cz,gmail.com,foss.st.com,kernel.org,bitmath.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.49:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EAE022BB174
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/15/26 7:52 PM, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Basic touchscreen connected to second i2c bus.
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts b/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> index fa89be500fb85..48d7e7f83c285 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> @@ -26,7 +26,25 @@ &i2c2 {
>  
>  	status = "okay";
>  
> -	/* ST,FTS @ 49 */
> +	touchscreen@49 {
> +		compatible = "st,stmfts5";
> +		reg = <0x49>;
> +
> +		pinctrl-0 = <&touchscreen_pins &touchscreen_reset>;

s/touchscreen_pins/touchscreen_irq_n?

also: <&foo>, <&bar> (this produces the exact same compilation output
but making them separate makes more ""semantic"" sense)

> +		pinctrl-names = "default";
> +
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <125 IRQ_TYPE_LEVEL_LOW>;

interrupts-extended = <&tlmm 125 IRQ...>

Konrad

