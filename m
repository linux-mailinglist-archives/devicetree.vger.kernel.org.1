Return-Path: <devicetree+bounces-269201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCeLIhGBoWkUtgQAu9opvQ
	(envelope-from <devicetree+bounces-269201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:33:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0301B69D3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:33:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F5B43022953
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99AE932ED2A;
	Fri, 27 Feb 2026 11:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="EbRd0clv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F8F227BB5
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772192014; cv=pass; b=Q8VihJMuHUOFkPAhxqxKJ2msXOy6DdN3BcSdLV4+KbHntpF6uymTHUA/Oh2q5cvJV0XHmTbiPwo6x/ZgyETLcJizEfdviZsc2l+1Y3N5lo+EYZXd8cMjK298t2rWHCuJcm8czzXafpQ+g0nUeG3/GB8vqdRFsd5CG/Kspu+Ws5o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772192014; c=relaxed/simple;
	bh=YkKkXGPtWq4Z1GRykpWFBU1hTW3OYyhGbXrHfP9/WiE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DRKpSXb4CTTx0EerBrYDyhhrUbO+B3cYr7eTwwA0/s2ThPDPcizHvQHjOpctH2Ni80NJF6KuE1P6rMjqZvG81Jkz/b82rJ01bozt2mkzHJ4mw6aUA+6SGapm1WE4Sj4OsPRNLrVQbUWilBcCRWek1kkiyLQErpT3DPomaSLXX1Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=EbRd0clv; arc=pass smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b9372552059so168152666b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:33:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772192011; cv=none;
        d=google.com; s=arc-20240605;
        b=Ar3Sico7az4fwa4gFC455imtk+XZBoAgBxIrTV9x72yrDlRk9BegvxRpK4laHguFzf
         Ts729ePMmMnMk87nPeqnitwszvBuKcIarcUUBcaygDuUjaMUiohpb4sfuHfsk354RKJw
         fBxjDxNj3UocqckijMt90yGPUUtXBJlQlF1cGTk+msHfJhHceleomMhKuZpQ7AjEvfDP
         nc0GPaIA2Y/e7LKxsKsSFOL4l5FVRQ7DT5Awh/PEhLjMtO9G1WjikPI57+QxBUoNhJZK
         +Dyx0BgHhHELusNuQ1gzF/Aj4kP1Wkr6QQlcadK869vX22SKhFMTwXB9Mx1ioCuOSeos
         3+dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EA0zkwSlxFAb7Xpw8/jdlv2hV6yk/85CXHmdOo5DpPw=;
        fh=vOLRtYn9zOYwYjgdSsO1yziPzjzzCHzACjHn34zLfu0=;
        b=lAKZC9TFZEyRZdBAMaleRcmhki9PzmERhLVXXfbuxjsIKmyCYPFVeDO4I8Fn6RAn8N
         Wj2jQIZxD3aTrqSF+dFa3tyZSzSo+oWEC80Zu+MF2ySlLi+q5SC7ijWgT9hsOcG5ywam
         CfOEkTk8a4lf9OvSrLXcMUI2MX8CFDR9SDz1MCHJjq6NUpoMHzIo3X+mnA9mGTRH47xg
         Xd80WMP8qlcdlZNSEXvA0Zqyz4w/G1KQxTFd9BDFPFrmg70aVaZJF2aVNAXyAUqGlmmd
         r3g5egoOzybC6GcMJqRfXPrqZEztv5+EwcE1Zx9NLTsDaEg7emA1B0a0KGoFnUp5POwn
         J71w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772192011; x=1772796811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EA0zkwSlxFAb7Xpw8/jdlv2hV6yk/85CXHmdOo5DpPw=;
        b=EbRd0clvRx9qGUQsT5J2lxegONfFLiRIv30vw4PmFMwCAioTYl2+cj2DNROEzEcEbU
         36Wa1b8Jbm8owDo0igCVBJjIB70bLY1eZc1b5zgb7OgprLog6LjMx1s7v8nf0hGrrJ3C
         3tGg2RGp8wwF8y2E3hH1yUKSIUOQXzoJd6295lqScnJeLpJ7z0DLfOCGgsV9VUYpH+Gp
         QmK1AvmXsjEj3H9KNrgiT/2XOCaM5Uz7/BVui39XfhUK9RARu2xEOGP5qH3r/on4KfxZ
         VzSDfBwpkCuiNhGCvmTLY+gQWLWTbsP/xttrQAAgbl1B/8+iaPUcuhSWHCKp0MFU3tir
         9S4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772192011; x=1772796811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EA0zkwSlxFAb7Xpw8/jdlv2hV6yk/85CXHmdOo5DpPw=;
        b=as/5h5C69VWdBc7kHaW4uQ4xMlkMP7waC23Bqv5OEJiC/+uMVUwOEUOu3gLUY2MDmg
         qM497DRU9YnucexLoHb7q0Fb5o2p6W0510kuZZTQYu8nEzfoK4Pt+KOTmOoq41ZR1Ntr
         BJU0qUEC6OBirPM6B72XMOsFz0mFIgHQc+lu9eK9uOQXKgs9d4LAnGnp1ct9zQuXbbXj
         uOHhyOd27fO85tIibSLJLr84fM5Y1WRoJJHvIT4T0i/hxhPmjhZqKzQSbjoxaCQCc0ao
         kMLLZddegpJGyrpZHQuqfKHktWnbOdGGIX0+j9FpioA8x2OYdGzxEOweW3euufO+f/BK
         nviA==
X-Forwarded-Encrypted: i=1; AJvYcCX24/AnP+lFMmFjRFWqEpekJUMJz1hOsfsGQnvZHyFKixT9yVSC1L9Nhytffm3xxjj7wOQTasRPdMAk@vger.kernel.org
X-Gm-Message-State: AOJu0YxCjpsdWyhLVPuTwJRLevAHl09ARAUI9hvz91YMig0zYb3/ujRV
	PjFyN0MJ3LqkoPPmIdGVP8HGnJbiy3MrJ2JGHik2YbK0Sn9RvMixYI773HuaxwYBqwQJ7LjP1L0
	SHPKUSo8yYh41QJIXOdHalGYDKvpYyJH719LeaK7r2Q==
X-Gm-Gg: ATEYQzwbYYWkwGoTnv3xSsVXcxlbDRftQeRF28E5ZWJ1p1kEt3rJ0HazkRFD8dtD/Qb
	31s3B1FOw/txQgAP9xRbDR0rGMkk4UQb4ZIn5Je2T9ccyBDlVYbSzum8SsvskCLTQFCfMK84/e3
	GKPy0iwgNhVWZSCmphTCIM8zWT+UccaegiWnMP5n6LR+80f2qn1UHzHfgfvgIlJ4VMS6ZKRBuT/
	4Hyo0Zzwffp3ZHLK6FQgizwLvt5+XdDTlFzZwaTZuhc9d70Z9EPOlcpgtacxti/P2B7/k4sUrHe
	Q5TOoA==
X-Received: by 2002:a17:907:9807:b0:b88:6e10:62c8 with SMTP id
 a640c23a62f3a-b9376366e46mr138172766b.2.1772192011202; Fri, 27 Feb 2026
 03:33:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-ina4230-v1-0-92b1de981d46@flipper.net>
 <20260225-ina4230-v1-2-92b1de981d46@flipper.net> <20260227-victorious-parakeet-of-control-bef3ea@quoll>
In-Reply-To: <20260227-victorious-parakeet-of-control-bef3ea@quoll>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 27 Feb 2026 15:33:18 +0400
X-Gm-Features: AaiRm52Uhbk0_fR90_NpcwfxQk5HImLHPnkYTEwhZQvIHf5sUKaUrVdD-tZT79s
Message-ID: <CAKTNdwEUZWLgLtN7w==S69c1rOoRBWYAR3yXpR58uzipV3fx=A@mail.gmail.com>
Subject: Re: [PATCH 2/2] hwmon: Add support for TI INA4230 power monitor
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269201-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:email,flipper.net:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EE0301B69D3
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 1:49=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Feb 25, 2026 at 01:29:12PM +0400, Alexey Charkov wrote:
> > Add a driver for the TI INA4230, a 4-channel power monitor with I2C
> > interface.
> >
> > The driver supports voltage, current, power and energy measurements, bu=
t
> > skips the alert functionality in this initial implementation.
> >
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  MAINTAINERS             |   6 +
> >  drivers/hwmon/Kconfig   |  11 +
> >  drivers/hwmon/Makefile  |   1 +
> >  drivers/hwmon/ina4230.c | 997 ++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  4 files changed, 1015 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 4d879f6a7b51..77f7a416e682 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12511,6 +12511,12 @@ S:   Maintained
> >  F:   Documentation/hwmon/ina233.rst
> >  F:   drivers/hwmon/pmbus/ina233.c
> >
> > +INA4230 HWMON DRIVER
> > +M:   Alexey Charkov <alchark@flipper.net>
> > +L:   linux-hwmon@vger.kernel.org
> > +S:   Maintained
> > +F:   drivers/hwmon/ina4230.c
>
> List here binding as well, please.

Will do. It does confuse me a bit that we duplicate the maintainers
info both inside the binding files and in here.

> > +
> > +static int ina4230_probe_child_from_dt(struct device *dev,
> > +                                    struct device_node *child,
> > +                                    struct ina4230_data *ina)
> > +{
> > +     struct ina4230_input *input;
> > +     u32 val;
> > +     int ret;
> > +
> > +     ret =3D of_property_read_u32(child, "reg", &val);
> > +     if (ret) {
> > +             dev_err(dev, "missing reg property of %pOFn\n", child);
> > +             return ret;
> > +     } else if (val > INA4230_CHANNEL4) {
> > +             dev_err(dev, "invalid reg %d of %pOFn\n", val, child);
>
> All these are probe, so return dev_err_probe

Good point, thanks. Will adjust in v2.

> > +             return -EINVAL;
> > +     }
> > +
>
> ...
>
> > +     ina->regmap =3D devm_regmap_init_i2c(client, &ina4230_regmap_conf=
ig);
> > +     if (IS_ERR(ina->regmap)) {
> > +             dev_err(dev, "Unable to allocate register map\n");
> > +             return PTR_ERR(ina->regmap);
> > +     }
> > +
> > +     for (i =3D 0; i < F_MAX_FIELDS; i++) {
> > +             ina->fields[i] =3D devm_regmap_field_alloc(dev,
> > +                                                      ina->regmap,
> > +                                                      ina4230_reg_fiel=
ds[i]);
> > +             if (IS_ERR(ina->fields[i])) {
> > +                     dev_err(dev, "Unable to allocate regmap fields\n"=
);
> > +                     return PTR_ERR(ina->fields[i]);
>
> Syntax is return dev_err_probe, but allocations should not have printks.
> It is not possible to get there any other error code.

Alright, will drop the error message and return the errno directly,
thanks. -ENOMEM should be pretty self-explanatory.

It probably also makes sense to replace the open-coded loop with a
call to devm_regmap_field_bulk_alloc while we're here.

> > +             }
> > +     }
> > +
> > +     for (i =3D 0; i < INA4230_NUM_CHANNELS; i++) {
> > +             ina->inputs[i].shunt_resistor =3D INA4230_RSHUNT_DEFAULT;
> > +             /* Default for 1mA LSB current measurements */
> > +             ina->inputs[i].max_expected_current =3D 32768000;
> > +     }
> > +
> > +     ret =3D ina4230_probe_from_dt(dev, ina);
> > +     if (ret) {
> > +             dev_err(dev, "Unable to probe from device tree\n");
> > +             return ret;
>
> return dev_err_probe

Ack

> > +     }
> > +
> > +     /* The driver will be reset, so use reset value */
> > +     ina->reg_config1 =3D INA4230_CONFIG_DEFAULT;
> > +     ina->reg_config2 =3D 0;
> > +
> > +     if (ina->single_shot)
> > +             FIELD_MODIFY(INA4230_CONFIG1_MODE_MASK, &ina->reg_config1=
,
> > +                          INA4230_MODE_BUS_SHUNT_SINGLE);
> > +
> > +     /* Disable channels if their inputs are disconnected */
> > +     for (i =3D 0; i < INA4230_NUM_CHANNELS; i++) {
> > +             if (ina->inputs[i].disconnected)
> > +                     ina->reg_config1 &=3D ~INA4230_CONFIG_CHx_EN(i);
> > +     }
> > +
> > +     /* Set calibration values */
> > +     for (i =3D 0; i < INA4230_NUM_CHANNELS; i++) {
> > +             if (!ina->inputs[i].disconnected)
> > +                     ina4230_set_calibration(ina, i);
> > +     }
> > +
> > +     ina->pm_dev =3D dev;
> > +     dev_set_drvdata(dev, ina);
> > +
> > +     /* Enable PM runtime -- status is suspended by default */
> > +     pm_runtime_enable(ina->pm_dev);
> > +
> > +     /* Initialize (resume) the device */
> > +     for (i =3D 0; i < INA4230_NUM_CHANNELS; i++) {
> > +             if (ina->inputs[i].disconnected)
> > +                     continue;
> > +             /* Match the refcount with number of enabled channels */
> > +             ret =3D pm_runtime_get_sync(ina->pm_dev);
> > +             if (ret < 0)
> > +                     goto fail;
> > +     }
> > +
> > +     hwmon_dev =3D devm_hwmon_device_register_with_info(dev, client->n=
ame, ina,
> > +                                                      &ina4230_chip_in=
fo,
> > +                                                      ina4230_groups);
> > +     if (IS_ERR(hwmon_dev)) {
> > +             dev_err(dev, "Unable to register hwmon device\n");
> > +             ret =3D PTR_ERR(hwmon_dev);
>
> just ret =3D dev_err_probe

Ack

Thanks for your review Krzysztof!

Best regards,
Alexey

