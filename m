Return-Path: <devicetree+bounces-257940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GCyDc3NcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:59:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A486B573D3
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2A0CB9E98FE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34FA481253;
	Wed, 21 Jan 2026 12:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BUts4gyl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O7RUd2l0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275AF330305
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768999585; cv=none; b=ZLXMXNg9jpsjAsmAaM0log6U83xYVP8hnuDa351yGePnk6iSZzjAcXK0xcjCoSyo5Y1L01msAw0+/V/lX930dE5Z8i/H5wyePCcuWm2vx8M3cbmrNsiezjmFKODawokuWpIk4yuAZIiAdX3tiJNK2b8TtOt6UAuY9JYot5dcbIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768999585; c=relaxed/simple;
	bh=sgWtRnw99EfRs3QA6PvVAaarJHuEsYQ+e3YplyKExbw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SnGAjeLn8doLh633nwPnCWy5zusfOHr/Re/Br3KwKRvvK/MhPayapd9TSSgOY4eaBKBlmyAOoyCT5NJsERiDwJF5QtapLrmI7yX2agVjtJunGEJQD8bpK6/Dqqk7Hdo+1/zZLP0Y3a2+hTT2Wjvl7BXlgQYhUWlGEx2uZnU6TdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BUts4gyl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O7RUd2l0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9paJm2452364
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:46:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQhi+tn/ENDKqMs6jsm6wY4LmSS3Rn/Smy/fNQJO3mo=; b=BUts4gylIKRk+sSE
	7B6DfsHjW8SF7BPFa4nSX9rEgYjslAceqQu6WfcjVOs2YtlhQRu6FIH0YDGkVGOi
	8N7v7EO9aZDRL56KNYig9xr3lCksJ0NVwPQtL7nEmW3IzNWa0JBmrwGDttLdJ63t
	//g1voUNdPPrUafqakeLfPoIGhOPwhUF3+O5dZBsjyTmi35phzjpd2SRvvGkgVvI
	1VSYEcHZAQBMsQ6Rxbhe5AxXIzo1UjCfRhnht+hZUr5D40sXzF22S63PDRhMhBwQ
	HSbLogH3JdBaJF6AjAT6VrYTYQeiymJvNJhjsAcgVMlPBQ83RG7AjWJCw/Vy8/SB
	TFoQXQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btvhqghkp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:46:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b48c08deso75213485a.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768999582; x=1769604382; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQhi+tn/ENDKqMs6jsm6wY4LmSS3Rn/Smy/fNQJO3mo=;
        b=O7RUd2l0aImyodcW7mU9Ik4rVYbPhrQ4ZC0NY2PElvra5CfbO8e9B0WVbxJmRocRud
         z3uO1Ukn9VbtiVqsGCkJzQdv80DoESbtRad3aJwd8O8Sd6UZpO+rvJaqu5aunIlhKCFu
         SnFCmOgKmRGZEcp/HyLTzVmq5UJpVk96xhYhVmOt6LFBZ0bbVbjnAhI49qmmiCb7ZklR
         uGT9qkKZasIikT3Al8rb580yBIEjeHJEa+hkggvQ6jkQXGpGntbxUyW9l1R6OTCRB02a
         5zhjO7veMOM8+N/G7nheCebsVWY2qel2wL6TrLOPOoGffuUZ1opiX+9xVcuxtZdK6i5A
         R5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768999582; x=1769604382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQhi+tn/ENDKqMs6jsm6wY4LmSS3Rn/Smy/fNQJO3mo=;
        b=GKfckrY/Bzmckwb+E9EpVmKMXJ1RELR4G9SJYczlfPHlZPNCrAF4O8GgP8qY4bh8c8
         QrGqnTpbQ3FLoxooPGg3hW35BLDDQhM0/aNPVqO4yq1enQ4LmtjXq178f+7wVI41uBt6
         Tub6jSIuVNwIxKKu1fsSJbjG9NK0MTd7KlGclhyHC5J4YzfxwGWjz1o4EkK/H7TSNwYC
         d8NL0LPUOi1+W8mnGy+llDMKQ55szrh2m4wx183A9/PsNeuGEHaNWhJylO64bbc1OCf5
         86inNpJKlQPI+WOxBiyjVKw6pfet1DMtxBvvrben4EeLn90M7vLRSuERI4Wzyz6+RgMg
         /tfw==
X-Forwarded-Encrypted: i=1; AJvYcCUF3APhfSjMGRdsVQ4Q6t34AvneH/lXJKUkLuto1lFCD4CP/IiTOHZNkeFVRuJgyxW2Vvdu8Dhyrfk5@vger.kernel.org
X-Gm-Message-State: AOJu0YyLUmbIylSIWqAJ0cMy3qOxOk2FyDmbumU3F+WNbBtYIdnrx7a2
	SPQqzBqLPyx6oOtoeSOaVVhy5TbpILd6tsbNCgeZyaIm9+BoM0zqSPM9UrgElIfT463dWcP+/rq
	vaLsfL8JSfQus5x2lULsKNCUxT87/NLgRXD0Qzqb3FG1sUriQWDmjVUxjB1Yd3M9GIJNoLaTG
X-Gm-Gg: AZuq6aLDxs7Bx1pXr9Te0GLvUJi2i8zDPdMPBeBfkmyotV5zauaM8eBCI2IUlfigyBa
	M0JlVFJzauXmqsrstyMrt7r/KJbwXECVgUyaNOaoPSnSb5FfIlM3suBZZXf0iQc24NlrQjaXIZ3
	iTPctpTRxnbPV/vyCnyjEFCffuEJnvcj/d8EISmlCu0VvjIip5QG2M3fP0lPZo0jvpow3moLYGA
	lay4ybW5BYD2P3CmhDLKIClasFeOSXHEZ3LdG85MxDhUg05xtEqia7NCedgs2oIYS+lPlQxuDF6
	HdNzuG5V8Km6wT/YwvI9VECTe3R55NvN6Z+3h48zK3HadtL7SA+PjjFDlPCpi4pY8zSrO5YkhFq
	UPvgSX1pWgoJpqI3mSjU8HM6wFsBPcjBjgZId42IPMnY9/S9ue16Z+mIpujjaOcMcovs=
X-Received: by 2002:a05:620a:198d:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c6a660afdemr1968911285a.0.1768999582260;
        Wed, 21 Jan 2026 04:46:22 -0800 (PST)
X-Received: by 2002:a05:620a:198d:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c6a660afdemr1968905685a.0.1768999581556;
        Wed, 21 Jan 2026 04:46:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9f98sm1639040466b.42.2026.01.21.04.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 04:46:21 -0800 (PST)
Message-ID: <50c8abcc-e3aa-48f3-933f-a79af359c654@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 13:46:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Set
 memory-region for framebuffer
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260116-xiaomi-willow-v2-0-4694feb70cdb@mainlining.org>
 <20260116-xiaomi-willow-v2-3-4694feb70cdb@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-xiaomi-willow-v2-3-4694feb70cdb@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEwNyBTYWx0ZWRfX7K4smUrWLJHl
 Yb0xxbvO4MgIuxMLbHcuC0zJxphhCOzEpWlp21nP5QAC5W+Q9mLbY1XmZlcsksIPx8pUJWN1oaW
 rt9jzejG9ddiC0cxKwMxBR+7xfZxw5BL0rplBB6g9yMKwTuGKY9FGBFg6b0xuxGvkgV26phg+vm
 bY5YdZmkXaOmrf/FAvi6vIcrtbTAHGKlMzwB92I9L9k12Cjih67tC9sFcOHRLpEqqFc92pSZRRo
 w2ICZcH1Qhr/JQivPPdW5VlupLeMWMlUaMKwMAbwzvxmf1DWUoe/zyykOf1vmIyaciN3bYxnbv7
 u3xjsNxFOKEFl8J6EqcjOQlJOOzi0suMyClQYCNp0bXNxCKk0WLzRtnzsVAYOJPP4pBeOvi4A9G
 u47VddcFUM1WljtQuowvyMZTvQ9XUnxx7sJAMlf9sQ/NdNugfO9S8zwilOOveAuRvkGuxS4lmeN
 NcpGl0KDNp7C9iCQWbw==
X-Authority-Analysis: v=2.4 cv=S5bUAYsP c=1 sm=1 tr=0 ts=6970ca9f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=RhDKmtT3Wz6S_GBH838A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: JVoq05hLLtNbQEKwZQ1RfnpbWF4aEXS_
X-Proofpoint-GUID: JVoq05hLLtNbQEKwZQ1RfnpbWF4aEXS_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210107
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-257940-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[mainlining.org,kernel.org,disroot.org,intel.com,igalia.com,gmail.com];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5c000000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:dkim,3.109.155.248:email,mainlining.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A486B573D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/16/26 4:54 PM, Barnabás Czémán wrote:
> Use memory-region property for framebuffer instead of reg.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> index d5e5abdb3b2f..4e1444abc29b 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> @@ -33,7 +33,7 @@ chosen {
>  
>  		framebuffer0: framebuffer@5c000000 {

You have to remove the unit address now, as 'reg' is gone

Konrad

>  			compatible = "simple-framebuffer";
> -			reg = <0 0x5c000000 0 (2340 * 1080 * 4)>;
> +			memory-region = <&framebuffer_mem>;
>  			width = <1080>;
>  			height = <2340>;
>  			stride = <(1080 * 4)>;
> @@ -62,7 +62,7 @@ gpu_mem: gpu_mem@57515000 {
>  			no-map;
>  		};
>  
> -		framebuffer@5c000000 {
> +		framebuffer_mem: framebuffer@5c000000 {
>  			reg = <0x0 0x5c000000 0x0 (2340 * 1080 * 4)>;
>  			no-map;
>  		};
> 

