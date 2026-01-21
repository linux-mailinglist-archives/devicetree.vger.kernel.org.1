Return-Path: <devicetree+bounces-257741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKDSMDdtcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:07:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 699B351E00
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:07:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 994234E054F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE900436348;
	Wed, 21 Jan 2026 06:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kdFaT3hQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yp3OADXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDE2439012
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768975602; cv=none; b=WObtnOKbIHdiE3glnTTzCz8n4UyNIbUa0D2SHbw1yz0B04zHa96zMvAmKyLXEKBpSSN0iidBvMsYu3Z9RVBxeVkYKNFtFjBeVpldCXLQRd9sEFMlnu21jP+bfeXJME4hWeFOBM0BmCROB8gL6IlUYD4Z4Td5d/WWKaQf+6q2kqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768975602; c=relaxed/simple;
	bh=3dZHRYh4aY8ks8fbc+SukFYFR3LlN2B+5jjPJ3ztFas=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m+iWzjl6En5u1WRFUUWPfjcHEOYlRM0MEWGx3R7SeQd0KAkzUyBl2fan1NoGOd0tspgmo3ShL8gh9+jlBJMwEUAQuzP3Ndxmus7MaFWozSoq72Vk+n6dS7yhIEnpP7RiThg51WrMZQAU6OgodmqQPyxpGlqq+a5Somzr2Vcqj2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kdFaT3hQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yp3OADXs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L4XnuI3232266
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:06:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UB1AQjjXDgc1rZeP5NkBvlubS9Wr3DsEc4cq9aLaUHo=; b=kdFaT3hQlzkCOR7l
	nuTYV86IbpS87rC/wo1oZD48FQzITSPfciomAdq2MWKMpo1DQ4ETjOHKEmkItKNU
	Ad3V6tUiJag0kWeEDdo3LFzlJHIAiz1v8++xi0ayDMJUDXvPDteVqgKZudyOTPqv
	/in4YyItPTLG9palMCbxrjyRjIbp/vnxCwcNAnQc1hBvPCpd+/UksfcJLAUitkAa
	Zzb+bqXH/48pJwEExwqULbF2jamFNDsdSXkwQ860EtiI8nkqQi3vEW4Ky6jC56DS
	hsT4tS3E0lwNjmHlUie7xwvWON1nqj2btk8kNbWJAR8Kz7gEgBo2AhfcRV/6AZH/
	t7W/Hg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqvp8880-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:06:39 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34eff656256so5678399a91.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768975598; x=1769580398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UB1AQjjXDgc1rZeP5NkBvlubS9Wr3DsEc4cq9aLaUHo=;
        b=Yp3OADXsOeR7/UwcXfVo0hXydNy2c/R0tB4j5iNPgTKOdJE6vG0GgEg1r7T9V1GF4R
         kBPI8VJCCWxeshsd36uni7fxzK5Qt46FoGjnymrP9N/I9+z0TK9zLibFvWmMbUY74PJo
         Fn0CDG0kshheWqEYn1FMlRYchHzpa7KG3lMaQNZeSAVf4lcmGJ16iVcxyxbYVmSZ3Ngp
         U2cpvGihGoDSD6H9wC+o+M2DHXnxyAbCXx9rbbU21/FqpzZ5LCb0WxZcnzlfzjsH1CzA
         XTL9AyfY4MdrBzUiOFHyPVC89Cd7XReQQRhzLcsgHls80PCpasefC89tu7oafbiQ3NeO
         HtcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768975598; x=1769580398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UB1AQjjXDgc1rZeP5NkBvlubS9Wr3DsEc4cq9aLaUHo=;
        b=KN7xxNrVrpHVNrC/AwzVNHU+PRrFxO3zC90AvMlB6LPjuyoYFbdpFAcZSe2bKrPiMd
         t+aB7K+Y7R66O5gtZ0veBUX3vdW5s237vqE//3zFfizP5FLf57Zng/No+tg3Iuq1Ku/P
         zanpU8EZIx2vFvk8WYRv//NKkfFDvAGEXD/mEU7LQyArWOQ+rVnDmY4XZlANEqU+jTlO
         RlI5tWen+xKo86qxGaazBtCgOW3F3DM8KjDGNlXSNt9iyjcket65Wc0Ox3mRiB6cMT+Y
         KV9zINjmsGw8rqrGUkrdNnlpE7mXu+jLv8AdJ+4ZOdQxnXFXRmW8KRJESKygSBmlZ2n1
         ZJug==
X-Forwarded-Encrypted: i=1; AJvYcCW8PMlvuA4+qc4IhPffh8IktX8HYV75TQ0JEzaAXjdiZ+UdK89VQWVQKQb02BmSOU2jccirRsFWshaS@vger.kernel.org
X-Gm-Message-State: AOJu0YzPZAmyBV10lV9GmCOBplKj0trDQBe2XLIIFd+e07bw+Nqorfk1
	51EcGYy4sLoqhEgo449gDyieDFxalSBmSOcmERBIYMqSkW/sGgVipgKN9h74kxeQa+hVyUX3+Up
	IJsoODoB8CAWy98BFFLSTqOLIGRqz/q96AAmWmZFW2IJfyTKXr6bcOUf5J/rrOz8X
X-Gm-Gg: AZuq6aIqSEC9vxVE7mrCF8141hDoagXmlAKhAoQT5d+7bRP8Zh6mTo9jxjwn7vXbRS8
	b2n4EIkzWiGKkgtvo7eYeHNq8GM8Nw9ApmxUEivMP+5N+YC6NukZoU53Wl2P8aTkZkLYGIDST0b
	Wr/REbgQR57Eq7OU+pftxP94v7AyMrrVefSXe8m9Vh1mJ//H917kXOwui2JaIpWjZ6efPCW6mca
	drhbx1kl1GUssu4dhsuxuhWvmXo4FE7bT75Ym2dEYp67Atn/Dlma3XsHHtqXnZDjgJsemLOBqUO
	rgbViyS+Y1ST3/rn9n+lgTPF1UC1AED3gnnXAEY7eyDN8zPtGZJUe8XMLgJD58GugYKbOxHdZfa
	YOmPpl+Hkp6JJMHJZ5VHZMA553PKcY8JUC5V9o/4=
X-Received: by 2002:a17:90b:3d8d:b0:343:e2ba:e8be with SMTP id 98e67ed59e1d1-3527316560bmr12830557a91.10.1768975598444;
        Tue, 20 Jan 2026 22:06:38 -0800 (PST)
X-Received: by 2002:a17:90b:3d8d:b0:343:e2ba:e8be with SMTP id 98e67ed59e1d1-3527316560bmr12830529a91.10.1768975597968;
        Tue, 20 Jan 2026 22:06:37 -0800 (PST)
Received: from [10.218.7.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352678c6dbesm16408700a91.16.2026.01.20.22.06.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 22:06:37 -0800 (PST)
Message-ID: <b393f218-df47-4119-88df-9b3ce23180ae@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 11:36:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2] dt-bindings: mfd: qcom,spmi-pmic: Document
 PMICs present on Kaanapali
To: Lee Jones <lee@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
References: <20251215-knp-pmic-mfd-v2-1-1e91138c6fc6@oss.qualcomm.com>
 <176789374037.1117798.14242637055422802029.b4-ty@kernel.org>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <176789374037.1117798.14242637055422802029.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: OGgM9VuBIkTPaNOwwouXMZEeopwZDY6G
X-Proofpoint-ORIG-GUID: OGgM9VuBIkTPaNOwwouXMZEeopwZDY6G
X-Authority-Analysis: v=2.4 cv=cdPfb3DM c=1 sm=1 tr=0 ts=69706cef cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=Tpv23YVzy6Rq9URdn3wA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA0OSBTYWx0ZWRfX9BSWYaw7wOte
 ++4ok1EkkNHpqO1QHYTMoxrgN+k/snoIJ/dB9BoGEkHK1t5yjfaxPHFshBgSidd0MbBaZTKOcEj
 Ax0wPavV4zzYFCLdAn6VzaaZKgOEAofU6GLhZMaM3ABVdK1/rBGDxImx5MAwQVZMxaQABpFmHm3
 rshzfyCtuWQslouqkE88sqQ2MhEjNVyEL0Xz0HYiLHi4BCFhdyjNI0T0a9UKxDdD2pW8p8QkQ1L
 OICQ7r9yuvxiJlGfT6m25nv0FK3Zu0hLK+irJLWHazrQCDPI83H0SVTqRLXGPw9HLx6cymFfY/5
 yV4XTrGJfRg2puSCq5k3ELzlQ6PJlu5SwVIYjedjo3wG4x0iadPxFH52Ulkt6FwsfqbHbP9OM1r
 AfS0ZGZs4zUsP/KupiCX83WgzoUpt8nDjLvWc7cqXq/+NtSi/gyGi+6mTW5/3Te8xsqoBNqTX61
 o/3pSsCPwT7qkyhL8Sw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210049
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257741-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 699B351E00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Lee,

On 1/8/2026 11:05 PM, Lee Jones wrote:
> On Mon, 15 Dec 2025 16:39:35 +0530, Jishnu Prakash wrote:
>> Document compatibles for the pmh0101, pmh0104, pmh0110 and pmk8850
>> SPMI PMICs.
>>
>>
> 
> Applied, thanks!
> 
> [1/1] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs present on Kaanapali
>       commit: 2a84a41a8c2d3cbc2460d2bc60569a35c4157e76
> 

I had pushed a V3 version of this patch earlier and Krzysztof
had acked it the day before you applied this V2 version:

https://lore.kernel.org/all/7c56b471-5fab-4cad-bf48-4da261d5bd9f@kernel.org/

Is it possible for you to drop the V2 patch and pick the V3 patch instead,
or do you prefer me to send the delta between the versions as a separate
patch ?

Thanks,
Jishnu

> --
> Lee Jones [李琼斯]
> 


