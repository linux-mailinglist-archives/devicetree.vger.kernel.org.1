Return-Path: <devicetree+bounces-223469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1207FBB57BA
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EEE0C4E32F8
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07081A9FB5;
	Thu,  2 Oct 2025 21:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QsoxcFIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FE93BB44
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759440957; cv=none; b=HsKh+Bg29w1sZtvQgSZH9P/nH2InExr6+uZoyIhnDBqEui01oLeBTYU69DMMbXjzgixQ0LoL9L60Y3fi5Sa/j+u+DfI8fLsQQF+DvHUP92OsZUZTbtHivf5T9YfizS5841jBzrDN4gJ54/U+qyDVjzRJMleItBTIA/24i9MuqOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759440957; c=relaxed/simple;
	bh=zMeuhyrGmKv3Vy1hEV7bUGE0hRvsTCbCldYPgrOEYKg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u5zX2Su9WstqILGDBhKXJ6P9bSaKhXXU33PGMcn1yIWWxRHKPV6Xejcw3yC2p4fPbyD61qxVRenJ3XYcKrx6HnvPPgkhut0dLqXK9kDQXnG4hOkJJUaYoa5H2V2ilN2X19qGkAiQhcnsFzWkd7GXtdv7fn3z+25bwVegeXOzBRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QsoxcFIr; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-77f68fae1a8so2110453b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759440955; x=1760045755; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6tb5ZhFKHgn3PI0RL+wA56er2lYPRbzxVlrU7xzkMbM=;
        b=QsoxcFIr3BVQU74FXe/esoKBYcKYPFE3AuA8P2ZBIJmRZvV1VdGxKV5J9Zqsn4tl2/
         gh8F6KQ7f2mb+0NfdC+LCDCB1fnkoBK98sJ3qOnA4EDGOdwqHkA/i8D38q9tMY3sT2aY
         fyaBtHJt86BePWRL9xK2+oi4LblLY2ll0h9Mo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759440955; x=1760045755;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6tb5ZhFKHgn3PI0RL+wA56er2lYPRbzxVlrU7xzkMbM=;
        b=RRsDen7oO+L2rpExONYIqHfzDLToauQLhaRqB7ioPeB5tKg1ZDN53jcWVmrHEwwF/9
         z1pReTVgbvyUYA0jLy7kVp9jm0oIMzoK86R6I4UejLqV+hMnRDJiW+ScxcRqK80oXCeI
         LVv7BtFmBvIzEFyVo7P7S0YPFbqmY2SkXnpR1fAW3i2idUaHExMO1+z7sSXKIawF1SUW
         SYXAmu7PxtTstBA3YCGoD6O7HFY8CpkafGGywScgllyhcu7rflqacMnI7vgKqjPeXY4T
         /dPz3TNl3GQuX62xUwGo9vKqDe5YKMc9g8bcKuyM54znMKfSAlrnicy3azkPhDc8LYh5
         lipQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+PVowJO+E3WZyWTJUeHpsyTSHvvKY3PKNSlFqPVpnQEeRT0to14PBRGdw71/WbxuO2gxIkY3sn6Ha@vger.kernel.org
X-Gm-Message-State: AOJu0YySzuM4gChBaWfONlfmHCjBOK5BLtOfRA02+aUsAIvXiZPaxzHC
	L8AEVXDcBavg1IcRysPgz+MuQ4Oishc349c9Fvg7gbMqy5v81wx8s2QUHIEb7Q+XXbKSv9gdwM5
	8nvbcTw==
X-Gm-Gg: ASbGncsWIQKIn/3I3b2lbi7Sb/tuNDRTLJUWsiJA/NUc9V2Cbi9wY8DB5wq41FILfGP
	y/By5skEmz5/A/ivS0XE6RJzI+G9NtFW1tMD1vK4HGHmuDdr31U6vfl3LNhODJCWIM1qgvU5C1z
	uYiZXfNgve3XDqZSOFBWA0tiV6eRtrFgaQq7m/F9sXbc3emU42lhZBe7v+OOKWlVqpJHa4U2pZs
	3zFv/ewqzb8kJJHeT+d9SnJvg6NKc2997bM1ew2W+IuYmX725PO1l2BZxntYgjgafa5b1Nl0pYW
	xg+0uy1HbWqiEaMv01ePjQYfsYD9JWuVVFNrQJaip3RaiglkqH3+Q64sQ30rV02mZIUFlSZ30eH
	eBRPwUrarFmmvFqqPnBVsGljV76oKYr4ZEDvKINHw9M0pABCImNeIUR7Rd5vU9qWe/Qj9R0lh6M
	Kipph1OtsYHPJIwA==
X-Google-Smtp-Source: AGHT+IG9iDtE5RYtoqnpAt0nXGw0zOlXUQ6ULXhYKn9iro6IJlOW2BG01xZbOIgSyI/95U4gVp7wSA==
X-Received: by 2002:a17:90b:3a81:b0:32e:a5ae:d00 with SMTP id 98e67ed59e1d1-339c2742d46mr860652a91.13.1759440955521;
        Thu, 02 Oct 2025 14:35:55 -0700 (PDT)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com. [209.85.214.173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3399be87425sm3609838a91.1.2025.10.02.14.35.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 14:35:55 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2698e4795ebso14436125ad.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:35:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUVCp3u1LwBa6+yo0o2+A8S0Q9cE5jj8xU0HVqjsEh3Ajhdr+CK39FX+KMvIalw0sYPUQ67Pkg8PVlE@vger.kernel.org
X-Received: by 2002:a17:902:ebca:b0:265:604c:17e7 with SMTP id
 d9443c01a7336-28e9a6ff040mr7217865ad.60.1759440954340; Thu, 02 Oct 2025
 14:35:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-2-clamor95@gmail.com>
 <CAD=FV=Vd=muLeMJYszC2SqRBThN=Srm_bKXBEmjjqND7bqHo2g@mail.gmail.com> <CAPVz0n23qNrnyP7ttchaCoLit=gBm_++7RX7B8MxR_nx+8LGHw@mail.gmail.com>
In-Reply-To: <CAPVz0n23qNrnyP7ttchaCoLit=gBm_++7RX7B8MxR_nx+8LGHw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 2 Oct 2025 14:35:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UCcQ1AweLwNucYP8kNHx+K1UF=VbEZdqE4hXN=bHqGuQ@mail.gmail.com>
X-Gm-Features: AS18NWCyCoeGl8UyyLw_R0kuFN-88oe-Wi6XpVX99MGsfcmrycek7SZgv1oi908
Message-ID: <CAD=FV=UCcQ1AweLwNucYP8kNHx+K1UF=VbEZdqE4hXN=bHqGuQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: display: panel: properly document LG
 LD070WX3 panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 29, 2025 at 10:03=E2=80=AFPM Svyatoslav Ryhel <clamor95@gmail.c=
om> wrote:
>
> =D0=B2=D1=82, 30 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 06:12 Do=
ug Anderson <dianders@chromium.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > Hi,
> >
> > On Mon, Sep 29, 2025 at 7:25=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmai=
l.com> wrote:
> > >
> > > LG LD070WX3-SL01 was mistakenly documented as a simple DSI panel, whi=
ch it
> > > clearly is not. Address this by adding the proper schema for this pan=
el.
> > >
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > ---
> > >  .../bindings/display/panel/lg,ld070wx3.yaml   | 60 +++++++++++++++++=
++
> > >  .../display/panel/panel-simple-dsi.yaml       |  2 -
> > >  2 files changed, 60 insertions(+), 2 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/display/panel/l=
g,ld070wx3.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/lg,ld070=
wx3.yaml b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
> > > new file mode 100644
> > > index 000000000000..0a82cf311452
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yam=
l
> > > @@ -0,0 +1,60 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/panel/lg,ld070wx3.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: LG Corporation 7" WXGA TFT LCD panel
> > > +
> > > +maintainers:
> > > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > > +
> > > +allOf:
> > > +  - $ref: panel-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: lg,ld070wx3-sl01
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  vdd-supply: true
> > > +  vcc-supply: true
> > > +
> > > +  backlight: true
> > > +  port: true
> > > +
> > > +required:
> > > +  - compatible
> > > +  - vdd-supply
> > > +  - vcc-supply
> >
> > I suspect you'll get a NAK here because you're not preserving backward
> > compatibility for existing device trees. While there can sometimes be
> > reasons to do that, you'd need to provide a very strong justification.
> >
> >
> > It seems like instead of breaking compatibility you could just have
> > two supplies:
> >
> > * power-supply - The name for the "dvdd" supply.
> > * avdd-supply - The name for the "avdd" supply.
> >
> > ...and then you make both of them not "required". Maybe you'd add some
> > documentation saying that things might not work 100% correctly if they
> > weren't provided but that old device trees didn't specify them?
>
> Schema describes hardware. If it does not (and in this case it clearly
> DOES NOT), then such schema should be adjusted according to hardware.
> If there are any users of such binding, they should be adjusted too
> (third commit of this patchset does exactly that). Panel datasheet is
> explicit, panel has ONLY vdd supply and vcc supply, names are taken
> from there too.

I'm more than happy to defer to DT people on this, but the general
argument is that "device tree" is supposed to remain forever forward
compatible. In other words, someone could have taken a snapshot of the
"tegra114-tn7.dts" device tree at any point in time and then shipped
it in some BIOS. Presumably the old "tegra114-tn7.dts" (for some
reason) managed to init the panel properly in the past and the idea is
that there should still be a way to init the panel with the old device
tree now.

Obviously, that's an ideal version of the world and sometimes
hard/impossible to make a reality, but it's supposed to be what we
strive for.

From a more practical standpoint, the dts changes and code changes
will go through different trees and so making them mutually depend on
each other can leave people broken if they happen to have one patch
but not the other.

I suppose one way to handle this (if DT people like it) is to keep the
bindings the way you have it but then add some layer of backward
compatibility in the driver. It will mean that anyone with the old DTS
would officially not "validate" properly against the new bindings, but
I think that could be OK as long as it was explicitly mentioned in the
commit message. Obviously, though, DT bindings reviewers would have
the last word there...

-Doug

