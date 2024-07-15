Return-Path: <devicetree+bounces-85796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F9A9316DF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B9D61C2100F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C40418EFC7;
	Mon, 15 Jul 2024 14:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rvna8mVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0FD18EFCD
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054068; cv=none; b=mHulTorOCkwOf8TRN5FDqYYtow4WjcKaIiBPI8GCXln3VoLm0GEMNEVryDWd0JoFaHqwluKY6UTTezuGQzDWex/dhxwV1u+joF2avINEj0j5GZhcCjke8SclYjoerPfUQkvY9UZRFVB9JX0P52mcR6HwzzU8zcyM9GkONrlu6Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054068; c=relaxed/simple;
	bh=MB4rQjmug6N4wcn/SME+GV1BbTnQz1HQixJgvDFjtTc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bXZXL33DE+07PIb9JhZ9NgCey78hsh8Qjm0K3+GNTRMvwsz4FeTeCGlVHChwQe1YiOjQe3biLl3YzHBoenV9Q9bVC3IGMoI42WZajEOEGiy8JQNeH8/nbR7Z25RxBid1QDD7ff0LO9c8sZ3yH8rnlW5uRvGMN7095WnuFx7KdZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rvna8mVA; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-44e534a1fbeso482451cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721054066; x=1721658866; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MB4rQjmug6N4wcn/SME+GV1BbTnQz1HQixJgvDFjtTc=;
        b=rvna8mVAf2thJQdKp5U8PP8f0UmyoEHnI5XA9I+zVVAEq4K9nM4xS+ZK9hfA9QX/eS
         AMEX+D8ELRX4vt7jRR3I39K4cPFX+5NX+feQlcjMuEEtcImhsawgNDQu25DIEL2YSzgF
         DFOm2bqn/JM2rIP1hqRk3CH7aJtVeDykJqI06OG/7UiqGKDsjJjKfjxPwkcoUWOfrXQ4
         nBQWG5L1nXRzap+AxFG5uZbTLkWYzC4Wmwibn+1rJOeqRy17oh1qkonYn/tlbnKTPm4a
         a/VvGcqY6Xf3acp6C3lpFtZ0CFzHSFf3ALMjb65Jm4VGLvu7vZIZZqOuR4TUPb0kVcnX
         10Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721054066; x=1721658866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MB4rQjmug6N4wcn/SME+GV1BbTnQz1HQixJgvDFjtTc=;
        b=ogEhz7kAn+iTPcpFAqi33QZpoAwvxeoLh3du5DQLvEbtCsH/105XF5fwGmlwWKDR/Y
         e/PWjHeOHklhNidWY+M1kGM5bwbus1Fa3NsS6bz/htiFTlT/ErLV4ZGAlhUr3W2Dw8Xp
         YLMYogsJAyVoJxMUWyZICD1yNRD7TCDOg7MsFjvOrILTou/u96eO5IW6SPvhBDNiaKb7
         vb1p4GrUjoC5wBp160nef95nb49BoJQUGppNRZK4grSOVVEXU7WnVISzNAy9aXmk4cUa
         gmLpoA9i6hwr2j71UgNg5YUAHiaubTjwzIP0HlaNPDPrzOsX9QZFDR2I3QFnKHawEyfM
         BoQg==
X-Forwarded-Encrypted: i=1; AJvYcCWggYcSObZthr3pz8i83FO/q1m8FdHueeY0JaAj6w0mWRRzUDTKnNIvC4xbcQIRzDvrhsbddK3S9rrmlXjC9f2QTGCub7haREarug==
X-Gm-Message-State: AOJu0YynYt+aNFwb7UwtfwA5hJlqhiE6dHqW/J5SMPzhpvWd2M9MHECx
	6Tki7JEBTf9+amgBYU2RfknfwpD371xx7CpSB9QcPvjh6S2QlzAoqRrveNtQAhj8tZMuSROcKOn
	wdaih2Wgh37h4o4U5T68R/hG9QJXWq7a06PnBlU/N2aGE1272eJ5bbdI=
X-Google-Smtp-Source: AGHT+IHX3BUsteHRiWVEg9D4BeNaoIXbyh5/FHeFNn3GktcpmPw80Bqv38Kic6vZA9oZXwMEVS705n1HBIXsOi9XxDk=
X-Received: by 2002:a05:622a:2591:b0:447:f5de:bd18 with SMTP id
 d75a77b69052e-44f5ac8f6b7mr5296781cf.9.1721054066218; Mon, 15 Jul 2024
 07:34:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240715073159.25064-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <CAD=FV=VHDksKiZXrauiipa3HjtK4sE5+dbmXmVfhFoM-RKQP6A@mail.gmail.com> <20240715-bunkhouse-freeness-c4367d3c298d@spud>
In-Reply-To: <20240715-bunkhouse-freeness-c4367d3c298d@spud>
From: Doug Anderson <dianders@google.com>
Date: Mon, 15 Jul 2024 07:34:14 -0700
Message-ID: <CAD=FV=UtBhbfAAx41WWpQspK6SpCh6W5w+ogqFxogPm3omMn_A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
To: Conor Dooley <conor@kernel.org>
Cc: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>, dmitry.torokhov@gmail.com, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jikos@kernel.org, linus.walleij@linaro.org, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Benjamin Tissoires <bentiss@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 15, 2024 at 7:31=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Jul 15, 2024 at 07:22:30AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jul 15, 2024 at 12:32=E2=80=AFAM Zhaoxiong Lv
> > <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
> > >
> > > The Elan ekth6a12nay touch screen chip same as Elan eKTH6915 controll=
er
> > > has a reset gpio. The difference is that they have different
> > > post_power_delay_ms.
> > >
> > > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.c=
om>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >
> > FWIW things have changed enough between V1 and V2 that you probably
> > should have removed Conor's "Acked-by" tag here and waited for him to
> > re-add it.
>
> Yeah, good spot. I wouldn't have acked this version would asking
> questions - in v1 it made sense not to have a fallback when "they have a
> different post power delay ms", but now there is a fallback. Is the
> fallback actually suitable here, or might it be a naive rebase? Does the
> ekth6a12nay work with the ekth6915's reset timing?

Oh, good point! Yeah, it should be changed so that "ekth6915" isn't a
fallback. ...so I will rescind my Reviewed-by until that's handled.
:-/

-Doug

