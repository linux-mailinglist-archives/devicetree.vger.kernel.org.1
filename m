Return-Path: <devicetree+bounces-4916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1E97B4482
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 00:53:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0BD5AB209B6
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 22:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F01114A9C;
	Sat, 30 Sep 2023 22:53:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF53311711
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 22:53:34 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19C3BDA
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:53:33 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3226cc3e324so14063462f8f.3
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696114411; x=1696719211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mlBxctbB9FTcE/uWPk2Y2YEJ+iBtqk0tDnwZVGzZTPg=;
        b=CQlWxRzhpYeC5cfeXXFAVRNh1F/zkPTKC+ALBbflUCMAuXG/2x7l5U0qVBSois5o3/
         UJyCjsnxUJHUBvtbjObtIy9Lm/yFpyCT/eHwvdcQOaWzcUvDH47ExZ7KNzof7j3binOs
         fTTk4eVcmMHhHcrYkQ+QKqOIVc1na/6iYYpX8/MyoYNowxsRZYdY2s9sIA6k2TSpGL6n
         sZwtgNY/g18hoCCaSRpKchVVPlcIhckJqRCx2tOKw4zAJY8X6LFBTN2vmfWa8O+udA/T
         dp6R170AWO2oLYNXbFspOUgSPJYjPaV1VeqN+yO79hYDY0Va2eBUqUQ8BqsDV7P+UMsM
         IgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696114411; x=1696719211;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mlBxctbB9FTcE/uWPk2Y2YEJ+iBtqk0tDnwZVGzZTPg=;
        b=TxYONNadOZLtq44kNZ8NrxaeXy5yNDieMqTmqbl+EaUwrcyab4ha2SJGd6u8vXdW6o
         L0fdftxsfvzmeAVAwVJMwTb8zINAoGVISUa4ubG3sttAxe6w2omGbwUxzj4Aj2c/B4vy
         6IeA5gqX5FvxV0lbhfTPOwSY9BToMl2JAUuSonzbn76BBTIUEBqN3TtPIq4jCW8C8V2+
         J+vBULVXUqWTITeNlQNy2bnFDp1shb3Hkv5TLKR2cFVd6WlPTprSuDa5Dmm6n+eK3rDP
         owJ07uGyrp/qzX7OgoCU3+w7RUXA0PRxC2ZspW5Tr5Kd13zA0JXg/KEFI+viAOSXX1aH
         I5+Q==
X-Gm-Message-State: AOJu0Ywig01sApIVjgXIYMLUArWy2nl2NMAZf05FbzMRCS6GqpJBZhCF
	FwO33ck2A3j5fptIk4Ch+Nzx5g==
X-Google-Smtp-Source: AGHT+IE5hOVQVvMUhlW0QZGl9DnHrDheRfvw3wBLkVUUq9oMZKmKX3MibXuhOcdGuZqMIJkAkPKzbg==
X-Received: by 2002:adf:fd47:0:b0:31f:fa38:425f with SMTP id h7-20020adffd47000000b0031ffa38425fmr8260573wrs.9.1696114411331;
        Sat, 30 Sep 2023 15:53:31 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x17-20020a5d6511000000b0031fd849e797sm24550153wru.105.2023.09.30.15.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 15:53:30 -0700 (PDT)
Message-ID: <ec8a0350-aac8-443e-854a-652179a5d6bb@linaro.org>
Date: Sat, 30 Sep 2023 23:53:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 jonathan@marek.ca, quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230930134114.1816590-1-bryan.odonoghue@linaro.org>
 <20230930134114.1816590-5-bryan.odonoghue@linaro.org>
 <ba0399d3-c3a5-0458-3668-e734fafe2f1a@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ba0399d3-c3a5-0458-3668-e734fafe2f1a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 30/09/2023 17:39, Konrad Dybcio wrote:
> 
>> +static struct clk_branch camcc_gdsc_clk = {
>> +    .halt_reg = 0xc1e4,
>> +    .halt_check = BRANCH_HALT,
>> +    .clkr = {
>> +        .enable_reg = 0xc1e4,
>> +        .enable_mask = BIT(0),
>> +        .hw.init = &(struct clk_init_data){
>> +            .name = "camcc_gdsc_clk",
>> +            .parent_hws = (const struct clk_hw*[]){
>> +                &camcc_xo_clk_src.clkr.hw,
>> +            },
>> +            .num_parents = 1,
>> +            .flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
> "meh"
> 
> Is this clock only necessary for the GDSC to turn on?

Most of this code is autogenerated in downstream as I understand it a 
script is run against some definition the RTL one would hope.

I think that is probably how the gdsc clocks for the camcc are marked 
like this upstream already too.

grep CRITICAL drivers/clk/qcom/*camcc*
drivers/clk/qcom/camcc-sc7280.c:			.flags = CLK_IS_CRITICAL | 
CLK_SET_RATE_PARENT,
drivers/clk/qcom/camcc-sm8250.c:			.flags = CLK_IS_CRITICAL | 
CLK_SET_RATE_PARENT,
drivers/clk/qcom/camcc-sm8450.c:			.flags = CLK_IS_CRITICAL | 
CLK_SET_RATE_PARENT,

I can tell you what clocks this clock but I can't tell you where that 
clock routes too, so the best/only source of information I have is the 
flag that comes from the autogenerated downstream code.

I think the safe thing to do is to leave the flag as is TBH.

---
bod

