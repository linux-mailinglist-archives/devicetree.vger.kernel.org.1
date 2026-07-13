Return-Path: <devicetree+bounces-325285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vkqgOnGjVGp9ogMAu9opvQ
	(envelope-from <devicetree+bounces-325285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:36:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 554E5748C43
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:36:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=kHVr6hFX;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=X7G2krPm;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325285-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325285-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8142E305661D
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 08:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D93F3AE1BD;
	Mon, 13 Jul 2026 08:27:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DB3A6F00
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 08:27:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783931240; cv=none; b=JRZgd2Qr7EunEhMau9vgV6hNudkAtwVvT0S5te3jYJyVPuiFWMF23nyENyYafPIdGIC67hlPhVbM9X2p9irJcPBc9Z+wY6SM0qUBsBq4FZR4XrprsghG00NcPXQv+UTq+acfW4qAmU3uhdYP1XZQdx4IkF73nCIKfUc1uYFBRuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783931240; c=relaxed/simple;
	bh=rTqT5pIKCF31nrq4i98eOmJtbI40y4p67HTEO4XR8CE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aaJF6tpsF0ccVzLz8Cca1UDhAVCRHyfA8INViJtp83AMawaz5YawfZ0mcg7gBc7ABN5S3sWEBVZ8ykHPaoKx+RGFKtMBfmMC8u9/4oyQ0/1JQUeXMm9Fp72S/s52R78cbfMzUymtH1Wyh9GK14/UHpQcmpI0BZxPE8mwG5Vjgtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kHVr6hFX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X7G2krPm; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66D6O5f1473353
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 08:27:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BbF+Pq7Vc6cfmQhQ+gA9qh1Ng0Me279r/rgd3g/6AuQ=; b=kHVr6hFX8abqGXCZ
	/inwf/a/KyYRhq4nj2z5rFiJ27ePbFi3BiLZl+NNlUhdePQD3bFzTXkxlibw2EfP
	vHSzsWVULO4ob/TF+jLLIVkdSHNRW+CY4YMrX9/rfkNWKg4tBkTCx/MmhCTpJQgb
	vFxu/50YUMiMZwRuoEiUjHm4cwqfioS5m9uK7rz0a3m+nijd4jzQOLv0MJhEwV8g
	9w0bk9jOp8usRJjinpv70HBCZAR3wMU+B3VUaylxP+PYQQOkaID3Cru5zMSYgZ4V
	+AQC0+tqgk0lODOz/jhw3ODmGIu8Ef6D/l1PENrJU3SD8kxrpeqgZ7qnLfoxcShA
	ZoiOrw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbee9n87t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 08:27:18 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8eac2620cb0so48830066d6.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 01:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783931238; x=1784536038; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BbF+Pq7Vc6cfmQhQ+gA9qh1Ng0Me279r/rgd3g/6AuQ=;
        b=X7G2krPmS8xlqXM4trc7zsYem5dxMvz6U0Iqm+saGkm7B5Ia8hYFmrJVW89Bxs9cPO
         aoRe7YIhOrMKIoUibYG/kTHO7gSJVxSPsOlSJa81L1psDrZC1j4EdU4XuUCN6BgXIYaX
         8+qjuDaFxkaXjVYKievMcMyrcIOJHxgaEUgkfCfI7G07K9053SB0Fss+5L/sZ5fW7Gip
         0gwxJFbkZ+a/IvzPF80utoGX0Rn3ltVhphhK475l0Z6ExNYUtACtTqzh8BktdCbNzTTc
         UKrcv8rxJ6SRIEuAm2ZN78TQiwLtxdy8hE7YKxKmICqqfV7z1m60h5BEn24eyZX0THDw
         6OpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783931238; x=1784536038;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BbF+Pq7Vc6cfmQhQ+gA9qh1Ng0Me279r/rgd3g/6AuQ=;
        b=Tu7ZsVsnd+SHjAKo0mpx6onuKxwmYVAVKtzviPDMKhtwIqdtxaD/m5JrS7wn9r6kBn
         etzAioSUE94vVPwvxcFf/4cWIiaDKn8CtpmGYwXO1sbOlBRydst/sQqkq5D5ahO0uTeM
         ZsVPD9YlVIu/R1RGOxU+/ScrSWx0M1WUmSSBs1wBCXRVFb3QajHWzhUUBp9oIzO19Ewn
         Gs8alhN6EKW+Q1yEay2SieGb+fl5GOyzcHm+imk5sZj7r8ygQRpdov/G7ipbRlzQLG/J
         zrwGw3wU38WDcrxV5EWZI1FRJKFjSYuUtTre1ZQIk/tHH7+D4qc+OBPSY1sajPUwJHr5
         Rkzw==
X-Forwarded-Encrypted: i=1; AHgh+Ro3Thoau4F73+4jfnXu520uACdiTynK7JcsIJ04WQMfEIUeR8umxHezLfwy2V1eQQ0WcAR1B323QmBC@vger.kernel.org
X-Gm-Message-State: AOJu0YzxsB1D6v1ETDlQq4T2b830GJ2xPawhAMYqB4ZcVoxuti2Mqz7G
	Brpf2teao3eN8FKkFUwXTarHy38jjlcRjUGVltIGVPUyGj1UZA3yPOv0pp39PMJXeTqk/W0EfPL
	CBxuUz8mLTC4BWT1CfPOF+kiiNNtPV7a0/PqH729RWFiwW41BRLogxYwthSeDHVXB
X-Gm-Gg: AfdE7cmxjIhZyb5K5zqdZwbW6wIoVpFOll8wIc4oBm6gPBrm8DMMaJ8VxacEgnQKoeS
	cuCS/zlKB9TJSgfxqIzc/Pnx8YmbawxfO2Aa35hzLgeec6dlSt/z7Cj5QB1R4naWURuCdap1gJN
	FwDhH8gzGme8LRriDJpeahZViLIFSs/luArZ2gljVu69LoWF8iUT0ddydVhi+138+vEWc8ugxGL
	AEZu/M6DkraJK85IXrAb/wTMkGXB2vSvXqtXdpCNLBBmIGkt0VoQniqfSOeZnbhL7wEw2EzOHIE
	BP2LInjStOjBycMpk2I1o5iYH12L7e1J3+YdTJ32aZe8X1WN/bZhmNK1k+0iJawMUEHc9UfYNQh
	g7JwQbqXGqWeVnrsU/sKyEupn17vtPJWrlmMNHHrU8/M=
X-Received: by 2002:a05:6214:2387:b0:8ef:e3c9:533e with SMTP id 6a1803df08f44-903ff761684mr91705526d6.9.1783931237462;
        Mon, 13 Jul 2026 01:27:17 -0700 (PDT)
X-Received: by 2002:a05:6214:2387:b0:8ef:e3c9:533e with SMTP id 6a1803df08f44-903ff761684mr91705326d6.9.1783931237070;
        Mon, 13 Jul 2026 01:27:17 -0700 (PDT)
Received: from [192.168.1.73] ([92.247.57.178])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19cf68f5sm15008388a12.13.2026.07.13.01.27.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2026 01:27:16 -0700 (PDT)
Message-ID: <e9399868-a6a1-4bec-b067-c1bed8e83ab0@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 11:27:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] dt-bindings: media: qcom: Add JPEG encoder binding
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org
Cc: bryan.odonoghue@linaro.org, vladimir.zapolskiy@linaro.org,
        loic.poulain@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260706071113.383215-1-atanas.filipov@oss.qualcomm.com>
 <20260706071113.383215-4-atanas.filipov@oss.qualcomm.com>
 <95207310-12ad-4c2b-9ebb-b0a7bd27dac1@kernel.org>
Content-Language: en-US
From: Atanas Filipov <atanas.filipov@oss.qualcomm.com>
In-Reply-To: <95207310-12ad-4c2b-9ebb-b0a7bd27dac1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDA4NyBTYWx0ZWRfX4hoUd2vobo0Q
 nGUVv1kwl9JJA6rX2JnIRB9zTuCNALm8XxwB6zoYfoKXdn/LB4D5WfTeu672N75nSbY3YrioFxF
 kthMHk/C/+OTDUkSD0Lot9f9GoOFuk0=
X-Proofpoint-GUID: 0ocXpSN9MkAOdt_jP1HcUp9oauIWftsm
X-Authority-Analysis: v=2.4 cv=a7UAM0SF c=1 sm=1 tr=0 ts=6a54a166 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ybD9qRDIDfZaXNPQ7Ca20A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=2tE1FNNbuGYNqW7gzRAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDA4NyBTYWx0ZWRfX4hX4tBRXaYyg
 DKo3q/XNd/mEhgBHXNoaktkVzCCn42kcJODX+J2Zfmf5sQl7FskmRgT/UKkCELUsuLPvgrT33FF
 QPCvALZXiZYy5Vc7tF/D26XAE+m0oPpCrPys2As1HOhU9e6odCVYR8ceaeF742dD4oiFz7OHAxC
 5fHWpsUtj4Xki1hHMOrc4CmBPc5fCzrUJVFOkO2CZ9+WCqWJSVl/1r8lPPT3ea1FmIS9fR+kea4
 7XOiyKz/ix2lc9kpnzLIg+6XEs/B12VP0KnddQGRUaae0NUyUiy3uO0MOWrK6SLgEA3UCpCMIfj
 YzpMYcfsmgiS5gp470TbkYW4DlIEmS9fe8FFB39Ky4YqwzdGUkBlBV+UNSO3ko5cm+hJyFxypRf
 66wD0nvBE1ONcTwHooJmPN+KkrZee0qBGG++5sKhw+efBELAQAClaEc4/y1E9PmD7IQdLZn/DT+
 ocq51oL7u21vXNratdg==
X-Proofpoint-ORIG-GUID: 0ocXpSN9MkAOdt_jP1HcUp9oauIWftsm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_02,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130087
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325285-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:linux-media@vger.kernel.org,m:bryan.odonoghue@linaro.org,m:vladimir.zapolskiy@linaro.org,m:loic.poulain@oss.qualcomm.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[atanas.filipov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atanas.filipov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 554E5748C43

On 7/6/2026 3:17 PM, Krzysztof Kozlowski wrote:
> On 06/07/2026 09:11, Atanas Filipov wrote:
>> Add device-tree binding for the Qualcomm JPEG encoder hardware block
>> present in SM8250 (Kona) SoCs.
>>
> 
> You still ignored my comments from v1. You never responded to them,
> never implemented. This is fifth version and you still ignore them.
> 
> Please go to the v1 and respond to EACH COMMENT that you acknowledge it
> and going to implement it.
> 
> Otherwise I do not see how can we accept this, if you keep ignoring
> maintainer's feedback, even if that feedback is about trivial things.
> 
> NAK
> 
> Best regards,
> Krzysztof

Apologies. Inline replies to your v1 and v2 comments have been sent
in the respective threads. v5 will address all of them.

Best regards,
Atanas

