Return-Path: <devicetree+bounces-260311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cL3cMbzmeWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:36:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED849F919
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1440B303D39F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 946A62DD60E;
	Wed, 28 Jan 2026 10:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJCk6cVE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kV8zwRrR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99A923ABA9
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596496; cv=none; b=nBRik4sLSPBPOQIMXvKX5Us/LDSpLbQcllqqo0ca8RWWsdNjSp5xfI7YmOQXBGwd5uaOIkejMPVrqUj/eQKSL9DYfe879IlNjgKYoG2lq/LgGR3siPjBXxuVw9Fv1GR7CWL9yqd/GkjptnVqdaB+jjrNs326voEhRQFrU5C9KY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596496; c=relaxed/simple;
	bh=HsKI8X7852eK07yEmtE9uzf7klLj/4S5XyAqbNDEDvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ISQhoeFI8QEKOzpM17ws5ZrHM8Q+K4G/NUtqpvE6ted1OAdv8MCX2WxLnVk9T2mELRpg3Ff8PgGHmw5M60U+oRiDGV6vOWTNaS7GdaBp2ZQS7MTQ8kseEl9JN4BpCFV7VDn5CLioBAO6WB2lTnztAekstVqjqjm/kyW8UEQyKkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJCk6cVE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kV8zwRrR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S9296i320331
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:34:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NcWbNCQycmM8x5jw0xO7IuxbVMoHZTQUjaqgqnklwsc=; b=IJCk6cVEH+MY3uBj
	QVUOP4al9n9MOO0GO8Ld9hx9e67iuRHD/4vja7TTfrrrFItxiOWxPENfQu34DRN5
	9y/HzF/ANulKipskXOexTSvZD4l/ALvZjveKRD/vtfU6iyap/HYXOhEnMgWR46z3
	rY4zOz1x+Er3P0iirP4STHYZjA6xV5kOt1sfek2tfphdoC6YKmBHmPzWJpGdny9A
	LZQPx6weqHiSTwHjcogLKvgFQYZ/NTmhEf4SDvnHIgT4sxlOHVKHmhCl3273HCf+
	g6N8g9amNpRTfFTdZFlXru9boJecalQCxlARPZ+ScEiM+UkLvV8uE03p00FaX/D4
	sA2mXg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjtbhs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:34:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52de12a65so10653785a.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769596493; x=1770201293; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NcWbNCQycmM8x5jw0xO7IuxbVMoHZTQUjaqgqnklwsc=;
        b=kV8zwRrRnYwlhRER0zGK/zHNoG2bF5/PskZfSJ1FLyhrIj5Oax8yE2lcPnf6En+reE
         4EduA9jYVoHHh9JLkXS9REKU2UU+SA6uldIootts9bfMLNAEgeBZ8HFx1wTHRTYazGyP
         hO+njo44WvLhsM71TZM66iMyddz3m0MRgKKtWCf21HJAI2dpBLqX8moEPWjd82z+7lOM
         8pgSo0XjdEMaEwUSmt1fHT7DtdWLgM3pSZ+hY3BpyxFqj2p2DYA668mQfkaeZrCrRjhs
         h17LBwcwkxmCALMpM7KY3FO2fTP1POlA8PH8IfF+TTSOJr4xnBIc2n8ABQQQHErsRv8s
         AsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769596493; x=1770201293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NcWbNCQycmM8x5jw0xO7IuxbVMoHZTQUjaqgqnklwsc=;
        b=O0V6Y5BUJXHrVZXMpyemms41BqiWMM5g77APTZFAVbjuMR17s28ik6M2NOnDiy3L+F
         VkOLNe0Ytxlpub4X70QDoBSvCvHU6Nte+fTTmwOnxaj2VwS3bRo9lbCH6HGV6PEwS/B+
         NvKdVed16nFiAW4gpMpM0MSOwqdqGYPrQh7d/2hHJ/oPM4QeN6w7ZvJO4favk8cHxScL
         nWX/wtxEY1lMSz0ZI2mk21JxoJ2IgjBEcECH6fWfA1zJsRKKNlG+ME19mJnpCLzA6QdB
         Cle/Jlsl4UAxRQ5hL4Z8zE3wYJaM5V4c/O80b4RxP1rRduZlBo7dFt7ynCx8JRql+DzE
         NmVw==
X-Forwarded-Encrypted: i=1; AJvYcCXevz3bW71TdaQ/G1lQ/mCSJCN1HhlOYVNzuuyR+JPTVFgUcgcGcICwJuL3+u1iscE2m/WbBjAJcUT7@vger.kernel.org
X-Gm-Message-State: AOJu0YxlRi86O/u14psoi25gj8aRmmMOLUkJ0SVRZdbM6FYZbfNGgLpR
	4x1bUuS5YG75yvAiyfkaCG3kd8vh6qNOCMXz3tdyesXCg1ny6u6G6t7aplqRBEZgg6CcaXHOjFL
	UCm5r+XDtGZeQgabHVHyvmKNFqdOrvDzH41QIL3Z9Ne4EPAZG8/RobDrddtnaY8n6
X-Gm-Gg: AZuq6aIGml2NLu+RJ2qgUJjfH6BEQSeOXcfdkQ+Wcbr7BnQ/mv4MRGyZfH+quEI/L9Q
	+JZmKokqgXKxEeXlw9hPQ6IhRI9EQZvXlUznCCX5Q2VZRHPeqAAABpE7HuC0NJKQD2zb9e/O/Bz
	fQNmS+QHCQ1u8gfryimb4fA+zObMRtm4IOyjnwVJkDuw7MLkDzxrB7cPdg0QFVkxGjn+lamKis6
	IFBQY/Y8k2Hjy235YAOhF6HhBibHxE2tAC9TDO4xQrZAB3BqfbfyhbqNOGJ2vd7gu9ahw0doNLx
	AsyPk2m+PkTXIsRmhsKqI+YzOvHDJRcTqUwTtFjcIIV13JhMsA/5at4XLTLhqiyRvoms9uGihqO
	wKR2krMfG00xMM3YIx9r8vOyhsJNaqiP1pZQKcBucgpyU+sw533Xi9vKmcC4HFyo67wU=
X-Received: by 2002:a05:620a:bc3:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8c714b85971mr124199285a.5.1769596493255;
        Wed, 28 Jan 2026 02:34:53 -0800 (PST)
X-Received: by 2002:a05:620a:bc3:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8c714b85971mr124197685a.5.1769596492863;
        Wed, 28 Jan 2026 02:34:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86942sm112832566b.11.2026.01.28.02.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:34:52 -0800 (PST)
Message-ID: <fb7bd7de-61ee-46f7-826a-2c9c32aa9c2d@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:34:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] clk: qcom: Add TCSR clock driver for Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4NiBTYWx0ZWRfX7B3TxZvGV8I3
 j0gAzDYvnlSCYk7y/A9B/I5xDWAX7R5fEDWkCDhU7+R8qNGq+SgfT59AYn69Tn+4KvvtrYk7ZOi
 ZhHvYgMAfKG2nJijkF2vb2LuNESoctcdKyvuMZ5S4uFOlXm9sFdqWV1sA3VGoTwh4qMq6DXHOYb
 BwzJQ5L4ZIBVIy9Qz5JsW3TcxThpd8h3DKXWr0cD8AY96b9QwzNWH0KCaChDAHcSvNgD20IBz5m
 q7UmPYvbAZn2Ebc+WYaY1zeiEyo+VY9ejjCgdVXzXM57yc5g9ADvPGCtWleLVa4TrCojqY4Od1j
 384Vcgi34lseyvsfcTkovCrlPNyn7YS+gTYYiWt4RrZnINLbLSzWHQSffAAGvXuFFJVTaBX0n9r
 L3dLorQ8r3MkpEKtpLkbXbUgW3AE9n96N/OxeqOZq6hQPlOEj6cbn46beSx0+bzgVfGg/3OT5cL
 RZcR5GRlSwaOJemm5lA==
X-Proofpoint-ORIG-GUID: LGUMQRPTEmIDKDshwE8kN8-62un6VIBZ
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=6979e64d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rpZdSPpRYYrpvmdKZM4A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: LGUMQRPTEmIDKDshwE8kN8-62un6VIBZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260311-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3ED849F919
X-Rspamd-Action: no action

On 1/27/26 4:03 PM, Abel Vesa wrote:
> Add the TCSR clock controller that provides the refclks on Eliza
> platform for PCIe, USB and UFS subsystems.
> 
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

> +++ b/drivers/clk/qcom/tcsrcc-eliza.c
> @@ -0,0 +1,144 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#include <dt-bindings/clock/qcom,eliza-tcsr.h>
> +
> +#include "clk-branch.h"
> +#include "clk-regmap.h"
> +#include "common.h"
> +
> +enum {
> +	DT_BI_TCXO_PAD,
> +};
> +
> +static struct clk_branch tcsr_pcie_0_clkref_en = {
> +	.halt_reg = 0x0,

These regs certainly aren't at +0x0 to what we normally expect to
be the start of the TCSR node

[...]

> +static struct clk_regmap *tcsr_cc_eliza_clocks[] = {
> +	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
> +	[TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
> +	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
> +	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,

I don't think this list is complete

Konrad

