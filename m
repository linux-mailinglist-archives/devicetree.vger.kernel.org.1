Return-Path: <devicetree+bounces-14618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B317E5B83
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE240B20CFD
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 16:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F75DF4B;
	Wed,  8 Nov 2023 16:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB66650
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 16:40:15 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 698891BFA;
	Wed,  8 Nov 2023 08:40:15 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3b5aee410f2so1605585b6e.1;
        Wed, 08 Nov 2023 08:40:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699461614; x=1700066414;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ssuYxHfN9GAnFK7fIA31znw/q0iB6aLpzguCXmB/ycM=;
        b=UO742Jwt9di7z6jW99hOFKYH7KvCdVo/Js6ecvILRRY8gBTI+FYorMeu37YXZKRqmT
         IPt+4EDOSly1H1yWz1Rvm0W6T8aMtU/qb0c9mpXsQy85d6fp/rRZXReHYCk2celRqLHN
         nZlvhqGcS6S6/TYR1R7mhIkJMs9mMQVnAUSN0yFQuevNZirVTLfg648JKcqbSWMeP4am
         9LAQl+2D7hVbKEGzzmYd9BsKCLtPKBiZ9ejimivFuvgMtoZEHeLFHczwJqsIbn1RoozD
         qV78cJrywDIuDxa35D7x6F4L8zLe9vRzTrzMTGwMRaM4OimAKXVs6qFCi+/Vr4Dbov5E
         j1hQ==
X-Gm-Message-State: AOJu0YwbGC40gP4Rb2ZyqMpzYuvTnvHBnmrILY284PPaUWp/W6AWoAa/
	wSD11hoDrmeZjo8HNdhwpg==
X-Google-Smtp-Source: AGHT+IGXYQ4NWuhknPwkgNGSEQUWD6c5qRqqAmhMQTB6tTEvVpofwZw28IPC+YMCrYLivbXk6k+J5g==
X-Received: by 2002:aca:905:0:b0:3af:26e3:92e with SMTP id 5-20020aca0905000000b003af26e3092emr2345076oij.28.1699461614688;
        Wed, 08 Nov 2023 08:40:14 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bk31-20020a0568081a1f00b003a7a34a4ed8sm1940758oib.33.2023.11.08.08.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 08:40:14 -0800 (PST)
Received: (nullmailer pid 2362820 invoked by uid 1000);
	Wed, 08 Nov 2023 16:40:12 -0000
Date: Wed, 8 Nov 2023 10:40:12 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Julius Werner <jwerner@chromium.org>, 
	Evan Benn <evanbenn@chromium.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Maxime Ripard <mripard@kernel.org>, 
	Oleksij Rempel <linux@rempel-privat.de>, Justin Chen <justinpopo6@gmail.com>, 
	Baruch Siach <baruch@tkos.co.il>, Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>, 
	Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Jamie Iles <jamie@jamieiles.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: re-order entries to match
 coding convention
Message-ID: <20231108164012.GA2336524-robh@kernel.org>
References: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
 <300293570c0d29d5d4a39762121b5bef@milecki.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <300293570c0d29d5d4a39762121b5bef@milecki.pl>

On Mon, Nov 06, 2023 at 09:10:44AM +0100, Rafał Miłecki wrote:
> On 2023-11-05 19:41, Krzysztof Kozlowski wrote:
> > The Devicetree bindings coding convention, as used in most of the files
> > and expressed in Documentation/devicetree/bindings/example-schema.yaml,
> > expects:
> > 1. "allOf:" block just before "properties:" (or after "required:" for
> >    more complex cases),
> > 2. additionalProperties/unevaluatedProperties at the end of the file,
> >    just before the examples section.
> > 
> > Re-order few schemas to match the convention to avoid repeating review
> > comments for new patches using existing code as template.  No functional
> > changes.
> 
> It's surely going to help a bit but for a long time solution maybe you
> could consider adding proper check to Rob's bot and/or checkpatch.pl.

I have such a check I wrote long ago. tools/yaml-format in dtschema. It 
just does a ruamel read and write back out so you get exactly how ruamel 
is configured or defaults to for things not configurable. Primarily, the 
non-configurable part is multi-line text without a '|'. So lots of 
'description' paragraphs are reformatted. It ends up being too strict 
IMO.

The key order is checked, but not fixed. Probably could add reordering.

Adding this by default (and to the bot) means fixing *every* file in 
tree first. That's not something I care to do and enforce.

Rob

