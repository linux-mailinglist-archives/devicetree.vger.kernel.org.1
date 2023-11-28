Return-Path: <devicetree+bounces-19682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 836AC7FBD33
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE86D1C2109F
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2863F5B5DE;
	Tue, 28 Nov 2023 14:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGA1AxnE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6576D4B
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:51:13 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5cc589c0b90so55763947b3.2
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701183073; x=1701787873; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mtKmT2DzohXXoeUBiHE1NcptmxFv6Dlq3tIhE5fHNKY=;
        b=pGA1AxnEi0vbxlKeQTOZmHBhbdAZg/XT8T/uVzs6SlTOCS/gE09/1JHaHENUP8BHvw
         916kqWzTq4du3rRsYUDSkMsQBjPh9uy/YkqA80Fsq80SFqKtgx997MrvEtxQpPjkogt9
         lx445AtC7C9M2jnZgQhmpS+C9s3lXBsqldeMwOBu3RodutPKgzlCx+OkI8cz1389e63P
         S/11yo5yDQTzAnMDfqxW2Rgn3ScLkTvFa3bhIuQdJug0OGgY5l3WjTNVG6P9E1s8ZwI5
         L3RF42wP0Z9nsIDoU3/Rh53QEhjdPSYHuYloEHQQMHH/hrPNiaARB/DA2sVjxbDEauUu
         YxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701183073; x=1701787873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mtKmT2DzohXXoeUBiHE1NcptmxFv6Dlq3tIhE5fHNKY=;
        b=ApRgOSw54qc6hCZpOsw4x4FI9u0RmK1W2PP9F3OaKvnIyKjic6fgVoHHONfEcECl9a
         vXYko+PkEoiDw+NQrwuvvSuj5nSopru0FeqoZ1JjUuqbUD1htDr8yudY9lcvv1cDp+5o
         NkQKGB8bZ98OhOcUXvPOTQUTeaCfseXWYkHsJ9Cw/uwDWFpwihs1y74dC4KD2aibXUOv
         hiItjguqITC0gqeZIU7PZDjmipL2JpA1O5p/ycoRXS/Fp8Ib0f2nUbXsagKI5p2mKCsa
         XyOsPgTnHKZ9o3evbaIxYUP1uu3BlNCzBT2q1u4Rx1kc6EWEHaussK/9kIrB8CIeL1Mv
         Newg==
X-Gm-Message-State: AOJu0YyHVAePJ9GZoAVZxMk0JeSjLkWdL6vsutGnry5nsfWeXR09tv26
	JXrq1HuepIDED8G3RdECaTU6IeSmRGlxQRQU3dbrwA==
X-Google-Smtp-Source: AGHT+IFicSzJpbzDad6aZAB4TqQT3PWofoExEOGqMaEEhn64uKOyh66vKgcpu9+rbTZ3JgFvV5lGar3bJdV2yzjDIas=
X-Received: by 2002:a05:690c:2d87:b0:5ce:98c8:df07 with SMTP id
 er7-20020a05690c2d8700b005ce98c8df07mr11919406ywb.26.1701183073137; Tue, 28
 Nov 2023 06:51:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128132534.258459-1-herve.codina@bootlin.com>
 <17b2f126-f6a4-431c-9e72-56a9c2932a88@sirena.org.uk> <CACRpkda5VMuXccwSBd-DBkM4W7A1E+UfZwBxWqtqxZzKjrqY4A@mail.gmail.com>
 <511c83d1-d77f-4ac0-927e-91070787bc34@sirena.org.uk>
In-Reply-To: <511c83d1-d77f-4ac0-927e-91070787bc34@sirena.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Nov 2023 15:51:01 +0100
Message-ID: <CACRpkdYmN4318b1wXwUOeFjPN0S2w8M9FpXHOs3LtFa+XoTxVw@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add support for framer infrastructure and PEF2256 framer
To: Mark Brown <broonie@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 28, 2023 at 3:41=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
> On Tue, Nov 28, 2023 at 03:26:56PM +0100, Linus Walleij wrote:
> > On Tue, Nov 28, 2023 at 3:03=E2=80=AFPM Mark Brown <broonie@kernel.org>=
 wrote:
>
> > > If this gets applied it'd be good to get a signed tag based off Linus=
'
> > > tree so things that depend on it can be pulled into other trees (eg, =
the
> > > ASoC mapping for the framer).
>
> > Do you mean my pin control tree or the big penguins tree? :D
> > (I'm guessing mine.)
>
> I actually meant mainline there.

Ah based off, not residing in. My bad.

> > I thought this thing would be merged primarily into the networking
> > tree, and I don't know if they do signed tags, I usually create an
> > immutable branch but that should work just as fine I guess.
>
> Right, I'd expect a signed tag on the immutable branch - it's generally
> helpful to avoid confusion about the branch actually being immutable.

Makes sense, best to create that in the netdev tree if possible
I guess.

Yours,
Linus Walleij

