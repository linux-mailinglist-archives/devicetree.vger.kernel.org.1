Return-Path: <devicetree+bounces-219050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23FB86EDF
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D98D01C87CA6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD0A92F2910;
	Thu, 18 Sep 2025 20:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="dGITqn4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160462D63FF
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 20:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758227871; cv=none; b=Brojm/irKdBQFj4uYCu9J5DUibRuONDeN0ptxeaUV4B0dd9+czPpH6009SDOrNojUIo9YtpqWBvoPBNPZs2Rodudz4sAOqETWAGoqANQj3T1TJNbd7vI7ET5Gzny3dOsGB0ACL+O2W61ZjxGgT3PHztKcDyyk8B1xUy90HiyIkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758227871; c=relaxed/simple;
	bh=+0R/2T7Tg9D4YiaoqRiplwCZvbPjlzXYv47AHkbl7dM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DilhLTNZxRRcG45qRNNr6nPE8XU4Esga+EdHckESazrslZ77O367ALEtb8To1cmFUGlSLnGIhIAmcAIh4vaeZBMhQs/7GuvPYOJHdyeAZfRToNHsEieE2rJ/4hm5WWj24KLCFdx3eO74Rks8hOjGc6bo65v92vhAdwQyom3y/6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=dGITqn4J; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-ea5c612297bso1070727276.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 13:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758227868; x=1758832668; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPqblTFKrLAe0mzsDyY6YySHuY6Q2kBBLw78NU0KIeg=;
        b=dGITqn4JwTmj5KwN35OD6/w5on0Ky8BtXx72gnPAkmp+/tXztRoUxlrBVs4ZSLAQFl
         0WJTdsR4LIGjuEl1QwUmqXU1ZbKWotDZBJG6uz0fcDJu+Pde2OpvjBLV6Wcgt7ebZaGE
         3IiA0rQaf+FOGwRk4LF2MySoeTtdmVC5ogGWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758227868; x=1758832668;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPqblTFKrLAe0mzsDyY6YySHuY6Q2kBBLw78NU0KIeg=;
        b=Hvz1yHnHJVMnZAZQUE0W4mtFTjgwfajhdDnzS4Xcxoqt/qwXvG82GjT9ZVC2REotyP
         esKvsV8LVT9NpzMD9T6YmnBvQR29a1jIKDfXiNoOtYQRRlJZv9mAqNltsCMxFAECioV1
         LrlQEZEVxeoGGbCKc4kR1ZzNSGN6trmyALHwEdK7P5crEiobV0Vbmge6Z8Rb3VFFrz0A
         6osjgbmafYNIw6lG97vRRJvGcXL3M1U1jbb/HNYg82y6Pant0AYAOg45WKt2VvBtNo5K
         PEsqJjS5CGgXuLxPYHuKnQ+tx9rE0u/GGhntUm6BCu6G5pCDnGAsi3rGoVFpLzgrXHII
         RkoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkuuFU6vAbEQAzLjVuE9mBQODQyPVYKXtp8uU++xvwKx2AwtNjUa2J8QHHn2JCLICqPjltQidqDOLG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw505vju5dFuIYnooGLkTuLDYM2TBEYmPAlVdrbUXyqoXDinDjq
	FmeJ5LORTuPQYcDiiykiUaRCdtrDYSK68QTkCKluvK8bwv8zA6SF/Mp12nZncP2LKSiyYjXr+UC
	bFSEct4D87K5QgSZHaG/4Eb5DBFIPyOu6353wEoXWag==
X-Gm-Gg: ASbGncskui02vU3BHzLgYHFj1Gk9GfUleFBW1o3Rg7b2I4Grlc94dnGneQC5IY4th8T
	MvXYfrZ5GBpvmFbdcokXepIOMwYu6zMlbetEK5tt20gX4qLS5ELSIbFdn0o8CRbNGOIJCZ/tQ98
	gF6whVwJ9EJtr/5mjOfo/Yyok/0pewbzaLc+y/cO4UK+ODttBQCjejmQNLbSxR1zw8QXk5vObFE
	gfX0dcDLLgTRrXYsQegoFDF
X-Google-Smtp-Source: AGHT+IH14ML5OeTgfNCjZ+eLR5D0BkEN/X8W7UZQcrAQKu6xXP5etxnsRLfqJ5tS5GUlUf2xOTL9iOYN03VgHVRvQJU=
X-Received: by 2002:a05:6902:c04:b0:ea4:f3f:5498 with SMTP id
 3f1490d57ef6-ea8aa09f336mr791364276.36.1758227867928; Thu, 18 Sep 2025
 13:37:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
 <20250918155240.2536852-4-dario.binacchi@amarulasolutions.com> <20250918200445.GA2529753-robh@kernel.org>
In-Reply-To: <20250918200445.GA2529753-robh@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Thu, 18 Sep 2025 22:37:37 +0200
X-Gm-Features: AS18NWBqzx_QCJLvM1ZupXjBE082LYlK02aLhStfsrL_kkHbqntwv2U3qqpvFFU
Message-ID: <CABGWkvqX9aCxam6UMYsUBkwnMJrMNKjVKrqi5Ca7O5Jk8xRTAA@mail.gmail.com>
Subject: Re: [PATCH v5 3/6] dt-bindings: touchscreen: add touchscreen-glitch-threshold-ns
 property
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Frank Li <Frank.Li@nxp.com>, 
	linux-amarula@amarulasolutions.com, Conor Dooley <conor.dooley@microchip.com>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Javier Carrasco <javier.carrasco@wolfvision.net>, Jeff LaBundy <jeff@labundy.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 18, 2025 at 10:04=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Thu, Sep 18, 2025 at 05:52:31PM +0200, Dario Binacchi wrote:
> > Add support for glitch threshold configuration. A detected signal is va=
lid
> > only if it lasts longer than the set threshold; otherwise, it is regard=
ed
> > as a glitch.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >
> > ---
> >
> > Changes in v5:
> > - Add Acked-by tag of Conor Dooley
> >
> > Changes in v2:
> > - Added in v2.
> >
> >  .../devicetree/bindings/input/touchscreen/touchscreen.yaml    | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchs=
creen.yaml b/Documentation/devicetree/bindings/input/touchscreen/touchscree=
n.yaml
> > index 3e3572aa483a..a60b4d08620d 100644
> > --- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.y=
aml
> > +++ b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.y=
aml
> > @@ -206,6 +206,10 @@ properties:
> >
> >          unevaluatedProperties: false
> >
> > +  touchscreen-glitch-threshold-ns:
> > +    description: Minimum duration in nanoseconds a signal must remain =
stable
> > +      to be considered valid.
>
> What's wrong with debounce-delay-ms?

Do you mean that I should rename touchscreen-glitch-threshold-ns to
debounce-delay-ms?

Thanks and regards,
Dario

--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

