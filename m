Return-Path: <devicetree+bounces-6012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E597B9ADC
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 07:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2C4802817FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 05:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C64891C28;
	Thu,  5 Oct 2023 05:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="deQ7A4mY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D3415C9
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 05:05:48 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C382146BF
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 22:05:46 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-534659061afso808031a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 22:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696482345; x=1697087145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tumpG4fZu91mYpt2qQbWwuFfddli9/TW76sKXIYzTOk=;
        b=deQ7A4mY5ePOw4jHVnPJCqadPHGXWot17MfTlsuzPmL1tAKWWcgtfIzYCl6Y26RH/2
         Tg5vtPBAu0gJKO7CFEu7p2di+9Zo7ZnGiByuPZRH4rVpEmvI6Ad5Z1u3CH752De5xk+b
         6k6CTfr0mgVEyVtkEVStiiy6ER34FpSe0ONd2J1hDIrOt+KFaJzkK7e2ZCnkgu2oFmTx
         hJYJmKEe1oqQ26KbG9i+ATT9szB+0wzhWfDLnsox8IPOw7cn1kAP95Htmm4YSPIftgTn
         WIV57dECWvJJjG2shxvBLoZgUjtRC3J09TgpgpGGMiZclNTXmV2XoELeTgvgyRXZqaUB
         pGSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696482345; x=1697087145;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tumpG4fZu91mYpt2qQbWwuFfddli9/TW76sKXIYzTOk=;
        b=CtH9ANy/15Mme8Q0uStdpu/NvjKIzoSrL+Htx0k6inxxHGMHTMk4h6Hycs7j4JpD+f
         IBAJwOfaPjj9p++tju6pnKX8a7H9/nD6DT4mj0e+R+tP+dYqm+RsG8hbqqbwMmjV/fMb
         Pbg1QbU0geLsbbkViazamoIOfLtzH7Haa9mi31Na98vPXSqhYUvPJYhzrJuHa/Hb99R5
         9edlqZbDBZOTB0ZHym50o+qjG9ySk7exuJFnHzaYLWAZrdxBqAUi7FOHEJvGpTbzeycB
         GxlFBsGCsKtoV0291ElOLlYsaLuNK9nGxrh7c2we0PyKjJ1nky2sqIJuztHbRoxBiFcS
         +hog==
X-Gm-Message-State: AOJu0Yz8NsGNPPWSsql6Bc8AnmssW4kQukE9dSadELtDboKI6htuy9nx
	jkbUM3+yLGly5b0S1hypZNv6Ng==
X-Google-Smtp-Source: AGHT+IE54MO+fhgdky4xkVipD6Wj3FDv6iN+CshxB2o1CFdPuoVHF2KKTNg0ZjphMiuqlQstCFMd7w==
X-Received: by 2002:aa7:da8c:0:b0:530:9b94:96e with SMTP id q12-20020aa7da8c000000b005309b94096emr3525467eds.41.1696482345190;
        Wed, 04 Oct 2023 22:05:45 -0700 (PDT)
Received: from [192.168.32.2] ([147.161.130.252])
        by smtp.gmail.com with ESMTPSA id u15-20020aa7d98f000000b00533bab9d9f1sm434409eds.1.2023.10.04.22.05.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 22:05:44 -0700 (PDT)
Message-ID: <08ed16ff-14ca-a7e2-59c2-da949ceaa608@tuxon.dev>
Date: Thu, 5 Oct 2023 08:05:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 18/28] pinctrl: renesas: rzg2l: add support for
 different ds values on different groups
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
 magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de,
 neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
 <20230929053915.1530607-19-claudiu.beznea@bp.renesas.com>
 <CAMuHMdWQVtroKntVamANrWiheDYa6+=L8K53__1WUZg3bF8EFQ@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWQVtroKntVamANrWiheDYa6+=L8K53__1WUZg3bF8EFQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 04.10.2023 16:17, Geert Uytterhoeven wrote:
> On Fri, Sep 29, 2023 at 7:39 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> RZ/G3S supports different drive strength values for different power sources
>> and pin groups (A, B, C). On each group there could be up to 4 drive
>> strength values per power source. Available power sources are 1v8, 2v5,
>> 3v3. Drive strength values are fine tuned than what was previously
>> available on the driver thus the necessity of having micro-amp support.
>> As drive strength and power source values are linked together the
>> hardware setup for these was moved at the end of
>> rzg2l_pinctrl_pinconf_set() to ensure proper validation of the new
>> values.
>>
>> The drive strength values are expected to be initialized though SoC
>> specific hardware configuration data structure.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - s/strenght/strength, s/togheter/together in commit description
>> - got rid of RZG2L_INVALID_IOLH_VAL macro and consider zero as invalid
>>   value for entries in struct rzg2l_hwcfg::iolh_group[abc]_ua[] arrays
>> - removed spinlock in rzg2l_[sg]et_power_source()
>> - introduced caps_to_pwr_reg() and simplified the code in
>>   rzg2l_[sg]et_power_source()
>> - changed return type of rzg2l_iolh_ua_to_val() to int and return
>>   -EINVAL on failure cases
>> - s/rzg2l_ds_supported/rzg2l_ds_is_supported
>> - inverted the logic in rzg2l_pinctrl_pinconf_set() when applying drive
>>   strength and power source to hardware registers and thus simplified the
>>   code
>> - used devm_kcalloc() instead of devm_kzalloc()
>> - adderessed the rest of the review comments
> 
> Thanks, will queue in renesas-pinctrl-for-v6.7, with Paul's comment
> addresses.

Thank you Geert and Paul!

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

