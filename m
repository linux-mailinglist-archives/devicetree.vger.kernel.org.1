Return-Path: <devicetree+bounces-85115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FE992EFC0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 21:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C57A281278
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 19:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9B0186E25;
	Thu, 11 Jul 2024 19:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mPRWHDAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A27C1849C8
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 19:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720726615; cv=none; b=c186AkjKUfBGzQqO/+iiamzBT6oevtCOuCIqAmKDYL0INtl6CZPcffEeDbZ+4fccz/bDwfUvjs82RMsi1rH5TghqbAdzBbft9db36Fv68VqXfJ5hpIWfJ+oQG+rZqCBrdDoAxCjKv3O8NMETopfRAdoTcbt1VQjnotMLqrs/wkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720726615; c=relaxed/simple;
	bh=ZZ1bOBY3w2CQfG/2NQXLQUZGJruqNZ9i879RYUzCCAY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dt2O3FnA0ULdP7optJ948hREiL/GvWbpPXoZHfUBFxnY2pxpt5SObKY294vDJzOB5bSg1bBABiULYUNqwn8DevfPsH2a/0hAIUgSgKBmUsWxUiqNMVA8zb6tnmgQb9rF5ZzfzJhHGQJXWp9BIm6Iuh7zPLDa35eOKsnUEoQHzC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mPRWHDAJ; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6b5f128b18bso7646566d6.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720726610; x=1721331410; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYCTn4/p66mHlGbWx9vmwvaVwx5YCoUoX/9c7g8wN78=;
        b=mPRWHDAJX/xy2jrrLiOs31INp8qwPXEzXMqfhC27j89CgE7PLQ0CptJjVUZXoR78zy
         ZjoJUKR0IB0gWnA8WlkRTreUvDGxYhAQpNaUgyU4PQX9kY9z7VZZLh3DoD0OsURmvn3w
         O9oA5El7UwQ+AWsbVHjk6tiCq09FVJaztD7UQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720726610; x=1721331410;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYCTn4/p66mHlGbWx9vmwvaVwx5YCoUoX/9c7g8wN78=;
        b=hL7nBIhf2lCUJ0DSParb09wE6Jgq2xVMmao5+C8IqhHdjCo0r5ryyn9MBr/w+ZVTI7
         FWG96lp64WE3XLEFyp4GhFbaHdYUK2OfmC+PMcaW5NCJ5KGDXlT8mxLPYRNAW0JOJSYh
         Plaf1hGpgt119cLT9FHD1G08qZcUN3AXTj0hn3f3hwa4QpsXSNP0NwFRvowl4FANu0It
         GP9aHRNYZZrwxFM9qZ9j5W0YeSJSsoN9rg2r01dmNvWw/XIDPP3HlPjGpoOl7qIWKVZZ
         l1FP6bH0xVHXkxjSbwhf77f0Rc4SQTDVggMVpwKe6uLEgKIZDk9w5o+dyuMTxQZkyMsW
         Saiw==
X-Forwarded-Encrypted: i=1; AJvYcCXVWtrifLgvqoxSFyiMmbdZfDyDWM5eeu67d5KLUCm0pDMdgAf7gO7MhQ9FCcTOYIg+lI2eebmc5cQMxidfQxb1eaOIJQu/RmZS0Q==
X-Gm-Message-State: AOJu0Yx1819tv2cjJrrWq43GP5NiGSyUqVQ05h5Yxk0N6TsSe6rzjP20
	0bZs7NHejFAW9waY8XsAb3QFz12wwdEecayDf7/Toe34dUkmdY0IDxbNI0mGi02qT9sOliJ68uc
	=
X-Google-Smtp-Source: AGHT+IH1Bm4J8IsKt3yDPzK9Mg6P8mw0l7vZQ580bti/u2VHZ4IcJTlaCLPrxi9qnlkf5e3PTnHjpw==
X-Received: by 2002:a05:6214:224d:b0:6b5:9fad:aa3f with SMTP id 6a1803df08f44-6b61bc7f72amr123993176d6.2.1720726610129;
        Thu, 11 Jul 2024 12:36:50 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba9f323sm28477606d6.132.2024.07.11.12.36.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jul 2024 12:36:49 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-447df43324fso60631cf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:36:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBhSs6NegG/CQbFqB6v7lcfaXBazNbZreN0UxvV/kLzQ0Gv0/gP8aeNVgQI2pv7NQhUq9nDtmM6jX+pls82r5u06rptCk1KLBaLw==
X-Received: by 2002:a05:622a:1808:b0:447:e04d:51b1 with SMTP id
 d75a77b69052e-44e793e5b1fmr549761cf.11.1720726608407; Thu, 11 Jul 2024
 12:36:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-5-yangcong5@huaqin.corp-partner.google.com>
 <D2LQJROQYIY3.2Q88EXS8HUDLQ@kernel.org> <CAD=FV=WAosZPSKdpwR6pjOmiy4hih=jXaMg2guuVgmc+qj-Csw@mail.gmail.com>
 <D2M42ODWQPAU.I0BMEOLKUP29@kernel.org> <CAHwB_NJ+YEMoL18Sr9HFmTVH_ErDztyF7vxxPFAE0Y2ta3dO0A@mail.gmail.com>
In-Reply-To: <CAHwB_NJ+YEMoL18Sr9HFmTVH_ErDztyF7vxxPFAE0Y2ta3dO0A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 11 Jul 2024 12:36:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNx5qEyWDvVz6AVDryqvw09tkYRYMjbFuUQS4Wvyok6Q@mail.gmail.com>
Message-ID: <CAD=FV=VNx5qEyWDvVz6AVDryqvw09tkYRYMjbFuUQS4Wvyok6Q@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] drm/panel: ili9806e: Break some CMDS into helper functions
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: Michael Walle <mwalle@kernel.org>, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	linus.walleij@linaro.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 6:09=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>
> Michael Walle <mwalle@kernel.org> =E4=BA=8E2024=E5=B9=B47=E6=9C=8811=E6=
=97=A5=E5=91=A8=E5=9B=9B 03:38=E5=86=99=E9=81=93=EF=BC=9A
> >
> > On Wed Jul 10, 2024 at 9:12 PM CEST, Doug Anderson wrote:
> > > Hi,
> > >
> > > On Wed, Jul 10, 2024 at 2:02=E2=80=AFAM Michael Walle <mwalle@kernel.=
org> wrote:
> > > >
> > > > On Wed Jul 10, 2024 at 10:47 AM CEST, Cong Yang wrote:
> > > > > Break select page cmds into helper function.
> > > >
> > > > Why though? I don't find that anything easier to read. In fact, I
> > > > deliberately chose not to factor that out into a function. It's jus=
t
> > > > a sequence of magic commands, taken straight from the datasheet. So=
,
> > > > I'd like to keep it that way.
> > >
> > > The consensus of previous discussion on the lists was that folks
> > > agreed that we should, where possible, make it more obvious what thes=
e
> > > magic sequences of commands were doing. IMO separating out the page
> > > switch command helps. Certainly I'm always happy to hear other
> > > opinions, though.
> >
> > Fair enough, but in that case, one should take the datasheet (which
> > you can find online) and replace all the magic numbers with the
> > correct command names from it. E.g. 0xff is the ENEXTC register. To
> > be clear, I'm not just talking about the "switch page command".
> >
> > As patch stands, I don't see much value, TBH. On the contrary, you
> > make it harder to compare it with the Ortustech panel datasheet.
> >
> > just my 2c,
> > -michael
>
> If all drivers replace all the magic numbers with the correct command nam=
es,
> it will be a huge amount of work (assuming that the datasheet can be foun=
d).
>  I am afraid I don't have enough time to complete it.  Thanks.

Makes sense. I'd be interested in hearing the opinion of others in the
DRM community about whether they'd prefer to land something long this
patch as-is or drop it.

-Doug

