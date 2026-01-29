Return-Path: <devicetree+bounces-260772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UL4UI7QUe2nLBAIAu9opvQ
	(envelope-from <devicetree+bounces-260772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:05:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B016EAD16B
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F04AD3005303
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CA8D37B3F9;
	Thu, 29 Jan 2026 08:05:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B199135FF40
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769673901; cv=none; b=ttQ2+ej50kQBaGSGDh48GQDHEBpJJ5ix9GEkDEfpdu3DQb5onjQyJkchOA9+4Zpl9XvjlU9NZNHXCNPOb2gPutZsXhO3CHSHadaLuvf1wF0Z2voGh2j4lf3rcSqGqq9nQWVcIrLeMsduAn3cdKgN0IMwrawW9YRaOYAeEfmengk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769673901; c=relaxed/simple;
	bh=91tVL5mKuNj73Dz7moYY7OGxZC1gqClrSFgk0jV0cNc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gZpb9l6dgrSCXLeUOj70KFLXLU31kIUNHpwkDF55AJEc0BdxZMaiuUSEsjXO1eIcwT/pwaAMexRghMtw40cUO2qkhXvlpx/rWTZ78SpRnX0x533jeCtxcVEGsO0X24cAGnIuI8vYqlgzCFl85eJJSKz2yw2qp8Wt+T1jH2OZhLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-563497c549cso360468e0c.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:04:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769673898; x=1770278698;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v0gR7dZCHphDKOV6AbU9UOkdND+zeoXCfVO1M2NTZUU=;
        b=SDEvR4D0rso5bYXEBmpaysQfi5fboz5dIpN0iOXcERjJ4SblP6dPhZj0xA9szPTzdq
         rdvREC/rIP21xYNgTm+h2VtrQxE9iQviJW95qprOqrqUK+CyGtKYfepjJnwR0KDToBAx
         uG1VbLW0cdsn1qhTd0YlZors6lnypT1eV8AsxGwU9G7ZM5rIKNmqlIj2S++tT2VEKhlg
         XZDd73UOk1io2ajYxhAQBQu9XBaRnwfcOrrDVbFGV1WS56hYZoAg6p77WeqwpHjr1gXz
         xUSlDOOZs+85LNBJ9Lo84a5X2Z+X3XKqvcK6lPUwwESqi4RUDeerCBKB+bBiYSIvPQGg
         aAOg==
X-Forwarded-Encrypted: i=1; AJvYcCUIdofAwXYk/Nvye4CDXBtzvgk/d5KFVrejdfNKkivfPU/PSmv8aV2/Su9MTEL4oLQ6KgXBug+2YnxD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8mHFkA8Ja8ak75Vm7Z8AGf/hjjPUyYK3C3SK6sfjdI1kfgC+4
	pmZny5V4PAE+lokxkha+bFhGp/Cu16DyGkkYDN5yOrq+lf1jdWeZXKzhSNftxPTA
X-Gm-Gg: AZuq6aJMDhnwLzAxBJHBDUU3T56RPqRsQf77tKv/wFAusgl7d8JeioIp2FtxH+RFH6r
	uTZOMt3pUgxmBTkofqARr7YUuKntpSogL1kR9YuYoD7660VNg2NcjB6C8iX0VepjEjk3UXZElvp
	JltgNzuMSoNy4hdxyN0AFksX3OwVtKq47Ju59BddL7UJwHa0BH2fKs5zniX/33XMElSjvwzBAfh
	vuWnNVYhUV0Q34sxaRJ1eyRSxCN0hqQE25PoASZTwiNw4OwXRWasjSSXb4SGtSP5Ye3T1ZbNlBm
	30bHMdwqcnoEJpxJwjktf16nluIcahQp+i9ANzcB5iPFGCZQHTo4TS1yVNI1GD5fvvBHArJ1elb
	0WjqHopDcZvHdNWBY1c/kK+FqFHM264rcsBmegj6afvGQ3EEuDoOK7wVhTIjeYMH7kiHKbZJ8UK
	zmePS8xqPvPEtnKybitenSRLc3TVLEia7wooKdrrXSr9tCmGHS
X-Received: by 2002:a05:6122:4b12:b0:559:dc01:8cd9 with SMTP id 71dfb90a1353d-5667957d71cmr2692881e0c.12.1769673898365;
        Thu, 29 Jan 2026 00:04:58 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56685b04265sm1073385e0c.5.2026.01.29.00.04.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 00:04:57 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5f53505f012so523494137.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:04:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWvZS/V8kXDWC0iFhffo/mnIvZd/Fd6nOmnzJYT1nEwPmIpqXpdhjshhPp9pWrU05mnaCoUdd1raF4X@vger.kernel.org
X-Received: by 2002:a05:6102:54a6:b0:5df:b7f3:5875 with SMTP id
 ada2fe7eead31-5f7236eb1d3mr2932320137.3.1769673897247; Thu, 29 Jan 2026
 00:04:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127201706.616374-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20260127201706.616374-2-cosmin-gabriel.tanislav.xa@renesas.com>
 <20260128-sequence-platypus-59ae3318318a@spud> <TYRPR01MB15619DCD987445778003A81588591A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
 <20260128-debatable-scribe-4e55c208b31a@spud>
In-Reply-To: <20260128-debatable-scribe-4e55c208b31a@spud>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Jan 2026 09:04:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWYKFoBnGaCfvVJFwYXEvtVyxXiAzHC2JvmTCwc5H91wQ@mail.gmail.com>
X-Gm-Features: AZwV_QjTTisPi414sjhCr82V_-8ygcgoSAfE-Ll893eiMx8FQNA9_dDyqKpLyMg
Message-ID: <CAMuHMdWYKFoBnGaCfvVJFwYXEvtVyxXiAzHC2JvmTCwc5H91wQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: spi: renesas,rzv2h-rspi: allow
 multiple DMAs
To: Conor Dooley <conor@kernel.org>
Cc: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	"linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260772-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,glider.be,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B016EAD16B
X-Rspamd-Action: no action

Hi Conor,

On Wed, 28 Jan 2026 at 21:09, Conor Dooley <conor@kernel.org> wrote:
> On Wed, Jan 28, 2026 at 06:51:48PM +0000, Cosmin-Gabriel Tanislav wrote:
> > > From: Conor Dooley <conor@kernel.org>

> > > On Tue, Jan 27, 2026 at 10:17:04PM +0200, Cosmin Tanislav wrote:
> > > > The Renesas RZ/T2H and RZ/N2H SoCs have multiple DMA controllers that
> > > > can be used with the RSPI peripheral. The current bindings only allow a
> > > > single pair of RX and TX DMAs.
> > > >
> > > > Allow multiple DMAs by only restricting the possible names of the DMA
> > > > channels.
> > >
> > > > All '.*-names$' properties must conform to the string-array.yaml
> > > > meta-schema, which requires both minItems and maxItems properties to be
> > > > present before the items can be a schema. Otherwise, the items need to
> > > > be an array.
> > >
> > > Why is this in the commit message?
> >
> > To provide a context for the maxItems that are needed below, even if
> > there's not really a maximum. Which is why having a maxItems does not
> > really make sense but it is expected by the meta-schema so we can
> > constrain the names of the DMA channels.
> >
> > dtschema/meta-schemas/string-array.yaml:
> >
> > if:
> >   not:
> >     required:
> >       - minItems
> >       - maxItems
> > then:
> >   properties:
> >     items:
> >       type: array
>
> Right. You can probably remove all that since I'm asking you to add
> actual constraints to the property.
>
> > > > Declare a generous maxItems of 32, which should be enough for 16 DMA
> > > > controllers, so that we don't have to update this value ever again, even
> > > > if currently the maximum number of DMA controllers on a Renesas SoC is
> > > > 5.
> > >
> > > Huh, No. The binding should constrain this to fit what the actual
> > > devices do.

The device is the SPI controller, or the SoC where the SPI controller
is integrated?

> >
> > Should the binding for SPI be updated if a device ever comes up with
> > 6 DMA controllers? It seems a bit unrelated to me. In this case, should
> > we constrain the number of dmas and dma-names per SoC? Some may have 2
> > DMA controllers, while others may have 5. Please let me know your
> > thoughts, taking into account that I only added maxItems to satisfy the
> > meta-schema.
>
> Yes, I think you should constrain it to the correct number of providers
> for each device.
> Whether that's done or not, there's not all that much reason to set it
> above whatever the current maximum is, since the binding will have to be
> updated to add the compatible for whatever device exceeds the current max
> and the limit can be increased then.

The actual maximum number of dmas pairs does not depend on the SPI
controller, but on the SoC integration.  I think the (single) DMA
request signal from the SPI controller is just wired to all DMACs
present (on this SoC, IIRC there were some Renesas SoCs where some
 DMA clients are wired to only a single DMAC).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

