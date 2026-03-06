Return-Path: <devicetree+bounces-271829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKVPMHpwqmkwRgEAu9opvQ
	(envelope-from <devicetree+bounces-271829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:13:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E7A21BF76
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 737323021EB3
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 06:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C012736E487;
	Fri,  6 Mar 2026 06:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hxc10K74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8FE36AB69
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 06:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772777591; cv=pass; b=rNEr0vepEXaSE6tjP2XdnmFDbe0WDbWhufheGAfJsKi+PrbWskjdLBG6caWqXbWKLOhcCIwLnb2CluSqOvuP2+by7JmPf30xSqC4Wt6SI09db9fwGbh2OZ8Mi6cM1AMhFbehYi+Kffe0L+AJ6FlR0Z2rwz+fPRHqbpyFkbEHm08=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772777591; c=relaxed/simple;
	bh=J9ejm7l2pDDZBEBAmBnyioiS0RjaAA3R3XJo0dQw3zU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CTctJvB7jJtFbi6G8BOYZlVJ3vWAxlyp+WSKfzFPyFxOBL8c+MbNi15GP+F4/ryTaQ7etZtnMehgiZ0K0MLdpelayYhNWKW/mu1FklIvzwicMFDGvkFeR/EAUQsqF2ZOtrG0TIviPFDjNbfm8kz89JgQsOBs0dD/u1NYLGv4JXk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hxc10K74; arc=pass smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b9423d62cbbso77606566b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 22:13:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772777589; cv=none;
        d=google.com; s=arc-20240605;
        b=VswcdbE8U/b48cSujxaRCcKMcWiIiB1IlgArhxc50hJc6qERv7amQKURja5w8uVOtE
         Q7FKCRCQgdjKYOlSVmQ+i8v1DC/Y9Fu/fIo2owuyxwoR0ZJXy9quVUpTPe+S76anh/r4
         oeBpFry4iyq4FsfpFjhsm5UOkxcs2vTVozENH7TJ5dPoPOEyspNRSwq887+k/ZIlRoNj
         VZr7midazktI1h1jGQu6iQYVy3zy3HbWBVaYhwqb1+pvGHzIpjWAoQiVjssYpF7/N5tH
         oNswgk3lzzlbKI2hxkw4cd/mXnYJQEXwsDC3lWqX3IGK01Jlxo3l7SfIVQ3XaMMozpA6
         hxOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=t8VAPLzN3H0mvNexfeYo6kcXoCX1WV6dDMHioOJ34WQ=;
        fh=vQdPIz6VLZI3NuPzsBz0P78GPV0hwRMloM9pMdj2RvA=;
        b=geahhH0igbGmlIxTJpjxFy/+VNBkk7tImnzXGF/qyokwIfwDMkj9G1idch/iithTA6
         vasiwR/g2oIPVA9dp/f481uRO7wc6MJ/bk19TT1qgJmE2rOtD70zUiAEyLat5Jmvqq+d
         PZLJcWbaAU3JhtADeROCSjJ6NOUz1Ufjnp+uzQOXOCInSwDPlwfUdRlkx3CbSH32BxNA
         1ZQQJGI05pr8EY4A1P154fkrl3iUH0r+eRQGyvG0p1n1iu6kEFs9xlznJcTbF9rxyvVV
         Zry0S8eEbG4SQsyc2jY1hKcR/0H8Lj08ceL0WHqO0T4IhVbvz6hqkCd27Xl0QxRiM7pp
         Ur7w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772777589; x=1773382389; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t8VAPLzN3H0mvNexfeYo6kcXoCX1WV6dDMHioOJ34WQ=;
        b=hxc10K74HakH0e9YYUijVuwBsTR42Ndp8eheClmK4qFd1O2Ny/XanKP+b0YS1pX/Bd
         Cs340/a7IgACVgbNBNa0uurh9MYaANHl5ez+9/Kkch2vzaIXOHKKS1nN8CvqhnTetVSE
         yd1L5g5dFvp5PrmpQryCKSmws1scyoZXpkQg0GF2IKGHbEDmsSeTY4GVxeA2v/PZC6jQ
         uKNXkQsBHK05oF+oebDXYk1wbyyGCid/IAcpyl8vYg2kNKHRQr9mANEKSg6+pJ1hAFY1
         Iv1qTQ0S22KOOMQzTGfeTQgW2BU+5q0F7Nq/hktR/AB/1dEjgtgWthZb55xKuiPpe9R+
         H5Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772777589; x=1773382389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t8VAPLzN3H0mvNexfeYo6kcXoCX1WV6dDMHioOJ34WQ=;
        b=qlfR4DAd2qLTM+7yvwfFY/08iww/wRSvVq0J1vzbYrJEB3cFvBHJaq7IaGEt/Fi/Fn
         sAfdXlLU2E2Hy+TTMIfTvZne7PNqmdGKrFjm1a2886tbsu3A/SsZcBdnFHIb6MP37H2F
         PcWxYEk0z8hb0DDuaqDgYMLLRdeqdj7h+Aj8KRDhUa0H/wginWvmqIU2lEiEpOeKHvkl
         raS/+LvGukKqZF4n5+XHJy01pL98s4DsiQ9GfSaYAbhQd4M1STYfLz+KbS7c20xlIi+Y
         4a//+n/iMX0z0ImAaqpyAuUpFzkm1V/vbEUnmWXkfuxMqATOr7IuaYzm4GDyZZE21gxw
         U8TQ==
X-Forwarded-Encrypted: i=1; AJvYcCV30+CCwk8P75buqpxUtjNbu0QDJioM1IE53p+ZKbssyNsCrUV0TEA1K+C76y465bP1M1ooro/InU48@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7fE8oMgISQnyBPbLlqf5hznj0R2hoEQtdNG0homOOomrj4LFV
	r5/IWgRc0WZ6q/f2kJCEZ9m+aCRecUQcQHodeipakY3acodbMdpZjDDpa3JzzIUqXJJfPDyUsqh
	3x3afC9aAeFyNs8osU6K60Zoayf9Kg+M=
X-Gm-Gg: ATEYQzyRn9bhvX8c8T06C4XwT0x1NQMyhIBchJI6208WfnbvQGXoLMIhMBwIWV/pk4E
	epPAtn7yWIG3PBpVWzFYo41lkUCJ3pqEzIvCFK5DP5XvrPsbS95tT0D1KXYUuh9iZhUlXVXiJGF
	8O6weUNCSISNaJnAfgjcVswuLGsS7PPUMjqOD58RDhNScuajKwzYKEL7DYV6okvAEdAy3+zYVzU
	b7/8Ruu6kUymvOh9Zxp1fFCZSn2GrJnpL8fELS20ZJlCZzFbDKHQHpDHcdZciFeHUCbWXOqaZ1Z
	PSApV94=
X-Received: by 2002:a17:907:94d3:b0:b93:514c:b420 with SMTP id
 a640c23a62f3a-b942d06f5a0mr62179866b.13.1772777588346; Thu, 05 Mar 2026
 22:13:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772714348.git.zhoubinbin@loongson.cn> <8b8dbdc580fd2e2ebf1d5990e55e4a50db1b253a.1772714348.git.zhoubinbin@loongson.cn>
 <CAHp75VfmupH=dE=L3+vboo7D9DDEMvU-Hwy6HwuVFsg1iB7hcw@mail.gmail.com>
In-Reply-To: <CAHp75VfmupH=dE=L3+vboo7D9DDEMvU-Hwy6HwuVFsg1iB7hcw@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 6 Mar 2026 14:12:54 +0800
X-Gm-Features: AaiRm50an37wagGCXboOs8Vds_uSmaHBQQtCYdqmiBRo3BO64gJxH74nqdBEb8c
Message-ID: <CAMpQs4KC42_2HwSnW7gDZm+vZv0H6eO0eV4=1ooY1Kx3yeRzXQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 23E7A21BF76
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
	TAGGED_FROM(0.00)[bounces-271829-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,loongson.cn:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi Andy:

Thanks for your continued review of the patch.

On Thu, Mar 5, 2026 at 9:52=E2=80=AFPM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Thu, Mar 5, 2026 at 2:57=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.c=
n> wrote:
> >
> > This I2C module is integrated into the Loongson-2K0300 SoCs.
> >
> > It provides multi-master functionality and controls all I2C bus-specifi=
c
> > timing, protocols, arbitration, and timing. It supports both standard
> > and fast modes.
>
> ...
>
> > +#include <linux/bitfield.h>
> > +#include <linux/bits.h>
> > +#include <linux/clk.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/i2c.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/property.h>
> > +#include <linux/regmap.h>
>
> + time.h // for USEC_PER_* et alia.
>
> > +#include <linux/types.h>
> > +#include <linux/units.h>
>
> ...
>
> > +/**
> > + * struct loongson2_i2c_priv - private data of the controller
> > + * @adapter: I2C adapter for this controller
> > + * @complete: completion of I2C message
> > + * @clk: hw i2c clock
> > + * @regmap: regmap of the I2C device
> > + * @parent_rate: I2C clock parent rate in MHz
> > + * @msg: I2C transfer information
> > + */
> > +struct loongson2_i2c_priv {
> > +       struct i2c_adapter              adapter;
> > +       struct completion               complete;
> > +       struct clk                      *clk;
> > +       struct regmap                   *regmap;
> > +       unsigned long                   parent_rate;
>
> it's better to keep units in the variable name
>
>        unsigned long                   parent_rate_MHz;
>
> // yes, it's fine to spell the unit suffix as it's in physics.
>
> > +       struct loongson2_i2c_msg        msg;
> > +};
>
> ...
>
> > +static void loongson2_i2c_handle_rx_done(struct loongson2_i2c_priv *pr=
iv)
> > +{
> > +       struct loongson2_i2c_msg *msg =3D &priv->msg;
>
> > +       u32 i;
>
> Not needed to be here (see below how).
>
> > +       switch (msg->count) {
> > +       case 2:
> > +               /*
> > +                * The STOP/START bit has to be set before reading the =
last two bytes.
> > +                * After that, we could read the last two bytes.
> > +                */
> > +               regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOO=
NGSON2_I2C_CR1_OP_MASK,
> > +                                  msg->stop ? LOONGSON2_I2C_CR1_STOP :=
 LOONGSON2_I2C_CR1_START);
>
> > +               for (i =3D 2; i > 0; i--)
> > +                       loongson2_i2c_read_msg(priv);
>
> First of all, in another case the type of iterator is unsigned int.
> Second, this iterator is not used outside of the for-loop, third, the
> upper limit is already known, no need to use magic, hence
>
>                for (unsigned int i =3D 0; i < msg->count; i++)

Here, we read the last two bytes. In `loongson2_i2c_read_msg()`,
`msg->count` is decremented, so the loop condition here should be:

                     for (unsigned int i =3D msg->count; i > 0; i--)

Also, I will address all other comments in the next version.
>
> > +               loongson2_i2c_disable_irq(priv);
> > +
> > +               complete(&priv->complete);
> > +               break;
> > +       case 3:
> > +               /*
> > +                * In order to generate the NACK after the last receive=
d data byte, enable NACK
> > +                * before reading N-2 data
> > +                */
> > +               regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOO=
NGSON2_I2C_CR1_ACK, 0);
> > +               loongson2_i2c_read_msg(priv);
> > +               break;
> > +       default:
> > +               loongson2_i2c_read_msg(priv);
> > +               break;
> > +       }
> > +}
>
> ...
>
> > +static int loongson2_i2c_xfer(struct i2c_adapter *i2c_adap, struct i2c=
_msg msgs[], int num)
> > +{
> > +       struct loongson2_i2c_priv *priv =3D i2c_get_adapdata(i2c_adap);
> > +       struct device *dev =3D priv->adapter.dev.parent;
> > +       unsigned int i, status;
> > +       int ret;
> > +
> > +       /* Wait I2C bus free */
> > +       ret =3D regmap_read_poll_timeout(priv->regmap, LOONGSON2_I2C_SR=
2, status,
> > +                                      !(status & LOONGSON2_I2C_SR2_BUS=
Y),
> > +                                      LOONGSON2_I2C_FREE_SLEEP_US,
> > +                                      LOONGSON2_I2C_FREE_TIMEOUT_US);
> > +       if (ret) {
> > +               dev_dbg(dev, "The I2C bus is busy now.\n");
> > +               return ret;
> > +       }
> > +
> > +       /* Start generation */
> > +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONGSON2_I=
2C_CR1_START,
> > +                          LOONGSON2_I2C_CR1_START);
>
> > +       for (i =3D 0; i < num; i++) {
>
>        for (unsigned int i =3D 0; i < num; i++) {
>
> > +               ret =3D loongson2_i2c_xfer_msg(priv, &msgs[i], i =3D=3D=
 num - 1);
> > +               if (ret < 0)
> > +                       return ret;
> > +       }
> > +
> > +       return num;
> > +}
>
> ...
>
> > +static int loongson2_i2c_adjust_bus_speed(struct loongson2_i2c_priv *p=
riv)
> > +{
> > +       struct device *dev =3D priv->adapter.dev.parent;
> > +       struct i2c_timings i2c_t;
> > +       u32 val, freq_mhz, ccr;
>
> freq_MHz
> (or at least make the parent_rate and this one consistent with the
> suffixes in use)
>
> > +       i2c_parse_fw_timings(dev, &i2c_t, true);
> > +       priv->parent_rate =3D clk_get_rate(priv->clk);
> > +
> > +       if (i2c_t.bus_freq_hz =3D=3D I2C_MAX_STANDARD_MODE_FREQ) {
> > +                /* Select Standard mode */
> > +               ccr =3D 0;
> > +               val =3D DIV_ROUND_UP(priv->parent_rate, i2c_t.bus_freq_=
hz * 2);
> > +       } else if (i2c_t.bus_freq_hz =3D=3D I2C_MAX_FAST_MODE_FREQ) {
> > +               /* Select Fast mode */
> > +               ccr =3D LOONGSON2_I2C_CCR_FS;
> > +               val =3D DIV_ROUND_UP(priv->parent_rate, i2c_t.bus_freq_=
hz * 3);
> > +       } else {
>
> > +               dev_err(dev, "Unsupported speed (%uhz)\n", i2c_t.bus_fr=
eq_hz);
>
> hz --> Hz (in the message)
>
> > +               return -EINVAL;
> > +       }
>
> It seems part of the probe phase, so why not
>
>   return dev_err_probe(...);
>
> ?
>
> > +       FIELD_MODIFY(LOONGSON2_I2C_CCR_CCR, &ccr, val);
> > +       regmap_write(priv->regmap, LOONGSON2_I2C_CCR, ccr);
> > +
> > +       freq_mhz =3D DIV_ROUND_UP(priv->parent_rate, HZ_PER_MHZ);
> > +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR2, LOONGSON2_I=
2C_CR2_FREQ,
> > +                          FIELD_GET(LOONGSON2_I2C_CR2_FREQ, freq_mhz))=
;
> > +
> > +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_TRISE, LOONGSON2=
_I2C_TRISE_SCL,
> > +                          LOONGSON2_I2C_TRISE_SCL);
> > +
> > +       /* Enable I2C */
> > +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONGSON2_I=
2C_CR1_PE,
> > +                          LOONGSON2_I2C_CR1_PE);
> > +
> > +       return 0;
> > +}
>
> --
> With Best Regards,
> Andy Shevchenko

--=20
Thanks.
Binbin

