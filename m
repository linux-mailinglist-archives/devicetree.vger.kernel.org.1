Return-Path: <devicetree+bounces-111556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C768499F490
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C53828464C
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CBC1FAEE8;
	Tue, 15 Oct 2024 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="U+05/AVD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7E58614E
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 17:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729015133; cv=none; b=gNFa7g9SlxI4ByTchqQJ2Wg8t/yLihQvaFfVFJA5mugvXCBfcMmqRkn4CmoLsTZDg3JLSxCaU6MrH4LY7bYcTj3KvtNCVY6H6qxRgD0QfraOUh1BnrmygGHKGv/Zg1xKnE/x6Q86L7DRoiffRkTObh6DS7jZs3JDTIdwg6M+fE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729015133; c=relaxed/simple;
	bh=14O5MDyat6CX8O123WRU/kCYMtgocuRDZbVVnnkI2Yk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sqwi3RTT/gt5MTSHCrQdsS8WuRlvm+2Eog09N9RLz17D7h8kUGALxRGqeeEg3H1n6DcmQ2VVgDeJkewf8hKp+CmeHH2qIVfTuGjxH5RaguCTLilhCLKP2WLPYaXJ3R/HQc3sZ4axvEaW2Zue9hGpTdNcc7cCsrC1+LJtu3eukds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=U+05/AVD; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f4d8ef84so3164234e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729015127; x=1729619927; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Yio/gvv50Y6PZv0Xv308n7irKGS6U7Q/Fl4Lj32yaA=;
        b=U+05/AVDzgeDdtFb+APbcIJoIguZqwYWMH5zt7rKgVAukgRu2IK2lnNwZkzS82yhrB
         ucyfTJrkGhk0FsQ3Row6hqSU7DGoGaS/tcTwQOBb6gotZ3pnvUAfSNMcURwinh5rEHIV
         V2vpAdzqF+m2xxFD28TJhVs0qmCa3mYK+ja70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729015127; x=1729619927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Yio/gvv50Y6PZv0Xv308n7irKGS6U7Q/Fl4Lj32yaA=;
        b=AkvdGCGtyE1hoW15msjyKYiQ/TX4EOUEOSJwPxaQ+8ZW6dUmHg5OF3r5g1oS5OKaxN
         9277U2KajUkTNpmAatvdSu3yyZBlToOAX2cWi0c+llJSRO3y7tRBCjDEW9pCfSCQfzHm
         Vbug2A0MsHnXmOFNlhzQZArilGO3JUXplErT4FwGG57WD/t4hj2B07VDf5jEzD2p8o8L
         T+NmZXUTHG2V2N8Ag9cX8RGlG+qLPDn0ZWPJHYby2WbO72AQH/Q0x0+3fs7X9Fk8YQrO
         OAhp0vdvT9kfGenA2qIh5+ai8KY5sXMcHn++xMBEjL+uXrf1NVz60GpASjfTIToUjBsy
         kKFg==
X-Forwarded-Encrypted: i=1; AJvYcCWmloWWcHfv1i065/gdz/cCZBWOoAiM/kTHm1wj/zpoQOtjCvUCfCcxMcL4/n1E3d4qzgAnF8AKfZjr@vger.kernel.org
X-Gm-Message-State: AOJu0Yww3lwVhnm91w7zpS9DpvLOBON5Xj4oD8c4ywUfDS81uLr0nX3Y
	eWz3ExE2mlFZgtZpr2OHvgUstyWzRaqFfD+nVnccuzvum2H7RYwdRvtl7hJ+W+ncbahdKb73sWz
	WtBmq
X-Google-Smtp-Source: AGHT+IGtgNPV26NiDeAMoj1uBntvzmWZZWYBKMXL5dlKOo0Pbw1AMnSHiwPv79OuXVpF9H82Atcp4w==
X-Received: by 2002:ac2:4c4e:0:b0:535:d4e6:14e2 with SMTP id 2adb3069b0e04-539da4fb618mr8145106e87.36.1729015127354;
        Tue, 15 Oct 2024 10:58:47 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00013f66sm221495e87.279.2024.10.15.10.58.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 10:58:47 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53a007743e7so1188552e87.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:58:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUg//4bKKHD6DhPd2qBIzJl/znNOlCgErxH7P9rGsCR5vKO05OK0/y+YCa+Xcx7LMdzvtK0dqD2P5tC@vger.kernel.org
X-Received: by 2002:a05:6512:2c95:b0:539:e94d:2d3d with SMTP id
 2adb3069b0e04-539e94d2ea1mr5104630e87.7.1729015125333; Tue, 15 Oct 2024
 10:58:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-5-wenst@chromium.org>
In-Reply-To: <20241008073430.3992087-5-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Oct 2024 10:58:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WRSjk3U9Kau0wqkgv3KB=9jM6wCM9Gs-WxWai35sfxTg@mail.gmail.com>
Message-ID: <CAD=FV=WRSjk3U9Kau0wqkgv3KB=9jM6wCM9Gs-WxWai35sfxTg@mail.gmail.com>
Subject: Re: [PATCH v8 4/8] i2c: Introduce OF component probe function
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 8, 2024 at 12:35=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> +int i2c_of_probe_component(struct device *dev, const struct i2c_of_probe=
_cfg *cfg, void *ctx)
> +{
> +       const struct i2c_of_probe_ops *ops;
> +       const char *type;
> +       struct i2c_adapter *i2c;
> +       int ret;
> +
> +       ops =3D cfg->ops ?: &i2c_of_probe_dummy_ops;
> +       type =3D cfg->type;
> +
> +       struct device_node *i2c_node __free(device_node) =3D i2c_of_probe=
_get_i2c_node(dev, type);
> +       if (IS_ERR(i2c_node))
> +               return PTR_ERR(i2c_node);

I'm still getting comfortable with the __free() syntax so sorry if I'm
wrong, but I _think_ the above is buggy. I believe that the definition
of the free function for "device_node" is from:

DEFINE_FREE(device_node, struct device_node *, if (_T) of_node_put(_T))

...which means it'll call of_node_put() to free "i2c_node" when it
goes out of scope. of_node_put() handles NULL pointers but _not_ ERR
pointers. So I think that if you get an error back and then return via
the PTR_ERR(i2c_node) then it'll crash because it will try to free an
ERR pointer. Did I get that right? Presumably you need to instead do:

  return PTR_ERR(no_free_ptr(i2c_node));

...or change of_node_put() to be a noop for error pointers?


> +struct i2c_of_probe_ops {
> +       /**
> +        * @enable: Retrieve and enable resources so that the components =
respond to probes.
> +        *
> +        * Resources should be reverted to their initial state before ret=
urning if this fails.

nit: might be worth explicitly noting that returning -EPROBE_DEFER is
OK here because this both retrieves resources and enables.


> +        */
> +       int (*enable)(struct device *dev, struct device_node *bus_node, v=
oid *data);
> +
> +       /**
> +        * @cleanup_early: Release exclusive resources prior to enabling =
component.

nit: change the word "enabling" to "calling probe() on a detected"
since otherwise it could be confused with the "enable" function above.


-Doug

