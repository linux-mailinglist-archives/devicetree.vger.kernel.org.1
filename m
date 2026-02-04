Return-Path: <devicetree+bounces-262757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLPeBRGHg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:51:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5401EB34E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B736B3067A28
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D4F34D4F1;
	Wed,  4 Feb 2026 17:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BaeTvT7Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VNMRQXIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53123043DC
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227177; cv=none; b=N75ZZXRY7Qtap2uZEieU/dP202yby++al0lkJZfxhPjlQnhHXb6tfAe5VJkm2nlDe8C6SEhSTCy/sdqrODMcl7cNQGYr/hQbg3fIEZCCRXRs+wzYtPKIccaTc1YazwUmsrKWXMfuOBLlxkgGD+Xt9MuSHeBu+/D5ETYcl0uboWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227177; c=relaxed/simple;
	bh=q6aJoYYkOWu4y+iIYT/azwE11X8NhPbw96tSLu3BCZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XrnwsJj8h4Rw/g18wkLiBA/ls1edXQRhaqNSlWoBS553xT74VmF7Nw+IejC2JlF9/cnEloNyRBswz6dLKYHmbMUV8d7u2z5wUugj/3L94hmSoUgw9noN3qR9NVYx1Z8jS9tY4qHnmW0UGx/7SjWe5ysC5x0HJPJY2j1XCp6fdz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BaeTvT7Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VNMRQXIx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIO5q1245882
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:46:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zqj15cZBNlJt4qforcNTiS9Iq8vcHwxu4xpL+2tTcnI=; b=BaeTvT7Q31/iLB2/
	Ppe9MI+7oE0l0flHHdSt/ncVYt1l9bmLdaGcBh0xssyZU1hyae2UherDltL5eLNP
	4mltvUaCa7+O7tbJb0y7ruO3Syg9KrZ1u7vgNP+7wrt6t3MZkbKp37nDcw9Cl8st
	/btutYLYdz7oXR45kYugGJu9GHkhp5PXpdQR1dfuUAKkuyBiEvCivZuHO1tXVEU3
	2tpHZyQVlLXh4+eUMNsMHCVszwWAaT9Fo3thm+2lPBWmkZfN/9cmBhVu4ckzKQ5X
	vSsguALhByiO/ssviObqK+Z3is0peeRrkV4KQeT+jvnM86mfvgDcpkl5JodyFPy2
	7ddGZQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ru9bh3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:46:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a8f8c81d02so773705ad.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770227176; x=1770831976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zqj15cZBNlJt4qforcNTiS9Iq8vcHwxu4xpL+2tTcnI=;
        b=VNMRQXIx0c8ojpnp8o9nYsH0lXyTjdMy/EjRVAveNNa/i63ih3pC1RgSMkLp3XxtK8
         IEKEHlZA/5/p4A/bVXA+Ota6w0qhd7JsWoFogQmFa043dWMe3cLrmWWCUuvBXKIcSefY
         wDtZ0C+oICi3a4yR9X+VJlw9OarZE0Ba0qBk13Kr83Y36ZPae4t612JkyS7ipdmWZ/hr
         mAhKZwiy2W/bgZ2UHvY+9J7yBVH8gROyQPJ9jW6udoET2oHp8F8qmoeK6fXLrL6m4Ywt
         Z/ExA0PHPlhRFFMKvoRUtJSeX9dWuAPrZrnjKTwASYDU6E1K1Y+OTfzgxCFihXIXLt/B
         arng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770227176; x=1770831976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zqj15cZBNlJt4qforcNTiS9Iq8vcHwxu4xpL+2tTcnI=;
        b=YQLRL6LDWoloVUwib9c7IGNhZkkpqG67KhwIZ49zyfzdE29cVo/94flIMCh2DNQR3j
         LO356StDOFjazlQ6mz3CLztmwaOXxWDC01B3f2TjyADUr42IybywdIlpmOfE8fp9y9mg
         7/f3mwQFIA/nkDn7wyPVJdNxeLSGa+mxsQqnwgDYNrUoiJAbXEruaLQ3SNj0BD5eWYBW
         nTI+BhJ5L4F5NGQFa2ed2k5DMhh65zzpyNZWQrS+zW3MVJ5xExUAeelOG2q/9pfv4iRH
         wB1WesjTczlCvQ/4vWzBZlEnPZX1dDFH2k5iyLv93r91itTfWpzFlymQz30QvVfSsY/+
         ch4A==
X-Forwarded-Encrypted: i=1; AJvYcCUyLl2LRCOzusB0+RnjHKYxMDgETP8q7YoP4fbbrcaSbL9w1B16nUeCbd6TYUM1Ohga2DxNXmXXh/G9@vger.kernel.org
X-Gm-Message-State: AOJu0YwxeCrc4AvXSLoqpFBh4NaIzUhr0unHdZVMQ0UBKtsoBq/jWHd7
	xCXkx4SBCL1fGJygCl3R3pH56TwP0nyDXQMhUCyaS8G5SNISfdoMNxUQW7fNrthICQQjRqUam5O
	8XKTwPiA/Gy6cqWyBV2TrBWkx+4uLDI0bwrf6wVLGAs7Jdxth9JUgi4V7CcNpMTSGp4YxN+6C
X-Gm-Gg: AZuq6aKtbtUKtALRndICC+obEvSl60RrGjjgzlREAW+eEKJlBrKZRSM5WTAtof2qEeE
	1TKeVtGox2CsexMSIwZHFB5TTF1aKAMOWeyiEzqSQwNuQy7HP1Plo+iLmKKGEv5hUvvoDDYVYNx
	s/wFKUJ18tyV7VtMWdGy0JWcstsXVGAljHco59LXi/QmlWKtbazPmUrKs/jSwz8xU2CJzNLOOkh
	HHm5nJO4LPYIoxAB0gjtabKws2K84ejh3mwQZgOubLVvYM6DJrdpWASKKvxnBToXpDJr6owaYnk
	BB4NmcHqNYMxgo5G+fx9qec6pi2CaG/6TXr1woYo7GfxoMh5DV9kkNzoMbVnVPH5kXxt5tNzmza
	6G1yb0WZF+I0SiMsR6/FFNYIuLm2WFqJn7g7DI/ZwvANK
X-Received: by 2002:a17:902:f789:b0:2a0:d629:903c with SMTP id d9443c01a7336-2a933e91e59mr39762205ad.30.1770227176318;
        Wed, 04 Feb 2026 09:46:16 -0800 (PST)
X-Received: by 2002:a17:902:f789:b0:2a0:d629:903c with SMTP id d9443c01a7336-2a933e91e59mr39761945ad.30.1770227175852;
        Wed, 04 Feb 2026 09:46:15 -0800 (PST)
Received: from [192.168.0.103] ([124.123.178.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a93385127bsm31549295ad.1.2026.02.04.09.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:46:15 -0800 (PST)
Message-ID: <41331d53-d3f6-4238-86bb-eb1f43f263ee@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 23:16:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: clock: qcom: Add X1P42100 video clock
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
 <20260128-resilient-industrious-flamingo-bac209@quoll>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <20260128-resilient-industrious-flamingo-bac209@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX1Ej5RJG6UtpM
 Es7UmbxFPCIhGxNduF0s0XNSC7lvyqkAAG+/vn04g4Gc24pNCFyTvOs+jmW156ZBjYWjGg0ggv/
 rR5xmvHcYhxucGE8cGRQNPcIFwTKjvsaMB7r0+HlcIyQQNd4jT9PjAEJhCtV5+XXVMdNlhKLjpT
 gzpw4YbpTfsoC92yVVk2VKioKjnTgg06N91aHSoagtkdV+ROGDTPw9ku4EV6GfD3pl4SpS5UiM1
 eyxp2iJhPMii2ejCp6YRa4bzFddyjEoY0yQ9sRxZIQXFD8tr5n5ojOTAv4vhHMA9Eghn/WZUd5X
 fJcHjSRvBa7GDeisOjA38gzOnOa+6m3zwaFPRDG1OVduPhUmU31MPNyKbSLURx34iyiTzA7M5ZZ
 GhE5CINi1regnBqoYn/GpZm6ZcehIi7cXC88xsy2MKlr81DHdKiVX2sfZi4ld29p+o6qa/faR//
 7SbvQ0V75rhnlgQrR+w==
X-Authority-Analysis: v=2.4 cv=IJoPywvG c=1 sm=1 tr=0 ts=698385e9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=2H5/5ZkxJs/wMzWGxXwROQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=5u0znoZatv-JOXQg97oA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: e4tczJxyZpaxr5a76pSEElTPeslzMfOp
X-Proofpoint-ORIG-GUID: e4tczJxyZpaxr5a76pSEElTPeslzMfOp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040135
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262757-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B5401EB34E
X-Rspamd-Action: no action



On 1/28/2026 5:13 PM, Krzysztof Kozlowski wrote:
> On Wed, Jan 28, 2026 at 12:56:32AM +0530, Jagadeesh Kona wrote:
>> diff --git a/include/dt-bindings/clock/qcom,x1p42100-videocc.h b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..eb6c9b7264f8cbced7cfa0001903238ffa168431
>> --- /dev/null
>> +++ b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
>> +#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
>> +
>> +#include "qcom,sm8650-videocc.h"
> 
> Don't do this. It's already a mess and was allowed as an exception. Now
> you grow exception into pattern of chained bindings.
> 

Yes, will drop this approach and extend the existing SM8650 bindings to include new clocks and BCR.

Thanks,
Jagadeesh

> 
>> +
>> +/* X1P42100 introduces below new clocks and resets compared to SM8650 */
> 
> Best regards,
> Krzysztof
> 


