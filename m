Return-Path: <devicetree+bounces-183975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BE0AD292D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 00:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB2E616DFEE
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 22:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F58222422E;
	Mon,  9 Jun 2025 22:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hxAoL2iJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1081222570
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 22:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749506986; cv=none; b=RkIB+DkPf8e8VsNy1nGaSX3LdsOqxXPnfGgeL1ZLmMuxHIW20OMmgeRKklX2wZHdVe0WvCF+IBmh/5bu5txCp9Jn6dWzBVvTj60nyW199fFaCKCN/RvTc/Bh6Wvc6AT1OQ07NQMWjHD9biJPIgoCDVcu/8CpBH+CyxntZsSib1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749506986; c=relaxed/simple;
	bh=P86jwe07mJu0URyv7CIAAu6JKNG/T38Mc49w5ZxaFR4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eIeELe+Blr7smP+mbCZ7yqSxLFJww5XO+Z8XR5rOy65IpejQaLOxN3+GajUVC1YY537FlcFOV/JMM5rjArpQplFv5SwOy6MF47nYWn8bbUCwldKs4frjsxXPEjlfxXLgKzyDDncLNYxVr3BCGHoqf0UI0EXi5nznc0Pix8OizpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hxAoL2iJ; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-748582445cfso640676b3a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 15:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749506980; x=1750111780; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lo+xuu6/evF7Kj69JUrQ4+v7ESydcrUGBnfBq/70hhU=;
        b=hxAoL2iJzdzAVbj1WJ3RP6vhQPNqlUTTKahIr1ZC/9qj+AzyHqG+OnBl5NZIFu7gId
         ZnqaW79Lfct2qKpDQ9X80ECZd4L0XzCqLv89cYaci0Wdarcy6j4+gmm4DEdnh5D479yq
         esMqG1k0W2XiKCVvBrJwzwGeR3NBGpH83tVy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749506980; x=1750111780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lo+xuu6/evF7Kj69JUrQ4+v7ESydcrUGBnfBq/70hhU=;
        b=IT3yMNTRg2d0oi7ho5kOWSPndrxOP3Sph3jxIp+m1v5+uP/YktbELFgDeBy8L5OWg+
         SO3M53Va9ILkCyAQuTSfvag7FD1AaZQwmrU7h7mheJ1U41y2tn4IlHuagdnxVI/C/PA5
         yClu8NJPI2BBfRq0rbfJvhD3c+82aHTdvMg56qCcY0K4AaS85dOKiG+y2uCrQSbBSir/
         wxNMwiSPHxhKWwaReurju0ndJOG5y5rml5d8dl0VyQ+cW2DInURATF9bbCRzgnlCjQz2
         LCER5PZcdwRCRLHECjptxOwOcHW+4DdRUkdQAGOUCBJ25AnysypaM1VU6Cb/UCHQcM97
         nfwg==
X-Forwarded-Encrypted: i=1; AJvYcCW4KZ9LLDWtF6nn3dUYE/VVq5+wFoNonGU7qUpRkOkI2KHXWk/mH7lxj+ZahxJrESn6krPPbyBBDdeZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxcyFy/oLgI+Y59XJLjoLtPDTq2Pq5fFlbbr3Pi7VvPMx1siiyw
	jtTji7jTRm2OXy6yGmgDaduNdoVdQe6WFtJEQ+jCsek1CvhX3V3xerLghrd9VtwB7ai4JeOFmW6
	c5mDgLg==
X-Gm-Gg: ASbGncu2aHc+vhzdoUPKg1C6UXVoyNii/IfSeKmVJkRq30Bkvfz7t5I1e5GVLZQkhnF
	ib9t0TroXcjIMByO6kmMdACA8zhH8Qy7fqQEdhV8uZEXbLjUbeSJYeIm58twPek1AFqdfdTDoom
	FX1MPNez1JyHxMFStqdrYIYAGc0X/pG5pcxOrsvAOwmKvgC1z9a490/BhCxhQMjFwd3N1NoRyZb
	d/B2meyKTnV1lJaZhnwxdkDNZF2pqAGKMj925rOmaxHyfLJDUhPuruQ16x4uj7tqe8ojsFpUyFJ
	lbfcXqOBlg7w8jJgZF0QtAUO46DahZpKF11AvlJV62Zt5LsU6cwAPNqtKqlfgpS2hUETfdlG+6P
	YUVjHZsq8E/P56L/vCFpbp5J/OmGqEQ==
X-Google-Smtp-Source: AGHT+IGNUdveV0yt+32iywGFvAY8grBMK0urBRT1rx2DAzZBoEv7yhZLlIGQ2q6zDoKp410JnS9OpA==
X-Received: by 2002:a05:6a21:2d8f:b0:1f5:8dea:bb93 with SMTP id adf61e73a8af0-21ee24fd015mr23193439637.7.1749506979955;
        Mon, 09 Jun 2025 15:09:39 -0700 (PDT)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com. [209.85.214.172])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0ec4aasm6376636b3a.171.2025.06.09.15.09.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jun 2025 15:09:37 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-234c5b57557so44065895ad.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 15:09:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVRG9OpWnEKNEOMYf8c9OSusJeOIScFzCmxBqAev95sd16oZsMdLe9CBWPJ0tj+d2Xq4I1C58S2SAAE@vger.kernel.org
X-Received: by 2002:a17:903:1b45:b0:234:c2e7:a103 with SMTP id
 d9443c01a7336-23601d82e8bmr214458545ad.33.1749506977132; Mon, 09 Jun 2025
 15:09:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250529110418.481756-1-j-choudhary@ti.com> <2baf3c31-3edf-4c26-bd44-1d0560134871@ti.com>
 <CAMuHMdUi7pf1YfKRjMv_7VuKwjR5XekRXfcEzuPScGzHraGjyQ@mail.gmail.com> <84fdbd23-d694-453f-a225-dbac19b34719@ti.com>
In-Reply-To: <84fdbd23-d694-453f-a225-dbac19b34719@ti.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 9 Jun 2025 15:09:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XaR6Pq7E-13zR5PC_u=3SD=sc05_TzxWJR2FS040zESg@mail.gmail.com>
X-Gm-Features: AX0GCFuY9zmj0FHZgee9_PnbGi-N3ssFASItEBDN5ajNB22ll-m4fMNSbkRbwcE
Message-ID: <CAD=FV=XaR6Pq7E-13zR5PC_u=3SD=sc05_TzxWJR2FS040zESg@mail.gmail.com>
Subject: Re: [PATCH v3] drm/bridge: ti-sn65dsi86: Add HPD for DisplayPort
 connector type
To: Jayesh Choudhary <j-choudhary@ti.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, dri-devel@lists.freedesktop.org, 
	tomi.valkeinen@ideasonboard.com, max.krummenacher@toradex.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	kieran.bingham+renesas@ideasonboard.com, linux-kernel@vger.kernel.org, 
	max.oss.09@gmail.com, devarsht@ti.com, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, ernestvanhoecke@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 2, 2025 at 4:05=E2=80=AFAM Jayesh Choudhary <j-choudhary@ti.com=
> wrote:
>
> Hello Geert, Krzysztof,
>
> (continuing discussion from both patches on this thread...)
>
> On 30/05/25 13:25, Geert Uytterhoeven wrote:
> > Hi Jayesh,
> >
> > CC devicetree
> >
> > On Fri, 30 May 2025 at 04:54, Jayesh Choudhary <j-choudhary@ti.com> wro=
te:
> >> On 29/05/25 16:34, Jayesh Choudhary wrote:
> >>> By default, HPD was disabled on SN65DSI86 bridge. When the driver was
> >>> added (commit "a095f15c00e27"), the HPD_DISABLE bit was set in pre-en=
able
> >>> call which was moved to other function calls subsequently.
> >>> Later on, commit "c312b0df3b13" added detect utility for DP mode. But=
 with
> >>> HPD_DISABLE bit set, all the HPD events are disabled[0] and the debou=
nced
> >>> state always return 1 (always connected state).
> >>>
> >>> Set HPD_DISABLE bit conditionally based on "no-hpd" property.
> >>> Since the HPD_STATE is reflected correctly only after waiting for deb=
ounce
> >>> time (~100-400ms) and adding this delay in detect() is not feasible
> >>> owing to the performace impact (glitches and frame drop), remove runt=
ime
> >>> calls in detect() and add hpd_enable()/disable() bridge hooks with ru=
ntime
> >>> calls, to detect hpd properly without any delay.
> >>>
> >>> [0]: <https://www.ti.com/lit/gpn/SN65DSI86> (Pg. 32)
> >>>
> >>> Fixes: c312b0df3b13 ("drm/bridge: ti-sn65dsi86: Implement bridge conn=
ector operations for DP")
> >>> Cc: Max Krummenacher <max.krummenacher@toradex.com>
> >>> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> >>> ---
> >>>
> >>> Changelog v2->v3:
> >>> - Change conditional based on no-hpd property to address [1]
> >>> - Remove runtime calls in detect() with appropriate comments
> >>> - Add hpd_enable() and hpd_disable() in drm_bridge_funcs
> >>> - Not picking up "Tested-by" tag as there are new changes
> >>>
> >>> v2 patch link:
> >>> <https://lore.kernel.org/all/20250508115433.449102-1-j-choudhary@ti.c=
om/>
> >>>
> >>> [1]: <https://lore.kernel.org/all/mwh35anw57d6nvre3sguetzq3miu4kd43ro=
kegvul7fk266lys@5h2euthpk7vq/>
> >
> > Thanks for your patch!
> >
> >>> This would also require dts changes in all the nodes of sn65dsi86
> >>> to ensure that they have no-hpd property.
> >>
> >> DTS patch is posted now:
> >> <https://lore.kernel.org/all/20250529112423.484232-1-j-choudhary@ti.co=
m/>
> >
> > On all Renesas platforms handled by that patch, the DP bridge's HPD pin
> > is wired to the HPD pin on the mini-DP connector.  What am I missing?
>
> If the bridge's HPD is connected to that of the connector, then I am
> pretty certain HPD will not work for renesas platform. The detect hook
> always gives "connected" state in the driver (even if it is unplugged).
> Do you have different observation on your end?
> If not, then we do need something like this patch while addressing the
> backwards-compatibility concerns.
>
> During v1 RFC[2], I did observe that renesas also have DisplayPort
> connector type and might require hpd, but since the support was
> already there and no issue was raised, I assumed it does not require
> HPD.
>
> [2]:
> https://lore.kernel.org/all/01b43a16-cffa-457f-a2e1-87dd27869d18@ti.com/
>
>
> >
> > Regardless, breaking backwards-compatibility with existing DTBs is
> > definitely a no-go.

FWIW, we are in a little bit of a sticky situation here. We were in a
bit of a bad place from the start because the Linux driver ignored HPD
from the beginning but we didn't actually document that people should
be setting the "no-hpd" property until a little bit later. You can see
some discussion about this in commit 1dbc979172af ("dt-bindings:
drm/bridge: ti-sn65dsi86: Document no-hpd") where I noted "this is
somewhat of a backward-incompatible change." ...but, at the time, it
wasn't really a big deal because there were very few users (the one in
tree at the time was cheza, which was a dev board used internally at
Google).

...so, as of that change in May of 2020, it was documented that eDP
users were _supposed_ to be setting NO_HPD. I even remember Bjorn
requesting the "or is otherwise unusable" phrasing because we pretty
much wanted to set this property on everyone using sn65dsi86 as eDP
(even if they have HPD hooked up) because the debouncing time is so
long that it was better to hardcode the max delay instead of reading
the HPD line. Of course, even though we documented that they were
supposed to have the "no-hpd" property didn't necessarily mean that
everyone did. The code has never enforced it. I don't believe it even
checks the property...

So if there are dts files out there that don't set the property and
they were submitted after the bindings change in 2020, _technically_
they've been wrong the whole time. We're not changing history by
adding a new requirement so much as fixing broken DTS files. Although
the Linux driver always allowed them to get away with being broken,
technically DTS is separate from Linux so if they've been violating
the bindings then they've been wrong. :-P That being said, they've
been working and it would be nice to keep them working if we can, but
one could make an argument that maybe it would be OK to require them
to change...


> Got it.
> Let me try to figure out a way to fix it without messing it up.

While a bit on the ugly side, it seems like perhaps you could just do this:

1. If enable_comms is called before the bridge probe happens, just go
ahead and disable HPD.

2. When the bridge probe happens, if you notice that HPD should be
enabled and comms are on you can just enable HPD then (grabbing the
comms_mutex while doing it).

3. Any subsequent enable_comms called after the bridge probe happens
shouldn't disable HPD.

...you'd probably want a comment about the fact that "no-hpd" property
is unreliable, which is why we can't figure this out in a better way.


-Doug

