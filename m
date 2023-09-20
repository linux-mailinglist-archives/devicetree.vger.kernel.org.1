Return-Path: <devicetree+bounces-1709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFC87A7882
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:03:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C8811C20C4B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624DD156E9;
	Wed, 20 Sep 2023 10:03:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5F71172F
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 10:03:08 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF1638F
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:03:06 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-52f9a45b4bdso8277801a12.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695204185; x=1695808985; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FkXGC8/llEzHx22WCqyo1sMVOiWRsz/r1ftC1969lDw=;
        b=F/JYnu2Zuexvcx3U7vAPXSJaJBDKVYg0w8bn+IQHHrUcJMc7xaOIKy6C163hQzGaxX
         HajZENZHl1twtxS0oq6sAQRJcpiRuszYBeFfNc/cz+ieQlqDvLWQs1vyZeW2c3AU5/Vt
         CpHMybXr9B+Ft+GQ5FaZPfCWqEubjBhlTJa5lOJkUdVxNT/HRf3wE4DPW+63paKL60NO
         NBcCfSWCwkOzmcb3DKeQeQ2E6aw2BddZawt05QGtKB4cGKgPNLzMsO1l2w1bunV+9Ek5
         NxoCXHBLa6TZkjSSQQ1qetIwOloidwfqdUcBGEoGVMKwtXfH0aM6IWJF6hGxephEglBD
         Qzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695204185; x=1695808985;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FkXGC8/llEzHx22WCqyo1sMVOiWRsz/r1ftC1969lDw=;
        b=Tp2j8jljkZRfSrlHhzQY1zjdUlxfwb3FdHAEyGtcEDtYNGEl+w2M5uHGhWqo9E3S3z
         jOhNzzZpP0lYU3lggdYLriiX1cnjzjPlLblJZRzzm14eqCOVooG5CNrLneIX/Y+XUOsr
         NexPJfj0JU7h7O4h2LMJkOJmnMQLK/Erxge3L+JEo9kAh9Hkns5f3+KTGGyAnUzYOhXl
         NYzijeu52+24YCSLCMCSMeTHlYnx4cJmAE+HZMi4r0jPd38wc05RqntRbqY3PfiBSmXp
         5bsiRQtyBUOhTrmsnZGF4tV05jQGTCD2Rq2jXKhkiGbu0J/Sx3zWZHZlJ0C3gy8ftAFE
         KK6Q==
X-Gm-Message-State: AOJu0YzIAFDavzkf8NjB9etXspBErgV8vslkBYBiU1xJgivXDgaTGyZx
	hh61F9yTc2mdSofBhCdNPnR4KA==
X-Google-Smtp-Source: AGHT+IG6sJ+R1lkn+lfZVNrnVeKvzzEIZMu5ACOOPhlXnMNNxo3Svp7xYrZA+OV9whJvdn8P8ZsfMg==
X-Received: by 2002:aa7:c98e:0:b0:51e:4439:f474 with SMTP id c14-20020aa7c98e000000b0051e4439f474mr1657874edt.35.1695204185176;
        Wed, 20 Sep 2023 03:03:05 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id s29-20020a50d49d000000b00532bec5f768sm2084757edi.95.2023.09.20.03.03.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 03:03:04 -0700 (PDT)
Message-ID: <93ff26cc-f9b9-a064-8597-bc1a754d2dc2@linaro.org>
Date: Wed, 20 Sep 2023 12:03:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: add uart console support for
 SM4450
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, tglx@linutronix.de, maz@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
 quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
 quic_ajipan@quicinc.com, kernel@quicinc.com
References: <20230920065459.12738-1-quic_tengfan@quicinc.com>
 <20230920065459.12738-5-quic_tengfan@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230920065459.12738-5-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/20/23 08:54, Tengfei Fan wrote:
> Add base description of UART and TLMM nodes which helps SM4450
> boot to shell with console on boards with this SoC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
The SoC change must be separate from the board change.

[...]

Please leave a comment explaining what these GPIOs are
used for.
> +&tlmm {
> +	gpio-reserved-ranges = <0 4>, <136 1>;
> +};

[...]

> +		qupv3_id_0: geniqup@ac0000 {
> +			compatible = "qcom,geni-se-qup";
> +			reg = <0x0 0x00ac0000 0x0 0x2000>;
> +			ranges;
> +			clock-names = "m-ahb", "s-ahb";
> +			clocks = <&gcc GCC_QUPV3_WRAP_0_M_AHB_CLK>,
> +				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
property
property-names

[...]

> +
> +			uart7: serial@a88000 {
> +				compatible = "qcom,geni-debug-uart";
> +				reg = <0 0x00a88000 0 0x4000>;
Use 0x0 consistently.

> +				clock-names = "se";
> +				clocks = <&gcc GCC_QUPV3_WRAP1_S2_CLK>;
property
property-names

> +				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&qup_uart7_tx>, <&qup_uart7_rx>;
ditto

[...]

> +			compatible = "qcom,sm4450-tlmm";
> +			reg = <0 0x0f100000 0 0x300000>;
Use 0x0 consistently

> +			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			gpio-ranges = <&tlmm 0 0 137>;
> +			wakeup-parent = <&pdc>;
> +
> +			qup_uart7_rx: qup-uart7-rx-state {
> +				pins = "gpio23";
> +				function = "qup1_se2_l2";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			qup_uart7_tx: qup-uart7-tx-state {
> +				pins = "gpio22";
> +				function = "qup1_se2_l2";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +		};
> +
>   		intc: interrupt-controller@17200000 {
>   			compatible = "arm,gic-v3";
>   			reg = <0x0 0x17200000 0x0 0x10000>,     /* GICD */
> @@ -476,7 +525,6 @@
>   				clocks = <&xo_board>;
>   			};
>   		};
> -
Totally unrelated change, fix the patch introducing it instead.

Konrad

