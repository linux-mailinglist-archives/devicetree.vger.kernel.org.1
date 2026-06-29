Return-Path: <devicetree+bounces-316815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U1e2LJk1Qmpt1wkAu9opvQ
	(envelope-from <devicetree+bounces-316815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:06:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0920B6D7DB8
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:06:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=nuA01vUW;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=FkAg0f1J;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316815-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316815-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EAC83034A8D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CADE33F8254;
	Mon, 29 Jun 2026 09:02:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51983F7AA8
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:02:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782723732; cv=none; b=pJsuWy5SNaVPxJ3xRKtm8mObZ6mLPiooUTcrLtxtIb/18gvv8TF8M5sVpAkI8JwF3xMo6chewf+BkYfAE1aYsg+X7iH3phjiGE/oQuyBG5puBWxaeTe3sAv7mBziWmrNrJNn5zccTi7Jb9jlK1e7BnSZp02s1RZqaxcEM1s5pdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782723732; c=relaxed/simple;
	bh=Ri0hbrm6/ZWciGWTp2WHj0QoAjI2OwKruW9r3vgXugQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E5thbWDiOBXUTLN1di4rPeAFizkD3J/qz9WPriRPy3ueIP/kSL6kzAPcogRJwzbCmgFZJ9rrz4mC55cR8op5KyalaJOy22donNG7P9ogDgn+XCWNm1P+mXym2GPVMcEZ9wxlRy6+6YgvWczeS7g2XOTmKC4Wd9T2wQhOiTIG9wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nuA01vUW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FkAg0f1J; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T6rJKs2076792
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:02:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6ZyZHqhbUNn0UPPgoVU9o7uK9rU1luTmL+9XEO0/HgQ=; b=nuA01vUWni7S3rri
	egn49InRI36TWL9Sc4TpbnMivLX8Sguwvd0IHJdk6DHLvvxElLP16VtAGh283ek8
	15lUUdDC8BgeCfAo9q0mRPT2wvK5gJQ7kPjk2y0TTRX8rjlDjrqb58dHZebreuBn
	Yw5OyH1Pv8GJX6r446VHB2tmNt3zqqNiUo+GNfMvizciEIFpDmRtjEM6lu8HbYAP
	e6x0HH0+srgpOoDivjkkbjJkEXfyXxATMlevQbI2KasGZFpIeHQYmjLW64VGmRGC
	ADPJesRk3wVuQCKFs4L3xOrnYlcV204cdD2X0MmH8w7N1mfChSTA0V20krJWQgwb
	SrZB+A==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3kp7gj34-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:02:10 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9693da3efd7so33554241.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 02:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782723730; x=1783328530; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6ZyZHqhbUNn0UPPgoVU9o7uK9rU1luTmL+9XEO0/HgQ=;
        b=FkAg0f1JvjGREXkuREwicTd6+jsa1k/dm/XztExNwTIWf0piLhhIwyvERE8M1udEU/
         uHOrZdNj4AOPbpor3RrWBEcqx7CX0v7YU0JP6qp56+0zL69vdz3psvA4AZ014xm4CWCJ
         WlDtuPOeDXZN2dAu/c+d76lMiJaN2THqkM4Reqn3MCDVNsvETh9xKUOC8nk+P4wGBexg
         MMnLvpLztDdvSMwMJFp9W3W/JDMOtf35MJwfH8kkyH/IDmjFjgx+ejcz5tYrwjQk/OHo
         xz5YX+X+s9oRg8lg62KDuEZo3pvTe652Jg1wk0nqTZY3hYyL/qAcbt4wrewtrEyHDyoO
         9k2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782723730; x=1783328530;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6ZyZHqhbUNn0UPPgoVU9o7uK9rU1luTmL+9XEO0/HgQ=;
        b=bhj9ONr2XoSRWDoRB439P81r0zEqtMLUHshONhHna/6jw42ovx1HbiVWM52ixbdE4+
         9Md7mdkOZBe8n1ZsLym1KgKmQ+dTu+V9M2aOMlPc+JMiGFY9VWpil5UxAA1u9cDwqNx9
         Ea92LuhTwBTodaldnqQuY6JzpTPHZUKcD4wYl0gTC4cC/wltum9VF3PM3W9qCQbN9sww
         6llV8uoIY1XcX1lV+c2geMCsyM7dVrWYFB2r1A7rMNRMBNkqI8YVmqH4k5bOHvch3Mp+
         7F9Ssub0sTv8wQaIdiq59Zc/rlzdNAZBmlNoUdcs4dG/UveWVly8/6ha8wvfXTodu6QW
         PQ2Q==
X-Forwarded-Encrypted: i=1; AHgh+Rp1v9PUGn9JBDoyM3L2ZZ9bFWCcsIjZXmunOU1EPhCfucAvA20KHTreZxjUIKszbFUiAbeKD1dyZ/KR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw66i+agKSKhqgs4D6N6ZYONjd4NkPh+yPKO8tINuKh9uHjGwye
	QONpvUF3YtKu8C4qlgWgAJGCHVfDkPyttkx3FmjgNc27fhnWAa70/iyAfZk17ST38rWZloD/647
	Mz0ubmsZyg01q142OojO0hO9xGkomacnmj6GEI1Jbc9T3Fm9zxHK5odWkxpd7BlqQ
X-Gm-Gg: AfdE7clob2oOYOiiwLe2O0poN8Z6mDf7AvJPdJQN7k9tCJCNslTn1k7368MZICNwMHJ
	198Eau8X5IcgsbotOgJUm1Uqeg4klCoPWGeZEVzdQ47G+DTRej4P1O8NFo9WrAT812AdbtBTQnp
	4vXFLMxLBOcaK8Afe2V19Be/LwhwK9rqBw8Xi690CjPzlk01/2ecKSl0SAUt73xl5crgwaBP4oB
	EU1qkQc2lI2c6AhfUhmfXRTVLc/j/04CTs6Br59ocRYq2ji0uK3uwydwmeAEbHu6XSuhlbO/og0
	XPxjJK3CuohR40sVe0qNUSo+YHbPaHUqc86shlPpNFOqIguFBiPwuhEShWrIps2v3xmX8S6aknC
	IF+tR5tEutniiZ0ne3YwYY9fsX/5teNDah98=
X-Received: by 2002:a05:6102:5121:b0:739:5c3d:605b with SMTP id ada2fe7eead31-7395c3d68d4mr167777137.1.1782723729979;
        Mon, 29 Jun 2026 02:02:09 -0700 (PDT)
X-Received: by 2002:a05:6102:5121:b0:739:5c3d:605b with SMTP id ada2fe7eead31-7395c3d68d4mr167773137.1.1782723729535;
        Mon, 29 Jun 2026 02:02:09 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6986625efc1sm1307322a12.19.2026.06.29.02.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 02:02:08 -0700 (PDT)
Message-ID: <eb8d944c-0e52-46f1-8c8a-52ea624b70fc@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 11:02:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc8280xp-x13s: Fix the
 drive-strength of mclk pin
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260629065905.15651-1-mitltlatltl@gmail.com>
 <20260629065905.15651-2-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260629065905.15651-2-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA3MSBTYWx0ZWRfXw2lCVx1nzYZz
 vXHSZ0eikFPylg4tORyEV1DeTQDyfK0nphyS6pCgyPHD3/viyO9iiLNTqhWAJtU+y22fl5D6Lgd
 Z9/uHax3+5ITa9YvenqEwH9cISKxe68=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA3MSBTYWx0ZWRfX7aIuvktz0w60
 FiWttD2BufcbfVpHajG00quXqBFmLm89V7DlF2asihq3A2n3o6d4uMKAEZIKUhackYKrtxrYvEc
 oNkwt75nKg1PtAuOjGuCZzw4b9/mS63JgSGrVcF43xotPpXOOPjpHt9ILr1e/Od2CMUcrkXUueb
 eKusyXMw6fO6kooSGTqp1Rl3gGk71QgpIhbjxRzofPAtFx63nej9PYAJraNOKu2Vdjxkp7qsh0v
 zP92z277iWqXIWUyOCGWAEdMj/+0cAHSR7aleBYEvcyg63V8GvsX1brwY1VVPf+xyxJb5qLeB9t
 ARuG+BYVlmn1rGZ7LlvEfBH2Fc69GgNMhN6jdiWk1C0xmh3Ngz+Y5h0zVvIlFpWc3if3cmTf5sA
 2WSpppfy9sHJ00gJQwe3eLqPooVLArdUbQYIbmvIz47AkPR0PG+iq/aUHGUto7HuLlTMaD/U5yw
 1MqUcps0FeWg48rHaGg==
X-Proofpoint-ORIG-GUID: B4gTkbihaIgkwN8x7xeBgFiaRbamHMWn
X-Authority-Analysis: v=2.4 cv=MZJcfZ/f c=1 sm=1 tr=0 ts=6a423492 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=rPEeh-01POpV73vmElEA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: B4gTkbihaIgkwN8x7xeBgFiaRbamHMWn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290071
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316815-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mitltlatltl@gmail.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bryan.odonoghue@linaro.org,m:vladimir.zapolskiy@linaro.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0920B6D7DB8

On 6/29/26 8:59 AM, Pengyu Luo wrote:
> The value can be retrieve via windbg on Windows.
> 
> lkd> !dd f111000 L8
> 
> ctl_reg => 0x284
> 
> in drivers/pinctrl/qcom/pinctrl-msm.c
> function msm_gpio_dbg_show_one()
> ...
> drive = (ctl_reg >> g->drv_bit) & 7; // (0x284 >> 6) & 7 == 2
> ...
> seq_printf(s, " %dmA", msm_regval_to_drive(drive)); // (drive + 1) * 2 == 6;
> ...
> 
> So the value is 6, not 16, it matches Windows now.
> 
> Fixes: 21927e94caa5 ("arm64: dts: qcom: sc8280xp-x13s: Enable RGB sensor")
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---

Thank you!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


