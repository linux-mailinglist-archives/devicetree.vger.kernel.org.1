Return-Path: <devicetree+bounces-229033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCACBF3355
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B456E3A8F7A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F9832BF46;
	Mon, 20 Oct 2025 19:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VblrGhtG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DD42D9ED5
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760988611; cv=none; b=DBjUZk7XD2CuT5H5BiEKdq7GdN8L9Cbx6k+T63bptrdOhcZXC3W1xODF5WbRugEf/TcjjcDn2R7sHpXnDoO0D+AWZBSvANI2xVsfsM8fBDLbPsnBwut1eT5Cw9WUErDKozGzqA3TxD4Yr41DXwHDAXK7go1KJQYtFdgNR1cmXUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760988611; c=relaxed/simple;
	bh=9GdDL7+3mULH8MsHFnHWRsu7pRMHDK4Pcihd8YMTY1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e4k9KmyfVHS1XkzF7xDOgNlbrOLhIHKYJz1yDFliKDqqaQSaY1JLNwM0uF0/a1HL0o8NrSjbMKDGVYb5nKsev/uTtLEkShOCgwH+hONpffeGXT7SY0jrj93OWHYSZKCdkow+D3WAJpBN80uT9WFaOYG4NULw7dkJYgeQhME3scM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VblrGhtG; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-58d29830058so5576677e87.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760988606; x=1761593406; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFZNqT2D+DsLVgY6VgSkl2denBx7SAaoL+y9bEiDZII=;
        b=VblrGhtGbfm69ssIpjv2TWOn+ijpOO53JaiJUpKmahR5auwsbMn/07Zs4gIfq9cE9n
         3Gorffv94xvKmBvC0pcwPN26rJJHDZ+VHC33+NVztcH558wuPA+xFXC5HNO+QZy7b6Op
         g4clcf0spNrzrHe4tZLhJaoelyUCL/sHOkOAvts1chcLZAiKLBynq87IzBNxP3Y7N9xl
         jts4h6IXuLKZiqJGj/939urWXzsXhgMYL8ON90xZRfquCDd7TddzOAWe0tcHTPjqM0S/
         4+yRLRxmGFvN5uM8fKz12BzhNTVjK24ksa5zvazSrMaeNfCYZIq82C9Hx5McaBHXrMLO
         wjTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760988606; x=1761593406;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NFZNqT2D+DsLVgY6VgSkl2denBx7SAaoL+y9bEiDZII=;
        b=Eu1PqJ9uMjzGhpG/Nj+QpE2ww6d6nVrBtIAALSzfhAOfK9refh+T3AWhVW0gSoNaJJ
         SGFpO+nP0y/o7GJGZZYlNmHkClOqIX10riEWAcw63tg4hNtoDlQwQ3+jQHCNpicrc+c0
         d61QHvVdZh7UzJ0YIGSdYM/ABxlQENwmh0OD6Oy9/gRed/aae3DdilN1CE72QjRWp1Y9
         2NIcGgHRCAmXZ0pq/IUdEah7C6Y6s99uzFARdLulTOqYvBjBBZ3MnQU5jdBWb7xWOlDh
         aGlT3gkTe+xgnqYARtdgJ+2bnnqbtoSwfrzkAns1ssmWcI2pcJF8Nu8l7SbJrjg4tyBY
         WxXg==
X-Forwarded-Encrypted: i=1; AJvYcCUp1UqoE9rP/7pjJlu94vU6wLvMdVj+i1iXnYapHBElezHR2FmvQDh8OL0Pc2lH1ssuLHCuCidxhXTL@vger.kernel.org
X-Gm-Message-State: AOJu0YxKeImE+ITJB54RXm5w+q6NJJDu+1EX/Zm4HHfIlfEyWs6oPEbq
	H9Cb+E9fv351YqBya6OnSDaEXtjo1pXyjZBjvqkZ6gFW9Fpkwkh3EaQfZ8nF05BSZ1pl0JGW8Gm
	GW/UaOptH1M/UBLVusSxU6bd7/83dago=
X-Gm-Gg: ASbGnctlxsu+OiZ00uh4AunRZy8wttYjQHdS6Hro4xxaoIe45JvjjuWSmRPu2LI+xJd
	f5YcrAThmqkPR8rZ9FN5cpPx74kN7+w3nzTDoqJtgCm8dpIiutsDoGsR6FogJxnh4eX+eKdv9Mc
	QEHf46uP0/p9c3j0hil7xKfC9hsImr/2rbPiQs11XR8ap0ilyFhP54Bb8VHf/qk+RNZVOIf+5yG
	Q2EIRKmQB0UEaOLskmquegfgPASp/R0Chah5VJcbNgntSGMK4Szqx7pDLA4byd0XF3GAdCk+dEL
	FuxfqS0JelSQfufAIw==
X-Google-Smtp-Source: AGHT+IH8pJ/l725F7jpzit86CNm+iBx7HYI5g7kErnw7UkpgGPy+kn1LJM6uau/6mX+yCgesQsO7k/FLWd0sn0ytGhY=
X-Received: by 2002:a05:6512:682:b0:583:ac7e:4e1a with SMTP id
 2adb3069b0e04-591d8502b29mr4582945e87.23.1760988606107; Mon, 20 Oct 2025
 12:30:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250526-p3450-otg-v1-1-acb80ca2dc63@gmail.com>
 <CALHNRZ-pE4EA=x-7LuJev60=aOwGt2eDf9mGVHWJ8SPGisBchg@mail.gmail.com>
 <CALHNRZ_W6gQknMr=eKEcB6-k5HBBkE6JfJ9LFntX9L+NTo5hUQ@mail.gmail.com> <iiooyryqjbfutvyycrk4wxgkhow42bnks7ndkkqy2zujv47bly@2f3sgagl6yte>
In-Reply-To: <iiooyryqjbfutvyycrk4wxgkhow42bnks7ndkkqy2zujv47bly@2f3sgagl6yte>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 20 Oct 2025 14:29:53 -0500
X-Gm-Features: AS18NWBRKorxOsoZ_E9SDZMzdQeGC1t6Wb2mP6Y3s6-jRK4cbkxihFxXMR8bUok
Message-ID: <CALHNRZ9OTfYqKzP4Dk80q8bFY8ZWF1=bTCBPRuVNJKGNe-L=hQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: tegra: Set usb micro-b port to otg mode on P3450
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 1, 2025 at 4:41=E2=80=AFAM Thierry Reding <thierry.reding@gmail=
.com> wrote:
>
> On Thu, Jul 31, 2025 at 04:40:05PM -0500, Aaron Kling wrote:
> > On Mon, Jun 30, 2025 at 2:35=E2=80=AFPM Aaron Kling <webgeek1234@gmail.=
com> wrote:
> > >
> > > On Mon, May 26, 2025 at 8:22=E2=80=AFPM Aaron Kling via B4 Relay
> > > <devnull+webgeek1234.gmail.com@kernel.org> wrote:
> > > >
> > > > From: Aaron Kling <webgeek1234@gmail.com>
> > > >
> > > > The usb micro-b port on p3450 is capable of otg and doesn't need
> > > > hardcoded to peripheral. No other supported tegra device is set up =
like
> > > > this, so align for consistency.
> > > >
> > > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/a=
rch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
> > > > index 0ecdd7243b2eb1abba9adbe9a404b226c29b85ef..019484a271c396edc30=
200e8592c713455a8e1a4 100644
> > > > --- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
> > > > +++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
> > > > @@ -514,7 +514,7 @@ pcie-6 {
> > > >                 ports {
> > > >                         usb2-0 {
> > > >                                 status =3D "okay";
> > > > -                               mode =3D "peripheral";
> > > > +                               mode =3D "otg";
> > > >                                 usb-role-switch;
> > > >
> > > >                                 vbus-supply =3D <&vdd_5v0_usb>;
> > > >
> > > > ---
> > > > base-commit: 405e6c37c89ef0df2bfc7a988820a3df22dacb1b
> > > > change-id: 20250513-p3450-otg-b947f31843d8
> > > >
> > > > Best regards,
> > > > --
> > > > Aaron Kling <webgeek1234@gmail.com>
> > >
> > > Friendly reminder about this patch.
> >
> > Re-reminder about this patch.
>
> Sorry for missing this earlier. We're in the middle of the merge window
> now, so I can't apply this to a tree that feeds into linux-next, but I
> will pick it up once the merge window closes.

Reminder to pick up this patch.

Aaron

