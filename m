Return-Path: <devicetree+bounces-260874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAUkNB5Pe2n9DgIAu9opvQ
	(envelope-from <devicetree+bounces-260874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:14:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C848AFF90
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E48F03041BE5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363893876B5;
	Thu, 29 Jan 2026 12:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B95IW1OP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FoNrpU8K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7973876D5
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688784; cv=none; b=T0QEwdTG17wvWBpcjhetEsgFmRuU4GuIVLymH9js5DYgaDKdxNND03m3l9hZmDB2R1XQ6u57Bbn4V/w+tPnrSHqxDC4PbyQEQPcNFHln+WGP72qvWjT3v0PNibihnero/nWHVT1NCGpnptCelVVxoqwHjsKGBKR5VTaBIKQGNUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688784; c=relaxed/simple;
	bh=dtmoChLq9bYfeMzJIehxXzKt1+JwT+SEt6J7IM1hZgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J8V+cTwQ2pp2ffwxwwCjLgwKf443GcPiIRjKdaZDyTqulpA6izYybPq23F6u6LrzejcNvp0TYJgYVIkvL8iAqxZDRa0yIFhDrn/WJid5u8iUBbNZSlGCeII7PLMg2QpOudk4ochvqwPUDK2NlIuEDo4Q/cuV9eJBtuFP/hIayMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B95IW1OP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FoNrpU8K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TALHZx3676270
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:13:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dtmoChLq9bYfeMzJIehxXzKt1+JwT+SEt6J7IM1hZgE=; b=B95IW1OPyOzoXhq4
	1VsKwzxQ2S+zXbE9+g+7sEXdIaOcpM/LgiYp5NL7mAxGWGhbW+OPT60Qiik0qFNo
	RdFvD1FQ8zKlnzbw0WIKTeMroToeWZdV1XMhAoFGn83HPSA0IjiunnczQsRiKDkO
	7eULHsoncGxEHLVo3zN8Gq2xCewedADZBklJ2Iksoc2v6ZM9IvMNqGk6Ha/0BXRM
	X0yWXv3KugwR5IiyNJtY3bsVpqdBN4dlnHz6SdVimZ9BrxupBbWDiQF9gexKn4s2
	Aw1M9yjKX8WQwm5lBQ4nG50aWzQ0RiaDAv8N6Zv9LRrFmiqR6bwbkf5JnJKuYEPu
	M+N2zA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c05q7g9yt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:13:02 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso1866778a91.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769688781; x=1770293581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dtmoChLq9bYfeMzJIehxXzKt1+JwT+SEt6J7IM1hZgE=;
        b=FoNrpU8K6nPnfHz6t+NGvF59cVsa/01PlnvOq2yuQ843W4TRQIR6jKIQ8kbAB1LsPv
         ToKl45PkHuHDqSTDfyeQx3DQ9iaUa3IzRc702em3cNUSFqMWhxDy4vt6mDsT30tNvdOC
         Md3NgRcO4z3SFMyk57Ut9wfw/sHrLnzR7a8f5tf8bqGVzS+X9lmZLVGPzCZL2qO1njle
         C2VOpqJek+j9tnXrM6O6WKOnXvnMx07psnmFISH/t+UIJLY5BF8TLHEilqgnLXs7coga
         otk1ApCWlftIn0+4jxgwzl6usfGcFCDLEV+p0foZExnu6yBnWDqM+UYPXZNJkYiqn4tT
         wvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769688781; x=1770293581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dtmoChLq9bYfeMzJIehxXzKt1+JwT+SEt6J7IM1hZgE=;
        b=dPC3Gsb/7BNVPqxPtN8P7L1oXpYbnF47nbO1yBS+8vMGTBGNC7pQpo/1jA95H2arN0
         3EehckLrh3o+mpdaLGlD2WgimoFKP6WWCpGgPDISQrINWsYlbE4/UdKWJpn3qz8/nbKl
         EV106Gmd0S4XrdKpX4/lej47sLFrm5SYVytCXcpN7njd/kqdN+kL01a88c9d2Ah0Yufc
         jpddL46nSy3n5rBULdYyE5jvMiPWj485X5cpXmNYWc9CEw2HWUMZY29YO1tLOVHZwyYh
         t2GRdViJcelZgB2vzpgJ3UHY4Qx/Lcxb8fB0cNzqncKspxC2ZyP5FhEwYmKXqTtyx2Uu
         tlqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPmE1H07wVLkhpS2+v9e9scmjvcWHY28vByIqNgn1vOrrASNCUpYAi1/q9knRN275yrMhyNdUqcyGe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3ZkGsFxNnFwp5ZTJPgk4R6wGCq88o3tJwdxDBtNYG9DMvOt0V
	WcPcJAxUsBoKtRgQE3vbnxhJ0v5lQyFWGHaxPxIXBiSrfOLqBzOsvMOMrXbYq5yVF+h+i1jDb5z
	hfp/nd0Fe8ZkDegOK9wGrcZ9xFhnCz6PF8MgD5Ty86wHBy1okXmiJxuIUzq9AYv5C
X-Gm-Gg: AZuq6aIp/6fxHZ3ugpO7X/qJMbCy0QMWhvadaQGqUBT0BDV4EPUJuS62OL81j78Lw3i
	9E8rpdqKcHajlh5EPu32F3X6BnNl0H2ECBmrTaHHqo+L1S+KRzkwONPtdFGtod1QeVekcuL8A4G
	w4ud1bWg1jPpO0Gcj0uodST00mRcM5Imve0HMZT+VO807oyVYawUjNirpCkPCAtqpNIXy6WP4Ae
	5uaqJqLaBr1YzklQRNFIOLABUqjH6H+NHdQi+JHRFY65kGvoB/D9LVXkfjLYk6413RqzIDKJSXA
	JkTRfrOyi0iQoLTQhQXPndn0ovFTp3gFc7Loh6Bl7mfDKLoF1f8isUQllcGOzzZquhFz+iyjAIc
	KqUpmN7vifRThynC46Fe+27N4M5aU7v/r0Pb661wF
X-Received: by 2002:a17:90b:574c:b0:340:f009:ca89 with SMTP id 98e67ed59e1d1-353fed5c8cbmr7454784a91.22.1769688781472;
        Thu, 29 Jan 2026 04:13:01 -0800 (PST)
X-Received: by 2002:a17:90b:574c:b0:340:f009:ca89 with SMTP id 98e67ed59e1d1-353fed5c8cbmr7454761a91.22.1769688781012;
        Thu, 29 Jan 2026 04:13:01 -0800 (PST)
Received: from [10.217.199.117] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f612917csm8140533a91.8.2026.01.29.04.12.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 04:13:00 -0800 (PST)
Message-ID: <94665903-b1ee-4b14-8daa-6646bd747d17@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 17:42:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
 <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
 <20260128-primitive-lynx-of-virtuosity-50a190@quoll>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <20260128-primitive-lynx-of-virtuosity-50a190@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: XuvxAu1j1WWxnsMsCNVpqcHv-PotAU3M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA4MiBTYWx0ZWRfXxo4mk/7y7hNf
 9+ui5QHgET2XDqNtGK8SfUoBozENmbScFV9HgMzEuHEIknEixvi/T5olzcPftpnEQyCqUJ5UhmR
 +aKrkJqENRQ9D6QQG+wa+2WuOz2NbGskCgwfj6uVZP5NiXKHk+6kvh07/x46DMowNzVCdzdLf7o
 tkMLuPFxvTSjVmz5NesIA/NbLsp+ugzxdiwi+sNQdOo34ZT7Cj2thEX/BjgEIWOTWp88a+n28w+
 04dj0/27vD4rJAQo6cHyR4W93zfFnSCRYUDcWgkclsYsOHZ7p+Oc9HZk027a46IGpPbRucYDfNA
 klwhzVswxxHsuOcQYaTcymL2Dje9ZK4NbrlF5gIujb8pLxMc1PJdrl5yMVm2rP8kpF/oBgWeG4o
 tRPnSmo+i4Y6COKp06eqxEMb48vReZ8sMMjD+XrAdB6gK6rHzwyNBF8dYYIBbhRZ8LYiAunmXQ6
 qNebs+C3LIIpLPSouHg==
X-Authority-Analysis: v=2.4 cv=donWylg4 c=1 sm=1 tr=0 ts=697b4ece cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=P-IC7800AAAA:8 a=zsdrpAE9SYd8J0fU1NEA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: XuvxAu1j1WWxnsMsCNVpqcHv-PotAU3M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260874-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,bootlin.com:url,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C848AFF90
X-Rspamd-Action: no action


On 1/28/2026 4:58 PM, Krzysztof Kozlowski wrote:
> On Tue, Jan 27, 2026 at 09:27:16PM +0530, Gaurav Kohli wrote:
>> The cooling subnode of a remoteproc represents a client of the Thermal
>> Mitigation Device QMI service running on it. Each subnode of the cooling
>> node represents a single control exposed by the service.
> Subject - almost bingo, you hit two out of three which you should not
> use.
>
> A nit, subject: drop second/last, redundant "bindings yaml" and whatever
> else is duplicating. The "dt-bindings" prefix is already stating that
> these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18


thanks for review

Will update this.


>
>
> Best regards,
> Krzysztof
>

