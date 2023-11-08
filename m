Return-Path: <devicetree+bounces-14672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB37E6018
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 22:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BB0C1F21386
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 21:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5A51A594;
	Wed,  8 Nov 2023 21:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GdXWk7r/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F1510A06
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 21:45:25 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CCEF2594
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 13:45:25 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5afbdbf3a19so2237157b3.2
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 13:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699479924; x=1700084724; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uNZCsb+J0tCXIr/CtNET2AcsXu2SaYf1CY84TShlm6Q=;
        b=GdXWk7r/Ww0irC7aIsHcw7wDikNbFo3tRY3z+MPolck9u3bmv9yN23/z52w3m3460W
         RGIKDGXc6mHT+IlxrCECRrX729Zoxl0AOKSZ/qdy/dKS/QyiPw8If7/gOXI/N9CTJ6hd
         o1wgAF+pHv8PA3b9FHohHi5b/mRMt3lCOOwPQNjPQaXf9sH9EKz2xlAQI55UGYRrb0Xg
         PAJfT4PXMmh37cXNfYIA3v2Xq7RzphXqFnprFrnz8ZNCI51SBt27fMPB0aXwjWE15qYR
         rrJGGjPYJDfQPbxHRAIoAzQ2Q7mZM+RHaETChVl2CmOmh5GWqqpoOKxwdq5OJGWjjude
         RTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699479924; x=1700084724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uNZCsb+J0tCXIr/CtNET2AcsXu2SaYf1CY84TShlm6Q=;
        b=NRn7hUeOGxEMDjvzcUVgo4DNQE/TmXafgj8JV7hpAQsMMYcjuCikfMK2x29aZEBn+l
         vpaFTqrabzpdD92pt/4kXYLyL279f8X55WVu41tP9XFjXHfj+/2fbM0FHg82O8kSBxkp
         Tpwqd6K6QxyKqko3fMQiBdyGnRl77YQWTFz/k2Ud2xrrz+HEt5Wkso98zuYivU5eMPxt
         SvK8OWNRMmUQ+eu4zJ224zKhX4AVT0K5AcbCEr3S1Tb1BYPgBGIy1w7VC+INcaivXUlJ
         k+mAR1XPX5NiUIpw325Zwnt05ViKsG+ZVpSBUP8ZiwRsi2MQ+pkp6SUlwY08rgH1L5n2
         F08w==
X-Gm-Message-State: AOJu0Yxk6ahxb7ZXpZS96OZEpGsQWOPgj+BlnwB/3wDwMlzCQIhpFU9d
	8mhSgLyp3bXrb+trX7wMQHkyqMSBCWQhyMWq4tzdlw==
X-Google-Smtp-Source: AGHT+IFY9jFZdG7cvJAasqldeYVJV1lp20ykF6CM/T97HTYZUi8l1zfwxOIgQ7l5PF/miWNeoGVOLOXt0F0G6C0TYx8=
X-Received: by 2002:a81:6cd6:0:b0:5a7:f002:4fe4 with SMTP id
 h205-20020a816cd6000000b005a7f0024fe4mr3127115ywc.23.1699479924475; Wed, 08
 Nov 2023 13:45:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
 <20231108-fix-mips-nand-v1-2-5fc5586d04de@linaro.org> <20231108191125.GA2754195-robh@kernel.org>
In-Reply-To: <20231108191125.GA2754195-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 8 Nov 2023 22:45:11 +0100
Message-ID: <CACRpkdZx9icF7s5HoS2r40Wuj4sPbEZPiaPsD9GZ94J4LKY5+g@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: mtd: Rewrite gpio-control-nand in schema
To: Rob Herring <robh@kernel.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Ben Dooks <ben.dooks@codethink.co.uk>, 
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-mips@vger.kernel.org, 
	Howard Harte <hharte@magicandroidapps.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 8, 2023 at 8:11=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
> On Wed, Nov 08, 2023 at 03:33:50PM +0100, Linus Walleij wrote:

> > This creates a schema for GPIO controlled NAND. The txt
> > schema was old and wrong.
> >
> > Mark the old way of passing GPIOs in a long array as
> > deprecated and encourage per-pin GPIO assignments with
> > the named nnn-gpios phandles.
>
> We have 1 user upstream with only a single commit adding it in 2017.
> This doesn't seem like something that's going to gain new users either.
> Is it really worth modernizing this binding?

The whole ordeal was actually prompted by the emergence of a
new user who wants to add a device tree for a new device.
So I don't want to add new users for the old bindings.

Yours,
Linus Walleij

