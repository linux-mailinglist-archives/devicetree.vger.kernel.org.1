Return-Path: <devicetree+bounces-66750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E80A8C4758
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 21:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0434A281DE3
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 19:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC2B4436B;
	Mon, 13 May 2024 19:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F88L8rB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E50B2EAF9
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 19:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715627031; cv=none; b=CLJsx89Jq1YMaAVYOOqG82IGgA8gtcJjlBphKIpV44bVZbPQNQOlMziyOPvrb2d7Fzv706sRp3RbPJ3Bo7XaKArct/6l9dlrKI8e4Q3GoRXaFfnT+l1Sq+kOzX33h6GUqSfD9HRIx4rXIwoUF0rJToBWmXXg9rDT7E9sWtJSU4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715627031; c=relaxed/simple;
	bh=ODnBtUQC1KGN4ow+iWiB+NzhvXE+z0uYg67vlzoql8U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ws8SZF4dfXlAg/8Qp7Q1fQ/0NBFABT8EIUYxg617rwIPWSz/DlVX1JFIDHkav/1du1k6BVcAYWM+Fp0IKkINyVgTX4nAhCiReyqwsj2I+zs6NCK6O66QqQI0SySkc6eGjWhEb09BrRF6BvCiWO2e9qdCGvlEuJJG5G3zmeZ1ji0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=F88L8rB4; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e0933d3b5fso70588161fa.2
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 12:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715627027; x=1716231827; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nhvUe0kz82j++VbhjIKW6Ozs4qMAqHSTH+1XrVw/7S0=;
        b=F88L8rB4UB8o45X+uuVh56RqHNcVBskatOIFhVaO4kl1vtGv5fLmcyj5Dx9EvhDZNE
         ADybMfqCX1x+uagiX5Sco95XrX8fGwOywU0rHwBdQGlJ2hIDpjfW2oHQcTmvki59p6M5
         V8TGEPBqdWI5cgi7ZQ9/o2CTyOkbEq8TsukYDkCC497chYIMHxyYJGdJ6bK8abuKRNLh
         ox99c3TCHFyS8VtxCQdu/PisMYnwvpv536wJSeDlmoES7kdIRA5hzKRLmtK4IGwXmv6+
         Xv6xF/S6DVW3Mw+5HRuvdHt31f/ISraQp5Jj1iQHlxm0/ArIUkWsHYHZXJ7myKdNoLKl
         KTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715627027; x=1716231827;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nhvUe0kz82j++VbhjIKW6Ozs4qMAqHSTH+1XrVw/7S0=;
        b=B0sbGyhie8+Lwsmdzpvu7ArTqtSz0IgQ88/Y50e85kKKwrZ8l/Evl61X5gIQXZqfSy
         3RBON/9k7CARYIa1x2YIylapzNxuK4kJG0n10UPQdGsqu/c0n1WllA9jiPV5csX5vkkd
         tr5YcemR1yt6JKGS1Rpq75BDudIeat+jVIaValSO7v50wUPQiR72HFrM6ctR2TfxXarL
         u8CIafhM3yRwX49b05LATN0QiIAyzXXJ07xdnPOzFGY6JBV3kiu70Sh3zUS7a3GbQfEj
         AVr5kssMMx8heU7M1xacT3WQrMxp71lThZBRSjmcaE4gNK0LOGqCfgNDVpwGb6/e/epE
         Iu1A==
X-Forwarded-Encrypted: i=1; AJvYcCUxHnhW7JGJjfMcHRDGnXO3hfwwITw+eH0BsdM4EsDlq+dWsf/CSD0HbMSwkMcguNwZ6tSyVZDV/iNxDc54HfjpOumElQvsvgsDuw==
X-Gm-Message-State: AOJu0Yyp6xl8SDylJURjU/g/lsPQssY4Jr9XRPgCu1UQAW61STk/4Xo+
	CUwJo0hJ+mPtapelsml/DtDnD8jpMPfbR0yzpwviAMhvmSPpJF3IXcGlaRFT3Nc+T2qE5oG+r8s
	Nt636pwv1eW1gYrHl+6aDiPSEFbW5Y7hFAqTHkQ==
X-Google-Smtp-Source: AGHT+IGZ69IeXMlMpqoM2M2YCgUD+Q6OrAktJUZz+SfLTgBzkeHUgQGwGofSbNJO2eeSU7To0QFto6gNN1OAzOT88qk=
X-Received: by 2002:a2e:2c15:0:b0:2e1:c6bd:ebba with SMTP id
 38308e7fff4ca-2e51fd42043mr59366271fa.1.1715627026721; Mon, 13 May 2024
 12:03:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510141836.1624009-1-adureghello@baylibre.org>
 <20240510141836.1624009-3-adureghello@baylibre.org> <CAMknhBGU8bXg7obzyjzb7a4AUbjnw_0b+mqEAYJJekAK2CB-CQ@mail.gmail.com>
 <20240513185231.GA2920495-robh@kernel.org>
In-Reply-To: <20240513185231.GA2920495-robh@kernel.org>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 13 May 2024 14:03:35 -0500
Message-ID: <CAMknhBH6CrUmoUiSmU-EGc0eLw-HbaO30gAcsLBQppe3uYHpWw@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: iio: dac: fix ad3552r gain parameter names
To: Rob Herring <robh@kernel.org>
Cc: Angelo Dureghello <adureghello@baylibre.com>, jic23@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, nuno.sa@analog.com, lars@metafoo.de, 
	Michael.Hennerich@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 13, 2024 at 1:52=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, May 10, 2024 at 10:43:18AM -0500, David Lechner wrote:
> > On Fri, May 10, 2024 at 9:19=E2=80=AFAM Angelo Dureghello
> > <adureghello@baylibre.com> wrote:
> > >
> > > From: Angelo Dureghello <adureghello@baylibre.com>
> > >
> > > The adi,gain-scaling-p/n values are an inverted log2,
> > > so initial naiming was set correct, but the driver uses just
> > > adi,gain-scaling-p/n, so uniforming documentation, that seems
> > > a less-risk fix for future rebases, and still conformant to datasheet=
.
> > >
> > > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > > ---
> > >  .../devicetree/bindings/iio/dac/adi,ad3552r.yaml | 16 ++++++++------=
--
> > >  1 file changed, 8 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.ya=
ml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> > > index 17442cdfbe27..9e3dbf890bfa 100644
> > > --- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> > > +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> > > @@ -94,13 +94,13 @@ patternProperties:
> > >              maximum: 511
> > >              minimum: -511
> > >
> > > -          adi,gain-scaling-p-inv-log2:
> > > -            description: GainP =3D 1 / ( 2 ^ adi,gain-scaling-p-inv-=
log2)
> > > +          adi,gain-scaling-p:
> > > +            description: GainP =3D 1 / ( 2 ^ adi,gain-scaling-p)
> > >              $ref: /schemas/types.yaml#/definitions/uint32
> > >              enum: [0, 1, 2, 3]
> > >
> > > -          adi,gain-scaling-n-inv-log2:
> > > -            description: GainN =3D 1 / ( 2 ^ adi,gain-scaling-n-inv-=
log2)
> > > +          adi,gain-scaling-n:
> > > +            description: GainN =3D 1 / ( 2 ^ adi,gain-scaling-n)
> > >              $ref: /schemas/types.yaml#/definitions/uint32
> > >              enum: [0, 1, 2, 3]
> > >
> > > @@ -109,8 +109,8 @@ patternProperties:
> > >
> > >          required:
> > >            - adi,gain-offset
> > > -          - adi,gain-scaling-p-inv-log2
> > > -          - adi,gain-scaling-n-inv-log2
> > > +          - adi,gain-scaling-p
> > > +          - adi,gain-scaling-n
> > >            - adi,rfb-ohms
> > >
> > >      required:
> > > @@ -214,8 +214,8 @@ examples:
> > >                  reg =3D <1>;
> > >                  custom-output-range-config {
> > >                      adi,gain-offset =3D <5>;
> > > -                    adi,gain-scaling-p-inv-log2 =3D <1>;
> > > -                    adi,gain-scaling-n-inv-log2 =3D <2>;
> > > +                    adi,gain-scaling-p =3D <1>;
> > > +                    adi,gain-scaling-n =3D <2>;
> > >                      adi,rfb-ohms =3D <1>;
> > >                  };
> > >              };
> > > --
> > > 2.45.0.rc1
> > >
> > >
> >
> > The DT bindings are generally considered immutable. So unless we can
> > prove that no one has ever put adi,gain-scaling-n-inv-log2 in a .dtb
> > file,
>
> You can't ever prove that.
>
> > we probably need to fix this in the driver rather than in the
> > bindings. (The driver can still handle adi,gain-scaling-p in the
> > driver for backwards compatibility but the official binding should be
> > what was already accepted in the .yaml file)
>
> If we can reasonable assume that the Linux driver is the only consumer,
> there are no upstream dts users (in kernel or other opensource
> projects), and/or the property is somewhat recent, then that's good
> enough IMO.
>
> Rob

Ack. I stand corrected then.

