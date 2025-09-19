Return-Path: <devicetree+bounces-219342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A33B8A37F
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:14:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AC5C7C6F1D
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045B5314A7A;
	Fri, 19 Sep 2025 15:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="iaQzmEpB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B3A3148B5
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758294775; cv=none; b=sNIibT/fbYQ26GIMhnCIGJuVD2fwPoRHur3RszBd2TsPY9PWyqZ6bX1RjzFsoPQM9riMNV3WD9/7EFPMxkAJSpc/qtJUl/QlgEJtzDrCS/F+xIpU/roWEcBDRE4zaQoR4FUJQdrxqcXf1r2mSuY10cRsxQrQ7otVRSUWWWBEgm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758294775; c=relaxed/simple;
	bh=BMBx1xHgOcLMiwulqoEU2IVGNnkq/sLpD6FdVgmu+5I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rOEMXo82304dthR7MCx+XJd+yKHWP/N9NgZP7RBdQ9sLt9/RVO98yZySpghGyTxuNrRLAlFsNkViRfCDr2mLfFl/yV13TC8x3xq7WW15tnx1a5R0/ADQQvigyOVGyBosxgFTPUEfVSbbYmwVXIGwObSPNKmDTEiOQyArFu+2T+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=iaQzmEpB; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-ea9d7bf38a4so957408276.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758294773; x=1758899573; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDR2hBx94HH9iDGXNQ3ANzEfWRisNoMXPj4b5y7WrJ8=;
        b=iaQzmEpBXqesi1cHzB4VZJ94iKEFL7Uwl3ssxfcK3v/4d9eFdzwFrHsjgPe7by10Eo
         OYqAtHTrEJkBBniuYBZKCgTDbOYPnXu5jIOuFpOryuaXyzFl55IQf9yMZ7XsUcx+0F1W
         l1SFFCJQrCyokcNjkVfVksYPpUUu5SlwRi2Ks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758294773; x=1758899573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDR2hBx94HH9iDGXNQ3ANzEfWRisNoMXPj4b5y7WrJ8=;
        b=RqjWatpLKpMpr15dH/pS2f6ip7qH4jk9zsQRWtVv57heC3zu83HBq2dpQlOfMuuQ3p
         YWcZ2h+aPF9S3grGMOHssyu7F5WHLPf9wumOztb/JgRZ5WYhEvIBgCd8ufcTAN7xIhnQ
         i/meDcUtDtAjC5rFjr79usVq25PlyrRKe+iUIbxxop4C48ZD1rF38121MiD4rOcmq96y
         5U/oyyd+J8HzWH1uhGGCFRU1Dh7T45VcaAXhwhYBJYuniHFooxfmhII1/3ejJpf27xWT
         HQpzHM4ROfX/hmfvoWWwXbESE08ZvJ6udVlg2gfLooa3CfULanWT3ArNYYMRFFTFA8it
         2tmA==
X-Forwarded-Encrypted: i=1; AJvYcCX8BKICeKGXwnwgokIy/GYUMJwLBORki7PlDMeY+ul4yQjOiLhVZlzyhQO/GJtEqJnNUMy3nyzM+OUV@vger.kernel.org
X-Gm-Message-State: AOJu0YzHH5RhaKUOc20D6JZJM2C1De8s7p3NO0WMfoBVdq4MB5+IaYuH
	5uh7IssYFkzAdlHCUHHUCcS6hHvvqHa+A9Ydil46hCiiUGP5KDXilhOyeE2xcT9bTDQ9nULrDw4
	7I/LASC0+2tH5aSqYke3sLjcoUxSmplhEbakxmMJ+61J1aJW6hMrgj+c=
X-Gm-Gg: ASbGncs8Vf6F+NNrfj0FqLbNYAD4NnIFyDZFQ4dsSQPdN5Np/HLblMkshxxXvGd6Spz
	cgn5i6FluiY1GxlBKRkPnCkV/UEjzBoKB9NBOglAYgXH2aJmGkwYQQDNJq/fAxXpZNLpbJydY/i
	tszFFH8at2P/LptT2UZkPvDbXJdwQUzU5vZmDLpsE3uWKn9CBBkUEKf9QnX0ShbtknSAgO3Jhxw
	CwykQ==
X-Google-Smtp-Source: AGHT+IFCsX/Yr77baAfQUzezWX3UUJwL6EO1cZJPaD7zTXu7veCWD1vzn6Rs4eZ4FAte4CZNbi3qEmlpHq2WjLd8WuQ=
X-Received: by 2002:a05:6902:488f:b0:ea7:c75f:2691 with SMTP id
 3f1490d57ef6-ea867ca9423mr4048090276.19.1758294772969; Fri, 19 Sep 2025
 08:12:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
 <20250918155240.2536852-4-dario.binacchi@amarulasolutions.com>
 <20250918200445.GA2529753-robh@kernel.org> <CABGWkvqX9aCxam6UMYsUBkwnMJrMNKjVKrqi5Ca7O5Jk8xRTAA@mail.gmail.com>
 <20250919143831.GA862818-robh@kernel.org>
In-Reply-To: <20250919143831.GA862818-robh@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Fri, 19 Sep 2025 17:12:42 +0200
X-Gm-Features: AS18NWBbtmYlxVQg7JWp-61dA1-iw7AN6sdR1Y0K8dgfLvdbAOOkJOlZL9jpOaA
Message-ID: <CABGWkvrxOTzAcqWHLvuqk_7WFxybheSZFnMkqnksfkPi6wXcpQ@mail.gmail.com>
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

On Fri, Sep 19, 2025 at 4:38=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Sep 18, 2025 at 10:37:37PM +0200, Dario Binacchi wrote:
> > On Thu, Sep 18, 2025 at 10:04=E2=80=AFPM Rob Herring <robh@kernel.org> =
wrote:
> > >
> > > On Thu, Sep 18, 2025 at 05:52:31PM +0200, Dario Binacchi wrote:
> > > > Add support for glitch threshold configuration. A detected signal i=
s valid
> > > > only if it lasts longer than the set threshold; otherwise, it is re=
garded
> > > > as a glitch.
> > > >
> > > > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > >
> > > > ---
> > > >
> > > > Changes in v5:
> > > > - Add Acked-by tag of Conor Dooley
> > > >
> > > > Changes in v2:
> > > > - Added in v2.
> > > >
> > > >  .../devicetree/bindings/input/touchscreen/touchscreen.yaml    | 4 =
++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/input/touchscreen/to=
uchscreen.yaml b/Documentation/devicetree/bindings/input/touchscreen/touchs=
creen.yaml
> > > > index 3e3572aa483a..a60b4d08620d 100644
> > > > --- a/Documentation/devicetree/bindings/input/touchscreen/touchscre=
en.yaml
> > > > +++ b/Documentation/devicetree/bindings/input/touchscreen/touchscre=
en.yaml
> > > > @@ -206,6 +206,10 @@ properties:
> > > >
> > > >          unevaluatedProperties: false
> > > >
> > > > +  touchscreen-glitch-threshold-ns:
> > > > +    description: Minimum duration in nanoseconds a signal must rem=
ain stable
> > > > +      to be considered valid.
> > >
> > > What's wrong with debounce-delay-ms?
> >
> > Do you mean that I should rename touchscreen-glitch-threshold-ns to
> > debounce-delay-ms?
>
> I mean that's the common property we already have, so use it or explain
> why you aren't using it. I suppose the definition is technically a bit
> different if it's purely a s/w delay vs. h/w monitoring of the signal
> state. I don't think it matters if the interpretation by each driver is
> a bit different.
>
> Maybe msec is not enough resolution for you could be another reason?

Yes, this is the main reason. As specified in the following patch:
  v5 4/6 dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch threshold

Drivers must convert this value to IPG clock cycles and map
it to one of the four discrete thresholds exposed by the
TSC_DEBUG_MODE2 register:

  0: 8191 IPG cycles
  1: 4095 IPG cycles
  2: 2047 IPG cycles
  3: 1023 IPG cycles

In my case, the IPG clock runs at 66 MHz, which corresponds to:

124 =C2=B5s for 0
62 =C2=B5s for 1
31 us for 2
15 us for 3

So using milliseconds would not fit my use case. A possible trade-off
could be to use debounce-delay-us. Would that be acceptable?

Thanks and regards
Dario

> Looks like your h/w supports that assuming the clock frequency is 10s
> of MHz. But are touchscreen glitches really in sub msec times? Not in my
> experience, but that's 20 years ago on resistive touchscreens...
>
> Rob



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

