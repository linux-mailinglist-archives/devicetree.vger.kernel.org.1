Return-Path: <devicetree+bounces-20022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC637FD8D6
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4838AB20EC5
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C386249F4;
	Wed, 29 Nov 2023 14:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FwqjyUo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 218C9DE
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:00:52 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59b5484fbe6so67506007b3.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701266451; x=1701871251; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oCC/9FFHNPmSAvzhxutRUBRRybrgfLjmAxexqz97QwM=;
        b=FwqjyUo60rfXa30VDKbLoezKFlRoVm3iYhoHayaNiT9O2KytflIPx7XN9vUmffyEX1
         w29DWIntpUv1foGz5EPYBElbnzRt50QusN29dhGxjklg/NIi41J55ckCpdmSY0eGSDDF
         7T+2Rg3iDwpxFjPvErZhTwaYSY2s3rAgW/AW3KFnCNqscDTZNFWzy99ojirkN03LACHR
         rbGn0XKVE3cou2/rwtAU3WHOm6mobNipKLbU0R4W0jU5pQENfIiuZx2PEVbCGIxYf4Fy
         km9lK0yWFJGU0uicGp3MVDvx/O58wkxW/JtxbZhEUX4qObdFavFA6dPYlC8Y3JN7lKjj
         d8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701266451; x=1701871251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oCC/9FFHNPmSAvzhxutRUBRRybrgfLjmAxexqz97QwM=;
        b=JHZ0RqRQHsQL0tgA6WaJ601LJ1Nc81uLyTosTVHsddgtb07Mf3xEFmvH9ljmP9GZ1u
         bNOK2AhzkbKEPQICru4Qx9XU0m9da86MbNqLEP9vd2V8AXpzsLuF9BhFkTTnUSbXsTwR
         +e6xaX3Mh72SotqEvOh3zV3kRgkPqRaaO4vCGmlZkBXOAHPp+mdwGKTrg67x0UCJ8qkt
         66WhO+1Yfm8eDH94zwRUAYVKZfyYkQYXaIMkSZ1Ri1pLAkDFx1++uC/KvIdtPiWsA4kk
         mp7witznmNeNii8/meRyzK9R0BKTedg/cdR6Cr6CeOGupW4pibRBJ4O6VEZ2NZF5pgPU
         Qt7w==
X-Gm-Message-State: AOJu0Yx1UOAseDbYLFh3WnYe5Ud4nJbBPVFg33P74sJptwGqX0UTHCNB
	AE4nM57Lgv5EANu2Z9vo6d/DMm6y+zmdWWslqX/RtQ==
X-Google-Smtp-Source: AGHT+IFyoJirUdQ/sHjIeBYN1D+GunZnohdARQN0SA5/H2NW+f4SA+dOckGi81cdAlrBV7YDQYJpmmvPxIePT364dOM=
X-Received: by 2002:a0d:c607:0:b0:5c8:708f:1ea with SMTP id
 i7-20020a0dc607000000b005c8708f01eamr19853375ywd.32.1701266451319; Wed, 29
 Nov 2023 06:00:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128132534.258459-1-herve.codina@bootlin.com>
 <17b2f126-f6a4-431c-9e72-56a9c2932a88@sirena.org.uk> <CACRpkda5VMuXccwSBd-DBkM4W7A1E+UfZwBxWqtqxZzKjrqY4A@mail.gmail.com>
 <511c83d1-d77f-4ac0-927e-91070787bc34@sirena.org.uk> <CACRpkdYmN4318b1wXwUOeFjPN0S2w8M9FpXHOs3LtFa+XoTxVw@mail.gmail.com>
 <20231128173110.0ccb8f53@kernel.org>
In-Reply-To: <20231128173110.0ccb8f53@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Nov 2023 15:00:40 +0100
Message-ID: <CACRpkdbrH-WWVrVWx6MvReUuUW8tU_J8Mb7nW3G8fJGAoiS38g@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add support for framer infrastructure and PEF2256 framer
To: Jakub Kicinski <kuba@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Herve Codina <herve.codina@bootlin.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 2:31=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> wr=
ote:
> On Tue, 28 Nov 2023 15:51:01 +0100 Linus Walleij wrote:
> > > > I thought this thing would be merged primarily into the networking
> > > > tree, and I don't know if they do signed tags, I usually create an
> > > > immutable branch but that should work just as fine I guess.
> > >
> > > Right, I'd expect a signed tag on the immutable branch - it's general=
ly
> > > helpful to avoid confusion about the branch actually being immutable.
> >
> > Makes sense, best to create that in the netdev tree if possible
> > I guess.
>
> I think you offered creating the branch / tag in an earlier reply,
> that's less work for me so yes please! :)

OK I fix!

Just waiting for some final reviews to trickle in.

Herve: nag me if it doesn't happen in time!

> FWIW I usually put the branches / tags in my personal k.org tree.
> I don't wanna pollute the trees for the $many people who fetch
> netdev with random tags.

Aha yeah pin control is relatively small so I just carry misc sync
tags there.

Yours,
Linus Walleij

