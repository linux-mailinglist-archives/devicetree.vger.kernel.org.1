Return-Path: <devicetree+bounces-216094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1F7B53A64
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 19:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A5BB7AB335
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1662835CEAD;
	Thu, 11 Sep 2025 17:28:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB9173
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 17:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757611735; cv=none; b=NQxkkAOXDsuBfmzMSEJ8jqMmuLWdsJuafjY3+WMGv11btG/OgInorJ+KFnF3XQT28yFy6EJCP3uP0bmnh787izyQt1x5ln6mAmXWMqKIvqpNay71TLpgeaktvsinB9J/MzsluPl2NQDFMTXE6af8oCJe6Y3LID9hOVp1fkfOkEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757611735; c=relaxed/simple;
	bh=BdWBmM3pGAEjuR8ywljtmJOivr5eFXGIIviSTZvwLdY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SAuGaepvudTTzPYxYnqmqv4W/gIr0Xt3PbtZ2m/MRh6ErBZlOLrNVo650jVH9jAZU1FJpE44rnMxHfEWDXp44SGxxBGhnJ6wW/CKaAqoQevowTl2iT3E9p74virvdN6mry+iHcF/PI8b7vdrcRav40THHiaKVrV2NdxPDs/dCTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-89018ec3597so572977241.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:28:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757611731; x=1758216531;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nNwKnllKcgNmSxozD/+n9dLn0I91saVxOj9Y59G/HOU=;
        b=LHiB46D5t4yfhWQUV7Ra2+ONW5srP3IEEipoxv0+5llUm89WmuZGkL5MRMZJO/m5pf
         4OXV5sdQ/Wf51QbJj41kD3idvR0IPsfabAEJ1wxJBTUFSGZHrRg5wj9uSTlDAU82sNs+
         8vb9rwppTwVywUrRmp+MMcholAftDbsrRv9syS7GWGGdl6N8mDTfvmaDtl6X9lssNLyS
         9k3cty39WJI++bdjVY14C1NQV0DWVfBc/0r5NuUzt0bWLGvAsLjoOum19v2WChb2Qf56
         RXe0LXIiJDgeaUlAilKLglocOZnUv0O+ZDVPCdWjq3bKl5e7yCtg96Fc+1kztEeWjhug
         WOFA==
X-Forwarded-Encrypted: i=1; AJvYcCWdZxLdmjo0wWvYKcwuPgBOI2YnHLvujDFqfsG3Sg/H4ZVHSPVSTwgey56slUXZObw2ZWPFEQsX+grL@vger.kernel.org
X-Gm-Message-State: AOJu0YwpY4VYkfBb2r36A4W6kZXwKLUlvv+6DGCKR4+UyKEtW2HCzSRM
	+5FAv/w2fzTnPTcDjpNRogt332jEJWIxHYrlu6IUsdBZjIJ6EaH4i3rL28R+6LES
X-Gm-Gg: ASbGncvZjJVwHb5LU+ijiZGWZIi9PQScuRKAm3ZgiASZWgw8GsXPfOYrX++CcW6wFJc
	YYb1ch8um7J5kjXLKYMeME7CClvUWhZ+EjqGMNa+HjNlzUZERkHOOmwot1xqgBGTy9KXSokRReh
	PbtGl1x0Ew4YdtZx6E4LmFV4epqO1RFoklmrpe/1EmertljHp25MkI6w/lC2rXGntNQ++jxiAiQ
	0Js+3gdCGnDRok3WqEdQiZp2Ce1Z1aofs0zVsVviyGL5z3t8qdjuV79wGZ3F8TA3IZrq/6bhNdR
	UFvURmGI+uU6/dZoEol0wyhqq5PdMne4tAFBjWI8/5WtLvGMKVPlPrIUrnjBJ30vLXKCyIwSiTt
	q0Cw9hi7BIpF6H38Yr2xmhHKKk5Zp8mcyV+3k/3xW8Dt59SJBqtwHXYLw/jEr
X-Google-Smtp-Source: AGHT+IGMwlOmWc8kdfgRebNhg5MVrrjlBaqaPAeoW8UNQwQKNmUe48cImCZa9GO54F2YJTs26JW9hA==
X-Received: by 2002:a05:6102:2588:20b0:51e:8a52:2dce with SMTP id ada2fe7eead31-5560c6e630dmr195322137.21.1757611730840;
        Thu, 11 Sep 2025 10:28:50 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8ccd38f8c8asm348829241.12.2025.09.11.10.28.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 10:28:50 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-529f4770585so660193137.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:28:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUpePte64pTTJNWdY2r4UIsD09Ay0xlsTyXKg07WVJ8/Hl/221vk9lU4/iR022kCQ6vFsxliybYMshf@vger.kernel.org
X-Received: by 2002:a05:6102:41a2:b0:4fb:fc47:e8c2 with SMTP id
 ada2fe7eead31-55607e2ba72mr193657137.9.1757611729558; Thu, 11 Sep 2025
 10:28:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250907225338.426253-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20250907225338.426253-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 19:28:38 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUHwp7EiVw97CFZG0zmcK3opAgO-YGcdSGRaF3tGwgLcw@mail.gmail.com>
X-Gm-Features: AS18NWCqPuEA5ue65D37BzPjM6jGqyVU7S3WL9hosSlR-Z0YeWoG17bjv1N9sFE
Message-ID: <CAMuHMdUHwp7EiVw97CFZG0zmcK3opAgO-YGcdSGRaF3tGwgLcw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a779g3: Rework fan hwmon comment
 on Retronix R-Car V4H Sparrow Hawk fan DTO
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sept 2025 at 00:53, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Reword fan DT overlay hwmon comment to accurately locate the
> fan control sysfs hwmon node on Retronix R-Car V4H Sparrow Hawk.
> No functional change.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

