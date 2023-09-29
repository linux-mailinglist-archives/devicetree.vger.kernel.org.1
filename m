Return-Path: <devicetree+bounces-4628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D997B34F2
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B9E591C20994
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6267D15AD3;
	Fri, 29 Sep 2023 14:30:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AB451226
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:30:40 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB141AC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:30:36 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9b29186e20aso1181506566b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695997835; x=1696602635; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bei6ZX5STHPl62uE+IU3ZJNYeMwF+H+x6x7EmZkU53M=;
        b=oDH7YwjID+98ETfG8WlDoCRy0qOKKHp9EjdvO+3Ypljb+AM5ezujVBMN7pMNkwamYY
         k7eaXtBgWkml4kfKgRnC/YHMqxAf39XO79I90FLZOaEcehlXb8+3Ht5YGFHQbMsH9FRg
         axhv6F790yoWu2KQ0Nfm6pHtAZCKXtI8RfSg2ant98Z5o/2t4jjXEYuIM6OJFfdoFTP3
         LKJi57hPI0UUVEIsf3I3v6Ydnr9tZtYDAw1QBA4P/3Nm3K4YqE19PhnA/2JtWJ6kro97
         YeiFBFCNYFXy40pmGIf1oRinVOY+TP/3zAM3cnhjfQ9XXfjzNqyldRrWutDfxUTwgUop
         mJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695997835; x=1696602635;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bei6ZX5STHPl62uE+IU3ZJNYeMwF+H+x6x7EmZkU53M=;
        b=Atr5yHY8znEurBsDo4XKFXcLKOQrAZQ0mpg1nttPuZBB+cBCp2QHXtqtOisSuyIo35
         s9kpS58ut41mWmjfKp0ArXzoKeku7NSpLfKggP2D4FSQ+ActlpEKtx5ULKDBVVw2QpsJ
         HC/OHY3G4QumpmciBdQryKEy0BgvY7eP9KgfesKMRzq6M0Tve16BNsiM57A3DRtSOy/2
         uAznCGeUKaV/pv1BQo2hzSjp/JIslL/10KAEa9VbbYDn6nCX13tRJj2P+DmCt0BS4lSm
         8ZtjzLe3g1pEKGF60coFMtwAJb+5GlNILnl0a5Tt/6yOsF2aMnq41znoKBvjxNE3xVVl
         m9nQ==
X-Gm-Message-State: AOJu0YxVSZoybEc09HJ04RUInpI0kcp88+ZVOGSWLEB6E+3Y++wlGqF7
	qoTjC5MkQ5IcCa7zLJG92b8CsQ==
X-Google-Smtp-Source: AGHT+IEihqwzfgDNJ6K79nGPXAShlbp4nMp1E+v24AnEnzCVb/w+jvZReouKkACAjk1Rf3qhHmBBLQ==
X-Received: by 2002:a17:906:30c7:b0:9b2:b95e:3825 with SMTP id b7-20020a17090630c700b009b2b95e3825mr4070649ejb.39.1695997834829;
        Fri, 29 Sep 2023 07:30:34 -0700 (PDT)
Received: from [192.168.33.189] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id j19-20020a170906051300b009937e7c4e54sm12553404eja.39.2023.09.29.07.30.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 07:30:34 -0700 (PDT)
Message-ID: <b1f097a8-2297-4c6e-aeca-a794d2949054@linaro.org>
Date: Fri, 29 Sep 2023 16:30:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq8074: pass QMP PCI PHY PIPE
 clocks to GCC
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 quic_tdas@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230928211620.1278054-1-robimarko@gmail.com>
 <20230928211620.1278054-2-robimarko@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230928211620.1278054-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 28.09.2023 23:15, Robert Marko wrote:
> Pass QMP PCI PHY PIPE clocks to the GCC controller so it does not have to
> find them by matching globaly by name.
> 
> If not passed directly, driver maintains backwards compatibility by then
> falling back to global lookup.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> index 643b586c0dec..1f108ee2e8ba 100644
> --- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> @@ -407,8 +407,8 @@ qpic_pins: qpic-state {
>  		gcc: gcc@1800000 {
>  			compatible = "qcom,gcc-ipq8074";
>  			reg = <0x01800000 0x80000>;
> -			clocks = <&xo>, <&sleep_clk>;
> -			clock-names = "xo", "sleep_clk";
> +			clocks = <&xo>, <&sleep_clk>, <&pcie_qmp0>, <&pcie_qmp1>;
> +			clock-names = "xo", "sleep_clk", "pcie0_pipe", "pcie1_pipe";
Can you turn this to one-per-line?

Konrad

