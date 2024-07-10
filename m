Return-Path: <devicetree+bounces-84779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1155592D8F4
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 21:20:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 351191C21015
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7E3D197A90;
	Wed, 10 Jul 2024 19:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="muC4ov7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A37196D81
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 19:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720639219; cv=none; b=nbZqMTyyl4oOmMFPWxSvrtkqjYnQLu1HSYrmlgQ845dIxFpUQN2bN6XbGZwelJoffAcrL2/5XEVeOknWP1H4STrwEKpcQo8ocnEDJ/O5VOsecqgg4EG0vZPsIu+Roi8MPQHevb9YyarfzPkfcMqriRiWP6iEaVEjfJbTINGBYYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720639219; c=relaxed/simple;
	bh=w6Cd9JxYQr3oSlfhrzlHyozKmwFFDkIPTQcG3FZGAZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fTmdh29S43XwS2W3AvXFKLVEXYQ6RSGZg6bc2nIEgiP+rc0P/eucKg0MKWy2bDtIYkXdhKwyPFhwOkq1gxn7vHrFtiv41w8F4VkbcP+XaXZUZ73PGbI2Ce5StxZ7UJ/wc9Uu/oo9oRV8Ug51d2mekSTimFyAPsq2623RpWZaIf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=muC4ov7P; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7f70a708f8aso5091939f.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720639217; x=1721244017; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CJcQA4rqRaCFjiUl3yXOwI538Rxwz2YD9AUd38FoKk=;
        b=muC4ov7Pe1spJ8cwIU7PBqYfwl02BDwlNhXYZkm71Kmj+zhaPSD24ydvdKRPczRWN6
         1JPqeoMjkfu+iK7Ka1PLu0P6HpE60XnYDktjTemm1bMuJTdUR+q3QeToaHeopGrnQ7SI
         y0gyzuWYrBahzlVIZG0NaIOaOdpAussxOEBHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720639217; x=1721244017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4CJcQA4rqRaCFjiUl3yXOwI538Rxwz2YD9AUd38FoKk=;
        b=V86VNSeCEq5MvFGEkK2gDOy7WmS4U4epMEweJEo/YxAl4GGHZZSWi1IAhe+P7qNwwy
         dz9RNB+Dnh5+GCxoEFWOtdCp1/s0JSNNZPSWiHDP+ToQGfUHd5HXV9PCvbD9RF6hBrhS
         rrAsQrtpLjer6toPpTOmt0pur4J9Xh3kqu/gm9TqRrSIeonn1FcjAxI3K8Eia5oEV4Jt
         w2V27JLuJ8Et6E8U9UWcAQC684SgcZyb2OK0m06OOYGtR1NTjifRdMZvZITZDdamxss0
         wYpF+/Ht8WE3uf43JGQ9gomqHQYQMlA8pYncttvE+grV37s0/T+7AAqmi8qQW/gkjsnx
         AwSw==
X-Forwarded-Encrypted: i=1; AJvYcCUHc/Teijya7KZlVA1wFjwhT86dmaZk9tXSSxWTWlbufCx1sRdVwOaUplzUa4tCjkCRdKv7+pp6dRWIBUnMzqBtoZELPM4DerKntw==
X-Gm-Message-State: AOJu0YxT+LwSdn8/ngVM9oA1eSlApwzoV5KkoL7XZtQpp7Oypv8gnKJQ
	BN5enTAh5VmMBBfobTw67zNJHLNWYAra5JAS1HCa5J4SqhcG1FU9oq8mUJf3Tc+QiQb2MLUaW6k
	aLg==
X-Google-Smtp-Source: AGHT+IFPUzp6VPKI3tae5hiiwazdAusiBdZMFscuOy9tmkdzOrelx3MhKU+a4m/+0qRg7RW8QZ/Rtw==
X-Received: by 2002:a05:6602:164b:b0:7fa:e54a:ab3c with SMTP id ca18e2360f4ac-800023b5d18mr927978439f.13.1720639216980;
        Wed, 10 Jul 2024 12:20:16 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4c0b1af80d9sm1345266173.11.2024.07.10.12.20.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 12:20:16 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-38b3543541dso28985ab.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:20:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXFtJ7QqP8nOXcmEF5/9944t91XvAvVk0enZnTCGAMK4GARU4Tj64GjvJg7Bhce7xZlVxj7JAOjP7FebU1knkLaWTNW7CoX7qmw4A==
X-Received: by 2002:ac8:730a:0:b0:447:d7fd:63f with SMTP id
 d75a77b69052e-44d11f851f2mr337601cf.19.1720638789687; Wed, 10 Jul 2024
 12:13:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-5-yangcong5@huaqin.corp-partner.google.com> <D2LQJROQYIY3.2Q88EXS8HUDLQ@kernel.org>
In-Reply-To: <D2LQJROQYIY3.2Q88EXS8HUDLQ@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 12:12:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WAosZPSKdpwR6pjOmiy4hih=jXaMg2guuVgmc+qj-Csw@mail.gmail.com>
Message-ID: <CAD=FV=WAosZPSKdpwR6pjOmiy4hih=jXaMg2guuVgmc+qj-Csw@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] drm/panel: ili9806e: Break some CMDS into helper functions
To: Michael Walle <mwalle@kernel.org>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, quic_jesszhan@quicinc.com, 
	neil.armstrong@linaro.org, linus.walleij@linaro.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 2:02=E2=80=AFAM Michael Walle <mwalle@kernel.org> w=
rote:
>
> On Wed Jul 10, 2024 at 10:47 AM CEST, Cong Yang wrote:
> > Break select page cmds into helper function.
>
> Why though? I don't find that anything easier to read. In fact, I
> deliberately chose not to factor that out into a function. It's just
> a sequence of magic commands, taken straight from the datasheet. So,
> I'd like to keep it that way.

The consensus of previous discussion on the lists was that folks
agreed that we should, where possible, make it more obvious what these
magic sequences of commands were doing. IMO separating out the page
switch command helps. Certainly I'm always happy to hear other
opinions, though.


> -michael
>
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-ilitek-ili9806e.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c b/drivers/gp=
u/drm/panel/panel-ilitek-ili9806e.c
> > index e4a44cd26c4d..68fb9a1a4d80 100644
> > --- a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
> > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
> > @@ -35,6 +35,12 @@ struct ili9806e_panel {
> >       enum drm_panel_orientation orientation;
> >  };
> >
> > +#define ILI9806E_DCS_SWITCH_PAGE     0xff
> > +
> > +#define ili9806e_switch_page(ctx, page) \
> > +     mipi_dsi_dcs_write_seq_multi(ctx, ILI9806E_DCS_SWITCH_PAGE, \
> > +                                  0xff, 0x98, 0x06, 0x04, (page))
> > +
> >  static const char * const regulator_names[] =3D {
> >       "vdd",
> >       "vccio",
> > @@ -227,7 +233,7 @@ static void ili9806e_dsi_remove(struct mipi_dsi_dev=
ice *dsi)
> >  static void com35h3p70ulc_init(struct mipi_dsi_multi_context *ctx)
> >  {
> >       /* Switch to page 1 */
> > -     mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0=
x01);
> > +     ili9806e_switch_page(ctx, 0x01);

I think with your change you should remove the "Switch to page X"
comments since they're now obvious. Other than that, I'm happy with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

