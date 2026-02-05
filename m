Return-Path: <devicetree+bounces-262894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEqrItxZhGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:50:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB19AF0087
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13DFE301A381
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AFF836165B;
	Thu,  5 Feb 2026 08:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SedGzFQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E753B32E12D
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281426; cv=pass; b=ekSd3Mueyl0s5Y9646EMdAtmOusmpGw24tzYIzAiIcHWUOPtnTrUgodGqgbP90FnsSwDmyu3rtxYF9RPkf5rPobWtFodXccbXzVSI+DRZ+1vKVJOqpWCUzxdyLjNgUurBVb/GtOkpXURMI8rdkqma8hrX/XyTzpKSXPpntgvYTI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281426; c=relaxed/simple;
	bh=rlNn/Ya+cv52RkHmFZGmY52OZzJ3EGOkX3v5AkKzn9k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pz8XFp+wA2LXTljo3cdqN+C08xnyaSYlStpnbNiWidH3FLafJz6u2AoNbm9MK3pYAiNmITcFkSiD6zfWD6qiAwHrhkl61GcQKJs4uTO+olcMUlyPyuDALMmnxG80I5ai7QWnXREjFHNEFaTGmfKH2bqD5BlYZtmSvynt9Il6mdc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SedGzFQw; arc=pass smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b71515d8adso570086eec.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:50:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770281425; cv=none;
        d=google.com; s=arc-20240605;
        b=M7CG4qaoksUW42pM5liMy9XwlxtBF41/PJodDOPK391KhIsgbzyufX2DPcYFA+9V48
         tA1w3VB4Ujdofld+rssyW0GJa9KcNIG2EecZW7RCFoc+nKzuALNZP0jhsCLg57ZgzJwX
         14LepzjgXerG+3h7eFgdkFRD1ZvoO2459X8iuHKFvy+fc4+S7tMVFNOnAZzblRvexkit
         lSvgj1BV/FpTz9bqVcEPyQyeEfEzroOFqpUXFgjwN2jTxNLMn43Bv0mk7Ms2HHrzu86+
         oNjsWF7+L8SoQy8OEkZqkQEevtaIQWGrilztMbF8n78TXzbBAmybQOEjRFkNEHiEACOb
         Ddqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XxjXpoOe3CFlmXniMkswftA6j+cTekO8KOykjsuHkHE=;
        fh=ieIzi62ensxJypaJuARqUhFWZfYVhSYi60x0h4lNSMU=;
        b=Fz/hTS2qggMzGa4n7uzA2FN/WVXbPin4dOre+cQG1cAv8rKbk7aOtyVu2yKWT9pQ1f
         hlcutqqc+x2VXXTh96+X4bNcmaBEodM1x4NfDQ9cIAkxe+CRLrm1YsAEyky2uSdy1tXO
         EKPYJ79RTbJoF/jIKE2vIuobEWE5TJRItV8odGPt4AJ7vQFZ5TzpmY25iZ4GtgnCOpEX
         XaoYaLpnwllYVmes2CKVf66DmTaj5PLkmJeJDJxRTMdbN2iptOk1Cqtwz5Rau3kNzyzc
         egQbLlGkcGqcMnnDbdnpbkqR98S+ZFRKJOYIwn4PkVS/gZzt75VMCNKJOtKfiMVfIqNe
         iMiw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770281425; x=1770886225; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XxjXpoOe3CFlmXniMkswftA6j+cTekO8KOykjsuHkHE=;
        b=SedGzFQwi/bb69BMSlIvPNugFCYqjMhDzA86qi9GTJ/kNeWGv7t4wyaBDtKBhNR/M8
         f4OIyQ5x9D6lX4T+ucOv1L+RWIcuKMWn3xPt+EKLqaYHWGNm8pQxRbkBPfcMzKhVti4K
         PboiD/G1PX3CELRmWSpLuLAZD6CM383w1bd/9qrhabs07VGHvc8AwXoVETNT7LY+e7Qt
         Rfhop2NGqUNig/O/xU/1cGMkQbUlWHhPVTCtNbnms+w7SchLcYwkJzQS4Co6w+xfspGR
         GiWvq2IgULCQILalbbMYjjPPuH3ESxCo2Ctza8QI6EVVPbtK4k9rpVdwct2oXE/bjQG7
         Pcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281425; x=1770886225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XxjXpoOe3CFlmXniMkswftA6j+cTekO8KOykjsuHkHE=;
        b=Z1SyuWBtXabInp6TMN5qBRwb3mbgEqdIohI22bDtOXB8OwzWJDhTEBkeGnu8ZytwT4
         qe1e61437l2qp2xrNYcIqVl1DRHLsYIQw40gLBj7gTZoazfcOO624NrPpj1d6yFRCg2k
         ZUq8KzEDep6fKOXwwlNCCNxdOF8ZUxFoPynRDsKCSlhxtE5+vtfjErhDEmLkCMqxRjS+
         VNz0OIp2MqSfJ6yVM1YHSSCN1q0S4R3zCSYb22zh9oFS+qTMsm7NBWOIEfk7m5k1+wVI
         Ji6Cs07OOGWDfNrqaV2BLrhf9fTp9ManzgWQplW57pBD0T9/+/QYcSMr2ajafKuc4UJc
         nc8A==
X-Forwarded-Encrypted: i=1; AJvYcCV4xoGDva36by5dEyiDIUm0YMStBwUVzhsbgQyte8yMHZZHMWdlYWktZ7k1Buf4rYfYUFbH7tXBpDqL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhpxeg1ECyBkqNf/3O+QtXEScxaWvDl0IUJm3ZzEdKFvSYeyJw
	bbpCz91dF3/59m1TvUfAIS0fa7xYAEU4SXs5mqbuf/HGi+nSoX41WYt0K6voCvearMvthPZbr7h
	iDV2jI6P1qewwLSDzyEhvMQks3sRGRL4=
X-Gm-Gg: AZuq6aJmEwRaiprzJYINXqnSxlxxLMnXEt/qsHtVCCQrpx/0RA6fRFDvBtDXoAtEZgF
	ClULjIQu5URiG+MTAVwXCXsRsTeOk40ppPk/ZKBlIpwYzzPiEZErQcdVLdbfm55iFs04m7JaUNd
	3G6rW0Xe9qrnWqnRVkPd1v3lbL09/tG+Y8n6EfTzR3KUQu9Y/X4VCYackb8mUF8QiJQEw1OdguE
	Er5f5Bn1qdxcMqhh3iJpgYpcmzhhrszuC884WJGBV3lwQ3jMDKUcxuovHtDPOL8u73CRqUf
X-Received: by 2002:a05:7301:4592:b0:2b6:c03d:9ff0 with SMTP id
 5a478bee46e88-2b8329c263emr2491667eec.22.1770281424875; Thu, 05 Feb 2026
 00:50:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202080355.53061-1-Ashish.Yadav@infineon.com>
 <20260202080355.53061-3-Ashish.Yadav@infineon.com> <d0854014-7977-48b9-bf31-d66865352ecf@roeck-us.net>
In-Reply-To: <d0854014-7977-48b9-bf31-d66865352ecf@roeck-us.net>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Thu, 5 Feb 2026 14:20:13 +0530
X-Gm-Features: AZwV_QjtjOmY33a02gUHtxXYSSwRgoUhWsRiXwDwwJCzy3lbLWDxlov01vCpuQo
Message-ID: <CAJKbuCan+5AMuGuqKg4V1qs5HYZQ9zgS9S1rDDJ1usjJAjEGqw@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262894-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: DB19AF0087
X-Rspamd-Action: no action

Hi Guenter,

Thank you for taking the time to review and provide feedback.
I appreciate your input and insights.
Please find my comments inline below.

Best regards,
Ashish Yadav

On Mon, Feb 2, 2026 at 9:01=E2=80=AFPM Guenter Roeck <linux@roeck-us.net> w=
rote:
>
> On 2/2/26 00:03, ASHISH YADAV wrote:
> > From: Ashish Yadav <ashish.yadav@infineon.com>
> >
> > Add the pmbus driver for Infineon Digital Multi-phase XDPE1A2G5B and
> > XDPE1A2G7B controllers.
> >
> > XDPE1A2G5B controller supports Linear Data format for VOUT using VOUT_M=
ODE
> > command.
> > XDPE1A2G7B controller supports Linear and VID Data format for VOUT usin=
g
> > VOUT_MODE command.
> >
> > In case of vid mode in XDPE1A2G7B controller, NVIDIA PWM VID vrm_versio=
n
> > is supported:
> > Vout =3D 5mV * (VID-1) + 195mV
> >
> > Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
> > ---
> >   drivers/hwmon/pmbus/Kconfig      |   9 +++
> >   drivers/hwmon/pmbus/Makefile     |   1 +
> >   drivers/hwmon/pmbus/pmbus.h      |   2 +-
> >   drivers/hwmon/pmbus/pmbus_core.c |   4 ++
> >   drivers/hwmon/pmbus/xdpe1a2g7b.c | 115 ++++++++++++++++++++++++++++++=
+
>
> Driver documentation missing.
>
   ACK, We will take care of this in the next release.

> >   5 files changed, 130 insertions(+), 1 deletion(-)
> >   create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c
> >
> > diff --git a/drivers/hwmon/pmbus/Kconfig b/drivers/hwmon/pmbus/Kconfig
> > index f3fb94cebf1a..c6750bce446d 100644
> > --- a/drivers/hwmon/pmbus/Kconfig
> > +++ b/drivers/hwmon/pmbus/Kconfig
> > @@ -684,6 +684,15 @@ config SENSORS_XDPE152
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
> > index 349a89b6d92e..620f24baa289 100644
> > --- a/drivers/hwmon/pmbus/Makefile
> > +++ b/drivers/hwmon/pmbus/Makefile
> > @@ -67,6 +67,7 @@ obj-$(CONFIG_SENSORS_UCD9200)       +=3D ucd9200.o
> >   obj-$(CONFIG_SENSORS_XDP710)        +=3D xdp710.o
> >   obj-$(CONFIG_SENSORS_XDPE122)       +=3D xdpe12284.o
> >   obj-$(CONFIG_SENSORS_XDPE152)       +=3D xdpe152c4.o
> > +obj-$(CONFIG_SENSORS_XDPE1A2G7B)     +=3D xdpe1a2g7b.o
> >   obj-$(CONFIG_SENSORS_ZL6100)        +=3D zl6100.o
> >   obj-$(CONFIG_SENSORS_PIM4328)       +=3D pim4328.o
> >   obj-$(CONFIG_SENSORS_CRPS)  +=3D crps.o
> > diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.h
> > index d2e9bfb5320f..3ddcb742d289 100644
> > --- a/drivers/hwmon/pmbus/pmbus.h
> > +++ b/drivers/hwmon/pmbus/pmbus.h
> > @@ -416,7 +416,7 @@ enum pmbus_sensor_classes {
> >   #define PMBUS_PAGE_VIRTUAL  BIT(31) /* Page is virtual */
> >
> >   enum pmbus_data_format { linear =3D 0, ieee754, direct, vid };
> > -enum vrm_version { vr11 =3D 0, vr12, vr13, imvp9, amd625mv };
> > +enum vrm_version { vr11 =3D 0, vr12, vr13, imvp9, amd625mv, nvidia195m=
v };
> >
> >   /* PMBus revision identifiers */
> >   #define PMBUS_REV_10 0x00   /* PMBus revision 1.0 */
> > diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmb=
us_core.c
> > index be6d05def115..4d7634ee6148 100644
> > --- a/drivers/hwmon/pmbus/pmbus_core.c
> > +++ b/drivers/hwmon/pmbus/pmbus_core.c
> > @@ -885,6 +885,10 @@ static s64 pmbus_reg2data_vid(struct pmbus_data *d=
ata,
> >               if (val >=3D 0x0 && val <=3D 0xd8)
> >                       rv =3D DIV_ROUND_CLOSEST(155000 - val * 625, 100)=
;
> >               break;
> > +     case nvidia195mv:
> > +             if (val >=3D 0x01)
> > +                     rv =3D 195 + (val - 1) * 5;  /* VID step is 5mv *=
/
> > +             break;
> >       }
> >       return rv;
> >   }
>
> The core change needs to be a separate patch.
>
ACK, We will take care of this in the next release.

> > diff --git a/drivers/hwmon/pmbus/xdpe1a2g7b.c b/drivers/hwmon/pmbus/xdp=
e1a2g7b.c
> > new file mode 100644
> > index 000000000000..79b12b56e7b6
> > --- /dev/null
> > +++ b/drivers/hwmon/pmbus/xdpe1a2g7b.c
> > @@ -0,0 +1,115 @@
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
> > +     int i, ret, vout_mode;
> > +
> > +     vout_mode =3D pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
> > +     if (vout_mode >=3D 0 && vout_mode !=3D 0xff) {
>
> What if vout_mode < 0 ? Also, what if the mode is different for page 1 ?

ACK, We will take care of this in the next release.

> Also, if I understand patch 0 correctly, executing this function is not n=
eeded
> for XDPE1A2G5B.
>
ACK, We will take care of this in the next release.

> > +             switch (vout_mode >> 5) {
> > +             case 0:
> > +                     info->format[PSC_VOLTAGE_OUT] =3D linear;
> > +                     return 0;
> > +             case 1:
> > +                     info->format[PSC_VOLTAGE_OUT] =3D vid;
> > +                     break;
> > +             default:
> > +                     return -ENODEV;
> > +             }
> > +     }
> > +
> > +     for (i =3D 0; i < info->pages; i++) {
> > +             /* Read the VOUT_MODE register for VID Code Type. */
> > +             ret =3D pmbus_read_byte_data(client, i, PMBUS_VOUT_MODE);
>
> Given that there are only two pages, reading PMBUS_VOUT_MODE for
> page 0 twice is a bit of a waste. On top of that, the need for the loop
> suggests that the mode can be different across pages. That needs to be
> supported: Bailing out in that case is not acceptable. Worse:
> What if the mode is linear on page 0 but vid on page 1 ?
>
ACK, We will take care of this in the next release.

> > +             if (ret < 0)
> > +                     return ret;
> > +
> > +             vout_params =3D ret & GENMASK(4, 0);
> > +             switch (vout_params) {
> > +             case XDPE1A2G7B_NVIDIA_195MV:
> > +                     info->vrm_version[i] =3D nvidia195mv;
> > +                     break;
> > +             default:
> > +                     return -EINVAL;
>
> This warrants an error message and an explanation (comment) why other mod=
es
> are not supported by the driver. The detailed datasheet is not public, so
> you'll have to help out here. As mentioned above, bailing out because the
> mode on page 1 is linear is not acceptable.
>
ACK, we will provide comments in the next release.
Additionally, please note that the XDPE1A2G7B Controller only supports
the 'nvidia195mv' vrm_version in the VID Data format for VOUT.
We will ensure that this limitation is properly documented and
commented on in the next release.

> > +             }
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static struct pmbus_driver_info xdpe1a2g7b_info =3D {
> > +     .pages =3D XDPE1A2G7B_PAGE_NUM,
> > +     .identify =3D xdpe1a2g7b_identify,
> > +     .format[PSC_VOLTAGE_IN] =3D linear,
> > +     .format[PSC_TEMPERATURE] =3D linear,
> > +     .format[PSC_CURRENT_IN] =3D linear,
> > +     .format[PSC_CURRENT_OUT] =3D linear,
> > +     .format[PSC_POWER] =3D linear,
> > +     .func[0] =3D PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS=
_VOUT |
> > +                PMBUS_HAVE_IIN | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_I=
OUT |
> > +                PMBUS_HAVE_TEMP | PMBUS_HAVE_TEMP2 | PMBUS_HAVE_STATUS=
_TEMP |
> > +                PMBUS_HAVE_POUT | PMBUS_HAVE_PIN | PMBUS_HAVE_STATUS_I=
NPUT,
> > +     .func[1] =3D PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS=
_VOUT |
> > +                PMBUS_HAVE_IIN | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_I=
OUT |
> > +                PMBUS_HAVE_PIN | PMBUS_HAVE_POUT | PMBUS_HAVE_STATUS_I=
NPUT,
> > +};
> > +
> > +static int xdpe1a2g7b_probe(struct i2c_client *client)
> > +{
> > +     struct pmbus_driver_info *info;
> > +
> > +     info =3D devm_kmemdup(&client->dev, &xdpe1a2g7b_info, sizeof(*inf=
o),
> > +                         GFP_KERNEL);
> > +     if (!info)
> > +             return -ENOMEM;
> > +
> > +     return pmbus_do_probe(client, info);
> > +}
> > +
> > +static const struct i2c_device_id xdpe1a2g7b_id[] =3D { { "xdpe1a2g5b"=
 },
> > +                                                   { "xdpe1a2g7b" },
> > +                                                   {} };
>
> Please use more lines and less indentation.
>
ACK, We will take care of this in the next release.

> > +
> > +MODULE_DEVICE_TABLE(i2c, xdpe1a2g7b_id);
> > +
> > +static const struct of_device_id __maybe_unused xdpe1a2g7b_of_match[] =
=3D {
> > +     { .compatible =3D "infineon,xdpe1a2g5b" },
> > +     { .compatible =3D "infineon,xdpe1a2g7b" },
> > +     {}
>
> ... just like here.
>
> > +};
> > +
> > +MODULE_DEVICE_TABLE(of, xdpe1a2g7b_of_match);
> > +
> > +static struct i2c_driver xdpe1a2g7b_driver =3D {
> > +     .driver =3D {
> > +             .name =3D "xdpe1a2g7b",
> > +             .of_match_table =3D of_match_ptr(xdpe1a2g7b_of_match),
> > +     },
> > +     .probe =3D xdpe1a2g7b_probe,
> > +     .id_table =3D xdpe1a2g7b_id,
> > +};
> > +
> > +module_i2c_driver(xdpe1a2g7b_driver);
> > +
> > +MODULE_AUTHOR("Ashish Yadav <ashish.yadav@infineon.com>");
> > +MODULE_DESCRIPTION("PMBus driver for Infineon XDPE1A2G5B/7B");
> > +MODULE_LICENSE("GPL");
> > +MODULE_IMPORT_NS("PMBUS");
>

