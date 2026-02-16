Return-Path: <devicetree+bounces-265931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8qiwFRuKk2lA6QEAu9opvQ
	(envelope-from <devicetree+bounces-265931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 22:20:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FC4147B11
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 22:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54570301AA6A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 21:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B434824E4D4;
	Mon, 16 Feb 2026 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QQn12f1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF385B21A
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 21:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771276823; cv=pass; b=SxU/JjH8VdjUg08OwzEIgf13mmT0pI/w10jgvOlqpAMU2bOWwnJTMMTOwyCnmhMIl5M9vSqG1gVwmhPJxXGjgI07s7b91X7tgvI89K/Fc+PtNUj/KN8i1dK66+pTm0ZxVwtPThXq28QkifwCAlt/GakUk3UFQoNGmoo6trSSDSM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771276823; c=relaxed/simple;
	bh=39jNJG7uDvRJApj7fvN8nXXrKM4bJ2RLCuxjPvVjkzI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bwSa0Db3Y3MPvfCImy/tiIwBPNxy30JJZl64ATfYLYxtI1G5oilmE1UHj4GAH9MRQJEqZ6Afr2SlzXbpy1HU+LbO1jIoHuHPk9aXazzXZgDtQj8G/hoXRIZqRVzpoqQJjD5p2jH8JqOg6PG2angED18iAmRpfLXkjrX0f+txlwY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QQn12f1P; arc=pass smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-94d5f90c8b6so255413241.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:20:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771276821; cv=none;
        d=google.com; s=arc-20240605;
        b=HyQy+zFk2W0hiLoh/oE5nEq79XEkDUEo3PklHmLB4o7ou4V9YCbiLfkLxkpEg/Lj5A
         LriEXiXMZHsgedSsWDDPTa92IoyvHpusSrvkUDHq+h/7Xfn8AwOQbIp9xYKCD02Bo3Vi
         i0J+bt1j9dy+KfndeaVxneQ0vg7XA9phs694G5ozCSX59RIQFajzlRjnajm5A6CM4Zpi
         GVsy9UloVjPp8uyKAOacFEahwCs8YPDJfxXTILQ2HELpcMQPJYWir+aoEBNFPkt8YqC3
         kXVauBtAkk2Q+hiqNW9BYyjK/PpBEFLsa2eJ07ZCsvn5/g3VaRgww018mpYp5crW0VWE
         kjxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=39jNJG7uDvRJApj7fvN8nXXrKM4bJ2RLCuxjPvVjkzI=;
        fh=i4dEkB0gz4KqAZcdIrkaOm0uAHTKqjpz5P8xhOQdFwE=;
        b=X6Clv9f6KkfE65yrHT55eXSR0j1nu3FZhh9Xpu/F5hxsGxsZ6JfWWx/xayztiBr1TD
         ooB+6xzhFNiijjX61lbKbmaR25s06dQIfGt0lsI8sjB6fcywQHj+QirjsHyUJvu2ugXH
         ox9dUs7P/nsRGgel3O7M50XinPO5VR2sO4F+1ZmqIC0KmlqeKcNTfkOLsjXeWCLdBQM1
         DNJe4/QF+newbbibOEQX/Hf9IJoPgIzD4syOwJL13sW5iWMRIPUzFJB5/i3v8s1EkkNT
         Mf72+NU6mgrI4JUdyGZO8LJqbDnIKEcTSkz3y1hl1H50M72tqBcZu04m9WOWGhBNFhpP
         XqyA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771276821; x=1771881621; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=39jNJG7uDvRJApj7fvN8nXXrKM4bJ2RLCuxjPvVjkzI=;
        b=QQn12f1PngYQaHeMgocTtcRNF38gjCsv5su7ZHj7u9ENx5D7oFUUuwNTR6NeXmfgS4
         eMDKFomFQOY7VcmhqI2SDUFUUIMyYOuCrDrxiQrvedqRqFQCHWhBlnp0XxAxJ7CBhHho
         g8x7D6Co7HdaDwfcus5Rj1NNqGzpe++in+BwJlyYVed8NdKrXLT+B268pUphApGGyt3n
         iSFRLg3iM+v++wBtdw2OMB/KERxCpFsUk01N7QoWVng4BMw1uiGq8mzUP4Kdf/zCEp7r
         tnTGM8BmpS9c50togtaSfR6ra5jXUSKwIMC2zZLjI1kkeexFNlOt8MdksXEHkF8SKtIa
         ChOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771276821; x=1771881621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=39jNJG7uDvRJApj7fvN8nXXrKM4bJ2RLCuxjPvVjkzI=;
        b=vStJGt6/OWRNgQKMZhQSCoSovn0Y5GMkPAZMIWqZck0gBE3VVmDooy+7uRqSyyEbeU
         TmoqgN+UlerHK6C5fmhNKrvJRYYWu3VaA2ft2W1sgEfEHdHlJHXt26mvNk4alVadcSuF
         yRuGDe2uKXw8ceRvGWpXl+TiRdJpHuebadH2z61VM2VYR6oAsKgDnqQIQYcVe3n+6P2N
         7CU2yFNtgTXEAMoEOiROww1JsyPGhZWJlEKRGOAACRwIYBPywgjYZ1rFALdfJfHEG6Y+
         XZGl5pNgplUX3L+WapOvFCM8lCleoy6CYgOZeHlF27Kx/+hY4h+OCOjAE5RRirjCbA1m
         z9ew==
X-Forwarded-Encrypted: i=1; AJvYcCW28Tkh5DQ5lAfVVnEOiStQdYUXzKwGhK07xLYAaCvfnaDzi2pre7bTy6HKn6S5i3PVw/Yn74zNAHXL@vger.kernel.org
X-Gm-Message-State: AOJu0YzcWRcPPeWIxsqTT+ZN929nycP8x/soOibqOznwpHgUvdk9HKLe
	+ysfN6Z24C4v+ajWH0fCsidvK28ARW+4auEu3GBXP9VVgMhQ8dCjRrOXDXg64GQZOsSRGoOSrr8
	FGlQ7jfvPvKoq1ruZmdNyfnbiXzuNJik=
X-Gm-Gg: AZuq6aJ9S8zWeacIKe4drZ/KxmkJ+kURUbxfOvBJDGdRv1Epxnwa6F86Tg6EbNQ6fva
	8fULDHaKg8JdvsghR2gRG0BYiUoE7fthl9LDAo9DGBNJigboZuQIdDUwGuAcwIi4wO2nlncdGei
	DywvU4r4X2yttpp5L9JZmhZP4fHp+LlhoTJZb8202EIZ55nzlbkVL2HWCsglDrQPdD0P8GdYNui
	wswO1L/xXrqmWpep4K4dPbJLi419baYc1437XFWnK+j0MfRn+Kgfdh6ApVUE3esErU/8yMlqFLf
	Y4+9c+Oh0N41r88TDYnN3yGocM0ReBEtME+VCV+YtBWF92VDZ8qV30sFgyMImVD7zuRM
X-Received: by 2002:a05:6102:c15:b0:5fd:e9f8:b8d8 with SMTP id
 ada2fe7eead31-5fe1afb3fffmr4411476137.37.1771276821346; Mon, 16 Feb 2026
 13:20:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260214213239.2546012-1-james.hilliard1@gmail.com> <CAMRc=MfK8k88PfQPvP=p1r3KQ40dwcZq4Z4f5fnRFakpYcknvA@mail.gmail.com>
In-Reply-To: <CAMRc=MfK8k88PfQPvP=p1r3KQ40dwcZq4Z4f5fnRFakpYcknvA@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 16 Feb 2026 14:20:10 -0700
X-Gm-Features: AaiRm52FiAKU7rHk6inVhtiScAutlvFAT1kdXf1o_TCzG_SdmZ1wJXOYbAfPAe4
Message-ID: <CADvTj4r4mR0_HxcOOZFqJTVfoD=YdrGd2AD+hQNw6ciGUC=C1A@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] gpiolib: of: add gpio-line node support
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265931-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: A4FC4147B11
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 4:38=E2=80=AFAM Bartosz Golaszewski <brgl@kernel.or=
g> wrote:
>
> On Sat, 14 Feb 2026 22:32:37 +0100, James Hilliard
> <james.hilliard1@gmail.com> said:
> > Allow GPIO controller child nodes marked with "gpio-line" to
> > configure direction/flags at probe time without hogging the line.
> >
> > Teach OF gpiochip scanning and OF dynamic reconfiguration handlers to
> > process gpio-line nodes in addition to gpio-hog nodes.
> >
> > Also parse "gpio-line-name" and apply it to desc->name. For gpio-hog
> > nodes, keep "line-name" semantics as the hog consumer label.
> >
>
> One important thing that's missing from this commit description is: what =
is
> the use-case and why do you need this.

Added some more use-case details in v3:
https://lore.kernel.org/all/20260216211021.3019827-1-james.hilliard1@gmail.=
com/

In my case I'm setting up the GPIO line initial state and names for
userspace consumers mostly. I want to be able to configure the
individual line names from a combination of the dts file and multiple
dtso files for the same gpiochip along with setting up an initial state
before userspace consumers operate on the lines.

> The DT binding patch should be sent together with this in a single series=
. It
> should also be documented in the relevant .rst file.

Which file would that be?

I had previously added docs to gpio.txt but was told here to just
drop the docs:
https://lore.kernel.org/all/b851bfd4-3c35-489f-a32d-dcd7a37ca99a@kernel.org=
/

> I suppose it's another shot at defining what we previously called
> "initial-line-state", "default-line-state", etc. What happens when someon=
e
> requests the line, reconfigures it and then releases it?

This should just provide an initial configuration, subsequent consumers
would override whatever is set here AFAIU.

> This should also not be OF-specific but rather a GPIOLIB-wide switch.

Like this?:
https://lore.kernel.org/all/20260216211021.3019827-1-james.hilliard1@gmail.=
com/

>
> Bartosz

