Return-Path: <devicetree+bounces-276573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ARiNM4fuWmergEAu9opvQ
	(envelope-from <devicetree+bounces-276573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 506AB2A6D38
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A52AC306775C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC1B3A1A43;
	Tue, 17 Mar 2026 09:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="equERnHi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QRD5fIDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E9E3A0EA6
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739529; cv=none; b=V4fLBZT9ukLQQISffoFSrihc8CcJFyEnI6+4Jy3VfL0kO+a1jRXn489rK3JdCR6YwTDq4VNkGmEVVgGNpD7UTX0zoLaaOfsQ5GUus9hc5ZjcubuUaTLGYiaeo/zMfygJrtBSgFf9NXdNwl8mN5vhh7n+2STzHkKWuHgXLC9ZspE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739529; c=relaxed/simple;
	bh=cYAUf7tYdCbIp0kTz7vRfdzxvjmcwGrNweRRCyA8n0M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hhDDzvbLtoAuoqC4yTgJw/3lEOqcNVabE9koAZUg+Ek17BZnduiRzxNnZmZ6yBT0M5S9Z9lh5uJLZw6JPzEh9NpVyLtmVg2wkiSWXoJbXnkmHTKeYXdjuHA3HFLcZbwIA1nVwIbYa3Pwy/5GDjJbdRdE1T0jz9vYmHRM9Hp9kpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=equERnHi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QRD5fIDb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H79mcK2375172
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:25:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NEQX+EDkomw9M3dwmMKBzxuBhFDxwqMzLHFUnr0OFuU=; b=equERnHiKsZkOnIR
	Xlt8Dh6zE6GT6R1LSU75jKjmzG/GoU/IA18gebinn08Nfwy91zv1K2tpbpNcLH6e
	jGnE+3EDldZzU2iRgjfd7HjNK41Y67wYUHB7nKv1ICc9Hp6m7j0EBiSqrA/FJzdO
	7Vwx690zU89gychHcpkSHAgaKivtV0KZgvEuOu6thhkqCPX1HpyHxFTdNMX5dt/s
	5JkgPAiTBRXdGoBXwScwW7KHwYt9MsQU6Z7FXDw/KdkLQwZu5hZFx69YV73ICXZC
	gCi1dj0PWzK25Bq6wXZVC88AX8kVeWVnCz4R3SsY+UCai2nCGnz/pv5iEZG4mYJq
	wWhSnw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkby3jxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:25:27 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aecaae9506so10109165ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739527; x=1774344327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NEQX+EDkomw9M3dwmMKBzxuBhFDxwqMzLHFUnr0OFuU=;
        b=QRD5fIDbYcZ4cQuZJtCLbr+Jg06uGRJSW4+xzT0yHOQ/FMMYxz4RISqqDsxKKwCtbi
         ZuoZSNwRI27XrL9vAqF6pFqJMXMSX4N6ErdvEi+3eoT5PoxNQtioSbeU8iWH6d0HsxK7
         Xx3sAWnN/px13J7qMVaPJm9jgzezBqmUg8lIccFy5kDAaUoSdV0uha0/aWdDErstc7Cl
         8pG4hw3hTPaOMrBs5nBBfzhRfyM35HJq1nY5LUILlfsa8Et/LgLrLOC2zw3Vix+q/Vd9
         WpEEaRLg5AdfgIrFxdmsSyThxqY6d86co0Xk137CO3JOmgyKL5q6RgSPoqLyXVqa+Am1
         agKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739527; x=1774344327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NEQX+EDkomw9M3dwmMKBzxuBhFDxwqMzLHFUnr0OFuU=;
        b=aCZRQ1lcC86ndp0N+WA8qdtupUfMTgQfX8FxCeL00qaqJIj14HFcLeBhwK6NfDfuED
         vSlHIk4NaIrS7RbrRfd4cPhoLrjYqnoBct7wS+SuNEa8oJZgqIwQdVwhSdVVR5xwj7kj
         EGsZmDd2wTC219gbuAElwc2UMoFMaW42d59NwNUzJhcDUnoM5BsVDvTBMmMYxJFEVCNX
         OIG2GniP5Eh3m8zRWlBBDhQuYokPOT4BlXlVNN1MJf1ck2OPH6mikb8MqYMtZ7TZ0x13
         SsEwD5KszrWo8oaxrxiyQEksePXmYWIo2wC8EWKOVqFdRJ6l013unqOBE0OyKBOdY6v4
         /1Pg==
X-Forwarded-Encrypted: i=1; AJvYcCUAa2trXPrpwX0NYmlBIZwARNKkRgCRgYCpgEwONOC4goXgbLOK5b5CBTGcQf1cpFObEFrT3nlDhpWm@vger.kernel.org
X-Gm-Message-State: AOJu0YyhJTR680CfuPZWt6K8wxw3XlRxRyzBdMc4708CW8IE3s9h7qH6
	jfIlg+/s5io4cEOiSU12bswzqGhrMT7PvM3BxhAZfB9uXW31Idm5fPNVFLRGwuWeCMo6xoI1IxG
	MyuXJMC3zMsX5yMDa14hxdMxkkNzG60CV4oTGjtUNGU6Nd5gbYuuENjMJJY5c/QST
X-Gm-Gg: ATEYQzzapBm9kLeW2rK8weOyHdiWH2KvJp6+XBy3AzjdARzVZFGPJwOxOr/KUzzIDpI
	80AkmocDzvIr0a52Zyw1IG6zMKAwoHte3tnM6QpZvNjM6GsMA8xhN3tUa6VW/wd9mFfQeKJEavH
	5t5fMhxWdxBsXlvk9xpF/+Wug0L+AUgxiFl9kggueVYeV9GhuhpGcXJ2R1v6E1R34ZgPo2zzGTd
	wJ/1VuaKDSqhm8JZV0Zo4WUEKWxqLqMDVOcZ0msE6adPShgvT/VtaZkfUAXYiIMOm8yN/21BE1O
	Qxjl8G7nZGtFDm34hW0Au0qZt0lme9KuKBZibCjAG5HE3cnOMmCAqC00IIiB1XwQMIHsTQuYx9D
	ktESu0ydQQxx0zvEiX/VTC140BxRkFP89YXlhdTjZwOzNayFaRkU=
X-Received: by 2002:a17:903:22cb:b0:2ae:5a70:477e with SMTP id d9443c01a7336-2b06365b4dbmr28028715ad.12.1773739526836;
        Tue, 17 Mar 2026 02:25:26 -0700 (PDT)
X-Received: by 2002:a17:903:22cb:b0:2ae:5a70:477e with SMTP id d9443c01a7336-2b06365b4dbmr28028325ad.12.1773739526299;
        Tue, 17 Mar 2026 02:25:26 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ee3ecsm176093325ad.42.2026.03.17.02.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:25:25 -0700 (PDT)
Message-ID: <90e2efd8-77e4-469e-bd36-61bcae290e21@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:55:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: crypto: ice: Document sm8250 inline
 crypto engine
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Koskovich <akoskovich@pm.me>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260309-sm8250-ice-v3-0-418bf5c5c042@pm.me>
 <20260309-sm8250-ice-v3-1-418bf5c5c042@pm.me>
 <9e740dae-3197-4cdd-85fd-8a840d2317a3@kernel.org>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <9e740dae-3197-4cdd-85fd-8a840d2317a3@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: reqX4QTuJj29a2P1xLQlZM1psquh3ggs
X-Proofpoint-ORIG-GUID: reqX4QTuJj29a2P1xLQlZM1psquh3ggs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MyBTYWx0ZWRfX2CPP2JAafnc4
 YFXYaJDYoFT0yYbb/r44Eq19DvC/1GYSFMPvytMIXcT6GC5aDYtGd2+EQhak+k9YpdM2dQBlZei
 pRtuMeA6S85rgjIAjR0HaepsYPCHnhBZfqQAttvSuT51V60ujddjgzkNtj70Gmq1iSfzhnrSoNk
 yBfK7sxSsaMEID+o+E/Q8+MuLr4e68JdM7Ygfk69uchckGMmfPT0fmOTotXSPznyHPb6ftSFIOE
 RM6fh1S8zyMS9p9jNNyhFGcAvm7JTJyQXxp9Fxyx5dvCgxJvR3XUElfaiDTq4N1oAyTy2yqskPy
 vQQ1uLqgLWVGJCDz19kS8lPRgejXf7wl7yegSXFjld/vAmhr58Nv3oPKFBC7eAfWiDcNUOubYRb
 w3/2JV8QhMyasa++53HYuObrwaIvU1vWQt4AZrZDUJZFVRyFFJFM29ahxwZPD5UzslYACHjR2nk
 JKGGAywbPP56c9IF4NQ==
X-Authority-Analysis: v=2.4 cv=ZpLg6t7G c=1 sm=1 tr=0 ts=69b91e07 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=BNPdHxw50mfEycljYbQA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170083
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276573-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pm.me:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 506AB2A6D38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/11/2026 11:56 PM, Krzysztof Kozlowski wrote:
> On 10/03/2026 04:12, Alexander Koskovich wrote:
>> Document the compatible used for the inline crypto engine found on
>> SM8250.
>>
>> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
>> ---
>>  Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>> index 061ff718b23d..ccb74ea14ce8 100644
>> --- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>> @@ -19,6 +19,7 @@ properties:
>>            - qcom,sa8775p-inline-crypto-engine
>>            - qcom,sc7180-inline-crypto-engine
>>            - qcom,sc7280-inline-crypto-engine
>> +          - qcom,sm8250-inline-crypto-engine
> 
> SM8250 does not need two clocks?
> 
> https://lore.kernel.org/r/20260310-qcom_ice_power_and_clk_vote-v2-1-b9c2a5471d9e@oss.qualcomm.com/

It does need the two clocks along with the power-domain. I can see they have been
added in the DTS but with the updated DT binding, I think they should also be made
'required' for sm8250 similar to Eliza and Milos.

https://lore.kernel.org/all/20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com/

Regards,
Harshal

> 
> Best regards,
> Krzysztof
> 


