Return-Path: <devicetree+bounces-267214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JfvJV7Vm2n97wMAu9opvQ
	(envelope-from <devicetree+bounces-267214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:19:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E4F171C0A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:19:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CBAD300EF8F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 04:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB1126F291;
	Mon, 23 Feb 2026 04:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K9g2Stpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0794F5E0
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 04:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771820380; cv=pass; b=NyZZGKDHGFPqxqnnPDFmH6FwlbR9RahgHLu+9Q0iVbrWBhfXzSSp06wq6yEaB54xV20DtUOjN1G0b6SE1diVMMt2I69lNcVbUt8nyposEjCdZl5XCMDx+mxcLFZ3pGTAjn6XxteiRrafSEmlu2zYGNPFg4L3H7upY9C7ja2iHC0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771820380; c=relaxed/simple;
	bh=jM45qqctqlM/VogUUQobRlhVmKJ7riScTexf9ECTyJc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GB8QGmqXIq4kmW+NX5lHCqYgQkaoYeDl/5ks8Irf8Pd87W2zNWVT4kjH6kwbdz8BFKTz5WrKMaTm4cahE24Kuq3pyQIuf33PbPETWBhDegcTxMaG43g7lmvi8mjQb16sbGmsMigpb9WJx+MiypEGh0kSTzLOm3oZVqfoD5AH9FM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K9g2Stpt; arc=pass smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2ba64b5a53aso3540326eec.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 20:19:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771820378; cv=none;
        d=google.com; s=arc-20240605;
        b=bYZ/u85eL2DK6FkRvSrqa8JJ3Qk3M2ntHmWIHYEirkWnCHHXiNgtQJPhMX+j1RtEDI
         k0Zh/IuaoB/OX00qH/34hsmD2KNgOukTtq0HGUcNomuT1a/oDBqQMcqMTw4g6nFE9Jkq
         5yNoFkE//YDLO6JsUDetJ9hxmX1pbeQECqa172Cp3IVxEiCd2Ly9eDqcV0Y2PV+5afib
         68K/+1aQLQcoX9qmC4d5uLblVzDDt7EAsi7Cwmp2SaLT+ltFQ9SO9MwaHc8PutpuoED9
         sqglxXf3NWWhV2zx4QuQiehMBBJ//eQ0czBWXWAKkEP9BGSiRumFcSGFdhqoUKyEARZ6
         Io9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=11waszKOYJgp5VLka4prCG9IJPV9kG1G6r0q3Tip35Q=;
        fh=oqzJbCRjNXXr5nzeXpbF0+eLfHaJrpr22+k7+xpFK4I=;
        b=cJqvUqjAvqMePo5vFkjmRHpyaNpwl6MukScsUlJMjPX0l+QDhsb25J4ZGeKhZESqE9
         uLeJr2NREAzVIyMfI3mdUSGNT7dHLnVDuMG3weq6W2P98/4WH/MWekwWY04X/2Ye4HOK
         OIBYNpF7nqG8tsqP0mOdJRIseYv0PsxgbvIE17b9U3WtHpIzjgH7NkUik83qPOtLFqEB
         H8r0is7qUGvepWWFQ5YVAfTkToF6mU6YXnCC3yrAS5OsazZjUog5tk2M6bUeYkgQFFdu
         FNXkEIVdOaNV14ZUHOlkuy/eb9vRpvipk6WkXb+ydcdYikJJ0UiN/VV5a7NCWt7WHdbm
         7wbw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771820378; x=1772425178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=11waszKOYJgp5VLka4prCG9IJPV9kG1G6r0q3Tip35Q=;
        b=K9g2Stpt9Nn5KwT/4o7CmhxIQBPZ3rkPfyw5G2sFIDxosDFPFXK0mAnNlXEKsAAxCm
         Vx/4dPN/VX8aqp4x4pbFY8uMt8vQywbg9Cwq7/JVdJQaV8MOiqSg/Tai0nT8p7MEb9z0
         NHp8byTSRFxFYhxlLNjdimirmrtVm5cqqvw/WyNrKqN+muvN61hm3+asnDqAScriNAIL
         Z/GXuCLUbiTnXmFVBTdRmN9OSMC82QlK22232To1tWVGOB7WcEO/CbvDOWeZUbgkDOpp
         X+KhsDMD3tbUD3Z44z1gBWQ1DvCx/jJrh2wS7Ajcc4CIR3wLvYIKNtjzFafLSCCz08gc
         vN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771820378; x=1772425178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=11waszKOYJgp5VLka4prCG9IJPV9kG1G6r0q3Tip35Q=;
        b=fveh0sAqtDdTTB0nN0feSN1KVVvgqdB1OgWADSebzD4RSFrrBhXcrHsL1GDLmM19z1
         uvJPfFZyIZM9pGj4jy7F3FlN9dzvfopDJMEx4YZY652F1CPw/jjGjIwBpUv1GS2TJxnu
         GNCgg4qtS6kPVxUZQloP5Zur+bA9vAKLxTCoMNi/VnIyzzbDb8UKojaoEe8sSbHu9Bgy
         +s6rxpxIsxL4cb5hMDX5qHt14T0Laa1U5t2IRcRE7y3rCyK0xo+LKEEQXnMjJYv4HisJ
         qr2TVZUm4X4CiuVfhyGnuyY115K5oRhuOT3LHy43M2rkXmQu6hoQx4foE708l7KxaMj4
         yYXw==
X-Forwarded-Encrypted: i=1; AJvYcCXrkSdvTmfI6sSneCEURxFiiyF/0rGXsb+DRkvh5UADorJKiJB5PISTWlf4WddMzjqxMoMm44kwGlga@vger.kernel.org
X-Gm-Message-State: AOJu0YyO+XKpq0AMa4WwPR5ev9VQizgf6cE7xfxlKk65ChsX5khA6lPr
	rPYX/0kH1QACxxxfEUh6lobu6xq1YyOut/DkvP2i+jye7Zxgf/YEdDR6qDYkFgtXUWyv3jrQj6h
	aD2ceKVxByskR+MZRsUL3GbkvkZdjVnpHaaUu
X-Gm-Gg: ATEYQzxmxwyDkm+aVDoNlPxBH9pk/FcNu4mVjDKkc6acwRyXs2HNNyGaKktiW6iMD/y
	pMaiK8fEsIYRWUItl7FCIqxCxj9b4ar+XZZ0sHZGYquq0FKFZ4Lt3VTdKFDedOmjNDU+eQAoifK
	LMeyMZBwdpUJ1ArdXfOy/YQMw6+/9JBxpMaeA1S/YN4NxtwROkxFTLX/JF7F3xVPRwC/oOyb2Yp
	aHvvX/aayQ8ovk626dYzICyL5wEQvX9NXImp0GCHEni3kfPZ0/NsqH0+i9dbivcNjsp6hJSjV2Q
	Z02lyt30
X-Received: by 2002:a05:7301:418b:b0:2ba:7f8c:6754 with SMTP id
 5a478bee46e88-2bd7bd99977mr2368355eec.37.1771820377768; Sun, 22 Feb 2026
 20:19:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
 <20260219105630.11929-4-Ashish.Yadav@infineon.com> <ac930a67-01ee-4c68-a9ed-bf1c321e78f8@roeck-us.net>
In-Reply-To: <ac930a67-01ee-4c68-a9ed-bf1c321e78f8@roeck-us.net>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Mon, 23 Feb 2026 09:49:26 +0530
X-Gm-Features: AaiRm53or6HpeNxz3kI91T36AT-_r8mp8ke7ZIuUmWsOSHUvXEMqN6PH3xMeMns
Message-ID: <CAJKbuCZo9bsHVne4UpPWesAcpBvYqU-ZGSeiXiZ4X8rURRmtcw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] hwmon:(pmbus/xdpe1a2g7b) Add support for
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267214-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:email]
X-Rspamd-Queue-Id: F0E4F171C0A
X-Rspamd-Action: no action

Hi Guenter,

Thanks for your time and feedback.
Please find my response inline.

With Best Regards,
    Ashish Yadav


On Sun, Feb 22, 2026 at 4:52=E2=80=AFAM Guenter Roeck <linux@roeck-us.net> =
wrote:
>
> On 2/19/26 02:56, ASHISH YADAV wrote:
> > From: Ashish Yadav <ashish.yadav@infineon.com>
> >
> > Add the pmbus driver for Infineon Digital Multi-phase XDPE1A2G5B and
> > XDPE1A2G7B controllers.
> >
> > Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
> > ---
> > XDPE1A2G5B and XDPE1A2G7B support both Linear and NVIDIA PWM VID Data
> > formats for VOUT_MODE.
> > The configuring both loops/pages of the device independently is not
> > supported for VOUT_MODE.
> > In case of vid mode, NVIDIA PWM VID vrm_version is supported:
> > Vout =3D 5mV * (VID-1) + 195mV
> > ---
> >   drivers/hwmon/pmbus/Kconfig      |   9 +++
> >   drivers/hwmon/pmbus/Makefile     |   1 +
> >   drivers/hwmon/pmbus/xdpe1a2g7b.c | 120 ++++++++++++++++++++++++++++++=
+
> >   3 files changed, 130 insertions(+)
> >   create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c
> >
> > diff --git a/drivers/hwmon/pmbus/Kconfig b/drivers/hwmon/pmbus/Kconfig
> > index fc1273abe357..a4513fc6bc26 100644
> > --- a/drivers/hwmon/pmbus/Kconfig
> > +++ b/drivers/hwmon/pmbus/Kconfig
> > @@ -711,6 +711,15 @@ config SENSORS_XDPE152
> >         This driver can also be built as a module. If so, the module wi=
ll
> >         be called xdpe152c4.
> >
> > +config SENSORS_XDPE1A2G7B
> > +     tristate "Infineon XDPE1A2G7B"
> > +     help
> > +       If you say yes here you get hardware monitoring support for Inf=
ineon
> > +       XDPE1A2G5B and XDPE1A2G7B.
> > +
> > +       This driver can also be built as a module. If so, the module wi=
ll
> > +       be called xdpe1a2g7b.
> > +
> >   config SENSORS_XDPE122
> >       tristate "Infineon XDPE122 family"
> >       help
> > diff --git a/drivers/hwmon/pmbus/Makefile b/drivers/hwmon/pmbus/Makefil=
e
> > index d6c86924f887..d592d8c77bec 100644
> > --- a/drivers/hwmon/pmbus/Makefile
> > +++ b/drivers/hwmon/pmbus/Makefile
> > @@ -70,6 +70,7 @@ obj-$(CONFIG_SENSORS_UCD9200)       +=3D ucd9200.o
> >   obj-$(CONFIG_SENSORS_XDP710)        +=3D xdp710.o
> >   obj-$(CONFIG_SENSORS_XDPE122)       +=3D xdpe12284.o
> >   obj-$(CONFIG_SENSORS_XDPE152)       +=3D xdpe152c4.o
> > +obj-$(CONFIG_SENSORS_XDPE1A2G7B)     +=3D xdpe1a2g7b.o
> >   obj-$(CONFIG_SENSORS_ZL6100)        +=3D zl6100.o
> >   obj-$(CONFIG_SENSORS_PIM4328)       +=3D pim4328.o
> >   obj-$(CONFIG_SENSORS_CRPS)  +=3D crps.o
> > diff --git a/drivers/hwmon/pmbus/xdpe1a2g7b.c b/drivers/hwmon/pmbus/xdp=
e1a2g7b.c
> > new file mode 100644
> > index 000000000000..e10bafeb0984
> > --- /dev/null
> > +++ b/drivers/hwmon/pmbus/xdpe1a2g7b.c
> > @@ -0,0 +1,120 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Hardware monitoring driver for Infineon Multi-phase Digital XDPE1A2=
G5B
> > + * and XDPE1A2G7B Controllers
> > + *
> > + * Copyright (c) 2026 Infineon Technologies. All rights reserved.
> > + */
> > +
> > +#include <linux/err.h>
> > +#include <linux/i2c.h>
> > +#include <linux/init.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include "pmbus.h"
> > +
> > +#define XDPE1A2G7B_PAGE_NUM 2
> > +#define XDPE1A2G7B_NVIDIA_195MV 0x1E /* NVIDIA mode 1.95mV, VID step i=
s 5mV */
> > +
> > +static int xdpe1a2g7b_identify(struct i2c_client *client,
> > +                            struct pmbus_driver_info *info)
> > +{
> > +     u8 vout_params;
> > +     int vout_mode;
> > +
> > +     /*
> > +      * XDPE1A2G5B and XDPE1A2G7B support both Linear and NVIDIA PWM V=
ID data
> > +      * formats via VOUT_MODE. Note that the device pages/loops are no=
t fully
> > +      * independent: configuration is shared, so programming each page=
/loop
> > +      * separately is not supported for VOUT_MODE.
> > +      */
> > +     vout_mode =3D pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
> > +     if (vout_mode >=3D 0 && vout_mode !=3D 0xff) {
>
> "vout_mode !=3D 0xff only makes sense in generic code, where it is possib=
le
> that the command is not properly implemented. It does not make sense
> in a device specific driver: Either the command is implemented and return=
s
> a useful value, or it is not implemented. So this code should simply be
>
>         if (vout_mode < 0)
>                 return vout_mode;
>
>         switch (vout_mode >> 5) {
>         ...
>
> If the controller is really so unstable that it returns 0xff once
> in a while, a respective comment would be needed in the code. However,
> even then, I would suggest something like
>
>         if (vout_mode < 0)
>                 return vout_mode;
>
>         /* Explain instability */
>         if (vout_mode =3D=3D 0xff)
>                 return -ENODEV;
>
>         switch (vout_mode >> 5) {
>         ...
>
> i.e., error handling first.
  The chip and command are stable, so I will proceed with making the
necessary changes as suggested by you.

> If the concern is that this isn't really one of the chips supported by th=
e driver,
> I would suggest to implement chip detection code either in the identify
> function or better in the probe function. If that is the case, the return=
 value
> from PMBUS_VOUT_MODE isn't useful anyway.
>
> Thanks,
> Guenter
>

