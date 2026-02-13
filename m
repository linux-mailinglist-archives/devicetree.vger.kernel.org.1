Return-Path: <devicetree+bounces-265232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BJCDVWejmk+DQEAu9opvQ
	(envelope-from <devicetree+bounces-265232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:45:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A92132BA2
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 484B33068277
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 03:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF9EF248861;
	Fri, 13 Feb 2026 03:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l5nGHgTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59E7253958
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770954317; cv=pass; b=mPdc6GYG41NnLYOgZghufwo6O9t49Fcg+Fhi4oVspFx5r+Ko5QSZxZ373aYJp1GGrMf58tsZ+tkBfLzHopjAtgGtnA8WLUe39kDMajag4ADEE01XL7jfgyNkpK098UZ+ehB7Y7QoBT9Q7zAg/79MfrhwuT5dgSnBhRFzd4ZDH58=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770954317; c=relaxed/simple;
	bh=7D7EnDMCLAJELKBu9mkUwvrGjkIa5L3M+RZ+AdYaLgU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rxQUnXwjWNNo3X8ZBbZW5P9KfLhwQoGZw8CeKGskUtlaxHt0gl2mYktDGTkmgIqoyN3f1Aj8R0MvPqhuxMGnoP6z9REjO/6Jd/gIGolZywIFFq9iRzesQ2mGJUoqS2U5DZZtCBmXrTvWls8DZcc2tAW8H5p33recE1q6EOvUXEI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l5nGHgTS; arc=pass smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-1270ac5d3efso569399c88.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 19:45:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770954315; cv=none;
        d=google.com; s=arc-20240605;
        b=JLpV87JL5GNVJjzcq7i7mBQVwoyi38oVJYSJrOyTd1QPN7mvND0+/0qnShjCXXK8Dr
         DgnvvYtPI8G0q5EgYQPNgTuwBHL885c3X7mJIZ3VguqS2RYVxSxrEa3h72+yBmTWu4HE
         j+ihSsutKGzkZuvx68yIpO8qhM4kU3HW5hPf13KkHvnX2mlUFANh6czbzpGuxsFzo9ac
         /IO/xMXb7KQTkN5qfGN2hHQXIpqa4CcXkwHcqUHdx+cnN+dOqO2dbqEYz+Trzg5FdY+r
         oClrEsMCNWpJAuXX0B8KH3QLHSUhtyycGCLWLMTs4w5Cour/G0mhncWiqfXfe1St5lnH
         o00w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ebd6cUD3SUqeq4UwREWJDX9TbwBiWNuwGwVAMT29P98=;
        fh=3q+UTzQOiNLL/U0ZsTbHbCXrtV5EiWFJBgduwo/uIRg=;
        b=V/MxEHOGHc2VyFl46K0CQlKneE6ykkf1GRdyPlhipIDMgtof2nusFuZdBCSKSRUn1Z
         RjBu9Mhqc0nYe8ztCkEap6ECUMYeFMBjk1967c7yLTcm3aJkW0r5h9AXmTlhzNpgOIT6
         l935Niu+pfq57lmE8X0p6Fb21gkZ/Txz80uXdQmzqPmkPhWYgeKTpDa5uAEgBJje/P3l
         RnxdnXxzzwxN0jE3EJZ4Pe4azYtL15DRpD35cPGCAprCRd8hFcJBBdGRZd0Xf/amNUXV
         05dAeHxFhGidw9BtAj6N5PON5/Vsm9zVy91tdqZWIML29MO1w7tpiihI/7YrBrh76fLO
         pZvA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770954315; x=1771559115; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebd6cUD3SUqeq4UwREWJDX9TbwBiWNuwGwVAMT29P98=;
        b=l5nGHgTSshQfUKHLizSNiQ0oM5TfMTnqx9v/V37vJyXNxdo5RwZlp2yD6ToYMXBjVi
         XsJYQud71SDD144boAX3N9r0PEfcOZ7bb1pOihIOqGogpHFODj1WCVQ03SwVhfcwwtup
         LqwCmzl2Bgreyl2dYSZhEx7H2RPSgHja8QB+VwiK2ff7Ld4o47niBvBGjTe32h0zlyFh
         lgPua5Q8wAv6TQT9oNDlVx45obvZ2wduflv0pcrn3WKKm7MaoYGN+IkR/UUAlgQlfFcg
         stS93Vf53JGQcKI8DSIk/S2Ajyz72XTbPIvUUgjDCQDH8+HeoikP5SmS5PvjHChifgT5
         YS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770954315; x=1771559115;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ebd6cUD3SUqeq4UwREWJDX9TbwBiWNuwGwVAMT29P98=;
        b=uF/YHubQ9TgBSCIcq8jUt2/ledsWQMrjcnI2WW57S8Li82+iM3cBS3g20qw9U6Bgiq
         yDgtr1/E+habMVAsruwu4RoR932a6q6Duerf8n7j/w5+g+4Qz8dgprdxKi3e5c5lB3fs
         IvGh/Uf1rVcl/0FGL1/Zih79uWm6VpejPNiuMYno8BhqJ6fXGvQTg+faBOeaMfJOA2xO
         hUeiVZ3VwgtZFDBet1ZOjrQwI/VqqMhGZf153ylqPXvgt4pQMzf7CT+VKA8f4KTNkECg
         HFA+KQVHVBPTPpjphyd75q/HEeI9czheE6HuwgGd0csotBpNuHFl3t5uAiJcu2Cxl+dg
         qUyg==
X-Forwarded-Encrypted: i=1; AJvYcCUh1JFLO591BaEA5fcPbkI+TCx2mt3Gi8kpZDGxjeU5bRJOJDhW1kL3QUKOuO2G5gBDS0tUXXHwR5Cs@vger.kernel.org
X-Gm-Message-State: AOJu0YxVvmUm5/tknLsqj+WyDKz5hp2y7zziyBKiRtBzcLn0stAjCikp
	TVLxZUNXk0bL2Hh50H6+BL0lKIEtMHsNWArx9Q8rqJWbnyhBKm8ad9v3CNi4MpbpwS1t12mPqZx
	B/zv15li1o6w+KqeBvbVdd5w9Htmfw1Y=
X-Gm-Gg: AZuq6aIgpgOohSwlVcAHatlxegygBIWxnAs2pUOZgjy/somDoVudN63zEmbVh+L/coH
	AhUMOb0SbIVgtaRhhAQff5eKRfv7e6X6tTV2KyMAgbAZIFxMnhxzlkmEaEz0gc4bUBpkqr3TLHT
	QsC5JIEG0RISvDjmrau12oowFddXjeTx3rfbbiGP1CId5uSHzvpirK13mQ1x6BxJj7sWseoNZz6
	oZKBoyo0TUF2G51MQVcm/Oi2lDqeu/kBHEb27IBMXi0MVE6k4wWJSIo55mwhiFeJgZpz5Loeoxc
	6v/NBNQoNVdag6rNf34=
X-Received: by 2002:a05:7022:618e:b0:119:e56b:91ec with SMTP id
 a92af1059eb24-1273ae30272mr128115c88.29.1770954314777; Thu, 12 Feb 2026
 19:45:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202080355.53061-1-Ashish.Yadav@infineon.com>
 <20260202080355.53061-3-Ashish.Yadav@infineon.com> <d0854014-7977-48b9-bf31-d66865352ecf@roeck-us.net>
 <CAJKbuCan+5AMuGuqKg4V1qs5HYZQ9zgS9S1rDDJ1usjJAjEGqw@mail.gmail.com>
In-Reply-To: <CAJKbuCan+5AMuGuqKg4V1qs5HYZQ9zgS9S1rDDJ1usjJAjEGqw@mail.gmail.com>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Fri, 13 Feb 2026 09:15:02 +0530
X-Gm-Features: AZwV_QhIJGE4Rx07WcyWjPT2208y4-Ah1bZ6hHJYOYkZy_-nml0yEGPqJ71HtQk
Message-ID: <CAJKbuCavMxc7xc4-QW95NfCaUCbLZck5nP1+iMtVxOt4LZ5esg@mail.gmail.com>
Subject: Re: [PATCH 2/2] hwmon:(pmbus/xdpe1a2g7b) Add support for
 xdpe1a2g5b/7b controllers
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Ashish Yadav <ashish.yadav@infineon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265232-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infineon.com:email,roeck-us.net:email]
X-Rspamd-Queue-Id: 91A92132BA2
X-Rspamd-Action: no action

Hi Guenter,

I hope this email finds you well.

I am reaching out to request your assistance with a specific inquiry
regarding the handling of loops/pages for different VOUT modes
independently.
The challenge I am facing is that the Linux kernel provides a single
"PSC_VOLTAGE_OUT" for the chip, which is not page-specific, making it
difficult to handle these different modes independently.

I would greatly appreciate it if you could provide me with more
information or guidance on how to address this issue, as your
expertise in this area would be invaluable in helping me find a
solution.

With Best Regards,
  Ashish Yadav


On Thu, Feb 5, 2026 at 2:20=E2=80=AFPM ashish yadav <ashishyadav78@gmail.co=
m> wrote:
>
> Hi Guenter,
>
> Thank you for taking the time to review and provide feedback.
> I appreciate your input and insights.
> Please find my comments inline below.
>
> Best regards,
> Ashish Yadav
>
> On Mon, Feb 2, 2026 at 9:01=E2=80=AFPM Guenter Roeck <linux@roeck-us.net>=
 wrote:
> >
> > On 2/2/26 00:03, ASHISH YADAV wrote:
> > > From: Ashish Yadav <ashish.yadav@infineon.com>
> > >
> > > Add the pmbus driver for Infineon Digital Multi-phase XDPE1A2G5B and
> > > XDPE1A2G7B controllers.
> > >
> > > XDPE1A2G5B controller supports Linear Data format for VOUT using VOUT=
_MODE
> > > command.
> > > XDPE1A2G7B controller supports Linear and VID Data format for VOUT us=
ing
> > > VOUT_MODE command.
> > >
> > > In case of vid mode in XDPE1A2G7B controller, NVIDIA PWM VID vrm_vers=
ion
> > > is supported:
> > > Vout =3D 5mV * (VID-1) + 195mV
> > >
> > > Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
> > > ---
> > >   drivers/hwmon/pmbus/Kconfig      |   9 +++
> > >   drivers/hwmon/pmbus/Makefile     |   1 +
> > >   drivers/hwmon/pmbus/pmbus.h      |   2 +-
> > >   drivers/hwmon/pmbus/pmbus_core.c |   4 ++
> > >   drivers/hwmon/pmbus/xdpe1a2g7b.c | 115 ++++++++++++++++++++++++++++=
+++
> >
> > Driver documentation missing.
> >
>    ACK, We will take care of this in the next release.
>
> > >   5 files changed, 130 insertions(+), 1 deletion(-)
> > >   create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c
> > >
> > > diff --git a/drivers/hwmon/pmbus/Kconfig b/drivers/hwmon/pmbus/Kconfi=
g
> > > index f3fb94cebf1a..c6750bce446d 100644
> > > --- a/drivers/hwmon/pmbus/Kconfig
> > > +++ b/drivers/hwmon/pmbus/Kconfig
> > > @@ -684,6 +684,15 @@ config SENSORS_XDPE152
> > >         This driver can also be built as a module. If so, the module =
will
> > >         be called xdpe152c4.
> > >
> > > +config SENSORS_XDPE1A2G7B
> > > +     tristate "Infineon XDPE1A2G7B"
> > > +     help
> > > +       If you say yes here you get hardware monitoring support for I=
nfineon
> > > +       XDPE1A2G5B and XDPE1A2G7B.
> > > +
> > > +       This driver can also be built as a module. If so, the module =
will
> > > +       be called xdpe1a2g7b.
> > > +
> > >   config SENSORS_XDPE122
> > >       tristate "Infineon XDPE122 family"
> > >       help
> > > diff --git a/drivers/hwmon/pmbus/Makefile b/drivers/hwmon/pmbus/Makef=
ile
> > > index 349a89b6d92e..620f24baa289 100644
> > > --- a/drivers/hwmon/pmbus/Makefile
> > > +++ b/drivers/hwmon/pmbus/Makefile
> > > @@ -67,6 +67,7 @@ obj-$(CONFIG_SENSORS_UCD9200)       +=3D ucd9200.o
> > >   obj-$(CONFIG_SENSORS_XDP710)        +=3D xdp710.o
> > >   obj-$(CONFIG_SENSORS_XDPE122)       +=3D xdpe12284.o
> > >   obj-$(CONFIG_SENSORS_XDPE152)       +=3D xdpe152c4.o
> > > +obj-$(CONFIG_SENSORS_XDPE1A2G7B)     +=3D xdpe1a2g7b.o
> > >   obj-$(CONFIG_SENSORS_ZL6100)        +=3D zl6100.o
> > >   obj-$(CONFIG_SENSORS_PIM4328)       +=3D pim4328.o
> > >   obj-$(CONFIG_SENSORS_CRPS)  +=3D crps.o
> > > diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.=
h
> > > index d2e9bfb5320f..3ddcb742d289 100644
> > > --- a/drivers/hwmon/pmbus/pmbus.h
> > > +++ b/drivers/hwmon/pmbus/pmbus.h
> > > @@ -416,7 +416,7 @@ enum pmbus_sensor_classes {
> > >   #define PMBUS_PAGE_VIRTUAL  BIT(31) /* Page is virtual */
> > >
> > >   enum pmbus_data_format { linear =3D 0, ieee754, direct, vid };
> > > -enum vrm_version { vr11 =3D 0, vr12, vr13, imvp9, amd625mv };
> > > +enum vrm_version { vr11 =3D 0, vr12, vr13, imvp9, amd625mv, nvidia19=
5mv };
> > >
> > >   /* PMBus revision identifiers */
> > >   #define PMBUS_REV_10 0x00   /* PMBus revision 1.0 */
> > > diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/p=
mbus_core.c
> > > index be6d05def115..4d7634ee6148 100644
> > > --- a/drivers/hwmon/pmbus/pmbus_core.c
> > > +++ b/drivers/hwmon/pmbus/pmbus_core.c
> > > @@ -885,6 +885,10 @@ static s64 pmbus_reg2data_vid(struct pmbus_data =
*data,
> > >               if (val >=3D 0x0 && val <=3D 0xd8)
> > >                       rv =3D DIV_ROUND_CLOSEST(155000 - val * 625, 10=
0);
> > >               break;
> > > +     case nvidia195mv:
> > > +             if (val >=3D 0x01)
> > > +                     rv =3D 195 + (val - 1) * 5;  /* VID step is 5mv=
 */
> > > +             break;
> > >       }
> > >       return rv;
> > >   }
> >
> > The core change needs to be a separate patch.
> >
> ACK, We will take care of this in the next release.
>
> > > diff --git a/drivers/hwmon/pmbus/xdpe1a2g7b.c b/drivers/hwmon/pmbus/x=
dpe1a2g7b.c
> > > new file mode 100644
> > > index 000000000000..79b12b56e7b6
> > > --- /dev/null
> > > +++ b/drivers/hwmon/pmbus/xdpe1a2g7b.c
> > > @@ -0,0 +1,115 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * Hardware monitoring driver for Infineon Multi-phase Digital XDPE1=
A2G5B
> > > + * and XDPE1A2G7B Controllers
> > > + *
> > > + * Copyright (c) 2026 Infineon Technologies. All rights reserved.
> > > + */
> > > +
> > > +#include <linux/err.h>
> > > +#include <linux/i2c.h>
> > > +#include <linux/init.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/module.h>
> > > +#include "pmbus.h"
> > > +
> > > +#define XDPE1A2G7B_PAGE_NUM 2
> > > +#define XDPE1A2G7B_NVIDIA_195MV 0x1E /* NVIDIA mode 1.95mV, VID step=
 is 5mV */
> > > +
> > > +static int xdpe1a2g7b_identify(struct i2c_client *client,
> > > +                            struct pmbus_driver_info *info)
> > > +{
> > > +     u8 vout_params;
> > > +     int i, ret, vout_mode;
> > > +
> > > +     vout_mode =3D pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
> > > +     if (vout_mode >=3D 0 && vout_mode !=3D 0xff) {
> >
> > What if vout_mode < 0 ? Also, what if the mode is different for page 1 =
?
>
> ACK, We will take care of this in the next release.
>
> > Also, if I understand patch 0 correctly, executing this function is not=
 needed
> > for XDPE1A2G5B.
> >
> ACK, We will take care of this in the next release.
>
> > > +             switch (vout_mode >> 5) {
> > > +             case 0:
> > > +                     info->format[PSC_VOLTAGE_OUT] =3D linear;
> > > +                     return 0;
> > > +             case 1:
> > > +                     info->format[PSC_VOLTAGE_OUT] =3D vid;
> > > +                     break;
> > > +             default:
> > > +                     return -ENODEV;
> > > +             }
> > > +     }
> > > +
> > > +     for (i =3D 0; i < info->pages; i++) {
> > > +             /* Read the VOUT_MODE register for VID Code Type. */
> > > +             ret =3D pmbus_read_byte_data(client, i, PMBUS_VOUT_MODE=
);
> >
> > Given that there are only two pages, reading PMBUS_VOUT_MODE for
> > page 0 twice is a bit of a waste. On top of that, the need for the loop
> > suggests that the mode can be different across pages. That needs to be
> > supported: Bailing out in that case is not acceptable. Worse:
> > What if the mode is linear on page 0 but vid on page 1 ?
> >
> ACK, We will take care of this in the next release.
>
> > > +             if (ret < 0)
> > > +                     return ret;
> > > +
> > > +             vout_params =3D ret & GENMASK(4, 0);
> > > +             switch (vout_params) {
> > > +             case XDPE1A2G7B_NVIDIA_195MV:
> > > +                     info->vrm_version[i] =3D nvidia195mv;
> > > +                     break;
> > > +             default:
> > > +                     return -EINVAL;
> >
> > This warrants an error message and an explanation (comment) why other m=
odes
> > are not supported by the driver. The detailed datasheet is not public, =
so
> > you'll have to help out here. As mentioned above, bailing out because t=
he
> > mode on page 1 is linear is not acceptable.
> >
> ACK, we will provide comments in the next release.
> Additionally, please note that the XDPE1A2G7B Controller only supports
> the 'nvidia195mv' vrm_version in the VID Data format for VOUT.
> We will ensure that this limitation is properly documented and
> commented on in the next release.
>
> > > +             }
> > > +     }
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static struct pmbus_driver_info xdpe1a2g7b_info =3D {
> > > +     .pages =3D XDPE1A2G7B_PAGE_NUM,
> > > +     .identify =3D xdpe1a2g7b_identify,
> > > +     .format[PSC_VOLTAGE_IN] =3D linear,
> > > +     .format[PSC_TEMPERATURE] =3D linear,
> > > +     .format[PSC_CURRENT_IN] =3D linear,
> > > +     .format[PSC_CURRENT_OUT] =3D linear,
> > > +     .format[PSC_POWER] =3D linear,
> > > +     .func[0] =3D PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_STAT=
US_VOUT |
> > > +                PMBUS_HAVE_IIN | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS=
_IOUT |
> > > +                PMBUS_HAVE_TEMP | PMBUS_HAVE_TEMP2 | PMBUS_HAVE_STAT=
US_TEMP |
> > > +                PMBUS_HAVE_POUT | PMBUS_HAVE_PIN | PMBUS_HAVE_STATUS=
_INPUT,
> > > +     .func[1] =3D PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_STAT=
US_VOUT |
> > > +                PMBUS_HAVE_IIN | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS=
_IOUT |
> > > +                PMBUS_HAVE_PIN | PMBUS_HAVE_POUT | PMBUS_HAVE_STATUS=
_INPUT,
> > > +};
> > > +
> > > +static int xdpe1a2g7b_probe(struct i2c_client *client)
> > > +{
> > > +     struct pmbus_driver_info *info;
> > > +
> > > +     info =3D devm_kmemdup(&client->dev, &xdpe1a2g7b_info, sizeof(*i=
nfo),
> > > +                         GFP_KERNEL);
> > > +     if (!info)
> > > +             return -ENOMEM;
> > > +
> > > +     return pmbus_do_probe(client, info);
> > > +}
> > > +
> > > +static const struct i2c_device_id xdpe1a2g7b_id[] =3D { { "xdpe1a2g5=
b" },
> > > +                                                   { "xdpe1a2g7b" },
> > > +                                                   {} };
> >
> > Please use more lines and less indentation.
> >
> ACK, We will take care of this in the next release.
>
> > > +
> > > +MODULE_DEVICE_TABLE(i2c, xdpe1a2g7b_id);
> > > +
> > > +static const struct of_device_id __maybe_unused xdpe1a2g7b_of_match[=
] =3D {
> > > +     { .compatible =3D "infineon,xdpe1a2g5b" },
> > > +     { .compatible =3D "infineon,xdpe1a2g7b" },
> > > +     {}
> >
> > ... just like here.
> >
> > > +};
> > > +
> > > +MODULE_DEVICE_TABLE(of, xdpe1a2g7b_of_match);
> > > +
> > > +static struct i2c_driver xdpe1a2g7b_driver =3D {
> > > +     .driver =3D {
> > > +             .name =3D "xdpe1a2g7b",
> > > +             .of_match_table =3D of_match_ptr(xdpe1a2g7b_of_match),
> > > +     },
> > > +     .probe =3D xdpe1a2g7b_probe,
> > > +     .id_table =3D xdpe1a2g7b_id,
> > > +};
> > > +
> > > +module_i2c_driver(xdpe1a2g7b_driver);
> > > +
> > > +MODULE_AUTHOR("Ashish Yadav <ashish.yadav@infineon.com>");
> > > +MODULE_DESCRIPTION("PMBus driver for Infineon XDPE1A2G5B/7B");
> > > +MODULE_LICENSE("GPL");
> > > +MODULE_IMPORT_NS("PMBUS");
> >

