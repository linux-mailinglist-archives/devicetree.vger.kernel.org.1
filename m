Return-Path: <devicetree+bounces-262336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKB3IQAjgmnPPgMAu9opvQ
	(envelope-from <devicetree+bounces-262336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:32:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E68DBFE5
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2C8E730480BE
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF053D1CB6;
	Tue,  3 Feb 2026 16:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hcbm8xyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B3B3C198D
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 16:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770136107; cv=pass; b=jyeOQUz85D04azw9tEHCesB3TNquwA77GBKLMu7yL1Hh7L32mi2eXZ5qYB77d5qNbY8i1RuUXJpqsccBX4owlGCbMYKS46oOpyRgSA6ebOpYQ3H6Vo7drGT7DQC5kB2VGWZwVhHyVG6ZoHzs4gSNIsPssh/OSGPMQzsjbA3zXXc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770136107; c=relaxed/simple;
	bh=fXSdM/tph+CQ0hSdypd+WHNN70gFwJDk5S/Zwg+BMGE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E/lZm27RIuSBjVt6UnJesl5Y9WlYMUr3Eye2iJGEyDJEWvVzbXYTVyug6rkRjtcu3UE3ockMfM75J49661Tow8XrMzC5dixGsYkH6uEyzCCwn/XlgJgZwLPWbBAbz1Kkl+6TynQFELq7s+XP7Zik/t1DfzT1+/JCmSAeEYlnW/g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hcbm8xyI; arc=pass smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4807068eacbso48643525e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:28:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770136104; cv=none;
        d=google.com; s=arc-20240605;
        b=QA9Hov5/nV69QeDQDh3FgZMg7Zfl8Gh+7ydtXwpH0+IB4G7yvABnpapQRC/5Gkqsg0
         T7nXa5/oos7pd4Q3n227rqTicZ6rLIKwmE8KEAEMjuRfxROysQTX2twwgcKcJ260cLeL
         ipAEgeuUBIBYJzODGjaO2hfzCrn+Wp1ebw48c4wVURKiDt44S+2ZNQdnFrya2PN8j2XF
         R82Fs+dZ00txsTXgnrFtF1ghzpBtalqC+fyzBYgAfA/18QRsYiT5As1EPSKK0TVREq0t
         5Jx4z3OKVvOdBvFXdGrWKOWnfOZ7FJKNNKubGD7DMDYhVdBreJptjdL140Vu8qDTB6mE
         RYzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gRDaphbKaaiBTQfNJABzc/bHdMK4aRKibRK4EZa3oTc=;
        fh=GGxRsyxBnIywuISTxKmN3Gh5Z2/vCVcs9rElC2ATrQQ=;
        b=PZLlo1jVrXQ+vvFb3BZnE6hYh7iSYNBvLlIk65lKj5Xb7SX5kTwHUTqbtK0g44HXMP
         ZoULlJx8Md/0vN2HdrX5mZIWplPZ+UkK+rklZz1f/DVykFimtRpdweNHCbESFWMHbp41
         JWcoUmFtOV/b0y24c79zOZneYm7Cg8xjV4+qEulO7bHlXywJ96j7Y3Eos0uR8TzSNMXA
         yZ1qs4QGzOd1ewW/YcR+xEi7H6Mb6JZipqpOEVM68nhvtSyfpIIyr04m34XRellrsyEE
         4OlyHh1CA42scBCQOf+Hv50p6lhIODGZYKPB29ojP/ogKKInhJO6Qv8AQeAMvRmeZDzh
         byLA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770136104; x=1770740904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRDaphbKaaiBTQfNJABzc/bHdMK4aRKibRK4EZa3oTc=;
        b=Hcbm8xyItJ7T//WYCVBSa+eAv5LUDufCmbSIr9/0EatuyOo/AosxsDdhj0awaik0lU
         HTZXFjQn7DhpDgu+K0Iz0mk0vqNO67pD1S92IS6NN2QCdfDY3T41asrGQqh4K4yhA48v
         STzrDQae4Nm7c4rTYcRvxl7NbIqZgN0gCqQs0ejELh1klRYalpIMgakz0jJxejEQ5l58
         z7rQM0PvIs4DrVB51oSKlh+Fc74uQdN4pTbqKVfXIZOg0Su5gX9mFCFKfYRIGOh2VyQ4
         BAu7K0EVSgIquiKYGhAbquLZH4T3kTh1UyU4XneTt3hrBoJ5Hcy5TwPEc5K/ZFTpdwtR
         jJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770136104; x=1770740904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gRDaphbKaaiBTQfNJABzc/bHdMK4aRKibRK4EZa3oTc=;
        b=HCcfvfOlWGWaQtgrhzWeb8OucqBFDYBtBYBfDQE1spMR1duhNCgL6nvTk6FOF0F61t
         llTrawvW5+hXpisDPQbYCBWEIe0XfFQm3qr0oUcNe+FHeBWREg69LqmVfOR43QuVoySv
         tnK8xegbmTDCP53mRTQYlsY3xKqQLOGPxtKP6zAxNvhL4tGas08A1pb6KABmrXbjk5+l
         STXwOLK7lk3ri+d9DFdOErfA3RlSMmZlNuPPh9erVxFO2Koibs4o3/ly0ZPtdPe2e9J9
         MY0bOAM/vwaKIvcky2i113KDTiR86U7Rx+hrY+lsFfQbjPKcjYYxhiGF42lZVUQ998Kv
         8rPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWU52T0GY9a0zzisPtT9s3IImVS4NbPMwXU5OfIVz8GeI7Fhc1qwJq9FQveg74UXK8RLm3+VqY0qX5@vger.kernel.org
X-Gm-Message-State: AOJu0Yyny0DCdRbMQZpJa/ItifQgmZeut+TZk9aB86E6mgOj3rbvzVnF
	LtkmHHkwPzxNoVpkZ+dSjrLpXDpay2k0HXUb2sjRYGSgijCtYPHhBx29OPr08mb1/2T9bT5BKn0
	rRR3TuyZTYUroGXq9gn/a0si5BITPYiE=
X-Gm-Gg: AZuq6aJGcw+NHGPWn9rJxrEkLxQFIaPpRIx7vEWlMrGskEzRX2OTZzj/j2IMywvSCm7
	avcGrgr4Gos5uNPxJl/wytRa+C5rTvGXkLNvnepitOs+v+QIxSjDNyUdSYWoidQmR+fftCxmwS9
	SBkgQyBNnwykWUaYt5vv+LZS1d/nZJELWUWLDJfOaXLUnoKfcfZlA+qcl8XeGx0wImS8Gq8wGhk
	8yFr5O5v8AwnfeHXdAYlChbFz6DEe+vEeuX9nJHc5kJj9bXBB5lTZev359vcE70jVE9iyYB
X-Received: by 2002:a05:600c:8505:b0:47e:e970:b4e4 with SMTP id
 5b1f17b1804b1-4830e983855mr2996525e9.29.1770136104240; Tue, 03 Feb 2026
 08:28:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260201104343.79231-1-clamor95@gmail.com> <20260201104343.79231-3-clamor95@gmail.com>
 <2026020350-unrevised-humming-7a42@gregkh> <CAPVz0n35NkEXjur-oJhW6Yxwme_KMLdYCnRAtjHEWSPEVrSUXQ@mail.gmail.com>
 <2026020346-ashamed-campfire-b483@gregkh>
In-Reply-To: <2026020346-ashamed-campfire-b483@gregkh>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 3 Feb 2026 18:28:11 +0200
X-Gm-Features: AZwV_QhcrxqiNzZ8cC3BM6w2wrqMyFc9v-0naWUEm2SUwORm6CXF_qwNkbtlMVY
Message-ID: <CAPVz0n2HmLwdif5ry+y56LB8Gpwh2o9_gJ7K2jhcZVR=rPgfPA@mail.gmail.com>
Subject: Re: [PATCH v1 2/9] misc: Support Asus Transformer's EC access device
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Sebastian Reichel <sre@kernel.org>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262336-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,rere.qmqm.pl,agorria.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 45E68DBFE5
X-Rspamd-Action: no action

=D0=B2=D1=82, 3 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 14:00 Greg =
Kroah-Hartman <gregkh@linuxfoundation.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Feb 03, 2026 at 01:54:58PM +0200, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 3 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 13:41 G=
reg Kroah-Hartman <gregkh@linuxfoundation.org> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > On Sun, Feb 01, 2026 at 12:43:36PM +0200, Svyatoslav Ryhel wrote:
> > > > --- /dev/null
> > > > +++ b/drivers/misc/asus-dockram.c
> > > > @@ -0,0 +1,327 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-or-later
> > > > +/*
> > > > + * ASUS EC: DockRAM
> > > > + */
> > > > +
> > > > +#include <linux/device.h>
> > > > +#include <linux/err.h>
> > > > +#include <linux/i2c.h>
> > > > +#include <linux/mfd/asus-ec.h>
> > > > +#include <linux/mod_devicetable.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/mutex.h>
> > > > +#include <linux/slab.h>
> > > > +#include <linux/string.h>
> > > > +#include <linux/sysfs.h>
> > > > +#include <linux/types.h>
> > > > +#include <linux/unaligned.h>
> > > > +
> > > > +struct dockram_ec_data {
> > > > +     struct mutex ctl_lock; /* prevent simultaneous access */
> > > > +     char ctl_data[DOCKRAM_ENTRY_BUFSIZE];
> > > > +};
> > > > +
> > > > +int asus_dockram_read(struct i2c_client *client, int reg, char *bu=
f)
> > > > +{
> > > > +     int rc;
> > > > +
> > > > +     memset(buf, 0, DOCKRAM_ENTRY_BUFSIZE);
> > > > +     rc =3D i2c_smbus_read_i2c_block_data(client, reg, DOCKRAM_ENT=
RY_BUFSIZE, buf);
> > > > +     if (rc < 0)
> > > > +             return rc;
> > > > +
> > > > +     if (buf[0] > DOCKRAM_ENTRY_SIZE) {
> > > > +             dev_err(&client->dev, "bad data len; buffer: %*ph; rc=
: %d\n",
> > > > +                     DOCKRAM_ENTRY_BUFSIZE, buf, rc);
> > > > +             return -EPROTO;
> > > > +     }
> > > > +
> > > > +     dev_dbg(&client->dev, "got data; buffer: %*ph; rc: %d\n",
> > > > +             DOCKRAM_ENTRY_BUFSIZE, buf, rc);
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(asus_dockram_read);
> > >
> > > No documentation for these new public symbols?
> > >
> >
> > These functions are mainly used in communication between the dockram
> > device, asus-ec and its subdevices. Export is used here because all
> > mentioned devices can be built as modules. I can add descriptions of
> > functions into header if needed, but they should never be used outside
> > of dockram-EC complex. Same applies to 2 export functions in the EC
> > MFD.
>
> Then you should properly document this :)
>
> > > > +static BIN_ATTR_RW(dockram, DOCKRAM_ENTRIES * DOCKRAM_ENTRY_SIZE);
> > > > +static DEVICE_ATTR_RW(control_reg);
> > >
> > > You did not document your new sysfs files in Documentation/ABI/ which=
 is
> > > required.
> > >
> > > Also, why do you need a brand new user/kernel api at all?  Who is goi=
ng
> > > to use this and for what?
> > >
> >
> > These api were used mainly for debugging/logging purposes and descend
> > from original downstream EC driver. I can both add documentation into
> > ABI or remove them if that is absolutely necessary.
>
> Debugging should not be in sysfs, please put this type of stuff into
> debugfs instead if you really need it.
>

There is no similar way to handle BIN_ATTR_RW in the debugfs (), may I
preserve  dockram_read/write with __maybe_unused instead of removing
them? I will add comment with explanation

> thanks,
>
> greg k-h

