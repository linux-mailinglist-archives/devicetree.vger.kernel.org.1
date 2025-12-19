Return-Path: <devicetree+bounces-248120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A93CCCF00E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E96D2305A807
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6022E7645;
	Fri, 19 Dec 2025 08:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BL6lMTy0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7366D2E2850
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766133381; cv=none; b=esn5MwemPjn3VSft4YAAjieexIYb+djTaTSNMtis3aVZYGd8KlhkT8AGyhnpI81d5W8SZO5ByFqMFlKCHKrxaMGqQa/O0d2MK4neth2wSrBNddB526yxtSguUjYO++9UNFKVIUSqs0dX+G3TjTm6KWGZPGcVyZNh0xhvL19a2yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766133381; c=relaxed/simple;
	bh=D7Kw7hpkMoxQAkeUZaWO/9wmSqvJV1cg49oavuqCWf0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gw9fO8sYmiBVtYqdEFmUI5BZ1otHgyR0Xetle7jLbFFKkCNp3ehKJLD/itbYrjntN4V5dEjMvWxj9MgWw69sImurTbHtyxFNM+x//BVYwoqoPQYkUGFVBQv6dN9aJGu8nPfghHc4/oDrdH0CeqVIGyCEvWhgYhByq+caxnhVJc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BL6lMTy0; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a07f8dd9cdso16956515ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766133380; x=1766738180; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQ15vqIj64VulmTvMX7gKagznPfyt4IeoJrE3JDAELA=;
        b=BL6lMTy0VKxXRqJ0WHJtm68KJO72TtBnfL9C4S99/MmDwVYBgPdO9MqNQfz61aghO6
         ulqyIPi3u7+uSLJr7IwAaJ5WyoH+bZnBOpEsU+SJ5UIV7iBibdnicyoC5IFewZY+W3Hn
         icZB27z/gRuFeCpOt9uviCpJvJwQdctX6AlLYVH4nVwe9VVtTFE9zMfBY3fz8C0uvxc8
         WQP8hkXUBpd+x1iLoeje6MKyyA9mItfbFNTHHD7rOpYnZWyZ6bSsW+ZqqZIzQc2J/bzS
         Ls9tBpgLBmQ+YAcKB1fI0bwcC3SxtuNwEJc+HDpv4ZnM2Dx5DsjpdZYQUuiHTQn+STiU
         OGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766133380; x=1766738180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZQ15vqIj64VulmTvMX7gKagznPfyt4IeoJrE3JDAELA=;
        b=PiaXrb9C3+H8vlIMvBf+upO2XC6wsfRoDLzHFHt/U5g5YpB2HLV0j3+K2VJ5b+eCzm
         MCbW/Jx+pRqtRusNl6q6FY+76nhYocNleAmRZd0j7jh28EauatXHXBfT+2jga3mxmnkC
         CCHKEnGu4+G0QYbLe8tZJq1iQR369bbAZqrhDE6e4J+LJ/C1F14S3v6a6Mc1pRurv1Zb
         AhwlzVAZE+vcMrE4NsjEfeQ38R+RmVSa/G1z41KqxrdrG1m8jG7G2aa6/V90KYcLsVpr
         W1frB/ZYw8e/IbDl94EKvj7SYvLLVSpAd7aESXMdM3axpkyuwI57RbsqXRdoSxzknU06
         l9iw==
X-Gm-Message-State: AOJu0YyMzz4II7B3fcYV1fCVbykKTycoaXgw5j2xgBUfWVYLL758mHZv
	cwJs5+ugUisa4ZliOW9thVVz1kWFV3VCp6BGZh0m8PWHXEklypHwkfEA5Kqi6c4MOz7VXZ7Tp9n
	/8uxxTTdF5OYa+WutOATULnlrNApUZwY=
X-Gm-Gg: AY/fxX5b55/dwv2gWBs9TcyVbF48l0FO1TuS1zA1yBCZ5M7vRtv0PyWMKlZBJnray68
	WruHv3ztS3uSXckAL2DgRwzENXWiyhc2KQGuM46JMUeYgAzH9o7KK9OCEYFHBrXqAWMnGGO+E07
	S2YVqZUGmRvC6D8AJ5tk6raTToMyaVsKVrLF1ReYEyrSwU30KTOwqieCpGDbQyL7pzM/gmU7epm
	A8rntEzdHDLf8YVKGGHSckQdN15LPMyi7I30eN6SmUyc7dO52xwTmLlz9JiP1q3ALomjIkH
X-Google-Smtp-Source: AGHT+IHoMetY0jMBrCjdGc88mFfxhQzBRDJteW86k7GC+pHgWJLGWEQWxMUQQCJ4cUxyjd7HhWR7FTDj+6JvEJptRWA=
X-Received: by 2002:a17:903:2a8b:b0:2a1:3cd8:d2dc with SMTP id
 d9443c01a7336-2a2f2b53f26mr20958725ad.57.1766133379728; Fri, 19 Dec 2025
 00:36:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
 <20251118-yv5_revise_dts-v1-2-fcd6b44b4497@gmail.com> <ad11cd30eddc1b7c496cc92eef129eb5c0f2d604.camel@codeconstruct.com.au>
In-Reply-To: <ad11cd30eddc1b7c496cc92eef129eb5c0f2d604.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:36:08 +0800
X-Gm-Features: AQt7F2r_PXl3skkkTv3B_wJpuSzrJrIzk8N8zRMoeuWF6kLBddZNyUa8Y0zFtL4
Message-ID: <CABh9gBeCU7Xr818AL2ud4SxFQ=D=4D9YwiDUu4HttWuOqO+7ag@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: aspeed: yosemite5: Update sensor configuration
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
	Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Sure. I=E2=80=99ve added more detail in the v3 patch to clarify the hardwar=
e
revisions and the rationale behind this change.

Across Yosemite5 board variants, two different power monitor devices
(using different drivers) reuse the same I2C addresses 0x40 and 0x45
on bus 10. As the hardware evolved, newer board revisions replaced the
original devices with different ones at the same addresses.

Keeping these devices statically defined in the DTS can therefore
result in incorrect driver binding when running on newer hardware.
To avoid this, the 10-0040 and 10-0045 device nodes are removed from
the DTS, and the probe of the driver is instead handled in user space by
the OpenBMC Entity Manager based on the detected board configuration.

BR,
Kevin

On Mon, Nov 24, 2025 at 12:42=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Tue, 2025-11-18 at 18:53 +0800, Kevin Tung wrote:
> > Remove sensors 10-0040 and 10-0045 to align with the latest
> > hardware design changes.
>
> Can you please elaborate on this commit message? I'd like this
> description to be much more specific about revisions of the hardware
> design, and why you expect all instances of the previous design to
> suddenly stop existing.
>
> I can't imagine this is the only hardware change that occurred. What
> other changes are lurking?
>
> Andrew
>
> >
> > Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> > ---
> >  arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 ------=
--------
> >  1 file changed, 14 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e6457=
1631b7f6944f26213 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > @@ -674,20 +674,6 @@ gpio-expander@22 {
> >                       "PWRGD_P3V3_AUX","ALERT_TEMP";
> >       };
> >
> > -     power-sensor@40 {
> > -             compatible =3D "ti,ina233";
> > -             reg =3D <0x40>;
> > -             shunt-resistor =3D <2000>;
> > -             ti,maximum-expected-current-microamp =3D <32768000>;
> > -     };
> > -
> > -     power-sensor@45 {
> > -             compatible =3D "ti,ina233";
> > -             reg =3D <0x45>;
> > -             shunt-resistor =3D <2000>;
> > -             ti,maximum-expected-current-microamp =3D <32768000>;
> > -     };
> > -
> >       adc@48 {
> >               compatible =3D "ti,ads7830";
> >               reg =3D <0x48>;

