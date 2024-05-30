Return-Path: <devicetree+bounces-70864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 351148D4CD3
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:32:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B279B22B59
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 13:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963F827457;
	Thu, 30 May 2024 13:32:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8843117C23E
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 13:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717075930; cv=none; b=Nh6PPqspXu2kjsxnCKXVs397/LlQfobgF5vs/OVGQLdc5rZ4v4MCwV+AlmuI10+h0AMWHeVnkAJsIHrhpNq9bVUJhw+2a7fG9BkVlmspfvh04zgjBGEcFODRmT8y4HEAyI8Ur09ZVbYuJ+0VjCF98nYxqibvfUk/cU/hhKJZy84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717075930; c=relaxed/simple;
	bh=88IKigFe0kD8jlRvVKkAUZSX2j16VH3M+2GkqXzEFKM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cpwjAK8Gudg4G++E1zt1PBYbz/ViEJWBLrI2dxnuFP3Rt6iR65xEEnkKI5BWzcT52hvop1mn8rLzMZqQVYBmA9GxCbSzDFJc9HG3kcAq+Pouqmkcjcx7PCVLXHYnnKY71j2uk1XcQcr7h+A0tnUjGqy4Gd6jJ0ysFAWvDuR3Dzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-62c6dc63880so6461507b3.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717075927; x=1717680727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a0l9sFJjS6sP7lJTdw7DR/BV0/eiNnlWKEDLn6RNxsk=;
        b=UMz5aEH4FnP4u553bt0XCGuR+BbsbGKb266IgYLLHUk73bJqvq04Q/VK5qsR0mbKb3
         +I+exaqvjR6dHU764pFRDve2w/JTOOlPRtjn0SW4er6kRw/btn+ahFk7OkEXKmVZRLVI
         K4h7Ag+dDlk7tiaqok7fX8v3BylX8NQ2NX2M+A0wq/oih7uACckHStOIETuRlAHFezIh
         GE7FzwNzLEsZLp8iFO3UamHMl/hTCR7YO1ddhJ4L/jRS+dBT+Q62O6VSqWQdadfmR0S8
         NQXCqnrYIkJjGP+1HUYRsXBvOUs8u2QxnntSWGLX2zR8oaKZUF4jpLdJ9I2iDc4grf7u
         sMVA==
X-Forwarded-Encrypted: i=1; AJvYcCUnT6EI5XLTf/4LHPaHA5FV87TYLE/b4CjuQ/lygS0mWm5gp+RYs0elku9RVJU2jFnPVRLk6EcA62l4wEQgFy6p4iWJupBP+ruQCA==
X-Gm-Message-State: AOJu0Yx6RWF5L5fs0ZvRzrhbvHygZ4Inalqe6Nj1QF3vzqRO4a4f6BDd
	Bshe+b7cWgaEGgSVGZiFzPGlfUU36w7bDpBHLdk045sEMx1Y+lWfnjV6h18V
X-Google-Smtp-Source: AGHT+IH87L2qZgDmYQ2G7lAHJFQ4qjHXYyPzOQgJ65zmcBp1i1/oGNwveo4ziVGnXuy/PPUtLomxUQ==
X-Received: by 2002:a0d:ead5:0:b0:618:2381:2404 with SMTP id 00721157ae682-62c6bcf9008mr25020747b3.44.1717075927120;
        Thu, 30 May 2024 06:32:07 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-62a0a56fbe9sm27564097b3.143.2024.05.30.06.32.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 06:32:06 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-628c1f09f5cso7857327b3.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:32:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJ+aTp6kMcKmxlORNG5hEkrqkPUebX86LognIx4zZJROkfcXXsFbH6TE9Zouhr0SbDqUM+5RxLcsnfScxy19ryTEUGreKbjXQOYg==
X-Received: by 2002:a25:bcc6:0:b0:df7:93e1:a130 with SMTP id
 3f1490d57ef6-dfa5a61299bmr3155843276.36.1717075926652; Thu, 30 May 2024
 06:32:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
 <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 May 2024 15:31:55 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWxxDu-V_drs+dMdycQHY_+v0sPH7bVO_2-ixGWQkdTjg@mail.gmail.com>
Message-ID: <CAMuHMdWxxDu-V_drs+dMdycQHY_+v0sPH7bVO_2-ixGWQkdTjg@mail.gmail.com>
Subject: Re: [PATCH v2] fdtoverlay: Remove bogus type info from help text
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Thu, May 30, 2024 at 2:31=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Wed, May 29, 2024 at 5:11=E2=80=AFAM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > "fdtoverlay -h" shows a.o.:
> >
> >     <type>      s=3Dstring, i=3Dint, u=3Dunsigned, x=3Dhex
> >             Optional modifier prefix:
> >                     hh or b=3Dbyte, h=3D2 byte, l=3D4 byte (default)
> >
> > However, unlike fdtget and fdtput, fdtoverlay does not support the
> > "-t"/"--type" option.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Upstream dtc has Uwe's commit 2cdf93a6d402a161 ("fdtoverlay: Fix usage
> > string to not mention "<type>"").
>
> So you want me to sync upstream? That's how upstream commits get into
> the kernel. I don't take patches (unless there's some urgent
> breakage).

If that's the policy, then yes please ;-)

Apparently it's been +2.5y since last sync...

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

