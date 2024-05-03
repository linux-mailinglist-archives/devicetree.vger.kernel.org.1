Return-Path: <devicetree+bounces-64688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE838BA74C
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 08:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 134B41F2123F
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 06:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A5301465AD;
	Fri,  3 May 2024 06:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GO4Tu4c3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E81D1465AA
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 06:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714719538; cv=none; b=AZKe79FuNascE9gxJTkHYe15I2NxEgmTyguT9V/oNUoJE4sgz+xxlTTHY2Y/t6Z47T1+SCbAH8xaWcaGxuy9NMKS1HYyMJjglUUkJdkvgAMIur5/ZEG65suo97c2gIJKSKKOekBS7w/LDv0E2CJkYlm2MoKd1a1tcVQx0Zw4GWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714719538; c=relaxed/simple;
	bh=uiquuqkMJF4ptltnUi63scVpSntF814sk4NepyC7uso=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SEZOc2YUiitXGd4X8XZ/+fliReyv5qCkX9ouB1qFDUoo2ZYxIhkeY834Zrf6ItbbNB+IQJK8hb9gWAlCYFHaVceqT3Uft/0msP24mjy8Gfi9LlrDNadeOQYVF2KpbOPyjYm7FJ2nzH2YFUWqOJFCD6upRBeiDfmENrvA53r5z7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GO4Tu4c3; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a599a298990so17671066b.2
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 23:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714719534; x=1715324334; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LXjaL+il8Ez+7d6ytrKawnux38fevS26j1EU1z2Rw38=;
        b=GO4Tu4c3L1KFtpt5IS1AqabL8SSjZmvgJJKuZgkawT3L7xnwzR/yu7OCgkDLf/IDLe
         KbG2C+0hVCbJNPf6D47jlihg0L0PnP2bqa1oOVOJLzs0T8TmuuHjJ5nqhuy4RebnyCX0
         zfp1d9slbsz7PhtdxcP7lqg0GdPshO3CGwoDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714719534; x=1715324334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXjaL+il8Ez+7d6ytrKawnux38fevS26j1EU1z2Rw38=;
        b=htE5u4vtN0QDYmZ5nLx+TY+qH/Dy/Ao2ZW63OCQIlK9LUIQ9/zViCKP2+ZJYhBUczH
         at9Em28CBY7iVthRIvYB67iUYLJHnq9KQZWYz1R8Qx4VcWczJ4FXLq3XFhUBdnOR3xEK
         DWHo6SiLcKXQ87NDj6ixhOQAvBWT+6l5/fHH/bVuMDwPjXCoTj81+fJXpMPF6NIDkXwn
         kqUic9ce8ljIKqF/V0cM1x607hnyr9/XMhbA/u9+B+3ZZwhkdwk8yE7x/NyPC3M4O738
         9rEpjjZw6YZcg5k+f+AylnXyJ8nPvnCqcI6a8Sh1nZcDlbnBGApiLdR73Vsyg/FwVTNr
         4V8w==
X-Forwarded-Encrypted: i=1; AJvYcCWuUlQEjd7QcuP1VNaJo3deAfJnGJ+6TNGrOhi/AcR1S813igG4lplny0DgzlpLe+0h2vfPtZJME9ypC9nROLZgW2vIg6OGFNw+Xg==
X-Gm-Message-State: AOJu0Yyx2mi4ER55uIv+EgTqr0pdhaZy9/SmBKlyYi5vMXpZjMeNKeah
	gDgEGe/eTo/H9vlFFVqtT6uG/BSo1X4xqHUCxjF7CTH4/o7sIWtBHFA1AUh9fmiZmLwXYoCTgLL
	mUA==
X-Google-Smtp-Source: AGHT+IH+yAuY6S5kkkmfQ0z0jNG2axRb2x1btJZ/89k0eXwzFFTPZFgvbThEWohHPTmN3TPvmAG3ig==
X-Received: by 2002:a50:a699:0:b0:572:93fa:d6fa with SMTP id e25-20020a50a699000000b0057293fad6famr1022715edc.0.1714719534329;
        Thu, 02 May 2024 23:58:54 -0700 (PDT)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com. [209.85.218.50])
        by smtp.gmail.com with ESMTPSA id q28-20020a50aa9c000000b00572469a7948sm1402469edc.45.2024.05.02.23.58.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 May 2024 23:58:53 -0700 (PDT)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a599a298990so17664066b.2
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 23:58:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVnuVeO7WsUYD2hNQFUD+m6DoNoTcHMr1k7zPld6coevaq9NxDVEM7cmAibFnpocqdtJiqIys1JoRVQXChS6CkwCUTl+JLjYejTIA==
X-Received: by 2002:a17:906:dc04:b0:a52:2d83:1483 with SMTP id
 yy4-20020a170906dc0400b00a522d831483mr990970ejb.53.1714719532753; Thu, 02 May
 2024 23:58:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
 <20240502-anx-tdm-v1-1-894a9f634f44@chromium.org> <20240502-sheath-share-eac9afc24da9@spud>
In-Reply-To: <20240502-sheath-share-eac9afc24da9@spud>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 3 May 2024 14:58:16 +0800
X-Gmail-Original-Message-ID: <CAHc4DN+mCbBuB3D9kB2x8HYj9iaX7t6Q4Qjj7hotH3u=eAHJSg@mail.gmail.com>
Message-ID: <CAHc4DN+mCbBuB3D9kB2x8HYj9iaX7t6Q4Qjj7hotH3u=eAHJSg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: anx7625: Add a perporty to
 change TDM setting
To: Conor Dooley <conor@kernel.org>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Xin Ji <xji@analogixsemi.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2024 at 10:47=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, May 02, 2024 at 09:03:31AM +0000, Hsin-Te Yuan wrote:
> > Add a perporty to indicate whether anx7625 should shift the first audio
> > data bit. The default TDM setting is to shift the first audio data bit.
> >
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> > ---
> >  .../devicetree/bindings/display/bridge/analogix,anx7625.yaml          =
| 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,=
anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,an=
x7625.yaml
> > index a1ed1004651b9..915d5d54a2160 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625=
.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625=
.yaml
> > @@ -82,6 +82,10 @@ properties:
> >      type: boolean
> >      description: let the driver enable audio HDMI codec function or no=
t.
> >
> > +  no-shift-audio-data:
> > +    type: boolean
> > +    description: Disable the first audio data bit shift in the TDM set=
tings.
>
> This just looks like software policy, since there's no mention in the
> commit message or description as to what property of the hardware causes
> this to be required. Can you please explain why this property is needed?
>
> You're also missing a vendor prefix.
>
> Thanks,
> Conor.
>
> > +
> >    aux-bus:
> >      $ref: /schemas/display/dp-aux-bus.yaml#
> >
> >
> > --
> > 2.45.0.rc1.225.g2a3ae87e7f-goog
> >

Sorry, I found this feature in the datasheet originally, but after
deeper investigation, it seems that this feature should be used to
support i2s dsp mode b instead of being used this way. Note that the
difference between i2s dsp mode a and b is whether or not to shift the
audio data by 1 clock cycle.

Regards,
Hsin-Te

