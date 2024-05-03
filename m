Return-Path: <devicetree+bounces-64840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA3A8BB187
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 19:13:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 335041F22EF8
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 17:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CF27157A7F;
	Fri,  3 May 2024 17:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nViWgbUa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A5F78276
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 17:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714756386; cv=none; b=n2N/lBtc8az7+UbG3dKVuBSW2hY0nCzsY64V91dJ1E47J5J0fH381Zy18j3M8GtMURfPmgxkUh9L3EiVoGqIsZBovDnqg7oQRukZ9+nDyXFdNr3qZiooxW4QUg9m8A2qxl2y2Pg5zGq7CIUl2P3v8+S+YcvXLwn9fBhHHocmBYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714756386; c=relaxed/simple;
	bh=usIfQdo9xK41wsiBE40gTLV2UjcRarxNmZBvY+vqIMA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GO1B9kBb5jZaYQl7iakOMO8Q4ZQ1SfALwQ3PK8amr4Njb0m1eyLggnQqnwHXIHvrPqczxhv09K0DBk7FzA3G88AOh89/+WmGpTt4wXaUogm/nQ6JR8oxVfyTXMAa7oRkxqjKM7857DJWxkJkghgxROnSYcfLcCPkZW8zEZ66kIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nViWgbUa; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a5966ea4fafso415937366b.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 10:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714756383; x=1715361183; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bFDUxR30IPwZt3hzDUBu2ztG3pGTqmkwZJ0uw0kvNMs=;
        b=nViWgbUaxb0PFfH5DG1B681XCE3vL4nEI5Rb/pqkG4G+sYIo6oMZa+f0XtZfc6miHw
         gq7sYHA9SYTo07yzGnl9s8pQPg8Vr83ueCbyo4E9joh1nDpimufAQ4BuvZDricdq1Ngo
         Em3nkkF8/fsnzqEYzl3G+qUogK5+Mi/ELgnkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714756383; x=1715361183;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bFDUxR30IPwZt3hzDUBu2ztG3pGTqmkwZJ0uw0kvNMs=;
        b=rRfPIbSUaSw17JdUzuVcHGsK9UIkJK00IdcLGjU2q44tkbC6yjq1cfseAwDrO4LI/r
         UHP5gU39D53Hli+rR6PXHBEacLCpXkn+AN7+HfUsgACpawj/Ir6KrUgpadfZilAzHo8r
         Akb+/jMsaLWmqcPUs5Wa8BMd8NStvgXwqpc31i33RH2JdjonqXmpQE8AVRM4BjjpawMW
         t77kOFVOrePLQOIhFEEGA6hpQLnvOaAA+BOT4vRzPgPmsNZwo+ersBBPouUdboiKXfkN
         15RDM8z39WtJ9uv1zcP5uCzvRs7CE4YNom0nHImWe3YQNaBhgCLxzYFmeRo/rUwCGgWs
         r+xw==
X-Forwarded-Encrypted: i=1; AJvYcCWGnlq1N8Zm8gQNiEGyS4w9+pXRLqlJToQ9b7mjL/b6+uN6UWCTFPhkaS5HHIpuk98Hre3ciXyFDvc4bXYjp1IOHsj94rH3gEhmsw==
X-Gm-Message-State: AOJu0YznkskBQ9QzQ6tdwhjBybK28OftcQpyNyCiCFGhIPGFJlXiOg8+
	cETIo2bJdpyge0NbQRFCpr7Q27ev3jYIszWnBdZRhGH+q6rW53dyNG5sEhxWh6htEQ9kZmoXt5+
	kXA==
X-Google-Smtp-Source: AGHT+IG14nFduT09saZOgPhUmF3XTdcB1UPXMYgVsHdxZ28KsKGfzWPDSV4hx5CYmeM3HMFu1Tgu/Q==
X-Received: by 2002:a17:906:f754:b0:a58:f186:229 with SMTP id jp20-20020a170906f75400b00a58f1860229mr2752732ejb.0.1714756382678;
        Fri, 03 May 2024 10:13:02 -0700 (PDT)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com. [209.85.218.53])
        by smtp.gmail.com with ESMTPSA id b22-20020a170906709600b00a4673706b4dsm1899066ejk.78.2024.05.03.10.13.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 10:13:02 -0700 (PDT)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a58e787130fso546417366b.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 10:13:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXDpHpg/wn1axXqayoN9N0qMi9hCusdEDso9z6OPavQcdTFye2GXBvjqI15LKmdWCRv1oW4OJs+27JPPvve7+fgd8srtm9uKwRjgg==
X-Received: by 2002:a17:906:bcda:b0:a58:7172:1ab0 with SMTP id
 lw26-20020a170906bcda00b00a5871721ab0mr2748595ejb.16.1714756382125; Fri, 03
 May 2024 10:13:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
 <20240502-anx-tdm-v1-1-894a9f634f44@chromium.org> <20240502-sheath-share-eac9afc24da9@spud>
 <CAHc4DN+mCbBuB3D9kB2x8HYj9iaX7t6Q4Qjj7hotH3u=eAHJSg@mail.gmail.com> <20240503-footrest-gladly-c0ed7d92d816@spud>
In-Reply-To: <20240503-footrest-gladly-c0ed7d92d816@spud>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Sat, 4 May 2024 01:12:25 +0800
X-Gmail-Original-Message-ID: <CAHc4DNKL-eX8mOWGB+VN52eefMEccx69d6RSgXbw+9VBvN6V4Q@mail.gmail.com>
Message-ID: <CAHc4DNKL-eX8mOWGB+VN52eefMEccx69d6RSgXbw+9VBvN6V4Q@mail.gmail.com>
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

On Sat, May 4, 2024 at 12:45=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, May 03, 2024 at 02:58:16PM +0800, Hsin-Te Yuan wrote:
> > On Thu, May 2, 2024 at 10:47=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Thu, May 02, 2024 at 09:03:31AM +0000, Hsin-Te Yuan wrote:
> > > > Add a perporty to indicate whether anx7625 should shift the first a=
udio
> > > > data bit. The default TDM setting is to shift the first audio data =
bit.
> > > >
> > > > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> > > > ---
> > > >  .../devicetree/bindings/display/bridge/analogix,anx7625.yaml      =
    | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/bridge/analo=
gix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogi=
x,anx7625.yaml
> > > > index a1ed1004651b9..915d5d54a2160 100644
> > > > --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx=
7625.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx=
7625.yaml
> > > > @@ -82,6 +82,10 @@ properties:
> > > >      type: boolean
> > > >      description: let the driver enable audio HDMI codec function o=
r not.
> > > >
> > > > +  no-shift-audio-data:
> > > > +    type: boolean
> > > > +    description: Disable the first audio data bit shift in the TDM=
 settings.
> > >
> > > This just looks like software policy, since there's no mention in the
> > > commit message or description as to what property of the hardware cau=
ses
> > > this to be required. Can you please explain why this property is need=
ed?
> > >
> > > You're also missing a vendor prefix.
> >
> > Sorry, I found this feature in the datasheet originally, but after
> > deeper investigation, it seems that this feature should be used to
> > support i2s dsp mode b instead of being used this way. Note that the
> > difference between i2s dsp mode a and b is whether or not to shift the
> > audio data by 1 clock cycle.
>
> Are you trying to say that this patch is not needed? I'm not really
> sure.

Yes!

Regards,
Hsin-Te

