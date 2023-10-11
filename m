Return-Path: <devicetree+bounces-7630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6B67C4F6B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:51:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D4751C20D2B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B4F1D68E;
	Wed, 11 Oct 2023 09:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VAxof5ls"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320FE1D689
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:51:45 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72BA792
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:51:42 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-405505b07dfso4393925e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697017901; x=1697622701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mx2O9LvJ3u9j57vC8yl+GJ60dYLRS7SdOeY49WiO/Ug=;
        b=VAxof5lsMa6Tguwk3Kbj2SYrKSZSwdnJLKEgC6CdDUiyMSD9cSiVRbnrN36oLyHtHO
         t1ee8XX1EAYAMND2BeE+0uCY4/AO3FLzoWF4RgVZ25BLuAnS44a8qAmBrrF2AkPwZMNb
         yGWziOBG92wnNQ18HC2vbGalLvLsYjCqhtEv5uhPcnDM06rIUM3tfF6Sbj7E811S20Pn
         qHf/66rCIoZrgHZ8t/wuP80W9ppeagP6+x3TLhVuDrpcmM53wroHA+KoG2HaSETH3Txv
         xH50FQnUoHrg/AqbjmbJWITvoZ4MzHjLC9VtTl80QKE7/oLX97mzPxDCKge72bStYjtd
         AP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697017901; x=1697622701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mx2O9LvJ3u9j57vC8yl+GJ60dYLRS7SdOeY49WiO/Ug=;
        b=J2kV9cuDDn6nmaqj5Dnmpa3yVH3Wk0hiHLiEFAGcCFMMkmhY+r0wbs5beOjHaF7i7y
         MdaB1XjaiurNMkHkwjV4N7MMXLV/YT7+C+1gQ8IJRD7t0TnEHTlmWA3XS024Jxf1WNW9
         PY+9gArZ2TH2+Nnc+pWRaF1Ie7vSQ3UGuuC5Q6ADj1UNNCPVm+kF/jjf+3nxb6yRRNAx
         QR9Umq6ntXf++4AMDBXASzrHxMQxJ+luUKHTH6MfcNmDbjwoGHuiU6HxZMLb6/mEerrN
         PjLOiK98rPDy+e8fVitbB7HmWvW1UdyyNB96rtvbBnFqwHt2eauVX0j/alTr+Q+/Wn+p
         Yu2Q==
X-Gm-Message-State: AOJu0YxJ77DnHDZ2gHhseWFEEZzn0h6Xi8eRyGrsmAhJjVnMOSkL3sB9
	VDbe9gioFKgbsIHKsydzqNJ38w==
X-Google-Smtp-Source: AGHT+IGRm9S+iDcNgkRLNy2rPtHQKT7OJSqDxOIUjCChPJozR/FiDEnaBZFHqXYGtkUSzokN8dK/0w==
X-Received: by 2002:a7b:c044:0:b0:3fb:c075:b308 with SMTP id u4-20020a7bc044000000b003fbc075b308mr16319058wmc.12.1697017900872;
        Wed, 11 Oct 2023 02:51:40 -0700 (PDT)
Received: from [172.30.204.44] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y6-20020a1c4b06000000b00405588aa40asm16372580wma.24.2023.10.11.02.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 02:51:40 -0700 (PDT)
Message-ID: <ac3fc5fd-b6fa-4386-aa62-f182547d1a59@linaro.org>
Date: Wed, 11 Oct 2023 11:51:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/4] clk: qcom: branch: Add mem ops support for branch2
 clocks
Content-Language: en-US
To: Imran Shaik <quic_imrashai@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20231011090028.1706653-1-quic_imrashai@quicinc.com>
 <20231011090028.1706653-3-quic_imrashai@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231011090028.1706653-3-quic_imrashai@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 11:00, Imran Shaik wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Clock CBCRs with memories need an update for memory before enable/disable
> of the clock, which helps retain the respective block's register contents.
> Add support for the mem ops to handle this sequence.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
>   drivers/clk/qcom/clk-branch.c | 37 +++++++++++++++++++++++++++++++++++
>   drivers/clk/qcom/clk-branch.h | 21 ++++++++++++++++++++
>   2 files changed, 58 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> index fc4735f74f0f..9ac8d04b425a 100644
> --- a/drivers/clk/qcom/clk-branch.c
> +++ b/drivers/clk/qcom/clk-branch.c
> @@ -1,6 +1,7 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
>    * Copyright (c) 2013, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
>    */
>   
>   #include <linux/kernel.h>
> @@ -134,6 +135,42 @@ static void clk_branch2_disable(struct clk_hw *hw)
>   	clk_branch_toggle(hw, false, clk_branch2_check_halt);
>   }
>   
> +static int clk_branch2_mem_enable(struct clk_hw *hw)
> +{
> +	struct clk_mem_branch *mem_br = to_clk_mem_branch(hw);
> +	const char *name = clk_hw_get_name(&mem_br->branch.clkr.hw);
> +	u32 val;
> +	int timeout = 200, ret;
Reverse-Christmas-tree, please

You can drop the timeout variable and pass the int literal.

> +
> +	regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
> +			mem_br->mem_enable_ack_bit, mem_br->mem_enable_ack_bit);
This is a mask, not a bit.

> +
> +	ret = regmap_read_poll_timeout(mem_br->branch.clkr.regmap, mem_br->mem_ack_reg,
> +			val, val & mem_br->mem_enable_ack_bit, 0, timeout);

[...]

> +/**
> + * struct clk_mem_branch - gating clock which are associated with memories
> + *
> + * @mem_enable_reg: branch clock memory gating register
> + * @mem_ack_reg: branch clock memory ack register
> + * @mem_enable_ack_bit: ANDed with @mem_ack_reg to check memory enablement
@dog: woofs

Describe what it is instead.

Konrad

