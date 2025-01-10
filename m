Return-Path: <devicetree+bounces-137518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DDBA095C5
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D49723AC655
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2B02116F2;
	Fri, 10 Jan 2025 15:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q65my6Xu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E89A1E1C01;
	Fri, 10 Jan 2025 15:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736523048; cv=none; b=onyCpYq8yQF6pR7AoltePYKW1kMegcYPmilHr1UjDnpgiprPDfGcuTNCehSg1XMQJdo0ocYVOt2JAlZY6Ngkrw41YdLSsIhvrbEiREfIvltVbwCoZOkrC17orGdvzB6ACTXjrewGcSxOqW+DIDegCFNFkzSGqRRTEdJDFQSxrX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736523048; c=relaxed/simple;
	bh=lWLWetFCTJQsI+G8IfYblUhMjvW1e+4lxaTUwFYAMfM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=geXKCE1ncmCBdOUNWh+VfF1V6XZ19GmKscgZIEw94tasWSVcMZ1polM4z9HL+cW6rfQJUiBnwRMBAcSWuw2mCLpVWKLJl5dLfRgX7Knsx81O79A1kFgRihCilV8rehGXiMzy7zc1C92uceCr6Sj0w7sjO7Nlfb0CVGcwqC0YaxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q65my6Xu; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6d91653e9d7so17125806d6.1;
        Fri, 10 Jan 2025 07:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736523045; x=1737127845; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0zrOTe4P32MUWq2MQOl7BIWqEU3Y6SIXQqIMZmB2WSs=;
        b=Q65my6XuBWE/3kWwgfjw6bHwmWxNDfX92lSvYZm2cbmbjJTXMX1ZQ9QMnRLgCzMDo/
         WAe8Yn8Jr6X9dThVPW+PkJ7XzsmDrVHosvfVlZKzkWEZrAYEF18YrmBFOFmf6A0FKLXR
         Gp+BV+KIAVolY3yLkp+wot70o5cRMqUzEsynIxXO762KdK1HhJJEA2qk61EvmLKk4PdA
         jwIS218DKBqJX/H5dxyWa9jcJH2TuxqorQl54HEjYJDlbzUrJbfjfySJ5Uuh8vTCXT2C
         sjUpbyPCu/XaoJAvm5ikoRbpHeQ2gf5i6tsAapbSwRw6DXxT/Df/AcHmYpmkT0S8ne40
         pMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736523045; x=1737127845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0zrOTe4P32MUWq2MQOl7BIWqEU3Y6SIXQqIMZmB2WSs=;
        b=Sq3aV4owj3dgtaVk3cBrYqomFW9WOEbi9vKWldUayU4ZU1giuH/uQiy2D7Q77oesVp
         NFTHTztz2vWElP91qXmEIiCHkdQSdcFu1X6HndVUjDTXrDVvi/xmn9ZdKGBY3AWcu7Y5
         ptb0WUTVVHCZU4etcLbyjNmWQM3ApXAngUCIyqUFDhUd5pup4TaCiQ89Civc4xUCLZDM
         n2qRsdu3og9hwE2+ZVFC9SoFLxciARERJxM1NvIF31JfYsxLorGOzTKF1+66l9S+4Xum
         y1kqNpRgbmHkdduTk9OTYhS7mMbH9drIU7gwzQzm2GNJhjYpNvVkIXj5YRVZONBtgEnO
         tW2w==
X-Forwarded-Encrypted: i=1; AJvYcCV3nnzjLW7UUTyqL79ql/lB/IYWUriTosucxgXd/YjNnkZmMmQn9QNtldopFXeRll9biXdkSmLjz+QB@vger.kernel.org, AJvYcCX+Xti5riJfmGOVskDJi0Xi4Ro8b0ihH96IRkp3SpxI5rzuc8JmtLIuSBbafY9M0C5MOvEsINNLgmnvUlQR@vger.kernel.org
X-Gm-Message-State: AOJu0YwBxlj5OwaQ39cDXuuw/yX3trtY0k2/Y/kMiG3dgMV3ilKXXS10
	lTIlwBE5qy+D1OKhmtV80KdPBpwoAkN3EfB3t0L1wUlhAJND5eZOLQNRXHaBdB8qJiYZDVzCeR6
	2uX2hSzaduofRvWjrN4RZtsa+lGU=
X-Gm-Gg: ASbGncs0EmX/SM54UoLMDTcaQl4jsp2Mf+6zo0T4osX1ntGmPy/c9iR/B/Xa8p19ykH
	H9IzDW0mXz+lpCzNkyQlTUYK8VrJ5dp1KyVZkUXqMbHVADO5opqVL5sUZnNqK8Qb5ZAgXeDE=
X-Google-Smtp-Source: AGHT+IEnoFFUcCDxyWMJMccGcHdpcHtEs8d1tHvHYzHwmCtEP6B4k/qEsVE4N1SvaESd/DasJz0P1wR/TvZ73iY/h6o=
X-Received: by 2002:ad4:5dec:0:b0:6d4:1425:6d2d with SMTP id
 6a1803df08f44-6df9b2d62b2mr177775706d6.43.1736523043867; Fri, 10 Jan 2025
 07:30:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
 <1950286.IobQ9Gjlxr@diego> <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
 <2731770.KRxA6XjA2N@diego>
In-Reply-To: <2731770.KRxA6XjA2N@diego>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 10 Jan 2025 19:30:33 +0400
X-Gm-Features: AbW1kvbKtZndFgN6a8gaF4CRnBwYqi1xlW_2MAE9e2Mp3DOEVgrwl-t4iXkVcz0
Message-ID: <CABjd4Yy48dwZA83XRps_L_sowA_e95PcXYqvAo2J+xVydSA44A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s)
 device trees
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 9, 2025 at 2:28=E2=80=AFAM Heiko St=C3=BCbner <heiko@sntech.de>=
 wrote:
>
> Hi Alexey,
>
> Am Mittwoch, 8. Januar 2025, 16:30:35 CET schrieb Alexey Charkov:
> > On Wed, Jan 8, 2025 at 2:01=E2=80=AFPM Heiko St=C3=BCbner <heiko@sntech=
.de> wrote:
> > >
> > > Hi Alexey,
> > >
> > > Am Mittwoch, 8. Januar 2025, 10:09:07 CET schrieb Alexey Charkov:
> > > > RK3588s has four SPDIF transmitters, and the full RK3588 has six.
> > > > They are fully compatible to RK3568 ones. Add respective nodes
> > > > to .dtsi files.
> > >
> > > While it may seem that way, we still want soc-specific compatibles,
> > > to future-proof this.
> > >
> > > I.e. going the the
> > >         compatible =3D "rockchip,rk3588-spdif", "rockchip,rk3568-spdi=
f";
> > > way, so that now things can just match against the rk3568, but if som=
e
> > > fault emerges later on the code can be fixed with the DT staying just
> > > compatible.
> > >
> > > The spdif also has an example already for all the spdif variants that=
 are
> > > compatible to the rk3066 [3], so it'd need another "items" block for =
things
> > > being compatible with the rk3568.
> >
> > Hmm, if we are to believe the driver ([4], [5]), they are all the same
> > as the good old RK3366, which in turn is software compatible to the
> > good old RK3066. Same seems to apply to RK3576, given that its current
> > .dtsi just references the "rockchip,rk3568-spdif" compatible.
>
> I was for a short while afraid that something slipped into mainline :-)
> But I guess that "rockchip,rk3568-spdif" compatible on the rk3576 is
> only used in the vendor-kernel.

Sorry, didn't mean to give you a heart attack :-)

> > Does it mean that the binding needs to be restructured so that the
> > required fallback compatible ("rockchip,rk3066-spdif") applies to all
> > variants? Or shall the existing ones be left alone, and just RK3588
> > and RK3576 added inside that "items" block?
>
> I noticed that the spdif binding has had an interestings growth over
> the years, with some socs being outliers.
>
> I wouldn't change the whole binding, especially as that then touches
> established stuff.

Noted, thanks.

> The question would be weather to add the rk3588 + rk3576 to the
> existing enum marking them as compatible with the rk3066, or create
> a separate items block and just saying the rk3588-spdif is compatible wit=
h
> the rk3568 one, like:
>
> [...]
>       - const: rockchip,rk3568-spdif
>       - items:
>           - enum:
>               - rockchip,rk3128-spdif
>               - rockchip,rk3188-spdif
>               - rockchip,rk3288-spdif
>               - rockchip,rk3308-spdif
>           - const: rockchip,rk3066-spdif
>       - items:
>           - enum:
>               - rockchip,rk3576-spdif
>               - rockchip,rk3588-spdif
>           - const: rockchip,rk3568-spdif
> [...]
>
> With the RK3066 being released in 2012, part of me is amazed that that
> block survived that long, on the other hand going with the above snippet
> somehow feels saver ;-) .

Let me first submit a short series dealing with RK3588 alone, as
that's the only one I can test at the moment.

Best,
Alexey

