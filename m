Return-Path: <devicetree+bounces-4748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 085017B39AC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 20:06:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AD4782821A1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37A946667E;
	Fri, 29 Sep 2023 18:06:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3BE6666A
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 18:06:52 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F2281B1
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 11:06:50 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-533df112914so13923196a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 11:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696010809; x=1696615609; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2+NzcmzL/mi2gPiTFAUFYkfHbta1h+i/9QHJGacVCRM=;
        b=BZKNrOmSg1BH7CoL61tNBoDEDwQvSZi8Sza/jLsnR8XayIHxZOygi98si1PFY9sNro
         C0a6bs4DRDLuoYjStNQFQSu0zqnfAUXLlBgyrfALemVvzdDtZ0E8/ZMt2h+2MySHtUnD
         KbQN+t7BuUbxxxwgJOXqFoazCSgdCDDmt7485dZ6RgtKlxnD/1yofJcebiRIXSrdloer
         JrMeTVftAtgAmdg2LFJtbA9ujEg003grUJK/WomgGwPzlDfpBCLydxmtenhlO8L27Vcu
         ud1R/Hksl0o9h6d0+gQJIEfnJCwazZeF7KiVIUYv4FtGtGDccSItSYGbBnQQKmS3uhbe
         9N0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696010809; x=1696615609;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2+NzcmzL/mi2gPiTFAUFYkfHbta1h+i/9QHJGacVCRM=;
        b=Y9LHsxTf5D86gjhTEul38+ikOPKBX/fBPsD6s9ROx22zPF0HaWaPDrg85bu+zFhN49
         Nw5S4Mxrk4AU/VF2YqCGYmmXKyXzRZpj0aImBafGd6RjiklVw7lr9ZfJ2daNQhR15y74
         2UDrieQra/g24h6fgpjvDZOGd8LbRM6lkZhr6zJP1YikB5liYPjDJ0WknduqR/dJ5RW5
         D22emb2RgJw6SO0UFC0Em7r3iGzMcrGHsmJLxfR9GYppWnZaV2+j4Fs+xIGexhrOqcEy
         6F59qzlu7k64wpcs+STFKX38ByD044ShgaBT62WKFaKvLt1u3dis5RLE/yTNKqq4IUAI
         Fs4g==
X-Gm-Message-State: AOJu0YzeUkZdDm/V3C/Q3faQ2cJpAH6mfzEmp+XwFQNhKqSaDc8uhwfB
	CzXHzMA5SBGak1TQalh5mF5BeQ==
X-Google-Smtp-Source: AGHT+IExPWQ+RwFB1vD0UeGPtfnIxlYQrpNuAp/izAsodjrWvv4TjZPjVZRtMzXuUq1PQZMEim+oTQ==
X-Received: by 2002:aa7:c507:0:b0:530:be79:49e7 with SMTP id o7-20020aa7c507000000b00530be7949e7mr4640326edq.37.1696010808720;
        Fri, 29 Sep 2023 11:06:48 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id m4-20020a056402430400b00536031525e5sm3607619edc.91.2023.09.29.11.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 11:06:48 -0700 (PDT)
Message-ID: <81b39049-f78e-148c-c901-5733c4894c83@tuxon.dev>
Date: Fri, 29 Sep 2023 21:06:46 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ARM: dts: at91: sam9x60_curiosity: Add mandatory dt
 property for RTT
Content-Language: en-US
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Tudor Ambarus <tudor.ambarus@linaro.org>
References: <20230928143644.208515-1-nicolas.ferre@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230928143644.208515-1-nicolas.ferre@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 28.09.2023 17:36, nicolas.ferre@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@linaro.org>
> 
> atmel,rtt-rtc-time-reg is a mandatory property and encodes the GPBR
> register used to store the time base when the RTT is used as an RTC.
> Align the RTT with what's currently done for sam9x60ek and sama7g5ek,
> and enable it by default even if RTC is also enabled.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> [nicolas.ferre@microchip.com: adapt to newer kernel]
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
> index cb86a3a170ce..83372c1f291b 100644
> --- a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
> @@ -439,6 +439,10 @@ &pwm0 {
>  	status = "okay";
>  };
>  
> +&rtt {
> +	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> +};
> +
>  &sdmmc0 {
>  	bus-width = <4>;
>  	pinctrl-names = "default";

