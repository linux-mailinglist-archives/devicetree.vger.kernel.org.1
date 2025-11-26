Return-Path: <devicetree+bounces-242456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C92F9C8A748
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02B533A4775
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00786305070;
	Wed, 26 Nov 2025 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WIPIsv9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1E130505C
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764168564; cv=none; b=kf+4gIw4XvMyIQzupE+KHOMd4ngctKOKLqL7/MesnRdRvEVjud5QrXdYo6hNk+/pwiOVL/gyLgSsrOSgXeCUgv75LK9K2yBsurEsqSaX5sKsoN1oOqUYTX1WzuRL+aKOlDey7IhYFYeVAK8Mp2+aHzabrpzO7uZWdWoF9yKuQWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764168564; c=relaxed/simple;
	bh=X90n4/xEsNNtTW5M+ViLnoEWViGG8uOjy8+up5i3LJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VBf/MYj7A8AeLvg9Chb06Gc1rk2usiuEJomg3isZ0tNPrx5ocncdlL/kcpQp8j/yO5Wa/ZTwRXJ4qZ99AsBKOAhe0UwgHS9EJCp8MfS2vx1pW04ubZowVhloUtdqIUq3oNi6OnUft//JcvJivYqozHS1OFyvFxZK9DwOUlgrzdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WIPIsv9j; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42bb288c17bso4143249f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 06:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764168560; x=1764773360; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RR1JCp797O9wqgpyCvTsdnJYxWjCsl8jJjbbc9t7CdU=;
        b=WIPIsv9jcg72v0TnOX7Ovj5YHF/9ImpaIzbJXg34bTUKA/9EqRaeVIGVyVALsP6fPn
         52Ln4kLR6aBUA465gl4TnuhQRSUUuySm53BF6r6nq0h6+NnlmA9GaCu44aSlEDmNRZuO
         bbK4mrDlliwQOGYeBymZLvFOwOjkXOILWHJGE0PsKgDhRAHaEGOQpOTq2kKf7plAZ8IU
         400u5Eg2oFaCJLqGzjBTQcteHUXd4wnoGD1DDxq74VM1B8yAIhA0nMgzMzzrRM78uqNl
         4b31dgxzExOVU3kbSl7kmdfX4mQJ4kdAZZq2u1VTC6r642eucT3tqWiRwUQitmO46KN6
         lpeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764168560; x=1764773360;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RR1JCp797O9wqgpyCvTsdnJYxWjCsl8jJjbbc9t7CdU=;
        b=OP2L1Ho4jNi93URBlG0KZjjuD4AIauJtbhQ/FtFilMSoDO3Ye4+7eYfI2pAxyUOl9m
         oCEr5sPhnlcOI6BQ6ZAu0mZJtcbvfnhReBJ57BypzvgD0Cs52gKeD64JRWmZUO4Iy/KN
         KQj0tcLyk9bCncntpyKdhQLpJXBvvtJPvqsJHDW4bBh3Bpt0mZ+38u22OKzrTYC3zFcV
         9tyDzKYvjiYYUdXcvzgnLViipXbEpvfynYXUstiYRGOxq59R3q6kMD8AeBBk6qnJDBOy
         WcKCFlCOy22FAei/zeXnzBgzkpJxGntakhFIBwMl1qDWxwJaN/j4786Miij10bQ0M4lH
         GS3A==
X-Forwarded-Encrypted: i=1; AJvYcCWca0n+8P8OEwH/5WMXOQxB218JJg3hmV/mGzctudegAT/myh7z1d4gUA0dbHDtUt2FcULZV7/0IO+V@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq3yfLu+pN1gFqHP+2u2/jTSBdqp7d+x9oCoWNM0jTt+VGFWxM
	kblJg9CcGK7LKtp6Y4ji8NAiohBySpzXVnChGxjwW6WOXjsVUEzzGpgmwX7ukZyhO0w2vYLs34F
	6IgPc3Twjt00v028ZcBz+QvxQfs+9Ms8=
X-Gm-Gg: ASbGnctoH3o8pQED3I8+hh5IYvfuq48Ylc+VrBCH6qciQDzFlj57jcJODctJvhiKfUk
	/86oAqMIDcZFrLb4squXwLMSko4bmEcA4z9aMTA7h+VNzKErWMdZTfYeMCKLKC8vAIRwSZCvOpP
	KbmniinV2GVliV5co8LPrFKLeSXW8IjDvZaaSXBCGsMRdEc5R3SoDkmWUF/qB0do/QqiUgs3exP
	CgPwBOefjZyeNJQzK4ItVZRDmpL8gDxsX+4b35EvG+S5urYlh5Ytauk85ud7kx7wn1SUq2aXl/S
	0dnMHe4/es8guk7xAl+1CK/a6fjl
X-Google-Smtp-Source: AGHT+IF5Rmaefo08E8uWq2fz5qazbUVyqew0MeAiJXekiHj02o9RunhH9RATwPSBkkzppcMA+GzGSjRvFEoUNvQDr3E=
X-Received: by 2002:a05:6000:288f:b0:42b:3246:1682 with SMTP id
 ffacd0b85a97d-42cc1ac93aemr19306237f8f.16.1764168559442; Wed, 26 Nov 2025
 06:49:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdXD3f3jN2F7c+yHmEb1C5Byc-e=sEXt_s=UpBQLv_F=Pg@mail.gmail.com> <b3e31f95-fa05-4a57-8983-88f237240068@sirena.org.uk>
In-Reply-To: <b3e31f95-fa05-4a57-8983-88f237240068@sirena.org.uk>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 26 Nov 2025 14:48:53 +0000
X-Gm-Features: AWmQ_bm_CBLe2VBBiM6Kx1K4mZfwMTLznI-p9OWjk2jULfQ4JKiHB7yS_be1yyg
Message-ID: <CA+V-a8uT+Vpp=3eBEtYm4QC7pbFpebCWg=Obq82kXSknFMkXTA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/V2N SoC support
To: Mark Brown <broonie@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Wed, Nov 26, 2025 at 12:34=E2=80=AFPM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Wed, Nov 26, 2025 at 12:38:28PM +0100, Geert Uytterhoeven wrote:
> > On Tue, 25 Nov 2025 at 22:45, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
>
> > >        - enum:
>
> > Please don't bury the enum between two items.  Put it at either the
> > top or the bottom of the oneOf list.
>
> Can you resubmit with this reordering done please?

Done, posted a v2
https://lore.kernel.org/all/20251126131619.136605-1-prabhakar.mahadev-lad.r=
j@bp.renesas.com/

Cheers,
Prabhakar

