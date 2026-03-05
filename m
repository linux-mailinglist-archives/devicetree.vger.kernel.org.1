Return-Path: <devicetree+bounces-271586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKBuEo+KqWki+gAAu9opvQ
	(envelope-from <devicetree+bounces-271586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:52:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBA0212C57
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 27D33301DA6F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15EA3A4F3E;
	Thu,  5 Mar 2026 13:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hSjVAMBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F66F3876AF
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 13:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772718728; cv=pass; b=Wsj2fwVXH3C+AAc/rPBV3YMl7zldCyp9am2uxFgeIOmxWVtWNmNw9FXTKY5p0s4kzua4IJZAkQhViiMl4TdrkVC5MY/2PjzWoONqjTov3RLhYQuMN2gJpU2NeFeA1t0pEZRvnCgZRujxaIVMES9Qtck3lCF4t12RdqKlJEVBa1k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772718728; c=relaxed/simple;
	bh=7nQxQrQcVoedGHXekMdQmt0PnChsID8+XSzvyS0i5/g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f5vD3BL0Lii3GsrEou2xjTreZQ6gbZl4Ha3cOVIXde20bkwsWgmUdu8ZHFps+djabiikwyJ2KLYjmXGOy7am2Mi+EOsTdzDu+Y3cBTNGl2/vYzSRi58FeFdLNV5M7qs30ACI0dF6dZus0hRO9SfUMzlgo0R/rfaiwbpgWMEOaCA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hSjVAMBW; arc=pass smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b8f9568e074so1422334166b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 05:52:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772718725; cv=none;
        d=google.com; s=arc-20240605;
        b=NH32kYWNgrIyXXwjMe/TCa+1KtDZvu1cLpwgS8rl+iAZzF/hHVnmWFcJ6fGWc+vzFG
         UDOT2VtfUkIb2cJrBPWjQpEfdx7th4ExMNtJiTDP0gEJqMUQPrBOnxvYE4HFaf3LiTX8
         7NmIzcihEv54qOTK3CpHjFvQJgqlLa2GyCyXXRPOKd9xwFR2EKGTTlbBrkGz9b3ZGhIy
         CL7W5WRhZe8ifROlKUtjZzZWQSoMfq7cDp6OiVdUGLlXH90zMEnlAZeBIjb2xyJD5v6w
         AIQ+aHf8vDCu1XIUCIKBUqtar/udEYY6wtTWMdbdv+b9ZSX34h4YtNVYmo985K9iUQ6D
         B9rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NZyEoKNZ9+FBEZoQGrBgOEAt7Mvz4sJQ58VTFJSuB4U=;
        fh=oEmJ+4VU4+rZ0m3yruv3ZOvLucN/Dc24WLriSKWElyc=;
        b=H5WtKUgltge3SqWfRoxGGSlertqK29n94fgPQnxiQ1s1HL1VVjDlKbSDpb8xIvkcUg
         Qr0WdnSrgzgN46pWqQwkg8qxGszHl4A1ZaJkXF23WkPbawxuH+fzJQZ/Z5giAMhA2wOP
         mropZUtNx+3bjvEBi+KuTr3TjFH2oOXnc6PjfaKzerbN30FaLmzmcv6DrVq0wjpMBriq
         Wy1cyI6UwSesrh7lebQhvUtUjM3l4m9pO1xj8NVVg7T9pF7A6eXQw0J2M5VokALek8xp
         MG64Qngt3rfMkJUaOkXAv2A9+j3/Nqd+nLmd91nOzmhwi+OiEWUYQVnar2ybKExe+lgx
         o2Gw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772718725; x=1773323525; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZyEoKNZ9+FBEZoQGrBgOEAt7Mvz4sJQ58VTFJSuB4U=;
        b=hSjVAMBWOc8/UAqVDw4/hRqucAjcy6eFJ42n9K1tmsUUBpl1xj4LpzIbXaAgA6YmsC
         m6M9JTBtoztFy00IF6fW/Hse80sJmtS5wHFZ2iAWYUx2eXocXJfnCFpTPlMeDlH6KX2q
         CC1cHUmjrVXCn7r/nqwn4w1Yzge0H8JfKH1V+ESIsNx202V8kShQ2k7wZGKR6G7Him1u
         CPLvz/R5LPZEgMTGssqePxVGiMpYecnkU1ex8Qja6ckqohxH0bqdrEqT9JtWI6aRDIY7
         KceXUbWd4+U7nHIWD6SHlhNtRJ6Bl0lHxtMk7926d5ypEtN9scX/HzO8eUCl5gkhzZML
         4qXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772718725; x=1773323525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NZyEoKNZ9+FBEZoQGrBgOEAt7Mvz4sJQ58VTFJSuB4U=;
        b=W4pALecE25CKggpZCp8EHmrlljVKb1uCB1P5Iq+vWuoG8fAVzuym/dfXIRObiPirqj
         FmWTIHrDqVxRZzTNMuiHZCdOMrMInJ4PTzi8FWvfMLNtA9VaEjM/3zLAmRPgJ4CHCZ1F
         96n4UyQy4xc+vwnXsfga6EmLDKdJbi/trBZCoCLNebZqJEnf+k2kRiY/5duUaT755mb1
         XEiGUqsl4OjMc23sWifu/v+rPpG0IY9BJYqpoNOE9pR2PyicarPfxk6l2z2pvcgPrj29
         BEWCKoJnaD78Gi6BuYwT8Y5SJI99TJtvYZRt5DyeG68ieOW57cdfKRISecWwfzsbILDg
         1UuA==
X-Forwarded-Encrypted: i=1; AJvYcCX0RtKFgBZ1/S/jToKqCJPSpgJXBWgIUCMRZiLFXlR19Urv3IsGAtC8d7exKZmZ7hbCbFEvWQBe2FUF@vger.kernel.org
X-Gm-Message-State: AOJu0YytjHGjPvISpN0o4yC1VZkQPCWfxBZsckqac/zyda+mROi2hcPN
	vT8CpVrrXl23eBxlrCsrMT7yh10/8iBEjtoz5gkVTSqsYkRqZ4EI4MULgW6cwXl2/KRsaWs1+27
	Wd5O3g8JXHWIhdTsHIeAB/0BCdtPpgtw=
X-Gm-Gg: ATEYQzzvXj1pGUYFC6RExJqtG0D6r6DMkW/+RXcIZ5KqYxdCVoK2qoubL+HehoZGIHR
	8o5Tziy/DY1HZUNVwCR3WuOwHwoH8GcyO7PCdaAgfoXhMB+8d7KwdB9GQBlHJ85qaqPe4YSgzrc
	NYYNQ81pv7jxCDD+3mBABA+aId6rrMEfcNXrfudl7YXR4tSZnMdKJG1Uwv+IWHs7uG40sTXXKuk
	gVOFduEcrIvJD90E3puwTGfth7c6iB2+jvbRPe9UUoyscqQ3yAIzeODBLu14A2dn46zkWeRCLp3
	Ag9YsHoIttpUYR8NZ9c2+wYJUX0fwfJzrQ4dhhmtaz1Ulte9NWhRJqbtulPMcNnsldTLBcaCgrV
	TFsXbA6Q=
X-Received: by 2002:a17:907:3c8c:b0:b87:701d:341a with SMTP id
 a640c23a62f3a-b93f1372c8bmr367272966b.25.1772718725247; Thu, 05 Mar 2026
 05:52:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772714348.git.zhoubinbin@loongson.cn> <8b8dbdc580fd2e2ebf1d5990e55e4a50db1b253a.1772714348.git.zhoubinbin@loongson.cn>
In-Reply-To: <8b8dbdc580fd2e2ebf1d5990e55e4a50db1b253a.1772714348.git.zhoubinbin@loongson.cn>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 5 Mar 2026 15:51:27 +0200
X-Gm-Features: AaiRm51vh4mEPHUkSIfvf4ZLeVmD0p7aetq1ZB0tT3uMdF2f-JUBdgLw69Qz0Bg
Message-ID: <CAHp75VfmupH=dE=L3+vboo7D9DDEMvU-Hwy6HwuVFsg1iB7hcw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 4BBA0212C57
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271586-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,sang-engineering.com,vger.kernel.org,xen0n.name,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 2:57=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> This I2C module is integrated into the Loongson-2K0300 SoCs.
>
> It provides multi-master functionality and controls all I2C bus-specific
> timing, protocols, arbitration, and timing. It supports both standard
> and fast modes.

...

> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/i2c.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>

+ time.h // for USEC_PER_* et alia.

> +#include <linux/types.h>
> +#include <linux/units.h>

...

> +/**
> + * struct loongson2_i2c_priv - private data of the controller
> + * @adapter: I2C adapter for this controller
> + * @complete: completion of I2C message
> + * @clk: hw i2c clock
> + * @regmap: regmap of the I2C device
> + * @parent_rate: I2C clock parent rate in MHz
> + * @msg: I2C transfer information
> + */
> +struct loongson2_i2c_priv {
> +       struct i2c_adapter              adapter;
> +       struct completion               complete;
> +       struct clk                      *clk;
> +       struct regmap                   *regmap;
> +       unsigned long                   parent_rate;

it's better to keep units in the variable name

       unsigned long                   parent_rate_MHz;

// yes, it's fine to spell the unit suffix as it's in physics.

> +       struct loongson2_i2c_msg        msg;
> +};

...

> +static void loongson2_i2c_handle_rx_done(struct loongson2_i2c_priv *priv=
)
> +{
> +       struct loongson2_i2c_msg *msg =3D &priv->msg;

> +       u32 i;

Not needed to be here (see below how).

> +       switch (msg->count) {
> +       case 2:
> +               /*
> +                * The STOP/START bit has to be set before reading the la=
st two bytes.
> +                * After that, we could read the last two bytes.
> +                */
> +               regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONG=
SON2_I2C_CR1_OP_MASK,
> +                                  msg->stop ? LOONGSON2_I2C_CR1_STOP : L=
OONGSON2_I2C_CR1_START);

> +               for (i =3D 2; i > 0; i--)
> +                       loongson2_i2c_read_msg(priv);

First of all, in another case the type of iterator is unsigned int.
Second, this iterator is not used outside of the for-loop, third, the
upper limit is already known, no need to use magic, hence

               for (unsigned int i =3D 0; i < msg->count; i++)

> +               loongson2_i2c_disable_irq(priv);
> +
> +               complete(&priv->complete);
> +               break;
> +       case 3:
> +               /*
> +                * In order to generate the NACK after the last received =
data byte, enable NACK
> +                * before reading N-2 data
> +                */
> +               regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONG=
SON2_I2C_CR1_ACK, 0);
> +               loongson2_i2c_read_msg(priv);
> +               break;
> +       default:
> +               loongson2_i2c_read_msg(priv);
> +               break;
> +       }
> +}

...

> +static int loongson2_i2c_xfer(struct i2c_adapter *i2c_adap, struct i2c_m=
sg msgs[], int num)
> +{
> +       struct loongson2_i2c_priv *priv =3D i2c_get_adapdata(i2c_adap);
> +       struct device *dev =3D priv->adapter.dev.parent;
> +       unsigned int i, status;
> +       int ret;
> +
> +       /* Wait I2C bus free */
> +       ret =3D regmap_read_poll_timeout(priv->regmap, LOONGSON2_I2C_SR2,=
 status,
> +                                      !(status & LOONGSON2_I2C_SR2_BUSY)=
,
> +                                      LOONGSON2_I2C_FREE_SLEEP_US,
> +                                      LOONGSON2_I2C_FREE_TIMEOUT_US);
> +       if (ret) {
> +               dev_dbg(dev, "The I2C bus is busy now.\n");
> +               return ret;
> +       }
> +
> +       /* Start generation */
> +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONGSON2_I2C=
_CR1_START,
> +                          LOONGSON2_I2C_CR1_START);

> +       for (i =3D 0; i < num; i++) {

       for (unsigned int i =3D 0; i < num; i++) {

> +               ret =3D loongson2_i2c_xfer_msg(priv, &msgs[i], i =3D=3D n=
um - 1);
> +               if (ret < 0)
> +                       return ret;
> +       }
> +
> +       return num;
> +}

...

> +static int loongson2_i2c_adjust_bus_speed(struct loongson2_i2c_priv *pri=
v)
> +{
> +       struct device *dev =3D priv->adapter.dev.parent;
> +       struct i2c_timings i2c_t;
> +       u32 val, freq_mhz, ccr;

freq_MHz
(or at least make the parent_rate and this one consistent with the
suffixes in use)

> +       i2c_parse_fw_timings(dev, &i2c_t, true);
> +       priv->parent_rate =3D clk_get_rate(priv->clk);
> +
> +       if (i2c_t.bus_freq_hz =3D=3D I2C_MAX_STANDARD_MODE_FREQ) {
> +                /* Select Standard mode */
> +               ccr =3D 0;
> +               val =3D DIV_ROUND_UP(priv->parent_rate, i2c_t.bus_freq_hz=
 * 2);
> +       } else if (i2c_t.bus_freq_hz =3D=3D I2C_MAX_FAST_MODE_FREQ) {
> +               /* Select Fast mode */
> +               ccr =3D LOONGSON2_I2C_CCR_FS;
> +               val =3D DIV_ROUND_UP(priv->parent_rate, i2c_t.bus_freq_hz=
 * 3);
> +       } else {

> +               dev_err(dev, "Unsupported speed (%uhz)\n", i2c_t.bus_freq=
_hz);

hz --> Hz (in the message)

> +               return -EINVAL;
> +       }

It seems part of the probe phase, so why not

  return dev_err_probe(...);

?

> +       FIELD_MODIFY(LOONGSON2_I2C_CCR_CCR, &ccr, val);
> +       regmap_write(priv->regmap, LOONGSON2_I2C_CCR, ccr);
> +
> +       freq_mhz =3D DIV_ROUND_UP(priv->parent_rate, HZ_PER_MHZ);
> +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR2, LOONGSON2_I2C=
_CR2_FREQ,
> +                          FIELD_GET(LOONGSON2_I2C_CR2_FREQ, freq_mhz));
> +
> +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_TRISE, LOONGSON2_I=
2C_TRISE_SCL,
> +                          LOONGSON2_I2C_TRISE_SCL);
> +
> +       /* Enable I2C */
> +       regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONGSON2_I2C=
_CR1_PE,
> +                          LOONGSON2_I2C_CR1_PE);
> +
> +       return 0;
> +}

--=20
With Best Regards,
Andy Shevchenko

