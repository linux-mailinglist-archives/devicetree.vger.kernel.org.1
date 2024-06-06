Return-Path: <devicetree+bounces-73388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9658FF34A
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 19:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B45AA293D18
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 17:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF7C1E87F;
	Thu,  6 Jun 2024 17:05:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839B5195FE0
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 17:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717693514; cv=none; b=uPYIEoaR7jeBdA7XPHty1zHlqWy6mhvp8fqyOw4HLtpmp10iw9C1oQiEczvkEd16mSgOrAX0bS5eAx5LJ0YCjQFm2KtcaA5gt1/iIIvjThk7dLXZ/b4QHHcLXu0pmmLt/pDOIvIiRni+9rLs1tURvz4B+6Y9Np/2fnol2QUVNo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717693514; c=relaxed/simple;
	bh=V2kjYJf3QZ3srA2bWcxwmOaryQ3hg2zEuj8/EzkmJrw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fcIwuoSbcqW1B14yR/iuc9FHipFW2hmx3U8mw2Xp9BXmlkk/YwGRZxX2Uxr+kot/l9PPoJv9qJ45g7WvrfUZdpUDZazXpKpA/2ATXCAu2V3E0hvBtgFpa/bOXKpGprXg6gWBvHgBj1cz0W+QXkLBARx8Q3acL7dKnZ4DWQPwLI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52b912198f1so1778340e87.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 10:05:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717693507; x=1718298307;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1QkWLvVozh3rOBWMvwLPwR/I9dP5vk9Rq7o/N5NibLo=;
        b=lwzOt5DjjD2cBKJS/fiBVRBt5qu/qRVGhpkQV7VhYcqN33BGKkbw4hUdTGX19br/IO
         wfqtUFJlk9DijALz+WJINi9JqIzBngTn3yTUzajyLnNEnVMZnCP7nJnc3VWsKjiAgLjA
         +HWzRsoPRECu4PaDCd0cljlO5hahS7ezxXwh97P9K5UiaPzXhN7XYXh8MzihTKQB5X8z
         Dwh8pQzTZ+RqDCFOzQz1jTnjVVKZ37hH/iu1ZDaPLLzCf12L1ZrX/GNJAboFAnh3nUKX
         3PzUx7GXbPzG6lKAcb4Swwd7GeLtvyIzuJEVVUcxc0vwxcPVW/cNhRDvFf2lE6x6ZOKn
         DQsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNeSJv3AYLKeFKZ2dJhzgv0BUMJi+Fe9ol7Fxmho7fWV2xYrrWNvCxw/B8ACjq3AkoyE94nxJ1Gk4x8NFQSR68U2dh/MgtOcYVqw==
X-Gm-Message-State: AOJu0YzsTHDJe/PArMm0vtqcxv780uZKTw9m+J1Hv0nB6YFREVMsE40p
	Wgm8i+wZOM8WYAzRyTOnnkUkm8qX0z5RrVCP4qx5Z+PuC/hxxc6XQcsHXOhQ
X-Google-Smtp-Source: AGHT+IGb6O65oIwem4C/vH5hsbCjYPoUUzXbLKT/V0Zm+/lirS0XZvwUT3fVXyoU4see87K+J0ppZg==
X-Received: by 2002:a05:6512:536:b0:523:a89f:aa64 with SMTP id 2adb3069b0e04-52bb9f7aaa7mr137351e87.20.1717693507163;
        Thu, 06 Jun 2024 10:05:07 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com. [209.85.208.174])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb423e1aasm245214e87.238.2024.06.06.10.05.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 10:05:06 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e95a75a90eso12937911fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 10:05:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXp1t/Tk/fQ4mmdaocY+qzMeiG2FqREa2tNAzC7j7pVrodVDFPMOz9Dogq5Zh7afE1YUVekMu/vuAkMXrWckbL2zoI2N5GMzMJ0+w==
X-Received: by 2002:a2e:82c8:0:b0:2e9:8418:1f5f with SMTP id
 38308e7fff4ca-2eadce16d64mr2174231fa.6.1717693506672; Thu, 06 Jun 2024
 10:05:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605185339.266833-1-macroalpha82@gmail.com>
 <20240605185339.266833-2-macroalpha82@gmail.com> <20240606112614.5380b2d1@donnerap.manchester.arm.com>
 <20240606-ludicrous-unyielding-gerbil-e23f41@houat> <DM4PR05MB9229B137C69F3B2D2A9F7B64A5FA2@DM4PR05MB9229.namprd05.prod.outlook.com>
In-Reply-To: <DM4PR05MB9229B137C69F3B2D2A9F7B64A5FA2@DM4PR05MB9229.namprd05.prod.outlook.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 7 Jun 2024 01:04:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v66kuiCCw9qk--f1y7ABBxirRFiRf=D6HXy4AE06jHLLQA@mail.gmail.com>
Message-ID: <CAGb2v66kuiCCw9qk--f1y7ABBxirRFiRf=D6HXy4AE06jHLLQA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Maxime Ripard <mripard@kernel.org>, Andre Przywara <andre.przywara@arm.com>, 
	Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev, 
	devicetree@vger.kernel.org, ryan@testtoast.com, samuel@sholland.org, 
	jernej.skrabec@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 7, 2024 at 12:55=E2=80=AFAM Chris Morgan <macromorgan@hotmail.c=
om> wrote:
>
> On Thu, Jun 06, 2024 at 01:30:45PM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > On Thu, Jun 06, 2024 at 11:26:14AM GMT, Andre Przywara wrote:
> > > On Wed,  5 Jun 2024 13:53:38 -0500
> > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > >
> > > > Add the Anbernic RG35XXSP variant device and consolidate the Anbern=
ic
> > > > H700 devices.
> > > >
> > > > The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but i=
n a
> > > > clamshell form-factor.
> > > >
> > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > ---
> > > >  .../devicetree/bindings/arm/sunxi.yaml        | 24 +++++++--------=
----
> > > >  1 file changed, 9 insertions(+), 15 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Doc=
umentation/devicetree/bindings/arm/sunxi.yaml
> > > > index c2a158b75e49..1ae77e5edf9a 100644
> > > > --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > > > @@ -51,25 +51,19 @@ properties:
> > > >            - const: allwinner,parrot
> > > >            - const: allwinner,sun8i-a33
> > > >
> > > > -      - description: Anbernic RG-Nano
> > > > -        items:
> > > > -          - const: anbernic,rg-nano
> > > > -          - const: allwinner,sun8i-v3s
> > > > -
> > > > -      - description: Anbernic RG35XX (2024)
> > > > -        items:
> > > > -          - const: anbernic,rg35xx-2024
> > > > -          - const: allwinner,sun50i-h700
> > > > -
> > > > -      - description: Anbernic RG35XX Plus
> > > > +      - description: Anbernic H700 Handheld Gaming Console
> > >
> > > So that's certainly an interesting optimisation, but so far we were u=
sing
> > > one entry per device, it seems.
> > > I am not entirely sure what the purpose of this file is, exactly: jus=
t to
> > > document the compatible names
> >
> > That was the initial intent, yes.
> >
> > > to reserve them and avoid clashes in the future?
> >
> > And I guess it helps with that too :)
> >
> > > Or also to put some official names to each device? That seems to
> > > somewhat overlap with the root node's model property in the respectiv=
e
> > > device .dts, though.
> >
> > I guess it's a fair criticism. It would be hard to collect all the
> > compatibles without describing which device they belong too though. So
> > yeah, there's some redundancy, but removing the descriptions entirely
> > would be worse imo.
> >
> > > It would be good to clarify this, and establish how to group those de=
vices.
> > > I mean technically we could for instance put *all* H6 devices into on=
e
> > > entry, using the same scheme as below.
> > > Not sure that's desired, though.
> >
> > I don't really have a say there anymore, but I always tend to prefer
> > consistency in documentation as a user. Even more so since that kind of
> > categorization tends to be very subjective and thus super inconsistent.
> >
> > Maxime
>
> This is how I was asked to do it in the rockchip.yaml file [1], but I
> know different teams have different style requests. Just let me know
> what you prefer and I'll get it done that way.

For now, please just keep each board entry separate to keep the same
style as the rest of the file.

ChenYu

> [1] https://lore.kernel.org/all/20240123212111.202146-3-macroalpha82@gmai=
l.com/
>
> Thank you,
> Chris.

