Return-Path: <devicetree+bounces-8358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2B17C7D47
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 07:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F2CAB20950
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 05:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212B8613A;
	Fri, 13 Oct 2023 05:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NqjM2d63"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E876133
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 05:55:18 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62DDBC
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 22:55:15 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-522bd411679so2964519a12.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 22:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1697176514; x=1697781314; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oYHZdMFA6OQbagkrLvPrbN3TwwM9BrhoqWPjC6tbAtk=;
        b=NqjM2d63W9cMlsFqB+kwBGI6Zdb5Et0SdPJnSI74XlYSl7xneWpEc4G6feGNJB7cMJ
         gKD4EhWJkN7wKmiElaKZ7tBxCNiOGLLlOuYK+B976HEEkHDzVr9jK836VarI+NzaZtek
         TWDEHpVrXcfzczy67VqAzvlkc48jR6zicuRARqjJJ6rSFyQtPZ5FpiEBlMtIT577MD2J
         sXZVAicVnmFVsUtsYCX/+HTbEx8No4p1GAJMhq/YbqHdzEjmDP/Kmp4mKO8d+yjcCRXo
         TkY2PCM1efcj/XQ4PDvQxhichr7TEGaLtsHMWfyBaA68MN/ZGeZbkH9jwLdhSQG0i9fO
         Hdlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697176514; x=1697781314;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oYHZdMFA6OQbagkrLvPrbN3TwwM9BrhoqWPjC6tbAtk=;
        b=IjSTp3sHbY5KbHrz1Ma7Xp1MmD7sKcAwd9QpYU6eSkrBpRFQfqDMT5zMRqp8b3vft2
         KTg3FpjdbAzU+ODt/ILjchZu0GUo9s1QwheyBeDWgUFpnOIt7Tf5Jk7uZRkZGwc630mH
         z0jf/0KWcsou3g2UDcalWCMIW0FzEEj1Ar6ZlLN5wFDtZELo1K1hfBii4vvXwsT5avDl
         RHBJCjiW/zYzU8bBg7T26XZAeRELTgRpdeAcQx5JjRoZ77hBvO9pIcraEKhND2jebU//
         LG49FSkuWqm7fwF2QP7l1f5Uh8UNJ+h+gVw7eQmhnKKDYC7jTfW73aIIu5lNIIrsetR1
         5SzQ==
X-Gm-Message-State: AOJu0Yw9nNeqeihLyP4RDL542lok5nIToBv8SQcxXiZKJaTwnOExvrjE
	bxqOm1SDMPeC1Qn3zK63XFPNTQ==
X-Google-Smtp-Source: AGHT+IFFh3iNNCKrv7qa7ps1KepqR4A5yjCxBztpy/J6r0rr1ZsGCqYF7OpwdshOCE+3/c95sGEksA==
X-Received: by 2002:aa7:d947:0:b0:531:9c1:8271 with SMTP id l7-20020aa7d947000000b0053109c18271mr23383511eds.14.1697176514187;
        Thu, 12 Oct 2023 22:55:14 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.133])
        by smtp.gmail.com with ESMTPSA id f26-20020a50ee9a000000b0052e1783ab25sm11073824edr.70.2023.10.12.22.55.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 22:55:13 -0700 (PDT)
Message-ID: <acc14d48-7b9c-4d7e-a642-077c3841b937@tuxon.dev>
Date: Fri, 13 Oct 2023 08:55:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: renesas: rzg3s: Fix dtbs_check
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: magnus.damm@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
 <20231010132701.1658737-7-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVwO--GrdDP8pUHq-k5cVR31dGdvEM73z2E+NLEbD8GRw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVwO--GrdDP8pUHq-k5cVR31dGdvEM73z2E+NLEbD8GRw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

On 12.10.2023 17:49, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Oct 10, 2023 at 3:27 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Fix the following DTBS check warnings:
>>
>> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dt: /: memory@48000000: 'device-type' does not match any of the regexes: 'pinctrl-[0-9]+'
>>         from schema $id: http://devicetree.org/schemas/memory.yaml#
>> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: /: memory@48000000: 'device_type' is a required property
>>         from schema $id: http://devicetree.org/schemas/memory.yaml#
>> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: 'cache-level' is a required property
>>         from schema $id: http://devicetree.org/schemas/cache.yaml#
>> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: 'cache-level' is a required property
>>         from schema $id: http://devicetree.org/schemas/cache.yaml#
>> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: Unevaluated properties are not allowed ('cache-size', 'cache-unified' were unexpected)
>>         from schema $id: http://devicetree.org/schemas/cache.yaml#
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>>  arch/arm64/boot/dts/renesas/r9a08g045.dtsi       | 1 +
>>  arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 2 +-
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.7, split in two parts.

I see you already did the split and applied, thank you for that. I was in
between choosing to split it or to have it like a bulk patch.

Thank you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

