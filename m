Return-Path: <devicetree+bounces-111247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6699DE70
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 08:33:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03AF51C23B16
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 06:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47AF189F2B;
	Tue, 15 Oct 2024 06:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QSulWA69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30332189BB2
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728973989; cv=none; b=k/RVuq71C8dNDXJzmIs8EEsZhEFBpMF5z/FfAsZzvEoTLVDe1ZXoSGVzboSwQZ30059FOwm/5Wn9tJ/mrmsy8pKwfjq1nWYrlU+iPmRWkTV+jypaKMvhyHKf1tlb7nRKR+RfgiSLCGX0kFFlrgrBxBYIbARXQRjybBsO1C39WDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728973989; c=relaxed/simple;
	bh=ajcr+KVWs/DtWqF1gsWdMOYVHLRYdSzAIdmxuUdyUdQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LoLHe0BHHxvivfFrFNLB6YEtWVhKezxGLC9LW/bbtUdrZnaZO7qgFnHIiTv58fPI7MP9YZvOgtUXRmnQkAii2s02MIN6r2Im/MAyE5e7O3v1EgiEy2ksIihsh7+OeW/9elWpJfQBmMiqEusp05r0ie1Ycpiv48eICYLnP+9q3mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QSulWA69; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539eb97f26aso2395296e87.2
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 23:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728973986; x=1729578786; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LSQe+OWkJptNhalICgZHHnWYpzgrAnYhHgBYOyd2y2A=;
        b=QSulWA69imZpBxSB7twecK+I/3UCL5stUsEn22tLRtV/yOJugi9yoNoaxCSk1j4vgD
         KoeH//1D9yJeSIwlcyddNpwX/sBCGCKjkhed0nJEcgkKjGPoD2buSZV3aarH0DvhZds/
         wttqzeGcMJQzmJ3sPedSiyOx2gVBHsrL5xAJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728973986; x=1729578786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LSQe+OWkJptNhalICgZHHnWYpzgrAnYhHgBYOyd2y2A=;
        b=bmYcER8um5OWaCTxDLqaBoTtQjaNTwVv0E0jE9w3jxVEu3/N6LbeGL2R2oaDnMHs43
         I/f2Hy5Sw6kB0tACC93Cbe0pH9LhNX3+qZIlRZr342WPF9Cu+/scGZ+CgH9+qFbo8OVf
         9aOVp8EY+mbRWlLC7EpE9UK9SakR2dRxtR4+90wUqFbxv0jzVGQOEEPZjb6bBitfg8Wv
         VDji9xVzjQtDfeX3Gg+912Tu66nWETa6TgiTA+cjmmEF2Z1AnYZHrehu5B09RB6RoRND
         xehtNTaJwj2TaxWu+kiCl+zdiIbMG7fZN+z/mBPIie6oisya7xL0/bZRgUdEmH1sSa1Q
         vzMg==
X-Forwarded-Encrypted: i=1; AJvYcCVQb6xWcAwfllGGLA2qfS5HcU8xGhkvvd8dPUmvYhor0et/lLYVXovp2u4rpEWm8IzDL3p0mhUIO6Gw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl0kPf+UIfhdupSIwP4QiHdg7HJ/XB+z2X+e4+EV2p2Z9uBLM6
	FL0A7plO8J02pvRR4VWjmTceT8GkMtY/qk5IvaE+ANhP+SCVgPzSSvaVQK4Asnx01fE/Qt6Nbrc
	24yoZLoPK357APGENC3RBfOmUJmR0etZV1bbE
X-Google-Smtp-Source: AGHT+IEi5VM5BInri+Xle/NpCFhUkRIBDd77CTdk9H6/daGndiGJT4jSou7J34vtaK0aKDEUC8sIsGSEXiAysfqU1+Q=
X-Received: by 2002:a05:6512:2396:b0:539:eb82:d453 with SMTP id
 2adb3069b0e04-539eb82d67dmr3760676e87.39.1728973986262; Mon, 14 Oct 2024
 23:33:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-8-wenst@chromium.org>
 <Zwfy6ER6sbr_QxsY@smile.fi.intel.com> <ZwfzhsvlPrxMi61j@smile.fi.intel.com>
 <CAGXv+5ED7j49ndT7BaESW8ZL7_mjVUJLM_FWma8Lwkg+Uh3saw@mail.gmail.com> <Zwz_Kl7SwfL0ZaAZ@smile.fi.intel.com>
In-Reply-To: <Zwz_Kl7SwfL0ZaAZ@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 15 Oct 2024 14:32:54 +0800
Message-ID: <CAGXv+5H0Yvt1cwPOim-quT3C+=s9NapnryJhNxs_QW=DAyAycQ@mail.gmail.com>
Subject: Re: [PATCH v8 7/8] platform/chrome: Introduce device tree hardware prober
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2024 at 7:23=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Oct 14, 2024 at 12:56:20PM +0800, Chen-Yu Tsai wrote:
> > On Thu, Oct 10, 2024 at 11:32=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Thu, Oct 10, 2024 at 06:29:44PM +0300, Andy Shevchenko wrote:
> > > > On Tue, Oct 08, 2024 at 03:34:26PM +0800, Chen-Yu Tsai wrote:
>
> ...
>
> > > > > +   .cfg =3D &chromeos_i2c_probe_simple_trackpad_cfg,
> > > >
> > > >       .cfg =3D DEFINE_I2C_OF_PROBE_CFG(trackpad, i2c_of_probe_simpl=
e_ops),
> > > >
> > > > Or even
> > > >
> > > > #define DEFINE_I2C_OF_PROBE_CFG_SIMPLE(_type_)                     =
   \
> > > >       DEFINE_I2C_OF_PROBE_CFG(type, &i2c_of_probe_simple_ops)
> >
> > I'm not inclined on using compound literals here. "simple X cfg" will
> > likely get shared between multiple |chromeos_i2c_probe_data| entries,
> > and AFAIK the toolchain can't merge them. So we would end up with one
> > compound literal per entry, even if their contents are the same.
>
> I'm not sure I follow, you are using compound literal _already_.
> How does my proposal change that?

I'm using it where it makes sense, i.e. where the embedded variable
is not going to be shared with other instances.

For the dumb probers, there's only going to be one instance per "type".

For the simple probers, the config part is still one instance per "type",
but the parameters are board and component specific. There will be
multiple instances. Hence the config part can be shared, while the
parameters likely won't be.

> > > With that also looking at the above
> > >
> > > #define DEFINE_I2C_OF_PROBE_CFG_NONE(_type_)                         =
   \
> > >         DEFINE_I2C_OF_PROBE_CFG(type, NULL)
> >
> > For the "dumb" case it makes sense though, since it would be one instan=
ce
> > per type. But we could go further and just wrap the whole
> > |chromeos_i2c_probe_data| declaration.
>
> Maybe it's too far from now...

This is what I have:

#define DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB(_type)
                        \
       static const struct chromeos_i2c_probe_data
chromeos_i2c_probe_dumb_ ## _type =3D {       \
               .cfg =3D &(const struct i2c_of_probe_cfg) {
                        \
                       .type =3D #_type,
                        \
               },
                        \
};

DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB(touchscreen);


ChenYu

