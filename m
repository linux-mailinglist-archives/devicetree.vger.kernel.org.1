Return-Path: <devicetree+bounces-110794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9CB99BE59
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 05:54:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0DFF1C22107
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 03:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC5B231CB1;
	Mon, 14 Oct 2024 03:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="D+aTT3Q4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDDD7711F
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 03:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728878043; cv=none; b=tVwViZUH+Gk/QUS2eQ307zLl64yFyGoYYZPvddspBlxctpX3n+TThN8hWdznmHrWyePZt2SdrtH6KFK2/CKujooMs1Dl6zb9YfbA+zjhrWYr20oQDK78k7Pe4tgIWtz7/2VXRpEPBCQJN9RCeh7djt2glMGkZiq7bX8s2Exm3KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728878043; c=relaxed/simple;
	bh=u0PlDHHV/2N72J7VOsa02rvBMYZAXVzQdaQv5644zzo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NOH2ActNmXy827RLShE7z5+kF6FBaGH/7lEH/xjT+z/WEW56MswnMgSKrzMAcYDCepWoMt2SI2C4sIIKN1S1oYs+iWXd5O+G3K9K+1lHLOgd4SL9fXctCxYS2VMm5YBgoXzZjD8YeFdbfI++eL+p6v3xtq11n9/qBx0FpKIFb7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=D+aTT3Q4; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539983beb19so4051101e87.3
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2024 20:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728878039; x=1729482839; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3lLQfUo/s0gGdA9DmoonFF1hWOI8uf/oAseIjpYmyc=;
        b=D+aTT3Q4nfVbyDbdbuSNAnkQ7o4D4aFBsvut4yzjrc0f/zR79FqHJg4TOPPx9eIDIw
         1iHqxjVcEeAbHlJZXPIOmpB5SPzdA22xgpFpf14Iph1QT6E/n/rzxOZ6futw1D2WTCq1
         E1p738uKD/wK4ACPRiNtVurFPTlQ4ajiu2rVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728878039; x=1729482839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3lLQfUo/s0gGdA9DmoonFF1hWOI8uf/oAseIjpYmyc=;
        b=Y2hKQ4G6S0aKAuDX9ZiSfau6w1EXlWW9uBcaQPdfcczmKVim4GPUle8wzj6GiZJX78
         JpvQrp08KsGKt3j/DdD+nDXrRhBXzBjEiTUgYssVUpaRcz6sdMz8RFxOGf4dspPJGEgP
         RwQDNxEf7RPXwNdmh9Irj80jDgr2cgrNzI8NpSxYTzvvXKbs2xS8vAYPHH1S56r3damu
         8X4WPtCKbXafGRsptGmVreMOJblSZWtjZWM7cuIbLa24J0LbyTQYlYxlr8BVfGLCKJqO
         OZmx834/rd2GucYW2A7wsi4jMcH7yLyfV7ZSldcgT01TIkafKx6ObmOG4Kt1sjWoYaMp
         KiXw==
X-Forwarded-Encrypted: i=1; AJvYcCUqLfAh2KOpWAHzX1915vCPZtsrvBENcANMb6EWN0s78QE3Jm8LHPK4wkRCAfk2jfliDNAMYSv79FnS@vger.kernel.org
X-Gm-Message-State: AOJu0YxSc6CfRmUlX7I5UXVkNx2wckYFcWoztbL7pL/KZ5QnhJmnJkWb
	vUiOLncbOfdQu/b4YExljnRhvk7yaqkvBPDstgAYJD4G0AQIqYLd4at5CIeGeDD75JU/jAsY921
	Zu52FeXzgYCRX2Cz1I1GU3HftV9m3EETYf0+wg35jF4DU0160uA==
X-Google-Smtp-Source: AGHT+IEzxwWlDLTghtVV9WGeXOw9CFAW2YJnxa1CC/fbZlqyGTRNtILA9Q+qUXeSLMHOqXVX0fu1XTuMTWycvKaDLXI=
X-Received: by 2002:a05:6512:2255:b0:539:9f52:9e4 with SMTP id
 2adb3069b0e04-539da583dbbmr3799259e87.48.1728878038726; Sun, 13 Oct 2024
 20:53:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-5-wenst@chromium.org>
 <ZwfvuA2WhD_0P3gL@smile.fi.intel.com>
In-Reply-To: <ZwfvuA2WhD_0P3gL@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 14 Oct 2024 11:53:47 +0800
Message-ID: <CAGXv+5Hm62hFsF27B-cEWTJ_AKrhcfCPaqR7BxmpwnjABzwHTQ@mail.gmail.com>
Subject: Re: [PATCH v8 4/8] i2c: Introduce OF component probe function
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

On Thu, Oct 10, 2024 at 11:16=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Tue, Oct 08, 2024 at 03:34:23PM +0800, Chen-Yu Tsai wrote:
> > Some devices are designed and manufactured with some components having
> > multiple drop-in replacement options. These components are often
> > connected to the mainboard via ribbon cables, having the same signals
> > and pin assignments across all options. These may include the display
> > panel and touchscreen on laptops and tablets, and the trackpad on
> > laptops. Sometimes which component option is used in a particular devic=
e
> > can be detected by some firmware provided identifier, other times that
> > information is not available, and the kernel has to try to probe each
> > device.
> >
> > This change attempts to make the "probe each device" case cleaner. The
> > current approach is to have all options added and enabled in the device
> > tree. The kernel would then bind each device and run each driver's prob=
e
> > function. This works, but has been broken before due to the introductio=
n
> > of asynchronous probing, causing multiple instances requesting "shared"
> > resources, such as pinmuxes, GPIO pins, interrupt lines, at the same
> > time, with only one instance succeeding. Work arounds for these include
> > moving the pinmux to the parent I2C controller, using GPIO hogs or
> > pinmux settings to keep the GPIO pins in some fixed configuration, and
> > requesting the interrupt line very late. Such configurations can be see=
n
> > on the MT8183 Krane Chromebook tablets, and the Qualcomm sc8280xp-based
> > Lenovo Thinkpad 13S.
> >
> > Instead of this delicate dance between drivers and device tree quirks,
> > this change introduces a simple I2C component probe function. For a
> > given class of devices on the same I2C bus, it will go through all of
> > them, doing a simple I2C read transfer and see which one of them respon=
ds.
> > It will then enable the device that responds.
> >
> > This requires some minor modifications in the existing device tree. The
> > status for all the device nodes for the component options must be set
> > to "fail-needs-probe". This makes it clear that some mechanism is
> > needed to enable one of them, and also prevents the prober and device
> > drivers running at the same time.
>
> Fresh reading of the commit message make me think why the firmware or
> bootloader on such a device can't form a dynamic OF (overlay?) to fulfill
> the need?

The firmware / bootloader on existing devices are practically not upgradabl=
e.
On the other hand, the kernel is very easy to upgrade or swap out.

For said shipped devices, there is also nothing to key the detection
off of besides actually powering things up and doing I2C transfers,
which takes time that the firmware has little to spare. We (ChromeOS)
require that the bootloader jump into the kernel within 1 second of
power on. That includes DRAM calibration, whatever essential hardware
initialization, and loading and uncompressing the kernel. Anything
non-essential that can be done in the kernel is going to get deferred
to the kernel.

Also, due to project timelines oftentimes the devices are shipped with a
downstream kernel with downstream device trees. We don't want to tie the
firmware too tightly to the device tree in case the downstream stuff gets
reworked when upstreamed.

> Another question is that we have the autoprobing mechanism for I2C for ag=
es,
> why that one can't be (re-)used / extended to cover these cases?

I haven't looked into it very much, but a quick read of
Documentation/i2c/instantiating-devices.rst suggests that it's solving
a different problem?

In our case, we know that it is just one of a handful of possible
devices that we already described in the device tree. We don't need
to probe the full address range nor the full range of drivers. We
already have a hacky workaround in place, but that mangles the
device tree in a way that doesn't really match the hardware.

The components that we are handling don't seem to have any hardware
ID register, nor do their drivers implement the .detect() callback.
There's also power sequencing (regulator and GPIO lines) and interrupt
lines from the device tree that need to be handled, something that is
missing in the autoprobe path.

Based on the above I don't think the existing autoprobe is a good fit.
Trying to shoehorn it in is likely going to be a mess.

Doug's original cover letter describes the problem in more detail,
including why we think this should be done in the kernel, not the
firmware:
https://lore.kernel.org/all/20230921102420.RFC.1.I9dddd99ccdca175e3ceb1b9fa=
1827df0928c5101@changeid/

> ...
>
> > +#ifndef _LINUX_I2C_OF_PROBER_H
> > +#define _LINUX_I2C_OF_PROBER_H
>
> Missing kconfig.h.

Ack.


Thanks
ChenYu

> > +struct device;
> > +struct device_node;
> > +
> > +/**
> > + * struct i2c_of_probe_ops - I2C OF component prober callbacks
> > + *
> > + * A set of callbacks to be used by i2c_of_probe_component().
> > + *
> > + * All callbacks are optional. Callbacks are called only once per run,=
 and are
> > + * used in the order they are defined in this structure.
> > + *
> > + * All callbacks that have return values shall return %0 on success,
> > + * or a negative error number on failure.
> > + *
> > + * The @dev parameter passed to the callbacks is the same as @dev pass=
ed to
> > + * i2c_of_probe_component(). It should only be used for dev_printk() c=
alls
> > + * and nothing else, especially not managed device resource (devres) A=
PIs.
> > + */
> > +struct i2c_of_probe_ops {
> > +     /**
> > +      * @enable: Retrieve and enable resources so that the components =
respond to probes.
> > +      *
> > +      * Resources should be reverted to their initial state before ret=
urning if this fails.
> > +      */
> > +     int (*enable)(struct device *dev, struct device_node *bus_node, v=
oid *data);
> > +
> > +     /**
> > +      * @cleanup_early: Release exclusive resources prior to enabling =
component.
> > +      *
> > +      * Only called if a matching component is actually found. If none=
 are found,
> > +      * resources that would have been released in this callback shoul=
d be released in
> > +      * @free_resourcs_late instead.
> > +      */
> > +     void (*cleanup_early)(struct device *dev, void *data);
> > +
> > +     /**
> > +      * @cleanup: Opposite of @enable to balance refcounts and free re=
sources after probing.
> > +      *
> > +      * Should check if resources were already freed by @cleanup_early=
.
> > +      */
> > +     void (*cleanup)(struct device *dev, void *data);
> > +};
> > +
> > +/**
> > + * struct i2c_of_probe_cfg - I2C OF component prober configuration
> > + * @ops: Callbacks for the prober to use.
> > + * @type: A string to match the device node name prefix to probe for.
> > + */
> > +struct i2c_of_probe_cfg {
> > +     const struct i2c_of_probe_ops *ops;
> > +     const char *type;
> > +};
> > +
> > +#if IS_ENABLED(CONFIG_OF_DYNAMIC)
> > +
> > +int i2c_of_probe_component(struct device *dev, const struct i2c_of_pro=
be_cfg *cfg, void *ctx);
> > +
> > +#endif /* IS_ENABLED(CONFIG_OF_DYNAMIC) */
> > +
> > +#endif /* _LINUX_I2C_OF_PROBER_H */
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

