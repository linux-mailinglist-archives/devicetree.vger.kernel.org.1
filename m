Return-Path: <devicetree+bounces-277129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG57MkODumnrXQIAu9opvQ
	(envelope-from <devicetree+bounces-277129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:49:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E052BA33C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1CA73059F1D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97220390C96;
	Wed, 18 Mar 2026 10:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IiABON2P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S0Kd+Onz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE0B3590CD
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830905; cv=none; b=IjIVusyQAqW+gRK4CN8qLY4VNjSXKPXu3OU8XabZU1vhVIfEN58RiwFvjzQ1yo6XCWCvZrwHZMO0EWgBHA1DoErp52OOdOu3qBZOTnjVC1M6hvLAoQP42mVVKAPSzFIlUpJs2VStG7sMn9eYUbqMiQVXuawmmIaEPA/pCSU4nYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830905; c=relaxed/simple;
	bh=cF1DROYnjX8skY1YrSMzROf4KbayS8Sh+36OpO6N74M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uHOWj4P89J/Fp2XUuUUEhDHM1UPmXfXtb087r2lfUdBShuV1/BKtf2dAWHF4YzhVzW7bXh6peI7mdl9qlxxIStUaew6YWuCefbOH+vByVtRCD6sGMExPgzhIkyNeOkHPsVX66j+KUyz9d706AiVrbJfTtuIrZzBwDS+YJmpfnqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IiABON2P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S0Kd+Onz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9AlbX3281050
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:48:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XK80EzlkLMXAuOZQ++FquWS/RLEA4ilvvwe4PY609zc=; b=IiABON2P0C6eYenj
	otioN3BgR0vJ+e9M6XS7iC0QRAkqCoVOu8vfR5h5hM3ztY5qpfZ0l0Fu10d2QcKJ
	YdfSpdI0ttcFPZqj5EqEWe1SlgsyoyktHTiSGqkZ+HLk3IFN0Pb3r/qLeMXDGurI
	nDNHl1fZz/n5POruk3OMPe40n6zjHhEMcTsAc4moYkTwxv5fOUMWHWKWJQ5VwOvj
	moNHEXce3QcyQU14EbahIbX1maQ3MEtlNtkSeDQw7hnFsWKxJA0LBjgZjL1U/iqu
	RBarclO1kPzU+N46L8OPobZSAExdVZNLuMXa16vrAjphxFFxJR5rd9rb28Db58im
	5j+M4w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cya62v30q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:48:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50910ca6ccaso87450331cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830902; x=1774435702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XK80EzlkLMXAuOZQ++FquWS/RLEA4ilvvwe4PY609zc=;
        b=S0Kd+Onz50GPy0vHWK+VHFsAjFBPnctwm/xrP2OLctR9MYiPAMlgU0ZMzmzsXNmGnA
         mr6aIKrZLUuT8i/YMhw9zdsoag8LAIJOHxKebiBfoM4TtVUle31DBV9JItDySfP6Fgq6
         CoiQfIrR84U5qFU5jWXqDiOd2lbCcHHvzBm7JSY4IpmrDYtuH1bPGKA59yqi1068n8I4
         BuLTi/LuayA9R0Ho+71J9gnZfW9vCB1+ZKVCef36ECZ7nWkmrp4VGRqeeeNYiuRjC49l
         gpcd8CaoFHZ23GSfhIgpJffeSKu7p7148rQDu/KMdPU1mCwcdZztYH2E2zUAc7IJLw6y
         sUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830902; x=1774435702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XK80EzlkLMXAuOZQ++FquWS/RLEA4ilvvwe4PY609zc=;
        b=ruKr+Vrm3dmzL81cgiOkY9iTi2YZjQXgKDZfFxNygNbscoHqOe9j1d5Eme0uwKuSoB
         bo5YULwGDlw2wV21stc5+qfxYxjFIQDaCLBL8ewkrCVnsVnX67qPZWIn4YreMp7QVusB
         p/O+mhads0NcxMV2wYvJIm9YPnHDCIF6i5eN2v4walHW2TmFOalWKHehOs6BK1F2TWt7
         uBCOHlGYUrj1zc2CVLZji+uLLpQSMrI3p1n3w/bXjOzmddXnAgXBUbMSdqUgT36bgDGT
         3FCCAL34wB3uvJPOhxEBrEBkG67/xwI0uMuGY56S0qavMlid6jCZBfCF7MlJAPpScT06
         pXzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhBoW4E3GrEApa9cauclB3azUxQAppOmLkgvReYywsyXbTMZtjPng4zf54mUGuVcowQJim+usRI1D7@vger.kernel.org
X-Gm-Message-State: AOJu0YwT6uA15x+/IrOZIGpd+1RBVUsnLwKBtSqnE3OqWCuksL4nofXu
	+W8zl/y95+ERZDpZ7WsPd268hiyejjTgjjYNM2DHfTGPKLX6pvmFgjkWFo1YrTynJRBl39RFlcx
	td80EaEihKMOEvf0mcGwZzehPk1QkRgXaDAkVyssqUOEeYM3tK3IrvNqYZS8WtXod
X-Gm-Gg: ATEYQzx+/jDU81eekKKC1qIG42OYk7R3flqB2ak0haXxm382oPEaJwWey3gc4jJpds1
	Fj2wjONV3qLkfEAUzf79VgSuzvrMPJCN+rb6hJ4nFjjJuehfo4Q5lPlQ27/aPOAhG6qCF4Inbt6
	MqXvbDWO+JAgy1Yl/o19/rlyYk4VvTGdr1u6vgvPqKpf9bWhuEUm9L4ADZ18yCRI67Otazib9ae
	zFN7qk7kj8lw8Wro5Z+o/owhw4JRK+iz4Rfctq4YFSLWAMwNeB3rAAh+HBodIoU89ncOWWxNJ+3
	z5/MqF+sCGzsJZoo9YfaymQFhkiA7IJ2Ko8uT2x9D/bamd+RruulqFAIDqcLXqdhT28xBb7K49c
	21lMbNJ1mv817LRs19qaIvPIV4TyacDLtsTQ48sB90XCf24MMjFWWfOCh2Fk8b7VFDjjxnE5oZS
	r9/TA=
X-Received: by 2002:ac8:7d4c:0:b0:509:24e8:ec48 with SMTP id d75a77b69052e-50b148afafcmr22899991cf.6.1773830901887;
        Wed, 18 Mar 2026 03:48:21 -0700 (PDT)
X-Received: by 2002:ac8:7d4c:0:b0:509:24e8:ec48 with SMTP id d75a77b69052e-50b148afafcmr22899851cf.6.1773830901370;
        Wed, 18 Mar 2026 03:48:21 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142cb46sm178339866b.21.2026.03.18.03.48.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:48:20 -0700 (PDT)
Message-ID: <1a00582d-66d6-4325-aafd-156cfacee8cd@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:48:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ns3cssdJ c=1 sm=1 tr=0 ts=69ba82f6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=vXNxit1Icg9rXcKRa9sA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: FdGCIRXjkz5CsfcIjwZbtS4-2J50cX2v
X-Proofpoint-GUID: FdGCIRXjkz5CsfcIjwZbtS4-2J50cX2v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5MSBTYWx0ZWRfX0kHNBuD9JsMq
 lJO4jcwT7WzlJJFByqlnnKd6iFa+31EMuiyRfWBNlyOvnlJ0KM8vEnEer8TdRPlXVADxksQAOQi
 L5nevEA3JLSGa37THlvMMkYQr92Til71D+YoO7aAtu7S0giM1IuCCsP+gfd7NirjWIV4qBrUpvh
 jEI/hVgXAv+O14nlLyGwFsXQ814vdSsl5ImT7YtHMGsB2ekp00fGf0b0EUI8FExdscOKIUHCCcJ
 WASid9JckUATTplcaf8yqT6uwSu2fwfU3PStEo0WjqUhs75n2YEMsBAy1NM1CM6u8ySx9hGMKWe
 11DwtJEE8nQF8n8YcbvrHX34N0c29UQ/YPT01KvO941CUVEhA3hR71vJj5XYPgRb9FH8hNZtV1O
 B141aMOPxQSzclcj/vvYKq4bP4SpRAmliMYmkjsr7E4sLLxHVAPhZWO+SCnTJQ9+ASoLEDdBq3g
 fXdhDlqelZCWWz0bUbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180091
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277129-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 78E052BA33C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:39 AM, Krzysztof Kozlowski wrote:
> Add a driver for the display clock controller on Qualcomm Eliza SoC,
> which is copied from SM8750 driver plus changes:
> 
> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
> 2. Eight new HDMI clocks,
> 3. Different PLLs (lucid and pongo).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

[...]


> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2023-2024, Linaro Ltd.
> + * Copyright (c) 2024-2025, Qualcomm Innovation Center, Inc. All rights reserved.

-> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.

[...]

> +static struct gdsc *disp_cc_eliza_gdscs[] = {
> +	[MDSS_GDSC] = &mdss_gdsc,
> +	[MDSS_INT2_GDSC] = &mdss_int2_gdsc,
> +};
> +
> +static const struct regmap_config disp_cc_eliza_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0xf004, /* 0x10000, 0x10004 and maybe others are for TZ */

0x11014 is the last register

[...]

> +	/* Enable clock gating for MDP clocks */
> +	regmap_update_bits(regmap, DISP_CC_MISC_CMD, BIT(4), BIT(4));

regmap_set_bits()


with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

