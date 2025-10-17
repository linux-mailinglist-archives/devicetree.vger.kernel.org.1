Return-Path: <devicetree+bounces-228060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EC2BE734F
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 10:38:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF9364FEE13
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B17F29BDA6;
	Fri, 17 Oct 2025 08:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="E9m0BOgI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D9921B185
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760690252; cv=none; b=At1ycqKkSiOq42jmb+TKb8cmIwG9JNE3J2hrDm6wd03gk5GcqQpAwxOf+UGJxKUVxtbiCQVJ+9SRWqQ54hIA3mjkMUfm2Oi9LMdzeJSp48xaajsA6SMbD6R/yoOhB+93M2145dVjztX0kbYl900byApMyb4bYRlWTku5LJQ6554=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760690252; c=relaxed/simple;
	bh=4gBHm0hg/izrnX9TOrYcTxdW+FZhrbeI7DucFVe4NUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S8tGO33mz7QwoIV/o/MMO6lXQsJRt3XebG5PLy9uoffOTJOcEUORluAJpUHoSmD31X6lcgebr4Sfs8Ky3J5Mkh5XBEG84P3TJf9Zyqoj/Oq2c7C6S81w4c/13GD8O6HAY+0CKQvPJh4NKk8o3GZ8ePVH5sbGnZym3RyfKVHMqGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=E9m0BOgI; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7815092cd0aso19445237b3.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 01:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1760690249; x=1761295049; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UEugzOHABBcNtf7WRv870XNmGYg6euUpqckoSgZhyIg=;
        b=E9m0BOgIYXjSnKst81q1r7r2jEEItDNv5NKuppLmZAwiU6rzYKTg+JvP5HgqXYGqbz
         9dUwaSq7draPqDx962qd8xKEUXVR3kMSjTWr5sfhTRxb3c0iPqlN1ujxzs6Vgr8UKzmf
         qwQy9uQsvprIPH2cUB8bKYIdgJdWUrY38Yy7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760690249; x=1761295049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UEugzOHABBcNtf7WRv870XNmGYg6euUpqckoSgZhyIg=;
        b=S7k/ITDk4BDF4KRwmmoIs0ibWtWoKV9FH7nKUR34SG/eaoro5r69vqZ3as+mXNP8pz
         8iH/n2krXtWRpVBI0zOw5H1mYdLVLUwUY67152cEGxPLolK0wn+h2NwXpPs2Hpllrna4
         VKucAP0WhoIpfK8maDJCVz/PhMwZmEfY/qr3iwK+krYZak4QCyDuubreYMlLrWjalwc4
         PDXqWMY6bxMc8796aT9shgylZllQ1GDuAz8mQTxW71ghrJk3X6E6S9N2d0MzYTY1kBfb
         kqjWL0oEw7Y5z7bOWpdFg/PtoR25WF298sJVyU2X/bU48sG1DvHEWZ9mbqcT6Dn6cQMb
         0tfA==
X-Forwarded-Encrypted: i=1; AJvYcCWQowNinQ9Qt3ENVWe4TDeh1ukweuBDvEwZ2QRB5FT/3snbO4V4iuugJmuv25OnduuGgX4K22nQL+3N@vger.kernel.org
X-Gm-Message-State: AOJu0YxD1zzt+4QcS2FPkQhDMce86g5lQZKf14wrSQtTSgSEakOz7tF5
	X+NsiLpffTvkY4yNMhgIQQBQd/362f5JqqxoETkKNxlUZDR698BhgC7abhtPrgbBXdTrisUB/PI
	3VJIWZ6OHHdlNg5URT3OI0A28OL5/9NEM3DsXp8qbkQ==
X-Gm-Gg: ASbGncsea83Fhf6Mn8PlBlz2uexZwxllEO/T/nQ5QStWn4y5wGGrdg8v+kETtNrhYrF
	YRzMUiTSj9PxeSi4PbrOY/CQmYScD3sER5Yxa5gGWNcnHGqjhefH3H+2jAguotsUtr4SfH/VMYJ
	UFIUXH+2nlhGaeKQq0ZhHdWwWoph0Rl+3cLXy0eU9tTvBOeKySq8Q6IVLyaUwhwDL8wYPO+yKE8
	KYkzj2D6/Pb+FOg1yIWC+KQvao5+fhE8dAm1UMpAZToQ1zVrhmXD3Dz57x8ouxZdG/77vHTknM7
	qNhHvB/7tb9qMqsFp2xjaQM81gCuAw==
X-Google-Smtp-Source: AGHT+IEBawDSgiE20pPoTet4nKGmNqzWfwqDDZv+tdibV8JI2CAptyqGAH85n3YwH/kLHb1q2TIij4NCoDlZL2WIN2s=
X-Received: by 2002:a05:690e:400d:b0:63d:318a:efb4 with SMTP id
 956f58d0204a3-63e161f10b9mr2335639d50.63.1760690249015; Fri, 17 Oct 2025
 01:37:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007065020.495008-3-pavitrakumarm@vayavyalabs.com> <9ba77ca2-7b22-44da-beaf-dc66801252b5@web.de>
In-Reply-To: <9ba77ca2-7b22-44da-beaf-dc66801252b5@web.de>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Fri, 17 Oct 2025 14:07:17 +0530
X-Gm-Features: AS18NWDmYVv2zfDmUEDPEl-EPatrNn-j8Tww2-bbNu5S-jqfIjsD5sH7k8FMEBM
Message-ID: <CALxtO0kbD44Ek4mUoW-0i+5H6FUyzeOWru7Lqckj0j9Yrzv1=w@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] Add SPAcc ahash support
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>, 
	Manjunath Hadli <manjunath.hadli@vayavyalabs.com>, Ruud Derwig <Ruud.Derwig@synopsys.com>, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Aditya Kulkarni <adityak@vayavyalabs.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, T Pratham <t-pratham@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Markus,
  Thanks for the review. My comments are embedded below.

Warm regards,
PK

On Thu, Oct 16, 2025 at 11:45=E2=80=AFPM Markus Elfring <Markus.Elfring@web=
.de> wrote:
>
> > Add ahash support to SPAcc driver.
> =E2=80=A6
>
> Please choose a corresponding subsystem specification for the patch subje=
ct.
PK: Ack, will fix that

>
>
> =E2=80=A6
> > +++ b/drivers/crypto/dwc-spacc/spacc_ahash.c
> > @@ -0,0 +1,980 @@
> =E2=80=A6
> > +static int spacc_register_hash(struct spacc_alg *salg)
> > +{
> =E2=80=A6
> > +     mutex_lock(&spacc_hash_alg_mutex);
> > +     list_add(&salg->list, &spacc_hash_alg_list);
> > +     mutex_unlock(&spacc_hash_alg_mutex);
> > +
> > +     return 0;
> > +}
> =E2=80=A6
>
> Under which circumstances would you become interested to apply a statemen=
t
> like =E2=80=9Cguard(mutex)(&spacc_hash_alg_mutex);=E2=80=9D?
> https://elixir.bootlin.com/linux/v6.17.1/source/include/linux/mutex.h#L22=
8
PK: Ack, thanks for that, this is much better, will update the code.

>
> Regards,
> Markus

