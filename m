Return-Path: <devicetree+bounces-4510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FBB7B2E0C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 34B28282D91
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1B84442D;
	Fri, 29 Sep 2023 08:41:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D2BEBE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:41:41 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE991A8
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:41:39 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-405524e6768so118069855e9.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695976898; x=1696581698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M1qa9MPXO3QkuATigdmsJ+7YJ61rWQy2j+JwMEZKO3Y=;
        b=o6TPz/5CBu7SXr1j3rNH31VLcRQY8LPeiS8s2phtQWSG/TzyMAMNADW2e8yg7kyVTm
         DD0U8k7Ts6v0fMxpI3qsJCYQsc5VYCoLy6/bKRrnAVqr9Aq3or4u8d34PcyifAbq7Cbb
         R0hDRB0U8bdcmStxO7KmFSnZ76baZwaWHVeLwSav+6Vsk1Pi3xVUyCN1yo3Y/IQR+JBp
         6BFgbrmEvmJlRqSHVFNia3IzqPSM41vhFar1WlRh01ChiG/BecC4/Eh74ow9sG8ahKzq
         tGg6TV6TxBhTVnz5fdkKbxhI/ir7QUrlR9xPcHlD8f7i86f9VoJSL/QO1GRSmXF0qNTE
         RWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695976898; x=1696581698;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M1qa9MPXO3QkuATigdmsJ+7YJ61rWQy2j+JwMEZKO3Y=;
        b=WwFwGllNsYIPduGbFxQkzdyndQW+YJ3tU+Rc+HA694U5jNBzO40bhO6wtZ5ApqG96G
         OAuS3ICpd5wzoqfKBHW2Xa6lAqHo5Z4DLnrnNzlMUVt9ShnMMtbPHr6J/fA9fYr0QXhC
         8EytwpSjgZ2DZJpiaf82UbxEKbIR9eBLG5N15EJgalTpa28Hpq5WPF0FSmFHU/n+U11p
         TX2cYz3/hDPleFk+eGeeyrEI3VFG0Yk/YV8os8Ko+FI9SX1bPq03AStU/jDVypOAy1pc
         xWH0FvzTzKDNC6QQUBM6/kyRfqQhQMzJmfMJPwj+F0hkOT2TSkqesF5bmK+bomOzDdkr
         +3ug==
X-Gm-Message-State: AOJu0YzEQ5FueLjTzfrbp+SB4ZngAHQDysoVX6+YZAQoe25ZDa2SPLtr
	H8Phfsc4KKOT9O/ppZLNuuOXEg==
X-Google-Smtp-Source: AGHT+IGoAq5YuKVMoGvdyZ7QMvGcwB5OFGA+8f2cwGQcecWyWkmY78FgzMH9ry9w/k10s4mUQpQonw==
X-Received: by 2002:adf:ead1:0:b0:315:ad1a:5abc with SMTP id o17-20020adfead1000000b00315ad1a5abcmr3241388wrn.5.1695976898094;
        Fri, 29 Sep 2023 01:41:38 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z17-20020adfd0d1000000b00317a04131c5sm21032893wrh.57.2023.09.29.01.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 01:41:37 -0700 (PDT)
Message-ID: <0523aa22-5a82-488a-b325-0cab6a4c95aa@linaro.org>
Date: Fri, 29 Sep 2023 09:41:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: venus: core: Set up secure memory ranges for
 SC7280
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230929-sc7280-venus-pas-v1-0-9c6738cf157a@fairphone.com>
 <20230929-sc7280-venus-pas-v1-1-9c6738cf157a@fairphone.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230929-sc7280-venus-pas-v1-1-9c6738cf157a@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29/09/2023 09:38, Luca Weiss wrote:
> Not all SC7280 devices ship with ChromeOS firmware. Other devices need
> PAS for image authentication. That requires the predefined virtual
> address ranges to be passed via scm calls. Define them to enable Venus
> on non-CrOS SC7280 devices.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/media/platform/qcom/venus/core.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 054b8e74ba4f..5c6baa0f4d45 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -881,6 +881,10 @@ static const struct venus_resources sc7280_res = {
>   	.vmem_size = 0,
>   	.vmem_addr = 0,
>   	.dma_mask = 0xe0000000 - 1,
> +	.cp_start = 0,
> +	.cp_size = 0x25800000,
> +	.cp_nonpixel_start = 0x1000000,
> +	.cp_nonpixel_size = 0x24800000,
>   	.fwname = "qcom/vpu-2.0/venus.mbn",
>   };
>   
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

