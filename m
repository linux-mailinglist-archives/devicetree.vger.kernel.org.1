Return-Path: <devicetree+bounces-4321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 200717B2081
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:07:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3E20E1C20958
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835724BDDD;
	Thu, 28 Sep 2023 15:07:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F5F4BDD8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:07:52 +0000 (UTC)
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AA061AC;
	Thu, 28 Sep 2023 08:07:51 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-5780040cb81so10379247a12.1;
        Thu, 28 Sep 2023 08:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695913670; x=1696518470; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Qz6HI6jlkhdd2Zf0WXt7AO/8I8qoc77cV4VvCrPgng=;
        b=eNrGGvPuVYbfM4US8wNefBav7a1ihh6tvRHodl3YLk7WO4RFIPiz+xwyUToDWIc0no
         FWgkk+GOXN4ZiLzOjB8yM1XFw+AdoQF8y/TkCbea+/tRndub07Wz1T8IECloqg0YbC2P
         om73C07p0FNaZyH4pfy85nmgtoM/vkdPnu5gE5YhTJUi+IUoxMPe9c77LWIfvp8JJDx9
         SP5uGhsolMxkfK8qw86GpdkRp+ahfZlEEccpXa6yPQ1zxadAhejOjLXbn4NSPyzxEVgN
         4rb+cca6kTVxXvVtk+qSlw5QKnh/9QFntmbwlfrHmCtK+ZRORCyAVu5nDJ2xnrThEmtQ
         YwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695913670; x=1696518470;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Qz6HI6jlkhdd2Zf0WXt7AO/8I8qoc77cV4VvCrPgng=;
        b=mtTPH1Rc88NOA4p9nQd4E3UfxamQsCqQm7ogp72M11JDb1a2eXYzojtE7WP4wuqRKP
         j0yeR6aMth72NCmyP1uIHSYb9HQUywc3CXi8MuuJ24jv4TGIZu1OVtHfhFRltw7dHhjr
         NeHr1EyvoObs6SLqFCEbfNqiTetz7vdDEfF5BN0x7Wx10mnD6L5k7qzTKnK9jq0kI+Om
         nuWUnQY+LomTmLJfITF6gyacn0C0ULMbDxP6brIfUwN+Kzf87jKvM5j4BltZ4Xj+rihE
         Uc62qDJ/oZ/AjezA/n5qR4GuiMn5P5hUSNsuHZaXpnaHe45fF11m7KzaIjNUZZtAhBrP
         J7GA==
X-Gm-Message-State: AOJu0YztPmdfXIpteT2L+thkgLmxYGcIqvaH3boxCpt1gLG/hAhCYgVJ
	z3wYglDjeguNiwfYWzoxDXGL5P6t+lkbuBDyaFhjUPe+
X-Google-Smtp-Source: AGHT+IESmof8pQRREMh16diAI2K+Cue3aE5DFelWF1s3vxtAYM/mobog5IUcgN2D4wJRkJwCpcKftD02v+jf0rONjTU=
X-Received: by 2002:a17:90b:1d86:b0:26b:59b7:edb with SMTP id
 pf6-20020a17090b1d8600b0026b59b70edbmr1409193pjb.33.1695913670652; Thu, 28
 Sep 2023 08:07:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920022644.2712651-1-jcmvbkbc@gmail.com> <20230920022644.2712651-2-jcmvbkbc@gmail.com>
 <2023092835-applied-shakable-f5dc@gregkh>
In-Reply-To: <2023092835-applied-shakable-f5dc@gregkh>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Thu, 28 Sep 2023 08:07:38 -0700
Message-ID: <CAMo8Bf+fKpvb5DgN3P847qKNxUa5Y3Q+e4AOikHGrhyZiDCWSQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] serial: core: tidy invalid baudrate handling in uart_get_baud_rate
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	FROM_LOCAL_NOVOWEL,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 28, 2023 at 1:17=E2=80=AFAM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Tue, Sep 19, 2023 at 07:26:40PM -0700, Max Filippov wrote:
> > @@ -539,6 +537,7 @@ uart_get_divisor(struct uart_port *port, unsigned i=
nt baud)
> >  {
> >       unsigned int quot;
> >
> > +     WARN_ON(baud =3D=3D 0);
>
> Why is this needed?  If this isn't happening today, then there's no need
> to check for this here.

I'll drop it then.

--=20
Thanks.
-- Max

