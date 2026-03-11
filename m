Return-Path: <devicetree+bounces-273938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGsPMGUnsWkBrgIAu9opvQ
	(envelope-from <devicetree+bounces-273938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:27:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 214D825F3A8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:27:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E82232321CF
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0058030F535;
	Wed, 11 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XTxAwK4h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033CC350A0F
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773216892; cv=pass; b=T0k9fQup81iK2vPCGuxVc0sWSgbm+/u+tnuvvxlm08/4GXWPu8FYVJniB4MxaQortMMFwkjPi6MHckBDS9sqnoZbRrInp9KAHq4JEeH2XSzfw5EuEAtAsKau8+8mmwHAnbk6AyZe209c1d5mwMO/6if27jV/nY4Wb5OUl3Pov9M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773216892; c=relaxed/simple;
	bh=u4CdfaREWtCFsjybp9S/jYOJyIP4ewIw1l8bNkyMQ/g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bfKiDgZ2p/cdJS8/MXEWuF80jBkYhW//DSKiq9CO2dOUYoASmHqB/N66rfUCkLprTkR3gy3FRWM+f9p5N1wdMpA4mCDIclajCGfjO/n/U1V20wgci6Tpd6iJwbbV3D2eCKo1IuMiRY5V6tHSJ8asYY2jZG22OPv3F4cJ0dWxruQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XTxAwK4h; arc=pass smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439b9b1900bso7414313f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773216888; cv=none;
        d=google.com; s=arc-20240605;
        b=BFxfKpYvpqgc6FXIW+W4o5ejdyO4CbyusCfrVb1TtIGSxtkVtJt4RWbxe75aZZTTf4
         y49W5BHxwF9HyZdH/gDD3K00rqhi+jAGXaAmO9ARZQnhflHggz7IF/pzpzUV0PoX2Y0f
         EiddCTRJWZDi/+CVqNaeBKrKRvYBmxVA7eQSQal16Xp+miMPUXBGZOFk2AOQYRSzaoAN
         Tx/r2cYxgOmZLz4A23eH8bc/mzWMk3YJgH2dVyEtD1CBNpW9zRHVI9xBG8oxC+SyytWv
         8O2Cb0JETzya5lU2MhURQcJcstG4jwqoR101fVi4cN1H9dPWxqlidx8namb19sCCIufN
         bpJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9rNAXdNcxSuk4U8PQam5ZhqyabLIIwpshht9Wf0q1ow=;
        fh=I9+SM6IFyga5IL2qxr803c+miEJc5mTjgOWKKrRkqhE=;
        b=iYARdATpJuZkK/9EvoSockueiwMI4fUQf/kkcC3l/AXXC9U2sIWKujS6oiqbbpEIqD
         kD6ZnaH0KTFNH9iFLAdqpAjCPsuPdTT8ZrM51gpL8KatOE4WVO73YU1NLO/dWZhqpbYl
         +7s+klYzcbMgjvNX1d78rWNkpntbuFPM+UM7525YxJ01ghbD3qK1dY1TOd2V6my0c6v8
         3eXGnT3IPoemh4Lno7ZUIV4B9sLgTea+huhnuSSRGBT9XHAvu2g/JYpmHcn5W/rk7Krq
         Py2I8iIxtdjHDM+fJmdw28xfDjdVDjLxLl+UPx3JRyPv9o0DtLviLZP/cDGeSMc7pxh6
         Uacg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773216888; x=1773821688; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rNAXdNcxSuk4U8PQam5ZhqyabLIIwpshht9Wf0q1ow=;
        b=XTxAwK4hdm0CKBY8iMs+7Pg+BZNxh1jwN+tw7OQi9fUs9ghY/mpA/9sHcKkFHu+KQu
         W5yah354S8osNwHFzVB8pWbTlRZ25CHER9hFeKE4+z/qgYU8yZpcv5SsYVwleNoyMJfj
         rFnkzw/QUPjov55+HbiLcA3DCpMffdkClrRfU9CVGXOerq4EpPkvYcQUuWkGImtS2dEI
         ORwHS7KCIBv3uDsmTqNfbEwUfxTEevRNMUU3juwWLiW3Ua/Eipa8XmnpnbKxziB6Xlo2
         Shv/4QKuRKoybI8SU3LshnwhfteZ5J0mpn0edaFEPnfwVZyXPxH/GP5lxT5Wrnjf7jYR
         vfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773216888; x=1773821688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9rNAXdNcxSuk4U8PQam5ZhqyabLIIwpshht9Wf0q1ow=;
        b=df+D3iPngPtiJp/BNRu2uodkVMoTM6UObxRS/naHiMDOGcxLkNSGgujAvslvOfm18y
         9KQCaaxzbnuHwtl//ajl0B5ck+933KNDxDvrfmN9pmeDkS+zpM7SMkl/feQZTKlTyjHR
         hoSWxwHYK8BXllKXMZDnpAcwqYqnIVPoAv56Hra8JlRIgUy7630+wmyx5qgWg86RYgXK
         amB8UqFc2QQkRn2fEbEW0PO9Ms9ya0C/p36fcvUjggatepE87PFICcdWENH0ZGn42LSd
         2uKSwRIEV0gbmv86MBDnl6mJ6mAmv7OAJ8vuNItefwSPB8O7spBdQZUb9mjY3oJGids/
         H/IQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmNKLmr42055kkUuklp9thgwOmEwgaBwbX5ltLA86lAL5HB/S/AqKsMmac1n/kjKjb1g3mIPNvp8A8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+2/t1Q+3Hx+bYJZMvIxzf4lyNUvopRSNb5e9n5ekfmLDS07zw
	lbBNXhS3J5SnIzb5Up+30w0wFuTSrRmxxJAfDlxKFDsrtWtUYJjt+GxTop1VTFBruQDUjUa+bms
	z//vvr3VSt1ezWmdJKujNdbcwQlB3YjA=
X-Gm-Gg: ATEYQzxnmuKGI+yFwaO6BzEzBVu6gIt6uwqcYT5SNmn5zzj+tmG+OYv50lF30L6pZC/
	etCE8Cy0T40E+4xXKqK82TDzeb6tVZYWjQ+3SWG2cqxLQrVi90IGwnCPvstA8URIhF5HXUZl308
	CDA7lOMVDOeky9d8mNDdgDvU77RCeTe/2i7ZTDcpZH+TXTjFqeYNeTXCHuvMnAi1KJn6nokhk86
	HF9elpIO09jg9svfAMns+pSzYXv+yR0OyyXH1YjAZnaQd9zx6bi91zTa7FjkdbaAlEjjdrA93vW
	03/ixSB1CKSG1eIIyik=
X-Received: by 2002:a5d:64e7:0:b0:439:d935:87c0 with SMTP id
 ffacd0b85a97d-439f81c7711mr3046234f8f.17.1773216888102; Wed, 11 Mar 2026
 01:14:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304185751.83494-1-clamor95@gmail.com> <20260304185751.83494-7-clamor95@gmail.com>
 <abELVIzUrWmno8cX@venus>
In-Reply-To: <abELVIzUrWmno8cX@venus>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 11 Mar 2026 10:14:35 +0200
X-Gm-Features: AaiRm51VIbCLmJkF_SfGtr8Ik4Sh0FSFckAXCdy_Krd5I0kJFReGN7kNzMtc9Ek
Message-ID: <CAPVz0n26Nq2v3dwaeXavVw28Awbyi=Q_4L3rmJLyGDkD9y3UXA@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] power: supply: Add driver for ASUS Transformer battery
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Ion Agorria <ion@agorria.com>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 214D825F3A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273938-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,agorria.com,rere.qmqm.pl,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,collabora.com:email,poll_work.work:url,qmqm.pl:email]
X-Rspamd-Action: no action

=D1=81=D1=80, 11 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 08:31 Seba=
stian Reichel
<sebastian.reichel@collabora.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi,
>
> On Wed, Mar 04, 2026 at 08:57:50PM +0200, Svyatoslav Ryhel wrote:
> > From: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
> >
> > Driver implements one battery cell per EC controller and supports readi=
ng
> > of battery status for ASUS Transformer's pad and mobile dock.
> >
> > Co-developed-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
> > ---
> >  drivers/power/supply/Kconfig                  |  11 +
> >  drivers/power/supply/Makefile                 |   1 +
> >  .../supply/asus-transformer-ec-battery.c      | 272 ++++++++++++++++++
> >  3 files changed, 284 insertions(+)
> >  create mode 100644 drivers/power/supply/asus-transformer-ec-battery.c
> >
> > diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfi=
g
> > index 81fadb0695a9..3c46b412632d 100644
> > --- a/drivers/power/supply/Kconfig
> > +++ b/drivers/power/supply/Kconfig
> > @@ -122,6 +122,17 @@ config BATTERY_CHAGALL
> >         This driver can also be built as a module. If so, the module wi=
ll be
> >         called chagall-battery.
> >
> > +config BATTERY_ASUS_TRANSFORMER_EC
> > +     tristate "Asus Transformer's battery driver"
> > +     depends on MFD_ASUS_TRANSFORMER_EC
> > +     help
> > +       Say Y here to enable support APM status emulation using
> > +       battery class devices.
>
> ^^^
>
> You forgot to drop that when you used the APM_POWER config entry as
> template. Otherwise the driver LGTM:
>

Oh, my bad. I will adjust in the next iteration. Thank you catching this.

> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>
> Greetings,
>
> -- Sebastian
>
> > +       This sub-driver supports battery cells found in Asus Transforme=
r
> > +       tablets and mobile docks and controlled by special embedded
> > +       controller.
> > +
> >  config BATTERY_CPCAP
> >       tristate "Motorola CPCAP PMIC battery driver"
> >       depends on MFD_CPCAP && IIO
> > diff --git a/drivers/power/supply/Makefile b/drivers/power/supply/Makef=
ile
> > index 41c400bbf022..aa5e6b05b018 100644
> > --- a/drivers/power/supply/Makefile
> > +++ b/drivers/power/supply/Makefile
> > @@ -22,6 +22,7 @@ obj-$(CONFIG_TEST_POWER)    +=3D test_power.o
> >  obj-$(CONFIG_BATTERY_88PM860X)       +=3D 88pm860x_battery.o
> >  obj-$(CONFIG_CHARGER_ADP5061)        +=3D adp5061.o
> >  obj-$(CONFIG_BATTERY_ACT8945A)       +=3D act8945a_charger.o
> > +obj-$(CONFIG_BATTERY_ASUS_TRANSFORMER_EC)    +=3D asus-transformer-ec-=
battery.o
> >  obj-$(CONFIG_BATTERY_AXP20X) +=3D axp20x_battery.o
> >  obj-$(CONFIG_CHARGER_AXP20X) +=3D axp20x_ac_power.o
> >  obj-$(CONFIG_BATTERY_CHAGALL)        +=3D chagall-battery.o
> > diff --git a/drivers/power/supply/asus-transformer-ec-battery.c b/drive=
rs/power/supply/asus-transformer-ec-battery.c
> > new file mode 100644
> > index 000000000000..aefcd3fed6fe
> > --- /dev/null
> > +++ b/drivers/power/supply/asus-transformer-ec-battery.c
> > @@ -0,0 +1,272 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +
> > +#include <linux/array_size.h>
> > +#include <linux/devm-helpers.h>
> > +#include <linux/err.h>
> > +#include <linux/mfd/asus-transformer-ec.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/power_supply.h>
> > +#include <linux/property.h>
> > +#include <linux/unaligned.h>
> > +
> > +#define ASUSEC_BATTERY_DATA_FRESH_MSEC               5000
> > +
> > +#define ASUSEC_BATTERY_DISCHARGING           0x40
> > +#define ASUSEC_BATTERY_FULL_CHARGED          0x20
> > +#define ASUSEC_BATTERY_NOT_CHARGING          0x10
> > +
> > +#define TEMP_CELSIUS_OFFSET                  2731
> > +
> > +struct asus_ec_battery_data {
> > +     const struct asusec_info *ec;
> > +     struct power_supply *battery;
> > +     struct power_supply_desc psy_desc;
> > +     struct delayed_work poll_work;
> > +     struct mutex battery_lock; /* for data refresh */
> > +     unsigned long batt_data_ts;
> > +     int last_state;
> > +     u8 batt_data[DOCKRAM_ENTRY_BUFSIZE];
> > +};
> > +
> > +static int asus_ec_battery_refresh(struct asus_ec_battery_data *priv)
> > +{
> > +     int ret =3D 0;
> > +
> > +     guard(mutex)(&priv->battery_lock);
> > +
> > +     if (time_before(jiffies, priv->batt_data_ts))
> > +             return ret;
> > +
> > +     ret =3D asus_dockram_read(priv->ec->dockram, ASUSEC_DOCKRAM_BATT_=
CTL,
> > +                             priv->batt_data);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     priv->batt_data_ts =3D jiffies +
> > +             msecs_to_jiffies(ASUSEC_BATTERY_DATA_FRESH_MSEC);
> > +
> > +     return ret;
> > +}
> > +
> > +static enum power_supply_property asus_ec_battery_properties[] =3D {
> > +     POWER_SUPPLY_PROP_STATUS,
> > +     POWER_SUPPLY_PROP_VOLTAGE_MAX,
> > +     POWER_SUPPLY_PROP_CURRENT_MAX,
> > +     POWER_SUPPLY_PROP_TEMP,
> > +     POWER_SUPPLY_PROP_VOLTAGE_NOW,
> > +     POWER_SUPPLY_PROP_CURRENT_NOW,
> > +     POWER_SUPPLY_PROP_CAPACITY,
> > +     POWER_SUPPLY_PROP_CHARGE_NOW,
> > +     POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW,
> > +     POWER_SUPPLY_PROP_TIME_TO_FULL_NOW,
> > +     POWER_SUPPLY_PROP_PRESENT,
> > +};
> > +
> > +static const unsigned int asus_ec_battery_prop_offs[] =3D {
> > +     [POWER_SUPPLY_PROP_STATUS] =3D 1,
> > +     [POWER_SUPPLY_PROP_VOLTAGE_MAX] =3D 3,
> > +     [POWER_SUPPLY_PROP_CURRENT_MAX] =3D 5,
> > +     [POWER_SUPPLY_PROP_TEMP] =3D 7,
> > +     [POWER_SUPPLY_PROP_VOLTAGE_NOW] =3D 9,
> > +     [POWER_SUPPLY_PROP_CURRENT_NOW] =3D 11,
> > +     [POWER_SUPPLY_PROP_CAPACITY] =3D 13,
> > +     [POWER_SUPPLY_PROP_CHARGE_NOW] =3D 15,
> > +     [POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW] =3D 17,
> > +     [POWER_SUPPLY_PROP_TIME_TO_FULL_NOW] =3D 19,
> > +};
> > +
> > +static int asus_ec_battery_get_value(struct asus_ec_battery_data *priv=
,
> > +                                  enum power_supply_property psp)
> > +{
> > +     int ret, offs;
> > +
> > +     if (psp >=3D ARRAY_SIZE(asus_ec_battery_prop_offs))
> > +             return -EINVAL;
> > +
> > +     offs =3D asus_ec_battery_prop_offs[psp];
> > +     if (!offs)
> > +             return -EINVAL;
> > +
> > +     ret =3D asus_ec_battery_refresh(priv);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     if (offs >=3D priv->batt_data[0])
> > +             return -ENODATA;
> > +
> > +     return get_unaligned_le16(priv->batt_data + offs);
> > +}
> > +
> > +static int asus_ec_battery_get_property(struct power_supply *psy,
> > +                                     enum power_supply_property psp,
> > +                                     union power_supply_propval *val)
> > +{
> > +     struct asus_ec_battery_data *priv =3D power_supply_get_drvdata(ps=
y);
> > +     int ret;
> > +
> > +     switch (psp) {
> > +     case POWER_SUPPLY_PROP_PRESENT:
> > +             val->intval =3D 1;
> > +             break;
> > +
> > +     default:
> > +             ret =3D asus_ec_battery_get_value(priv, psp);
> > +             if (ret < 0)
> > +                     return ret;
> > +
> > +             val->intval =3D (s16)ret;
> > +
> > +             switch (psp) {
> > +             case POWER_SUPPLY_PROP_STATUS:
> > +                     if (ret & ASUSEC_BATTERY_FULL_CHARGED)
> > +                             val->intval =3D POWER_SUPPLY_STATUS_FULL;
> > +                     else if (ret & ASUSEC_BATTERY_NOT_CHARGING)
> > +                             val->intval =3D POWER_SUPPLY_STATUS_NOT_C=
HARGING;
> > +                     else if (ret & ASUSEC_BATTERY_DISCHARGING)
> > +                             val->intval =3D POWER_SUPPLY_STATUS_DISCH=
ARGING;
> > +                     else
> > +                             val->intval =3D POWER_SUPPLY_STATUS_CHARG=
ING;
> > +                     break;
> > +
> > +             case POWER_SUPPLY_PROP_TEMP:
> > +                     val->intval -=3D TEMP_CELSIUS_OFFSET;
> > +                     break;
> > +
> > +             case POWER_SUPPLY_PROP_CHARGE_NOW:
> > +             case POWER_SUPPLY_PROP_CURRENT_NOW:
> > +             case POWER_SUPPLY_PROP_CURRENT_MAX:
> > +             case POWER_SUPPLY_PROP_VOLTAGE_NOW:
> > +             case POWER_SUPPLY_PROP_VOLTAGE_MAX:
> > +                     val->intval *=3D 1000;
> > +                     break;
> > +
> > +             case POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW:
> > +             case POWER_SUPPLY_PROP_TIME_TO_FULL_NOW:
> > +                     val->intval *=3D 60;
> > +                     break;
> > +
> > +             default:
> > +                     break;
> > +             }
> > +
> > +             break;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static void asus_ec_battery_poll_work(struct work_struct *work)
> > +{
> > +     struct asus_ec_battery_data *priv =3D
> > +             container_of(work, struct asus_ec_battery_data, poll_work=
.work);
> > +     int state;
> > +
> > +     state =3D asus_ec_battery_get_value(priv, POWER_SUPPLY_PROP_STATU=
S);
> > +     if (state < 0)
> > +             return;
> > +
> > +     if (state & ASUSEC_BATTERY_FULL_CHARGED)
> > +             state =3D POWER_SUPPLY_STATUS_FULL;
> > +     else if (state & ASUSEC_BATTERY_DISCHARGING)
> > +             state =3D POWER_SUPPLY_STATUS_DISCHARGING;
> > +     else
> > +             state =3D POWER_SUPPLY_STATUS_CHARGING;
> > +
> > +     if (priv->last_state !=3D state) {
> > +             priv->last_state =3D state;
> > +             power_supply_changed(priv->battery);
> > +     }
> > +
> > +     /* continuously send uevent notification */
> > +     schedule_delayed_work(&priv->poll_work,
> > +                           msecs_to_jiffies(ASUSEC_BATTERY_DATA_FRESH_=
MSEC));
> > +}
> > +
> > +static const struct power_supply_desc asus_ec_battery_desc =3D {
> > +     .name =3D "asus-ec-battery",
> > +     .type =3D POWER_SUPPLY_TYPE_BATTERY,
> > +     .properties =3D asus_ec_battery_properties,
> > +     .num_properties =3D ARRAY_SIZE(asus_ec_battery_properties),
> > +     .get_property =3D asus_ec_battery_get_property,
> > +     .external_power_changed =3D power_supply_changed,
> > +};
> > +
> > +static int asus_ec_battery_probe(struct platform_device *pdev)
> > +{
> > +     struct asus_ec_battery_data *priv;
> > +     struct device *dev =3D &pdev->dev;
> > +     struct power_supply_config cfg =3D { };
> > +     int ret;
> > +
> > +     priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +     if (!priv)
> > +             return -ENOMEM;
> > +
> > +     platform_set_drvdata(pdev, priv);
> > +
> > +     mutex_init(&priv->battery_lock);
> > +
> > +     priv->ec =3D cell_to_ec(pdev);
> > +     priv->batt_data_ts =3D jiffies - 1;
> > +     priv->last_state =3D POWER_SUPPLY_STATUS_UNKNOWN;
> > +
> > +     cfg.fwnode =3D dev_fwnode(dev->parent);
> > +     cfg.drv_data =3D priv;
> > +
> > +     memcpy(&priv->psy_desc, &asus_ec_battery_desc, sizeof(priv->psy_d=
esc));
> > +     priv->psy_desc.name =3D devm_kasprintf(dev, GFP_KERNEL, "%s-batte=
ry",
> > +                                          priv->ec->name);
> > +
> > +     priv->battery =3D devm_power_supply_register(dev, &priv->psy_desc=
, &cfg);
> > +     if (IS_ERR(priv->battery))
> > +             return dev_err_probe(dev, PTR_ERR(priv->battery),
> > +                                  "Failed to register power supply\n")=
;
> > +
> > +     ret =3D devm_delayed_work_autocancel(dev, &priv->poll_work,
> > +                                        asus_ec_battery_poll_work);
> > +     if (ret)
> > +             return ret;
> > +
> > +     schedule_delayed_work(&priv->poll_work,
> > +                           msecs_to_jiffies(ASUSEC_BATTERY_DATA_FRESH_=
MSEC));
> > +
> > +     return 0;
> > +}
> > +
> > +static int __maybe_unused asus_ec_battery_suspend(struct device *dev)
> > +{
> > +     struct asus_ec_battery_data *priv =3D dev_get_drvdata(dev);
> > +
> > +     cancel_delayed_work_sync(&priv->poll_work);
> > +
> > +     return 0;
> > +}
> > +
> > +static int __maybe_unused asus_ec_battery_resume(struct device *dev)
> > +{
> > +     struct asus_ec_battery_data *priv =3D dev_get_drvdata(dev);
> > +
> > +     schedule_delayed_work(&priv->poll_work,
> > +                           msecs_to_jiffies(ASUSEC_BATTERY_DATA_FRESH_=
MSEC));
> > +
> > +     return 0;
> > +}
> > +
> > +static SIMPLE_DEV_PM_OPS(asus_ec_battery_pm_ops,
> > +                      asus_ec_battery_suspend, asus_ec_battery_resume)=
;
> > +
> > +static struct platform_driver asus_ec_battery_driver =3D {
> > +     .driver =3D {
> > +             .name =3D "asus-transformer-ec-battery",
> > +             .pm =3D &asus_ec_battery_pm_ops,
> > +     },
> > +     .probe =3D asus_ec_battery_probe,
> > +};
> > +module_platform_driver(asus_ec_battery_driver);
> > +
> > +MODULE_AUTHOR("Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>");
> > +MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
> > +MODULE_DESCRIPTION("ASUS Transformer's battery driver");
> > +MODULE_LICENSE("GPL");
> > --
> > 2.51.0
> >
> >

