Return-Path: <devicetree+bounces-29869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B23A6825463
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 14:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 614AF282927
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 13:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932212CCB4;
	Fri,  5 Jan 2024 13:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="KMYooUB6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45E02D61F
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 13:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 89EB63F131
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 13:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704460727;
	bh=IFg9X0cw6KEOe6IAlb6C60OWnstZjElkbRUwRAxmfko=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=KMYooUB6xYtsb9ZERwx38qH2lXDHtvE902FQ9/f/HTeM3wwpDC5XngqS9yHVvN3hU
	 z55KDtNoZaehYCNG4OpiUFlzuVo1TJw1Gt9M+Jf6HJzqFPK33RaZaivoDhv4fFwrtt
	 5704BAE8ALDJ4l+LA7x35TEolbcFvRKJzIKe9oZVxUwqC+bvwYR1cXuAtejjUMRKSd
	 827hOwsildQVSgqNtShYcpzrJeX1O1uaA5N4eUdNZHA/PhO6LX+MoFr6sj/d6qQ62c
	 yt80Ih508K5JhIICIZiPSGJqdFZlvqKvbF9jHRAYZSxKcHp3Xv3WP6yhQK9URnIBhi
	 eWFpjhmIfejvw==
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7830b908355so58708185a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 05:18:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704460726; x=1705065526;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IFg9X0cw6KEOe6IAlb6C60OWnstZjElkbRUwRAxmfko=;
        b=LivMI6QOKq4j+nWHy/rLueA4qsQQbcSvWtCK202LU3sWCn6k1nIIdALLAGHh0sWmoX
         ymAzoCEWp9/E/gqTeYf1D4lmJIQMNdKOs+xAwUKXV/qYQTWmg5DzP6rKk54jb0CnrJUK
         p9948MtF73ArnG9a0G1EQrYVTKoYrLwnz4vPmdMqNSEoM46qWnqSIxx/1NrrCqlwuMhG
         9Qd8qLEOkDQ/g30sFB4p6E+boaccDxR2D0mpWbueXPWf4Fk/nMs9FyKCCmJ7mfSezEYt
         sac/jUQEuD1hh+2818QfI0OjiN5+1OVzT2rUVbSXKOLINHj9iysDubxcry0lDWWFH8wP
         lcNA==
X-Gm-Message-State: AOJu0YygGfBHmP/1myMt62aupub3mnyGuUR8HUMw4ZihMM0TdA+ft6Tp
	Fngdxl26e+L+a/EBJN2hE89Z9o6uU/KsnY21B25HRPJxJ5dDh+jmCSQ3JjofpwyqJzJ5TcEgg2w
	AufiFPLoGLupj6smZGkBUgdpajlY+HBafL1VCfx4TBrXrF9z7IKDWdNK5tZ9wSg==
X-Received: by 2002:a05:620a:178c:b0:783:de7:f55c with SMTP id ay12-20020a05620a178c00b007830de7f55cmr371560qkb.18.1704460726691;
        Fri, 05 Jan 2024 05:18:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSkJtpgQs5O0P21kOkQPotDAvI+IaEL+Pr5+euH6U094hbx+AkrsKTiUrqQJPzpV5J68/IEZ11z3+15L/lAVc=
X-Received: by 2002:a05:620a:178c:b0:783:de7:f55c with SMTP id
 ay12-20020a05620a178c00b007830de7f55cmr371543qkb.18.1704460726480; Fri, 05
 Jan 2024 05:18:46 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 5 Jan 2024 05:18:45 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <xd2ryic6mr6d6cbljjbhmr56mfpchfzkmc3lnznhmoiwyzip2a@6bhbho267e7c>
References: <20231222094548.54103-1-william.qiu@starfivetech.com>
 <20231222094548.54103-4-william.qiu@starfivetech.com> <CAJM55Z9tyrR7emEBrY0+Fnc_LUFQHkqYHLQ4ptL=XQMy52qtVw@mail.gmail.com>
 <xd2ryic6mr6d6cbljjbhmr56mfpchfzkmc3lnznhmoiwyzip2a@6bhbho267e7c>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 5 Jan 2024 05:18:45 -0800
Message-ID: <CAJM55Z9DgFCwXjQGhe+urnOg-AkJMbQUR+biXKONQsRcup1GXw@mail.gmail.com>
Subject: Re: [PATCH v10 3/4] riscv: dts: starfive: jh7100: Add PWM node and
 pins configuration
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-pwm@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hal Feng <hal.feng@starfivetech.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig wrote:
> Hello Emil,
>
> On Sun, Dec 24, 2023 at 02:49:34AM -0800, Emil Renner Berthing wrote:
> > William Qiu wrote:
> > > Add OpenCores PWM controller node and add PWM pins configuration
> > > on VisionFive 1 board.
> > >
> > > Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> >
> > Sorry, I thought I already sent my review. This looks good.
> >
> > Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> Is this also an implicit Ack to take this patch via the pwm tree once
> the earlier patches are ready? Or do you want to take it via your tree?
> (Maybe already now together with the binding? If so, you can assume my
> Reviewed-by to be an implicit Ack for that.)

Yes, sorry. This is also meant to be an Ack from me.

I imagined the dt patches would go through Conor's riscv-dt-for-next branch=
,
but the pwm tree is certainly also fine by.

/Emil

