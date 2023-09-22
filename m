Return-Path: <devicetree+bounces-2502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F817AB071
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id BD47E1F22A21
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE2721F178;
	Fri, 22 Sep 2023 11:19:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD501EA8F
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:19:40 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 636F4CD8
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 04:19:38 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D90473F65A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695381576;
	bh=1mIxhTKnFz6jPIBGB85iZJtGzL+3q9xOGEF8ZcDvszY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=sncnI5hhujRbZJa87Wy2M5hnTaqSGgxdN2aMdCOX6Kxql0lojJxt/7OYHLDhITXoC
	 WwyPMTzQJZVdXHl+6ykml6ze/wZvhtddLvnDi5Bdi7Z9eCzPHv6fs8dEqj6f2GGojK
	 eJr1CUFD/hZ0U9YY5i/5N2tWnf7fScSO9R8N2q+e6uB7cQ8gHl8JHdPiNfkbu9Q+VV
	 Ypf9suBpN9R8+60qokxRygZpI7mi5nesCwKtAUHNkm8QfH247uUtGzsodY1NtBhm9K
	 GP3gVZS2fXv34eJDc32GrwH5COyoZVb8YMZPlDMdjV9vUqlLF0tJ8vfOGkYJVnEl8O
	 T68FqWXTUrpYQ==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-417fd6a8575so5008771cf.2
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 04:19:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695381575; x=1695986375;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1mIxhTKnFz6jPIBGB85iZJtGzL+3q9xOGEF8ZcDvszY=;
        b=D1LLZXBWrTPQbBJa73e4MnhhpeQTd6GrHQolLcPJ4KtkTom5ZC5hBXoNQbwPIpiazR
         +r8QMDa73ciXxXVGm/O7Kz0logzvArWhB22Pe0FgZhwVz3f2iJRvhwjwTys0p9zFddSH
         SW2ujDs7bN0tGeTGkn5yaymv8961TfUK9v1lNy6EDcwux1knj/loXDFloo4DLL13AV1+
         OplbnE+Z/E+lPaaiFBhdu2vDarZasmrmT8N9v+f+RSiFCRrIhrYi4ZYNZDAlb0LD7EHK
         FvmvhPQf4aM1iesjEq4QSSKTDg7CmWfPz/jVXm4/HNJOHIbHoOKV6Eo0z3EpSl+aY1x0
         YZ9A==
X-Gm-Message-State: AOJu0YxfPsdAmSp7JqE1XHtarpo+SiYz3rG+QImq1TunndNCC9raIspz
	SwWoLazjHDtjZmSLb4tEHwfIaPGaz7F0r3ays1V54AU8k5lUkO52QmpSX1n1GbcICyQCq9F6FHs
	B6i0SRxriKn9FxHQ5ZcvZdQAIP5Wz0q8yDg3cQoqcYbqsUZ4lC0kRlfk=
X-Received: by 2002:a05:622a:1183:b0:417:98a1:3403 with SMTP id m3-20020a05622a118300b0041798a13403mr8762357qtk.25.1695381575613;
        Fri, 22 Sep 2023 04:19:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF84PCUxr/KMVWHCHR/zUqvpLVX2Rs9nI1gNGBy7jDTcV2nsokG0Xv14fhICpXsCH39rVxLqJq5o09Iq1BDIHM=
X-Received: by 2002:a05:622a:1183:b0:417:98a1:3403 with SMTP id
 m3-20020a05622a118300b0041798a13403mr8762342qtk.25.1695381575315; Fri, 22 Sep
 2023 04:19:35 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Sep 2023 04:19:34 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <0bd1742c-fa39-4f63-a594-6d325dc6b062@codethink.co.uk>
References: <20230915072558.118325-1-wangchen20@iscas.ac.cn>
 <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org> <CAJM55Z-GMm5Hmk7-QWt8Prvp7qyFzOrQVjOjB7jfoX-oiT_C1A@mail.gmail.com>
 <862905cc-48c3-2dc9-6032-6ee189a629e6@linaro.org> <CAJM55Z8WDcjRER3ffnj+6V=QWEmudZyaO9z2iPUvreU1okq27A@mail.gmail.com>
 <0bd1742c-fa39-4f63-a594-6d325dc6b062@codethink.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 22 Sep 2023 04:19:34 -0700
Message-ID: <CAJM55Z_M47JA3U40whsRnW-nHN+yjyOo6eCUrGBK-=a1VvHuaQ@mail.gmail.com>
Subject: Re: [PATCH 10/12] serial: 8250_dw: Add Sophgo SG2042 support
To: Ben Dooks <ben.dooks@codethink.co.uk>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Wang Chen <unicornxw@gmail.com>, 
	linux-riscv@lists.infradead.org, conor@kernel.org, aou@eecs.berkeley.edu, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com, 
	xiaoguang.xing@sophgo.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Ben Dooks wrote:
> On 15/09/2023 11:23, Emil Renner Berthing wrote:
> > Krzysztof Kozlowski wrote:
> >> On 15/09/2023 12:02, Emil Renner Berthing wrote:
> >>> Krzysztof Kozlowski wrote:
> >>>> On 15/09/2023 09:25, Wang Chen wrote:
> >>>>> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >>>>>
> >>>>> Add quirk to skip setting the input clock rate for the uarts on the
> >>>>> Sophgo SG2042 SoC similar to the StarFive JH7100.
> >>>>>
> >>>>> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >>>>
> >>>> Missing SoB.
> >>>>
> >>>>> ---
> >>>>>   drivers/tty/serial/8250/8250_dw.c | 5 +++--
> >>>>>   1 file changed, 3 insertions(+), 2 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
> >>>>> index f4cafca1a7da..6c344877a07f 100644
> >>>>> --- a/drivers/tty/serial/8250/8250_dw.c
> >>>>> +++ b/drivers/tty/serial/8250/8250_dw.c
> >>>>> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
> >>>>>   	.quirks = DW_UART_QUIRK_IS_DMA_FC,
> >>>>>   };
> >>>>>
> >>>>> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
> >>>>> +static const struct dw8250_platform_data dw8250_skip_set_rate_data = {
> >>>>
> >>>> Why? What is wrong with old name?
> >>>>
> >>>>>   	.usr_reg = DW_UART_USR,
> >>>>>   	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
> >>>>>   };
> >>>>> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
> >>>>>   	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
> >>>>>   	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
> >>>>>   	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
> >>>>> -	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
> >>>>> +	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
> >>>>> +	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
> >>>>
> >>>> So devices are fully compatible? Then use compatibility and drop this
> >>>> patch entirely.
> >>>
> >>> I'm fine with this, but these are two different companies and SoCs that just
> >>> happens to have both implemented the Designware UART with an inflexible input
> >>> clock. So if fx. a real quirk is found on the JH7110 then we'd need to either
> >>> change the compatible on an unrelated SoC or change compatible on the JH7110 to
> >>
> >> Wait, why? The compatible is still there, so you just add here proper
> >> entry, if ever needed.
> >
> > Sorry, I messed up my example by writing JH7110 where I meant JH7100
> >
> >>> something like "starfive,jh7100-uart-with-quirk" and "starfive,jh7100-uart" will
> >>> forever be a quirky way to spell "dw8250 with inflexible input clock".
> >>> Is that how device trees are supposed to work?
> >>
> >> I don't get this part. But anyway if the blocks are really designed or
> >> done independently and there is no shared part, except the DWC block,
> >> then indeed the compatibility might be just a coincidence...
> >>
> >
> > It is. Sophgo and StarFive are not the same company. Sophgo are using RISC-V
> > cores from T-Head and StarFive are using cores from SiFive. They just happen to
> > both use the Designware UART in the same way.
>
> Out of interest, what's the issue with just providing an fixed clock in
> the device tree for these machines?

You mean adding a "fake" fixed clock to the device tree and specify that in the
uart nodes? That would break the clock dependency, so then you'd need to add
some other way to tell the clock framework not to shut down the real clock.

/Emil

