Return-Path: <devicetree+bounces-22108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8628067B6
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 07:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78D651F2139E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 06:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 235B3111B7;
	Wed,  6 Dec 2023 06:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=jms.id.au header.i=@jms.id.au header.b="ZbKzSgV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB401B6;
	Tue,  5 Dec 2023 22:46:29 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a18b0f69b33so88742466b.0;
        Tue, 05 Dec 2023 22:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google; t=1701845188; x=1702449988; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7HVLCsTwM0AJQ7P3LEZ/Kcz/0E6qcEp8zHBIIWNc8vA=;
        b=ZbKzSgV8f192+itH71EniBFxt5g2qsrW1o8EeSHptbqSM/JR/f5SMxHefUjJvBi/u4
         OZIUsnv6EwbP/0ZDIwAlurVJi6CpFWs/V50z33bsi+vNVqJRpPxgpfivhklFYCLDNDql
         Aiw0WFb85IKcoEygcPv4BY5d2A/OyqYKka9cA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701845188; x=1702449988;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7HVLCsTwM0AJQ7P3LEZ/Kcz/0E6qcEp8zHBIIWNc8vA=;
        b=eiCwTNcviModvui2KJfIQ3/adgKKhxwD14abfDjP44ERWj9lPN1btqqRCxjra9qPfY
         RCgodRYpNLtaOjxNGIPOuE0WXfb3jcFYtzT0DZLCIYoXn74AxMnWoarN5CNxmG4JH5L+
         JNjcoWAvcndqXY+pYLH0TdhTTW5RukH+eC02uehgOdI0OYY/8n2sAEMk42y8fRAs3ldZ
         EFO4Cs5xr74kKyI1ko2gucKFPG76v2GHKNU8GFXO5mTW2UBU0NO9K4GVgjX2YkICMl37
         GH8z9NNcvyMEZuI7qMOYXrME0lCVQp9Inhf5qHgTfnF7cG6O0y1NY7BWRJ/DEWVGSKFo
         guqA==
X-Gm-Message-State: AOJu0YwHNqxedtw85yWhPJMq27nw1SWs3IU/2BAQYnsGaJXKc74AKCLb
	jUJ5lv4IjZGf/OdeXFnfiov4K/pYzTK1jYVVmsw=
X-Google-Smtp-Source: AGHT+IHk5A7B0U4wO24pz2HCwBWIvrSswHBxiBDm7juowHDhQdsr4u3Yd57RZEy+FbH8wjd9qhmCMTkRudGz8aw8gBA=
X-Received: by 2002:a17:906:c292:b0:a1b:75f6:165c with SMTP id
 r18-20020a170906c29200b00a1b75f6165cmr2521102ejz.52.1701845187768; Tue, 05
 Dec 2023 22:46:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202003908.3635695-1-renze@rnplus.nl>
In-Reply-To: <20231202003908.3635695-1-renze@rnplus.nl>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 6 Dec 2023 17:16:15 +1030
Message-ID: <CACPK8XfhK8eSjYvEd=7WshOh+Sj6vrERxwgAYGitVALw0pUf8w@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
To: Renze Nicolai <renze@rnplus.nl>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org, arnd@arndb.de, 
	olof@lixom.net, soc@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, andrew@aj.id.au
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Dec 2023 at 11:09, Renze Nicolai <renze@rnplus.nl> wrote:
>
> Hello,
>
> These patches add a device-tree (and a bindings update) for the
> Aspeed BMC on the ASRock X570D4U, so that it can be added as a
> supported OpenBMC platform.

Looks great!

Reviewed-by: Joel Stanley <joel@jms.id.au>

I've also added this to the openbmc tree, so no need to send the patches there..

>
> Changes since v2:
>   - Renamed leds to led-0 and led-1 to match Documentation/devicetree/bindings/leds/leds-gpio.yaml
>   - Added aliasses and labels for the i2c-mux on i2c bus 4
>   - Added the missing blank line between the ehci1 and uhci nodes
>
> Greetings,
> Renze Nicolai
>
> Renze Nicolai (2):
>   dt-bindings: arm: aspeed: add Asrock X570D4U board
>   ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
>
>  .../bindings/arm/aspeed/aspeed.yaml           |   1 +
>  arch/arm/boot/dts/aspeed/Makefile             |   1 +
>  .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 377 ++++++++++++++++++
>  3 files changed, 379 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
>
> --
> 2.43.0
>

