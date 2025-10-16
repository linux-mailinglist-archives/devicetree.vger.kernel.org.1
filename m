Return-Path: <devicetree+bounces-227754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 321E1BE4495
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:39:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D22F23B1155
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85831212542;
	Thu, 16 Oct 2025 15:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SF8fNbUN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C685A2FD7DD
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760628999; cv=none; b=SnHxYPUmU9LKbUAZXQOVkBfy7SyHjyhl+aGzMD1FYShZsVtmW/vIxOseLoc/QZDzyRwXJZjHs1RLNX9KIh6l0Uj7gdy73GhZB371Xl7+FEGrI1UtAwwH6DGE/9sVGGdY5dcpXLnk6Eo6es0RHjGvHF3dHlXaZ/QcBzZnMxLHEKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760628999; c=relaxed/simple;
	bh=FFZcu4RD3Dv+ioWbkpd/pDCll5NoC3OZzg9NNSDgjKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z46vdX8M/1EmMxz/B/ZOllYDjeOjSlK6YnDdxPGlEmQG8Wl3PTIW3JSuN09tVglKhggl48nvM1Z96tTvtdhgr6bpXX0j6qG5N7PYvqk8ELjip3RqPRQ4hHZcP53gMnmNdkf6451NjJeSRIaxePC/9MCF1Hej0KsgcDDtgLt78i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SF8fNbUN; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b4c89df6145so153528666b.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760628996; x=1761233796; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7f+hKMg8WmS3JDWErhSA/MQ3nGPG3bGYLMR7Bu6zms0=;
        b=SF8fNbUNf1imanL2pIuSQp22fqV4dyIEsvmVjtVLgg9LkfS20dnTRcoWXv3TqyxrHS
         OLe6P5jvaP/xvcDmsRnTTCSenpEpZ8h7KjL6srX2FCFaKMxE0iS0uLKg7KLdSuxLrgzr
         D5l+jc+LztVNBcTTxhMtWtuGqWvL8KbUr+uPr3Cmc5HKTi/UYJViI/dAbrbRX46n4cE0
         apFajPPbcZoeSSMttCGrSQ1cZ7h3nXjlS4i6VkaPZXBcQLZNOimyP2vYz37WRaB2xhgy
         chk1ytn8JwEVp30NRzftAxZfgt/JilyKfCwN879yb9ORzeUhDXKartIDhukxmBGWyjeE
         bcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760628996; x=1761233796;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7f+hKMg8WmS3JDWErhSA/MQ3nGPG3bGYLMR7Bu6zms0=;
        b=CINQU4BTLz54Qc87eRXiG8BGofx7Rbe3dYPX7rSxm5VKmQXEae2e+U+Gj2VN682OeH
         8Klbcvcs/kXPgdRe+/EJR5CWNE7FdXMC4a2rzEK7SXBuG+G6w/wOgpljGvx8GyblaTST
         fE3pZNB4Yrd2kSpd/AOUhOFIlxp4TLk1uKDZ0qpxoVjR02q75iXQUnBZS7QKkmkxbyeN
         shHDEprlrI0tLFkFn1a+Degt/ffAcOHYzqAXlN50jM38xz7tUumaoALgLwNvFw/X2Xmj
         6Knt0FbIQhjd8CIEKWn/MUvNMA6oDvojTohxk/Pqo56VZ8jcJpdQqnBMCQpgkYKaFYoJ
         VHlw==
X-Forwarded-Encrypted: i=1; AJvYcCWHbFrqpBkOibNME64j97XCMi8gwuN0QHywlitIqYYEk3aOlofGMuSumgOnPUU8L9yidMlr1CARC5xF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6zl6+5o7GZg+AFi7i9aC/n6/bwFCsAhP/SIXoKxpdAfeOTBes
	4P+cAsidWPH9G+Y/cekHhtGrKbgMztbmHILfGlH3XUa1SpEH4k0RcVDI
X-Gm-Gg: ASbGncuMY43eFUVccWBqkqnDEBy6h3+rXOYigChgYV3LIxqCBjR6sOmPbdGWpgMRaz1
	Ui4y8ncgkXV1Qj4p8JFW5gvCcXQkGLmhmY2KVENThRWy0Fq1x+PJhGtH4+U1Th7wTcBXSNTZp68
	j5g+NhMnl97S/UoivLFWz5rJ7+HM/dDdeSPJlDk0GRyCCKmBlYCZYelXtqZIw59tT251b8F1aaJ
	x1pDBzHJxo9Bqyi5TI5u+9m/RcbxzaIY5MjAyS8HebX03/N+ujSVPmYQLwulSXMjE7113cnVDQN
	ySZsUUPwrr4tTe0NP7A0gVmXLVwZz0BiLvCSHfAvksDvC8H/y9D5A4NSKGN4n9ESLRiKCDiAI6F
	kLowa3bNp9QkcFwrOeeaMLqrvNon+E3QvzOwxumufoWr+q1mulvWh93+Ku56FGR5/L7sAk/ieVN
	/nWLYsjGYW+AHORvZA1O5NUiCvvaxA3nXmDDaZt6No7gXI0kZ/daJKmsRfyUrlsZp5FdL0ds1Pq
	hGTgETRpNo=
X-Google-Smtp-Source: AGHT+IFim1RAGqPs9Zun8NZFi1n35CbocJN1zzyQWzy1cPQfa3BPST1oAIlzlfpieEeJDdgZ3Ac5JQ==
X-Received: by 2002:a17:907:961b:b0:b4f:ffbf:9aeb with SMTP id a640c23a62f3a-b647512360cmr40230866b.46.1760628995927;
        Thu, 16 Oct 2025 08:36:35 -0700 (PDT)
Received: from ?IPV6:2001:9e8:f10a:ad01:ad7e:4d4c:7985:153? ([2001:9e8:f10a:ad01:ad7e:4d4c:7985:153])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cccdaa2c8sm546548766b.46.2025.10.16.08.36.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 08:36:35 -0700 (PDT)
Message-ID: <0c070b3b-45c7-4295-a3f4-429d8504d9f2@gmail.com>
Date: Thu, 16 Oct 2025 17:36:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: gpio: add gpio-split controller
Content-Language: en-US
To: Linus Walleij <linus.walleij@linaro.org>, Peter Rosin <peda@axentia.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251009223501.570949-1-jelonek.jonas@gmail.com>
 <20251009223501.570949-2-jelonek.jonas@gmail.com>
 <CACRpkdb6bTFbTtNsO59GXFa9eMK9x=+BGK5Vx4bKv62wxiSpiw@mail.gmail.com>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <CACRpkdb6bTFbTtNsO59GXFa9eMK9x=+BGK5Vx4bKv62wxiSpiw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Linus,

On 14.10.25 10:23, Linus Walleij wrote:
> Hi Jonas,
>
> thanks for your patch!
>
> Including Peter Rosin (the gpio-mux author) and Geert Uytterhoeven
> on this review, as they have worked with similar stuff. Please include
> them on future postings. The result definitely need Peters ack before
> we can merge it.

Thanks, will do.

> So if I understand it correctly this models a 1-to-many input-only
> GPIO multiplexer, we need an illustration such as
>
>         +----- A
> IN     /
> <-----o------- B
>     / |\
>     | | +----- C
>     | |  \
>     | |   +--- D
>     | |
>    M1 M0
>
> MUX CONTROL
>
>  M1 M0   INPUT
>   0  0   A
>   0  1   B
>   1  0   C
>   1  1   D
>
> Is this correct? In that case include something like this
> verbatim in the bindings (feel free to copy/modify this)
> as it makes it much easier to understand what is going on.

You nailed it. I'll include your drawing in the bindings then in the next
revision. Only thing is that I just didn't limit it to being 'input-only'.
I have no real usecase for this but to me there was no really obvious issue
needing this to be input-only.

> That's a very minimal example of a way to turn 3 GPIO
> lines into 4 GPIO lines, which is a bit crazy but I'm not
> the one to tell vendors what to do :D

On my device it's actually that the single GPIO mux controls the signals for
both SFP cages, meaning it makes more sense in the big picture though a GPIO
expander as all other vendors do would've been better IMO ^^.

>> +  mux-controls:
>> +    maxItems: 1
> So this needs a description, it is a phandle to the
> gpio multiplexer (reference /schemas/mux/gpio-mux.yaml
> explicitly!) used by the splitter.
>
> You should also in the same patch add an example to
> /schemas/mux/gpio-mux.yaml showing how this is used
> to muliplex GPIOs so people find this new usecase easily.

Sure, will add it.

>> +  shared-gpio:
>> +    description:
>> +      GPIO that is shared by the virtual GPIOs and controlled via the mux.
> So this one is shared one-to-many, and I think the bindings
> overall makes sense.

I'll also add this hint to the description to make it clearer.

> Maybe "gpio-split" is a bit ambiguous?
> We have io-channel-mux, so what about "gpio-line-mux"
> simply?
>
> The fact that GPIO lines are used to do the muxing is just
> a detail since a mux is an abstract concept, it could have
> just as well been muxed with some I2C device for example.

Sure, this was just my initial idea but I'm not fixed to it. I can adjust
that in the next iteration.

> Yours,
> Linus Walleij

Best,
Jonas

