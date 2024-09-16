Return-Path: <devicetree+bounces-103257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E04897A3F5
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 810ED1C27B2F
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 14:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B854157472;
	Mon, 16 Sep 2024 14:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SRY9ci2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866FB15575D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 14:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726496162; cv=none; b=DUJiCZeuM0qxc8QIyuzLa9M1Y8sZf/L8VQ98/BxJHaYvgzry4GYphRsw98unHDd3DQDeSF38NvTZgisZVB7bxjWw5kaKPQt61JkTjQfKBXHYOvlxCzBr+Xw54W8k4IuAv4bWV32M04t6KuOsYeT3CopX+3VrBnNDSUtGBtXi3KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726496162; c=relaxed/simple;
	bh=4vNgVS9GZ2j9kKRodh0jVIgu5z1qSsuIchwcUpNkRWE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i4MTS4yzqXO9V7LgdUQsWMMMb+TuuortZT206pZXI5VkaiEnETlr/SCe4N6vBML5BeGb9uu3scMsHJG178SDz53B42AcpgSCnJGk8PrwhAVCnFw4nmVvdSRHui4VCi/VBDzE27a8J9zZ5GcubSxdxYHK6YA9x0wtQLH9CYvJCAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SRY9ci2W; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7a9acc6f22dso450880085a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 07:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726496158; x=1727100958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZE+jV0zHlg6zy6Ts72y2t3G+5soo/pTPKebVXXxYvbc=;
        b=SRY9ci2Wgyy+0wwLSwMKM4aKoPwwPzHc5xXaOODcJtC4PP0CNZoJcg37EWKLENyjaP
         TKnzZge6g41H66lOS9X4wyFNuAORZ2JdAaH9Ftb2vE4xjwewCyQYBu9vNAoe4r1Zm2DC
         v+yAIONdt+Of29Wegjc/i8VcT8OrkjN5Jw1Us=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726496158; x=1727100958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZE+jV0zHlg6zy6Ts72y2t3G+5soo/pTPKebVXXxYvbc=;
        b=wy0gP5CpwovegPkOdk5T2NNNtEAy/boprWxTHGVMCQktuaCNLeiQp4UCUbqFgBSmzQ
         mZPa8acLO9z8qrNIBN8bPCasOT1cMjK7V59v0jVPEY/9NvQ9fQduwPr27C8UmlVShI/4
         X0EXep1QjkE70/fRcMB7XhtBFIt5bJ7e3Dl584vLbFwjcbXT+92XxguH23vCDDfCdSrw
         d2m3zzfeV4sW8bmzxwoAX0xJHhMi9ULt1Zj3DOyGWC1wWjB7lgcIAcjEGI3Fo42fZeKl
         4WhEnknuDLY3QilQWrZ3WxsCHYhhcRu69fWPQ2tli9p/CtW62MUqr9fhnK1VVfH03MoL
         z2XA==
X-Forwarded-Encrypted: i=1; AJvYcCWx9Xo8pszLdOZ+Sou+x0IM3pwdDZr4LFq2FwZDxWEp3u3yRXvXhvWhwlVfO2c/5gT8CAJVgD9r858T@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2/vJMpSyAVSeI9l9c2v4ykmv/2CxuTzivVh03Ceojcf3yaH+A
	I//0+Mlx4TIGcH3Ji99w6eov/KBOLOGWuf1SEEr3tvqLnglgGPzgOo+xkZRI92+qN0RtyvrYIbE
	w1g==
X-Google-Smtp-Source: AGHT+IGv+pyxGX5JBkJUK9dVuX/duXAAL/F1EFOLEjLOSP2NF+Xb9AegyO4p9s9J985o/l44g3aDWg==
X-Received: by 2002:a05:620a:3192:b0:7a9:c5ab:4e07 with SMTP id af79cd13be357-7a9e5fb8641mr2660359485a.55.1726496158338;
        Mon, 16 Sep 2024 07:15:58 -0700 (PDT)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com. [209.85.219.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ab3e95e9bdsm255573785a.16.2024.09.16.07.15.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2024 07:15:57 -0700 (PDT)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6c36ff6e981so34934416d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 07:15:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU9/bLleQDm8IP9hbeT31+avsnGbMmbggLBQt4lA8a/iS7XSCZ7h5hIwMalG7OU4Bt0nGsqj4AWGBUy@vger.kernel.org
X-Received: by 2002:a05:6214:5245:b0:6c3:6e5e:64d4 with SMTP id
 6a1803df08f44-6c5736c8fdbmr253820506d6.32.1726496156795; Mon, 16 Sep 2024
 07:15:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-7-wenst@chromium.org>
 <CAD=FV=Udc9aP7bSzTWP82zsaztRD2YnVNpSDA54FC0dKQ-Nz2A@mail.gmail.com> <CAGXv+5FRoiv+TPyeFTcuRanRuSh2-xUo6ttVPkW6o3tktUmcFA@mail.gmail.com>
In-Reply-To: <CAGXv+5FRoiv+TPyeFTcuRanRuSh2-xUo6ttVPkW6o3tktUmcFA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 16 Sep 2024 07:15:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UDoaBN4OLZhEB4uvs6vDRVS0ZAsce2=3rJOn5sKEu-hw@mail.gmail.com>
Message-ID: <CAD=FV=UDoaBN4OLZhEB4uvs6vDRVS0ZAsce2=3rJOn5sKEu-hw@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] i2c: Introduce OF component probe function
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Sep 15, 2024 at 4:32=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> > > + * Assumes that across the entire device tree the only instances of =
nodes
> > > + * prefixed with "type" are the ones that need handling for second s=
ource
> > > + * components. In other words, if "type" is "touchscreen", then all =
device
> > > + * nodes named "touchscreen*" are the ones that need probing. There =
cannot
> >
> > "touchscreen*" implies that it can have an arbitrary suffix. Can it?
>
> That is the idea. The use case is for components that have conflicting
> addresses and need special probing. Such device nodes obviously can't
> have the same node name. This is planned but not implemented in this
> series.

Maybe "touchscreen@*" instead of "touchscreen*" if I'm understanding correc=
tly.


> > > + * be another "touchscreen" node that is already enabled.
> > > + *
> > > + * Assumes that for each "type" of component, only one actually exis=
ts. In
> > > + * other words, only one matching and existing device will be enable=
d.
> > > + *
> > > + * Context: Process context only. Does non-atomic I2C transfers.
> > > + *          Should only be used from a driver probe function, as the=
 function
> > > + *          can return -EPROBE_DEFER if the I2C adapter or other res=
ources
> > > + *          are unavailable.
> > > + * Return: 0 on success or no-op, error code otherwise.
> > > + *         A no-op can happen when it seems like the device tree alr=
eady
> > > + *         has components of the type to be probed already enabled. =
This
> > > + *         can happen when the device tree had not been updated to m=
ark
> > > + *         the status of the to-be-probed components as "fail". Or t=
his
> > > + *         function was already run with the same parameters and suc=
ceeded
> > > + *         in enabling a component. The latter could happen if the u=
ser
> >
> > s/latter/later
>
> Are you sure?

No. latter looked weird to me and I searched quickly and thought I was
right. With a more full search looks like you're right.


> > > +int i2c_of_probe_component(struct device *dev, const struct i2c_of_p=
robe_cfg *cfg, void *ctx)
> > > +{
> > > +       const struct i2c_of_probe_ops *ops;
> > > +       const char *type;
> > > +       struct device_node *i2c_node;
> > > +       struct i2c_adapter *i2c;
> > > +       int ret;
> > > +
> > > +       if (!cfg)
> > > +               return -EINVAL;
> >
> > Drop extra check of "!cfg". In general kernel conventions don't check
> > for NULL pointers passed by caller unless it's an expected case. You
> > don't check for a NULL "dev" and you shouldn't need to check for a
> > NULL "cfg". They are both simply required parameters.
>
> "dev" is only passed to dev_printk(), and that can handle "dev" being
> NULL. Same can't be said for "cfg".
>
> I don't know what the preference is though. Crashing is probably not the
> nicest thing, even if it only happens to developers.

Honestly as a developer I'd prefer the crash. It points out the exact
line where I had an invalid NULL. Returning an error code means I've
got to compile/boot several more times to track down where the error
code is coming from.

I'm fairly certain that the kernel convention is to only check things
for NULL if it's part of the API to accept NULL or if the value can be
NULL due to untrusted data. If the only way it can be NULL is due to
buggy code elsewhere in the kernel then you should omit the error
checks.

> > > +               if (!of_device_is_available(node))
> > > +                       continue;
> > > +
> > > +               /*
> > > +                * Device tree has component already enabled. Either =
the
> > > +                * device tree isn't supported or we already probed o=
nce.
> > > +                */
> > > +               ret =3D 0;
> > > +               goto out_put_i2c_node;
> > > +       }
> > > +
> > > +       i2c =3D of_get_i2c_adapter_by_node(i2c_node);
> > > +       if (!i2c) {
> > > +               ret =3D dev_err_probe(dev, -EPROBE_DEFER, "Couldn't g=
et I2C adapter\n");
> > > +               goto out_put_i2c_node;
> > > +       }
> > > +
> > > +       /* Grab resources */
> > > +       ret =3D 0;
> > > +       if (ops->get_resources)
> > > +               ret =3D ops->get_resources(dev, i2c_node, ctx);
> > > +       if (ret)
> > > +               goto out_put_i2c_adapter;
> > > +
> > > +       /* Enable resources */
> > > +       if (ops->enable)
> > > +               ret =3D ops->enable(dev, ctx);
> > > +       if (ret)
> > > +               goto out_release_resources;
> >
> > I won't insist, but a part of me wonders whether we should just
> > combine "get_resources" and "enable" and then combine "cleanup" and
> > "free_resources_late". They are always paired one after another and
> > I'm having a hard time seeing why they need to be separate. It's not
> > like you'll ever get the resources and then enable/disable multiple
> > times.
>
> Maybe. The structure was carried over from the original non-callback
> version. I think it's easier to reason about if they are kept separate,
> especially since the outgoing path is slightly different when no working
> component is found and one of the callbacks ends up not getting called.

Actually, both of the outgoing callbacks are always called. It's only
the 3rd callback (the "early" one) that's called sometimes.

I won't insist on combining them, but I still feel like combining them
would be better. I'd be interested in other opinions, though.


-Doug

