Return-Path: <devicetree+bounces-227488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7D6BE20CF
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:57:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 551EE352BA7
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6871B2FE580;
	Thu, 16 Oct 2025 07:57:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD66123AB95
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760601435; cv=none; b=d+P40aFNpPQ0UVQ0vVe6/NP2fWMt+yN3fnhnQL6s4ZirBxgn9vXh0djGSXPMqNsy3jPaNqwlKQ2c4f0GDaiwkqBnCdxsyfmOkGQoyfy9Blq5b15BHKkAI2ny4dE92y1yDQ+AIRd0Dw2cpTPG63cC2eZotrOZYMbP8QO4pf1CHPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760601435; c=relaxed/simple;
	bh=1eGQTAnWNGY3mGah0Neq02H/T5/f9gtIvSd+fn8FW2g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LyPUltNDe4E8OKe62Mnvs1qLKZ0E6dEznnbZ1QpuRByi1dH7tFb5KowWhlwvKIjyYmV5uU+wUkrWZ5BfP9YJb8dR5esCfQXryqGBLH6qehZ+Ipo6wi1PMbbbQAqDDwj7r+gMl3rs8r9ipY80wS2Fxmr0JwYKK5wHCl1vXPmpQAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-54aa30f4093so152067e0c.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760601432; x=1761206232;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kd9DhXGFTz7VluvF3CXaOYryMfT47ujx56ubcyYXsIw=;
        b=tcI+8ROoe9KRNxajpngUfnnrJs92wo4uWvtKTEmMG7ierf/UQUCJOhXqPLQ3He9SRN
         Yp1Lx1fj+48aJhXrIxauod+gJwzxQk1ErV6TZmsrCxifGhwAQvAiDfSJCtFi0aTG0NoS
         APcGwNK8I6ZphmwWT5/1iNmffyBRxCNicitON50VcacqyPcBu+igGDsMDHL+WrkaFv9O
         8VV/iFr+cEbxRCsMnD0yvkF1OEQWU2NjK8zwoLGES+cK8swNW6AFzYOVIaQqv/oDN8JS
         0cwJ889GIka/rPb3WkldUukyR3YRFSRe9Ak1MYBLQ2eKCACq0TCIj0DEkoBganCF2dOz
         iFmw==
X-Forwarded-Encrypted: i=1; AJvYcCWIczGBoQhWHqEo8ehIwpVkCdM5eQUIV5iOkPMeLp1ul8hdjHSftYnORX4pMGXpYmlmt3i+jvpr+3FZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyrWuTP4fFkjHI5miXrhXyFTkA33+n/u/cMZyCefpI0QG0WMEsQ
	LAeAsotFvJ8B96xUwS+JzcbR8SUEw+pUkv6obZ0y3ZkMlMWsw65tIucEsDFuwNqm
X-Gm-Gg: ASbGncsJctETknasio7+1afw8cTEr4Da7gliqq7Q2kPq2ULhROh4K9loccCkmg8bzEp
	Ts9IxG1guFOL4XQPDp2po9lAs60iq3YR1ooFTGbk7/0Wzw5FUzlADtOCyv1a1jCrAa/flq7XS4h
	yCQ2y7A+29s9n0F8+HyptRxgPbZbhz6CtZXI5yippxr6WLQeOMtRkuAHV5aV+CAcaWKBK6B702t
	t3m5DSbJjgdG8xeEpVOw/A9JvYFLKjb7fJRujF7I/FFDxPUjyKTz71hrvouLxXrGumqUx4T4xoK
	RwpuJORMvFmyCxtdU8LLyiATSUcFj9bRSvt+HcMBO/7je5OTGCjUUWNZTnb87/ftBcursrexzhW
	v9WTw3OcXNWHA/QQFPVYegFOHsom4EE9e9BoVy/Pq9m/3iSYaoRez22LEhJafQbugKv+peHjDMr
	HAFTrRRe9iKqYPgK+n6zmmwNDC5jIi5WdF2FgNc/jM4hkZ898/
X-Google-Smtp-Source: AGHT+IE6ce+giUlRNBFE8JLAU0zs8qCFbMhJmiBl0+1TPfMQfUa2ukmkfbcX40MxQWl8O37I8H8rkA==
X-Received: by 2002:a05:6122:d8c:b0:54a:dce2:2a9c with SMTP id 71dfb90a1353d-554b8c06364mr10855136e0c.14.1760601432186;
        Thu, 16 Oct 2025 00:57:12 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d80fdbd5sm5795701e0c.22.2025.10.16.00.57.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 00:57:11 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5a46c3b3a5bso155939137.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:57:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX+QFgjW8v53BR5zjXyrEqETD7OfVeJtBRDmYNezIolpESjdjyU80IN5W7zXeibeVtzMc9zc1wyRDwt@vger.kernel.org
X-Received: by 2002:a05:6102:512a:b0:519:534a:6c20 with SMTP id
 ada2fe7eead31-5d5e23afcd1mr10705349137.30.1760601430958; Thu, 16 Oct 2025
 00:57:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org>
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 09:56:59 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
X-Gm-Features: AS18NWDjBoTWi0arzS-uHQaIyzTZ8PYUb4ECqZaEUF0sSO-4JEe-m7M7qjhxsvY
Message-ID: <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Thu, 16 Oct 2025 at 01:20, Rob Herring (Arm) <robh@kernel.org> wrote:
> yamllint has gained a new check which checks for inconsistent quoting
> (mixed " and ' quotes within a file). Fix all the cases yamllint found
> so we can enable the check (once the check is in a release). Use
> whichever quoting is dominate in the file.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Thanks for your patch!

Since you are mentioning mixed quotes, is one or the other preferred?
Shouldn't we try to be consistent across all files?

> --- a/Documentation/devicetree/bindings/pinctrl/renesas,pfc.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/renesas,pfc.yaml
> @@ -129,7 +129,7 @@ additionalProperties:
>
>      - type: object
>        additionalProperties:
> -        $ref: "#/additionalProperties/anyOf/0"
> +        $ref: '#/additionalProperties/anyOf/0'
>
>  examples:
>    - |
> @@ -190,7 +190,7 @@ examples:
>
>              sdhi0_pins: sd0 {
>                      groups = "sdhi0_data4", "sdhi0_ctrl";
> -                    function = "sdhi0";
> +                    function = "sdhi0';

Huh?

>                      power-source = <3300>;
>              };
>      };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

