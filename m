Return-Path: <devicetree+bounces-49175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2FB8751D0
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B45A5B28C6B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B4312EBD8;
	Thu,  7 Mar 2024 14:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="mUz6ukVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB312EBC8
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709821586; cv=none; b=QE76sogh6a8KRmnAvRGNfDXl4PLhjPj2U6QpwtlgvWZgx5VAtZxioILwPh/f73LNG8t37iHp+uzykIwmPBNt/jtJ6CcH4wOdVp88kCG1/ak8YbtHhOH8iEgv9D5G83rLbd077bC7g8Nf2PIXTeNq4iN78j05AThwsARpvkQI9rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709821586; c=relaxed/simple;
	bh=RVEZ+dft9R/KhC9oPPIZ2jMLs62xUpkamwQZ5BNpAPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DSfjlzYiE70QEpjGqvaTzNlo3a5p8yHBKRaet5tBURuSJ5fsY83LUKew9LFPD4tRU+u9QsvsSojD0GxWjuaC9VQY2Cu8Fo/bOYocRu/ojA1xmHPSqnm8pj/9yxRGhJY7ff+9eDtdqfKZspZjEWotatpc6BX5XgI60avP/mLhgTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=mUz6ukVh; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dd02fb9a31cso900025276.3
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1709821584; x=1710426384; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RVEZ+dft9R/KhC9oPPIZ2jMLs62xUpkamwQZ5BNpAPE=;
        b=mUz6ukVhcxePJds8RHQjtGXUbnLE2wHk+yeM3ONqQfUR7ZooBksU1RBlaCDgWXFNlZ
         UMIf7hjZfV7ePhZgUxpUD5iT2ILPur9FpYCo1JBEaWa4V38M3bSOFumECZPbkJ30Ktf6
         PyP+Gs5JWC7DFyyBAmuU2ohkQhpJ08uAeILYvgt2omBFxxb60eePDcZ09/JAdKzHPeHx
         UeCwzF1kJ56jnFBFDGVEQoCPHj/p/nUCY0mhIoZRSA0N/cOHlmim8GYJrPhK49WFbURi
         DVRb6/F9mPG9pGK6GZUYuq4e294FLCfTrvhlx9UXMva6mfyZwXrsJvaUSbzW243GJ+gy
         Fx+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709821584; x=1710426384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RVEZ+dft9R/KhC9oPPIZ2jMLs62xUpkamwQZ5BNpAPE=;
        b=JOMrQdgQL79w2DtRy3JqNa6d4fhIpeg9+z8AFyYsSYKwOlEQF1l2tBNy/aIwleBq21
         Ldv8ls+zjt79Brv9BFoOx2mRM/TRvZAaYIhMD5KfDGWSluqVgbo0Ww4rVO5xPC3d1t3I
         WH+C7OSl4Veh+4wIcGkDaxXSu41QDkY4j7UGmrYNbfZ7cyl9rVFUKjRaXT8W70TQetwY
         OqXM1LqOLoCRbC4iGWh0Qred1nSQMAamtIYTLdhkn4x3i+It7ExhS7hwraJq38/hRYVh
         sLUSkzjDJjp0+3PRTjo+Ik6n8ld9d/RCE2nEYnr8/ueIvNLr1II4BkhrRr49h7T2P7wk
         fQOg==
X-Forwarded-Encrypted: i=1; AJvYcCUCri88mmCXsqtDfIV38RJfRb17P5lVlqhLM/5OX1kq5itNEz31i0x4OVVKIDJ4Wzi0TpJEwXk+4nImFeugfsERxjHdfXGnuJDOUg==
X-Gm-Message-State: AOJu0YxXoKrhnEgdYCHYNZHisQpavjbcyHrp5+kWu+e9r3AC8FP76/1s
	c+eF84R8O7IzcEqU4r6J0ZAQ+O3QMnzTEZKYsdpmzzJv2LfIWKnR4gnmfxAoLsUi9t9bgng1ICi
	k/cPP9BpqQk0EOvrIPo3ZRdCEOvjE3GnrDt8EqA==
X-Google-Smtp-Source: AGHT+IH0e9LkMZRXB2SLv04xBgdnZvl1YCWhnRIb68p7wQZqfpVtJ9gNB06O9hNwjEIYIDsZ7xYBpYsf8k1DcJv3kqk=
X-Received: by 2002:a5b:146:0:b0:dcb:cdce:3902 with SMTP id
 c6-20020a5b0146000000b00dcbcdce3902mr15663626ybp.55.1709821584085; Thu, 07
 Mar 2024 06:26:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240303104853.31511-1-brgl@bgdev.pl> <CAMuHMdXWdKZjjZc39iXfa6Nohtn+Xm9YvcF+YoRpNzCgeWD8tA@mail.gmail.com>
 <CAL_JsqJjo1SBcf=ZLi=iunaHiX6Mt5H6wkoPcecnZmiAcAyihw@mail.gmail.com>
 <CAMRc=McBf8Fbacnxozr+=-7AFQ0EOXbaG+zUhkNEb9g1mihmMw@mail.gmail.com> <CAL_JsqJaJciL5UT5f9y_omVj6OHCSoM6rHhVTVGfVTPtcqed4Q@mail.gmail.com>
In-Reply-To: <CAL_JsqJaJciL5UT5f9y_omVj6OHCSoM6rHhVTVGfVTPtcqed4Q@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 7 Mar 2024 15:26:12 +0100
Message-ID: <CAMRc=Mcsh0yVzgCgKX=DKWBepogfkpUNVguvE0P6ojgf9QrxQw@mail.gmail.com>
Subject: Re: [PATCH] of: make for_each_property_of_node() available to to !OF
To: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 6, 2024 at 8:34=E2=80=AFPM Rob Herring <robh+dt@kernel.org> wro=
te:
>
> On Tue, Mar 5, 2024 at 12:46=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.p=
l> wrote:
> >
> > On Tue, 5 Mar 2024 18:56:04 +0100, Rob Herring <robh+dt@kernel.org> sai=
d:
> > >
> > > Long term, I want to make struct device_node opaque. So if we really
> > > want to fix this, I think we'd want to convert this to use an iterato=
r
> > > function. Though I guess any user would be mucking with struct
> > > property too, so the whole loop would need to be reworked. So in
> > > conclusion, don't use for_each_property_of_node(). :) Shrug.
> > >
> >
> > I basically just need to get the list of all properties of a node. Even=
 just
> > names. I'm working on a testing driver that needs to request all GPIOs =
assigned
> > to it over DT so it must find all `foo-gpios` properties.
> >
> > How about:
> >
> > int of_node_for_each_property(struct device_node *dn, int
> > (*func)(struct property *, void *), void *data)
> >
> > as the iterator?
>
> Why would we make the caller provide the iterator? We just need a
> function call like the other iterators rather than directly
> dereferencing the pointers: of_next_property_iter(node, last_prop)
>
> > You didn't say if you want to make struct property opaque as
> > well but even then it can be used with provided interfaces.
>
> Yes, I'd like to make struct property opaque as well. That's probably
> the first step.
>
> Rob

Or maybe we should implement it at the fwnode_operations level?
Although not sure how to handle it as fwnode doesn't have a separate
structure for properties.

Bart

