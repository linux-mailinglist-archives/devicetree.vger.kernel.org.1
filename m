Return-Path: <devicetree+bounces-264319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJ9WGB8Di2kMPQAAu9opvQ
	(envelope-from <devicetree+bounces-264319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:06:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DFA119634
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:06:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 840FF3074F15
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16EF5346AC5;
	Tue, 10 Feb 2026 10:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EOOlesKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88721344DA1
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717810; cv=none; b=YXa8RTSjORJQUD1YbfqpDzU1FJB3WwFcIikhjY2S4Dg8RY5Wk1lR3tX31oSN31WJblzUH3soiddrpuNn3pYXaP4EVz00ktY/OyaAZiFrdMEkZW8SRX+cGMwTJlnex3tNwkrAA9/QbcGyT9vM4lKdhAojPEyV6vnB8cYW1FqZNn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717810; c=relaxed/simple;
	bh=ooeVV8I5d2AY+h6j1zoh4cyaCKKTOE9f6ezxXnFdb+w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=dHxJVo8kBE8ZGKLYUmJ4RkrBSXROpniSh+zda/zRf4xR+MM/wh/DhApRafFcSJisWiXQLAgAzbEHxjFkcyunbDoi09NOB2zRzwlcIK5yABfFW9YB8suRgNxPbJakXiU0NK03AjXm3CBGzldTh2UMRzog2pIuoOIdAZE2CeExcyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EOOlesKt; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-658078d6655so7049127a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770717807; x=1771322607; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ns0DYDWCgMFgOR7nvQ7X66gxpQehvS3KSJ9w3htiepE=;
        b=EOOlesKtlaSdzc2lmfIXxU7CZxjF+WP1s8qKfaQgZrWodzVRyED/uYw3QGOAy0h5HY
         TJi8Hhfm6RChdUUVAFUA3MKkEAM2xRhKn6bqQE/SkMUjDnchOE0iL1Qady4At4IWjuo9
         EIc1qR1tsY4OG9MiKUx4ZQy4pnK2mLYoberzhV6pqsxe1wiCyBy504EKoJA0BIX02rV4
         CvtHrpD4hQ0ZeK5YKxRUJ9IMgH63hu+/1/DThPxFvNUmWGSpYg2mbC7PoPTeIJ+SFrh1
         TmC/ovN9RK271JM8oo2kncBN/98+lJ5otLijmTrgsEcisLeu2sfxv+/AUN6lmgH5btTs
         5Saw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770717807; x=1771322607;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ns0DYDWCgMFgOR7nvQ7X66gxpQehvS3KSJ9w3htiepE=;
        b=q8xSkPVPzwrXkBsvHALYsFoiZZjrkzZuHOdbAQQr3ZzUPxoh7jvl7si1nHSRViPcpX
         2Sv5j+w5rpwAzTRmjuCN9rMafUcyUOaMAdsv8QSSE3+9z0q+ryDDpEs4JgOVEJR4Gv2o
         Jqp8/fkCtKE6HG98tw4pC9sw2SkEJvbJsfm/XEhes6lXcfjqhRCGl9LhsZR/dKjGUp1i
         IALuhcnODhT4edv6AR4pl7wy+UmwjHschg3mfMQjTZi3I0CUi9VeAgkMWyStZKcNQ9hm
         SMlwf0ZJvwcCNJqaSSj+uEFLk2EE9v5/RuPleF5pzLMojcBh26kFD8a5bc/u7zBybF15
         mbBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLtghBqxfEiQIbY+juKnEjMDlVXKGIw0O0Ptq0xLzIPEFqyYqEk49pHxGcv8ySqc5bs9trOWbGXK6F@vger.kernel.org
X-Gm-Message-State: AOJu0YxP5sNq4HoApuuOLY11hiOiXvLA5sDj9oU3YEMV5gZqiSFizIjv
	REEaVt0HNrRWuGnK7N6UMeZ0vHca8y15W9zW2oZl7Ts9rRVkMtM6be87gN50O9nKXV8=
X-Gm-Gg: AZuq6aJVK42rKHFJMFXngfxPF2UIqhECKzSw+0c3T8Mck245sVazzHyq8rI67by1wt5
	vEaf35uHYtLnRD4Uf7whdpSVsrtsgIDMSQSoJ+F22jx7NlM6SpJG/mb7g48g/r1V+JdU1GOULTa
	cA5rkrJhGBAdAIb/HTumRwLIkqCyRpL79/hkCSuQlUvFFEVv7DxqU6B0Nlc5F25sKypI0f+4wZe
	NFPfC/2wwFAvne62uTnNEEc+3AVeZyn/pNHeJW+o0bNERPDoh31iJnlRcDPdYMj4o4JN3gM5VYq
	u9C+UEZtAMff1ZYs4sm+mmUSptAi7uiqM0JRrrDIQDoIUXGrajlDBaaQ47aVFrSmwohOWPECfRJ
	PN3q4b4uRPikodMl7Re5GyWH6M0nkSwVR44bwmR6033qI0dVzKXeitUdr8UKm4dTQY4mq9nNE7A
	rUOk4JBOUJFI3HcpkOeiAD6pzu1ZTBYQ==
X-Received: by 2002:a05:6402:3507:b0:659:3ff1:58fc with SMTP id 4fb4d7f45d1cf-6598415c2bamr7583421a12.22.1770717806807;
        Tue, 10 Feb 2026 02:03:26 -0800 (PST)
Received: from draszik.lan ([212.129.79.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983eaa4d4sm3635754a12.4.2026.02.10.02.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:03:25 -0800 (PST)
Message-ID: <9dad174d88c814d3ad2086a31e8dfc222fd431e4.camel@linaro.org>
Subject: Re: [PATCH v2 08/12] leds: flash: add support for Samsung S2M
 series PMIC flash LED device
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>, Lee Jones
 <lee@kernel.org>,  Pavel Machek <pavel@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo
 Choi	 <cw00.choi@samsung.com>, Sebastian Reichel <sre@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Jonathan Corbet	 <corbet@lwn.net>, Shuah
 Khan <skhan@linuxfoundation.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-rtc@vger.kernel.org, 
	linux-doc@vger.kernel.org
Date: Tue, 10 Feb 2026 10:03:52 +0000
In-Reply-To: <DG75VP6IIUXD.1VA6YSMNTPJQ6@disroot.org>
References: <20260126-s2mu005-pmic-v2-0-78f1a75f547a@disroot.org>
	 <20260126-s2mu005-pmic-v2-8-78f1a75f547a@disroot.org>
	 <e34d429e27392eba894b9592724a77fa82fc8009.camel@linaro.org>
	 <DG75VP6IIUXD.1VA6YSMNTPJQ6@disroot.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264319-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,linaro.org:mid,linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5DFA119634
X-Rspamd-Action: no action

On Thu, 2026-02-05 at 21:46 +0530, Kaustabh Chakraborty wrote:
> On 2026-02-04 16:55 +00:00, Andr=C3=A9 Draszik wrote:
> > Hi,
> >=20
> > On Mon, 2026-01-26 at 00:37 +0530, Kaustabh Chakraborty wrote:
> > > Add support for flash LEDs found in certain Samsung S2M series PMICs.
> > > The device has two channels for LEDs, typically for the back and fron=
t
> > > cameras in mobile devices. Both channels can be independently
> > > controlled, and can be operated in torch or flash modes.
> > >=20
> > > The driver includes initial support for the S2MU005 PMIC flash LEDs.
> > >=20
> > > Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> > > ---
> > > =C2=A0drivers/leds/flash/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 12 ++
> > > =C2=A0drivers/leds/flash/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > =C2=A0drivers/leds/flash/leds-s2m-flash.c | 410 +++++++++++++++++++++=
+++++++++++++++
> > > =C2=A03 files changed, 423 insertions(+)
> > >=20
> > > diff --git a/drivers/leds/flash/Kconfig b/drivers/leds/flash/Kconfig
> > > index 5e08102a67841..be62e05277429 100644
> > > --- a/drivers/leds/flash/Kconfig
> > > +++ b/drivers/leds/flash/Kconfig
> > > @@ -114,6 +114,18 @@ config LEDS_RT8515
> > > =C2=A0	=C2=A0 To compile this driver as a module, choose M here: the =
module
> > > =C2=A0	=C2=A0 will be called leds-rt8515.
> > > =C2=A0
> > > +config LEDS_S2M_FLASH
> > > +	tristate "Samsung S2M series PMICs flash/torch LED support"
> > > +	depends on LEDS_CLASS
> > > +	depends on MFD_SEC_CORE
> > > +	depends on V4L2_FLASH_LED_CLASS || !V4L2_FLASH_LED_CLASS
> > > +	select REGMAP_IRQ
> > > +	help
> > > +	=C2=A0 This option enables support for the flash/torch LEDs found i=
n
> > > +	=C2=A0 certain Samsung S2M series PMICs, such as the S2MU005. It ha=
s
> > > +	=C2=A0 a LED channel dedicated for every physical LED. The LEDs can
> > > +	=C2=A0 be controlled in flash and torch modes.
> > > +
> > > =C2=A0config LEDS_SGM3140
> > > =C2=A0	tristate "LED support for the SGM3140"
> > > =C2=A0	depends on V4L2_FLASH_LED_CLASS || !V4L2_FLASH_LED_CLASS
> > > diff --git a/drivers/leds/flash/Makefile b/drivers/leds/flash/Makefil=
e
> > > index 712fb737a428e..44e6c1b4beb37 100644
> > > --- a/drivers/leds/flash/Makefile
> > > +++ b/drivers/leds/flash/Makefile
> > > @@ -10,6 +10,7 @@ obj-$(CONFIG_LEDS_MAX77693)	+=3D leds-max77693.o
> > > =C2=A0obj-$(CONFIG_LEDS_QCOM_FLASH)	+=3D leds-qcom-flash.o
> > > =C2=A0obj-$(CONFIG_LEDS_RT4505)	+=3D leds-rt4505.o
> > > =C2=A0obj-$(CONFIG_LEDS_RT8515)	+=3D leds-rt8515.o
> > > +obj-$(CONFIG_LEDS_S2M_FLASH)	+=3D leds-s2m-flash.o
> > > =C2=A0obj-$(CONFIG_LEDS_SGM3140)	+=3D leds-sgm3140.o
> > > =C2=A0obj-$(CONFIG_LEDS_SY7802)	+=3D leds-sy7802.o
> > > =C2=A0obj-$(CONFIG_LEDS_TPS6131X)	+=3D leds-tps6131x.o
> > > diff --git a/drivers/leds/flash/leds-s2m-flash.c b/drivers/leds/flash=
/leds-s2m-flash.c
> > > new file mode 100644
> > > index 0000000000000..1be2745c475bf
> > > --- /dev/null
> > > +++ b/drivers/leds/flash/leds-s2m-flash.c
> > > @@ -0,0 +1,410 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Flash and Torch LED Driver for Samsung S2M series PMICs.
> > > + *
> > > + * Copyright (c) 2015 Samsung Electronics Co., Ltd
> > > + * Copyright (c) 2025 Kaustabh Chakraborty <kauschluss@disroot.org>
> > > + */
> > > +
> > > +#include <linux/container_of.h>
> > > +#include <linux/led-class-flash.h>
> > > +#include <linux/mfd/samsung/core.h>
> > > +#include <linux/mfd/samsung/s2mu005.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of.h>
> > > +#include <linux/platform_device.h>
> > > +#include <linux/regmap.h>
> > > +#include <media/v4l2-flash-led-class.h>
> > > +
> > > +#define MAX_CHANNELS	2
> > > +
> > > +struct s2m_fled {
> > > +	struct device *dev;
> > > +	struct regmap *regmap;
> > > +	struct led_classdev_flash cdev;
> > > +	struct v4l2_flash *v4l2_flash;
> > > +	struct mutex lock;
> >=20
> > Please add a (brief) comment describing what the mutex protects.
>=20
> The mutex object prevents the concurrent access of flash control
> registers by the LED and V4L2 subsystems. -- will add this.
>=20
> > > +
> > > +	/*
> > > +	 * Get the LED enable register address. Revision EVT0 has the
> > > +	 * register at CTRL4, while EVT1 and higher have it at CTRL6.
> > > +	 */
> > > +	if (priv->pmic_revision =3D=3D 0)
> > > +		reg_enable =3D S2MU005_REG_FLED_CTRL4;
> > > +	else
> > > +		reg_enable =3D S2MU005_REG_FLED_CTRL6;
> >=20
> > You could REG_FIELD() and friends for this and everywhere else with
> > similar if / else.
> >=20
>=20
> REG_FIELD(), from what I understood, is for selecting a bit field inside
> a single register. However this code chooses between two separate
> registers. I believe your interpretation was incorrect? Please clarify.

The first argument to REG_FIELD is the register itself, so reg fields can
be used to describe this difference. See e.g. drivers/leds/rgb/leds-mt6370-=
rgb.c
Of course, you could have a member variable instead to hold the register
index if all bits are the same in both revisions. Either way would avoid
having to constantly check the revision during runtime.

Cheers,
Andre'

