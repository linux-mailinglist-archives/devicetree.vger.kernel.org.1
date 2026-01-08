Return-Path: <devicetree+bounces-252854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7567D0364E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E8713249EAD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DD94D94DA;
	Thu,  8 Jan 2026 14:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xe1rwkCw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vds+4XLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0E54D94D1
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881463; cv=none; b=RISGKHvmrchBUsOXhOnUB+YoTRzqmLs5DzUEBEMImfLU3my7XPFq142Y4x6yQpQKdxBbXUYzDKFwEpC5ZTPUxYgKCMZxWNGszvNBYnar2tFlONNLRXHteuKd83xpjA7Wbdfuj109B7LJvc5vrzQrkUY2VxzZgNOb1ozMG1Sybrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881463; c=relaxed/simple;
	bh=l0e5f2jWVtuSG5EsoRmMeyrqbrKdMDocpuar/ayJUQ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r6tpvy4Bkn4VYqO8ds1r2s+c0DJlIQbDynwgALpLMlCUEJjb28YcfKbw9XoHu9ZNe5R9lxFQsivhTUblM4sxmTb7lf+4e9RCOMCL/KBHMLwxyYB53lYGFEGk5Vviz6KaVnL+7bv1J6E7kIPTuCqsm7xn6OvC673TgTi0wAz5Nqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xe1rwkCw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vds+4XLa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6087VSsG1838190
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 14:11:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zDj0SyrBKwtUZwnlbW0UelR8aNx3msiTcnFCXsLwInI=; b=Xe1rwkCwGckOz/a8
	3so8x4aVDhwiZlkEaXxHAfVRb5wKbEEeZ7oFQchh0vDe/VCC1MuJb6kY8a5oS5Qu
	1/xIQLviuBoUgLy/9gB3MuGRip+GWJRODp6NsAgsu195nTjXdfNmvm90AgX2+A7F
	+nU1NkgVuxKDOsH6cQ2QPkinJzN1ZQ1jqkS4qt/wBzVvk/lIkp6s51aG+B/RpJwl
	KFBW4kPNeNCITPRIVeNwAJvPIJzPsq9ubu/juO6YaBPpMMPMkI7jqvmO/IPk2sUt
	6GTXmYiiPWCPDr3qcLd/nReuaXi9C/VnGmditW9zNHAj/3tfFK9eXv5ZKNT3incT
	NsfzJg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj89216qb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 14:11:01 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9414fc8eb29so718812241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767881460; x=1768486260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zDj0SyrBKwtUZwnlbW0UelR8aNx3msiTcnFCXsLwInI=;
        b=Vds+4XLaBiqBdzr9iNezr3P6SrYoI38P0fFJEZMFXZ5JfN/WdpjQhPnkxZ3XbanfDd
         YKDpbfO3t2uiQsAvlf5VG2lCGQHYw4No8RldvPlw7mpcf/bFMLJgAbtucvrE9EPJ/HAl
         NZAbSWnIdlJ/U/L1VTg9UlBUmPYIPIO77wWLsnRP2pHQU0NrFySKKuGnuLO8k0ynQl7+
         RNLJ7ZC13w6HVxMpDAbwRXuUYYfETiN1hGftKQBHJakxlOK6VDvXW4XXqB30vkn0PqTO
         sPL3bAJgnop+axBj0YUTmC8lLJO8cTn/yhrQpUJYjiX5j+H0vjUabQ9Pnq24QmvZT2AP
         gDlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767881460; x=1768486260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zDj0SyrBKwtUZwnlbW0UelR8aNx3msiTcnFCXsLwInI=;
        b=uPtOuzBCWLTTpWR7ODWYJbkle+sPx+Hlg6NQl2+nWpZLPFirbsaR707xLyWe/bxPp8
         maBhTFap4q6Q3I+vcYwSQaltXHoAxESviqfxEVprhYEzZIdjfemNf4qfAbcA7BmjeCla
         sg747SbCOxCZiDLQ/LmzPbSJ65m+uGq/ATtMQ3YJIyXYX6BBQXUFyX7ktQcMB0/vkLG2
         80ohojFD/FWvjgzhIqVMUwS0N+BGlxgM3+Jfi2QB+UgGu6V9uhgDLuJW/Mlq6ea0eEJX
         d0XRR2Y/SSl92/Vc7JZB/XSogp26IE0rwD/e9HVwtqp1pMCGbLvAI4OPnTNH59t7WtF6
         l6LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ0FsfnkRkbQFFvMRpGmZIMhKXWP1MLo8trSuTBWtmUG9Kvrd4VU1ofmFjwNlm85s92h/4yubTAfZ3@vger.kernel.org
X-Gm-Message-State: AOJu0YwTD6w+JeB1pMbGwm/QSRKbZuplWE0lnlVLZygKbrUcF2ZLV8m9
	YzyyAV8LFfwg90sADk6Y/ZFssV12Ocu8oCkoUdsd272M/ozfHlYdK7fsu++k5jdg+EjTrPTId4L
	smtIkpeEjdF22bvj5s2dHpbrwyoDVc1lYw1jV+Hk6dtLzjflIy+AmTI1jWqMUphAw
X-Gm-Gg: AY/fxX6YNoSxXg/qyLkZXT3Dx19sSbpwAAHP8b3RJhxkRH3kMULBWYRcn7RiNYWDaZC
	BzS7+QEBuNz9rz2hjNm3nD/JmH2KA9QFjI1kwvrOe/CGVyiFWQlDrqXw/J3khMVMqZqLWPd7Ls7
	AXwD+rcFuB2diE83PI61/rlHTcTuVXozgaxj1Q/ROUVCpWkvz0jkltr55D3IwmawuHmCJ3mJyor
	OXXqJFS/9bL8kmF/7vAtss1TdiZXHyeGBVZbynk3eKP4dx7LEl1qZq/jInnHJXI39t1/hnNi32R
	tgp9tWIOfatTP09Za0C6KaOSOvj7NPUSiAf1HSRnaYIctj+iyj/78/swXpH27b039GSocFleapH
	5+oLi65FmqC8UADh9tmecoroFl72u1sx5Pqr4bxUneNXomNNQiQA+1KkHhbdixJ0DP9U=
X-Received: by 2002:ac5:c15a:0:b0:559:5ac3:4451 with SMTP id 71dfb90a1353d-56347fd3dbfmr1198683e0c.3.1767881460078;
        Thu, 08 Jan 2026 06:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEijgO1jNR3691smMRceSnemB4rFBjC4LyZ/kq7RRolPPOrjZaN5nPFbUqww4SzQgZyOL1U9Q==
X-Received: by 2002:ac5:c15a:0:b0:559:5ac3:4451 with SMTP id 71dfb90a1353d-56347fd3dbfmr1198644e0c.3.1767881459379;
        Thu, 08 Jan 2026 06:10:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c0bfsm841928766b.22.2026.01.08.06.10.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 06:10:58 -0800 (PST)
Message-ID: <328342d6-e833-4fe7-828f-6978ae17cf0a@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 15:10:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] clk: qcom: cmnpll: Add IPQ5332 SoC support
To: Luo Jie <jie.luo@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
 <20260106-qcom_ipq5332_cmnpll-v2-3-f9f7e4efbd79@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260106-qcom_ipq5332_cmnpll-v2-3-f9f7e4efbd79@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=695fbaf5 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=20ciNqFLEIM2uVeCJLoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: lIKsDbC2Yirbx8j26l0FY1Y53Tck-OMx
X-Proofpoint-GUID: lIKsDbC2Yirbx8j26l0FY1Y53Tck-OMx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEwMSBTYWx0ZWRfX+Evz97Tu5RXE
 CskqNZ13yZMFXfxPEfq+befY1dOFmYWj2dk9MVzcBQHZ78fkKDdH1U2oX8AO2DplXVzE3C1E/xr
 2AfcU9gLUnD9peJouHyGNlT52fyJXsfkq3g0NZ0df1JHvUACzxKeJ9TBChgTuRVysTXA2jYF5U/
 tMB3Jvhmrg/7r/TboV3kotQiWwSQhtkQCE20DfZK0TThX4VMPXJ/SKWrh5HpbgZas921xsK1LYd
 dE3bSwBJ2dSyHlfYTexTEGUTdFGyMHg/uwGw9roa+vA6HZAu+WBcPaYfQQu78zRJeH+u8nQjlYo
 +gKES/PrgH/mZ6zHIo4vgSODvyQKUJ3OpULdMWVMObRXWWZJds2CLJX6bBALPvjhV4+eQaWNjN+
 /vVEidAFd3XfGQIhYncbwfXJ3GPi6roGmVMfMQaafZ/T47lWzFf7LWaMKacT5LH9rhoS2mjQv+O
 K2y4RI4k+LR/1lSNYnA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080101

On 1/7/26 6:35 AM, Luo Jie wrote:
> The CMN PLL in IPQ5332 SoC produces different output clocks when compared
> to IPQ9574. While most clock outputs match IPQ9574, the ethernet PHY/switch
> (50 Mhz) and PPE clocks (200 Mhz) in IPQ5332 are different.
> 
> Add IPQ5332-specific clock definitions and of_device_id entry.
> 
> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/ipq-cmn-pll.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/ipq-cmn-pll.c b/drivers/clk/qcom/ipq-cmn-pll.c
> index 369798d1ce42..962462286837 100644
> --- a/drivers/clk/qcom/ipq-cmn-pll.c
> +++ b/drivers/clk/qcom/ipq-cmn-pll.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
> - * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>   */
>  
>  /*
> @@ -20,6 +20,11 @@
>   * and an output clock to NSS (network subsystem) at 300 MHZ. The other output
>   * clocks from CMN PLL on IPQ5424 are the same as IPQ9574.
>   *
> + * On the IPQ5332 SoC, the CMN PLL provides a single 50 MHZ clock output to
> + * the Ethernet PHY (or switch) via the UNIPHY (PCS). It also supplies a 200
> + * MHZ clock to the PPE. The remaining fixed-rate clocks to the GCC and PCS
> + * are the same as those in the IPQ9574 SoC.
> + *
>   *               +---------+
>   *               |   GCC   |
>   *               +--+---+--+
> @@ -51,6 +56,7 @@
>  
>  #include <dt-bindings/clock/qcom,ipq-cmn-pll.h>
>  #include <dt-bindings/clock/qcom,ipq5018-cmn-pll.h>
> +#include <dt-bindings/clock/qcom,ipq5332-cmn-pll.h>
>  #include <dt-bindings/clock/qcom,ipq5424-cmn-pll.h>
>  
>  #define CMN_PLL_REFCLK_SRC_SELECTION		0x28
> @@ -117,6 +123,16 @@ static const struct cmn_pll_fixed_output_clk ipq5018_output_clks[] = {
>  	{ /* Sentinel */ }
>  };
>  
> +static const struct cmn_pll_fixed_output_clk ipq5332_output_clks[] = {
> +	CLK_PLL_OUTPUT(IPQ5332_XO_24MHZ_CLK, "xo-24mhz", 24000000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_SLEEP_32KHZ_CLK, "sleep-32khz", 32000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_PCS_31P25MHZ_CLK, "pcs-31p25mhz", 31250000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_NSS_300MHZ_CLK, "nss-300mhz", 300000000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_PPE_200MHZ_CLK, "ppe-200mhz", 200000000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_ETH_50MHZ_CLK, "eth-50mhz", 50000000UL),
> +	{ /* Sentinel */ }

Trusting you on these entries as I can't find a source

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



