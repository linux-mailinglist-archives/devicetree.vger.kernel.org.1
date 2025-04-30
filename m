Return-Path: <devicetree+bounces-172466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E81AA4D3E
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 15:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B29AB3B5A80
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 13:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BFE238175;
	Wed, 30 Apr 2025 13:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mS8o1emh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80C259C9D
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 13:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746019058; cv=none; b=CwYNxqAfZdTpWWsYAGRO4aCsDk8zzt51a1QJRue851ZSX6R/4ETjYDq7t0vb86+tWOpFlGDACI/y8bXAZ4e4uQQa5fmAPG2bz8PFZi9vp7GG2ABWMQ/wc/pKMhvOr8tD7fef1VNjKe3cqM80RLsZQlJVJnzXJoB1eFc5HSACHqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746019058; c=relaxed/simple;
	bh=V0pe99KwToQ2OQKx9jVCO7CGmdG+5UWYsvSoVTUT3/w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aawc573ThsvDyP+ho1BUaeJj7AsXEHlqqBg8s7e1k5tTKYD8sJWQOJ+MITuX9UwC4GXffek3u57BFZcFR/4ESbeQvPTpmQcH+bpafYFTGJYnyma/OSNgJQLLpTkoFtj86S8nY+y7oV5wnfuhHZe+r79PYtWGBnDcVwzHPqZ403Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mS8o1emh; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7301c227512so4462994a34.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 06:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746019056; x=1746623856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CWVOSQGwjBgDHyj1AvVikp/q273qN6vha7yJyjTWfZU=;
        b=mS8o1emhfPzY9wFd3EGfOi/zu2tnLjRQd1pqxE0qPG1i82uflyQ4BFDVmw2Zg9ZmvN
         YtTpxqPySEorg8mBpJaOPFQUK/rPW8yWEdJU0soGWrX8DzfRrVlv2N+rJsEb/jvR8+hK
         3d0sJhoMx0mlcnrIzb1O937WrOOsz4620R6JY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746019056; x=1746623856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CWVOSQGwjBgDHyj1AvVikp/q273qN6vha7yJyjTWfZU=;
        b=bG1Azo5XliCV0toxEuSe3kVzo/oM7CVCqrjaVkGuqiGx5GICLCsawjGOkE8lipJWH9
         RWBw/3GWgFgH/PyfBmfoZQtEfqSmNpVLAaRioGjD0kma1ygb77tC6pFF8qjBx7LoYkvV
         0raRi8ayvLvLjUY16Rjge95RODG9r+mCwZh468B556YlC0uT0VxdsFzzm9DXWoOpQJkL
         VDUpcrjrNVokIdifG0iHr3cQmHCI8kmoAiAhGrNm4Knn2vfVA9GScCzCSBU/ch3npLDe
         /8PVWHBcMcGBurRpbuATnsi/fOXno8zyj/yCaNfDqekp4MRemNCKgecVvJmiIFFXegsl
         bH2A==
X-Forwarded-Encrypted: i=1; AJvYcCXzQYhA/SRUe3tiVnJrW6SyhT2ULsSrAMvP2S3YOC5QPK+30VAbLDvdvSI2qiNJhS/n7NOQkZaUR0WB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsq5v+eUedP+oh4eHARWQvxcjxojmNrTSmswL1q91TnL3WHGqS
	HizEl+h8EfNSz5+4A40Ysp0fYh5Z5VgSVaFYjKDPyGiXBS1T2bkCoa2F5aH1STlX+AF2bNLap7F
	6nqRbw9IZ2pzXLqmpIcDNvkidycmxA5q8ZD8Q
X-Gm-Gg: ASbGncsOouFNFxkfdmiTKv3p9HdfH0Wn0d1wrVDA2CqfOXwIofzWLP1oVJGk2MwAay+
	MX6ku41KDdiFHxy1Pbn6Jh8Jj22qLZzmL49rAUOeEj+8fiW7gyEQOWGjoFCawXHCLFrTi8gM7s/
	j8cjo0YMDRkVpw38ghA+9u9gpO+jdTg4u2wXVmkI0T8jGmEdPQthpU
X-Google-Smtp-Source: AGHT+IFknXD5la0gddBuEBX4XwCV9fHZkdIs7fEw4Vi3CddMyMvaEQq4AL9wzB3b6mXqaQYKX5avzpN+W1kedxnS1fY=
X-Received: by 2002:a05:6830:6812:b0:72b:8ec6:e533 with SMTP id
 46e09a7af769-731c0a00badmr1569169a34.7.1746019056140; Wed, 30 Apr 2025
 06:17:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250422082957.2058229-1-treapking@chromium.org>
 <20250422082957.2058229-4-treapking@chromium.org> <CAE-0n52cwBxJ3gYzSi1+nNcRRSgbMToYBFLJwdVWSMOxBmUN1A@mail.gmail.com>
 <CAEXTbpfb6KOqrU0oAvbzV76Wj_YORsjcukBVZx-d2evYtmwshg@mail.gmail.com> <CAE-0n52aw2HXe1eUCkLbbc7tnr+okF54hOfSSRm9nic3rbCFzA@mail.gmail.com>
In-Reply-To: <CAE-0n52aw2HXe1eUCkLbbc7tnr+okF54hOfSSRm9nic3rbCFzA@mail.gmail.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Wed, 30 Apr 2025 21:17:24 +0800
X-Gm-Features: ATxdqUGXMrim_0el_0mBfr6BfbTfpvsYTOlSek5Q_-HvMe5Fkukqgos6OuwR34U
Message-ID: <CAEXTbpdkP2KM=ByCGP-S7ZMZFjFOaQynPzf7j139aQ4zU=jzrQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: usb: realtek,rts5411: Adapt usb-hub.yaml
To: Stephen Boyd <swboyd@chromium.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 30, 2025 at 2:24=E2=80=AFAM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> Quoting Pin-yen Lin (2025-04-28 21:57:16)
> > Hi Stephen,
> >
> > On Tue, Apr 29, 2025 at 7:46=E2=80=AFAM Stephen Boyd <swboyd@chromium.o=
rg> wrote:
> > >
> > > Quoting Pin-yen Lin (2025-04-22 01:28:29)
> > > > diff --git a/Documentation/devicetree/bindings/usb/realtek,rts5411.=
yaml b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> > > > index 6577a61cc07531..a020afaf2d6e7a 100644
> > > > --- a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> > > > +++ b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> > > > @@ -10,7 +10,7 @@ maintainers:
> > > >    - Matthias Kaehlcke <mka@chromium.org>
> > > >
> > > >  allOf:
> > > > -  - $ref: usb-device.yaml#
> > > > +  - $ref: usb-hub.yaml#
> > > >
> > > >  properties:
> > > >    compatible:
> > > > @@ -19,61 +19,35 @@ properties:
> > > [...]
> > > >
> > > > -      port@4:
> > > > -        $ref: /schemas/graph.yaml#/properties/port
> > > > -        description:
> > > > -          4th downstream facing USB port
> > > > -
> > > > -patternProperties:
> > > > -  '^.*@[1-4]$':
> > > > -    description: The hard wired USB devices
> > > > -    type: object
> > > > -    $ref: /schemas/usb/usb-device.yaml
> > > > -    additionalProperties: true
> > > > +additionalProperties:
> > > > +  properties:
> > > > +    reg:
> > > > +      minimum: 1
> > > > +      maximum: 4
> > >
> > > Is this limiting the 'reg' property of the hub node and not the child
> > > usb-device nodes?
> >
> > Yes, but the regex pattern of patternProperties restricts the
> > downstream device nodes to '^.*@[1-4]$'. So the 'reg's of the child
> > usb-device nodes are also checked.
>
> I'm confused. The path looks like it is removing patternProperties here
> and limiting the reg property of the hub itself so it can only be at
> port 1, 2, 3 or 4. Why is the patternProperties being removed? Don't we
> need to keep the patternProperties around, or somehow get at the
> patternProperties for the hard wired USB devices in the usb-hub schema
> so we can constrain the reg property to be between 1 and 4?

Sorry, I was confused by my own patch... Yes, the patternProperties is
removed in this patch so please ignore my previous mail.

However, it seems that the addtionalProperties here checks all the
properties that are not defined in this yaml file. I tried changing
the node in the example DT to device@5/reg=3D<5>, and make
dt_binding_check rejects the node as expected.
>
> > >
> > > >
> > > >  required:
> > > >    - peer-hub
> > > >    - compatible
> > > >    - reg
> > >
> > > Can 'reg' be dropped because usb-hub.yaml requires it?
> >
> > I can drop 'reg' and 'compatible' in the next version, but I see other
> > schemas referencing usb-device.yaml still set 'reg' as required. Is
> > this some kind of convention, or people just didn't notice this?
>
> I assume nobody noticed.

Okay, then I'll update this in the next version.

Pin-yen

