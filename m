Return-Path: <devicetree+bounces-274048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEC/OO5YsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:58:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6E5263497
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07A99301C583
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12593DE445;
	Wed, 11 Mar 2026 11:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QvojUTFv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0C03C7DE6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230315; cv=none; b=pgS+S0iZDkf+epArGTT7Egb+BaHM2MnWnOtnQVrr4/JhrBtIviaFtKaMWOp9nzg5hX4C0kdq1XF06PGvs+TuIBB5wRnZSXJ+ShQjhjO/m+0qblcwtAurY/aGerv/O4u5wc8y3U2g/kpcSSLGNmXwxfMnygt5FHuT6tWiig1ejXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230315; c=relaxed/simple;
	bh=mcUVNnzpe3gSLeudat/9NanXNzDk3rC08yiK2QQcH8g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mZgPZT1zbQB2De6RDJOj2xbH9BtNl9eM1RuXx2fG9ZJxJcbaotrwy2M5TP5VMfhKRhB3ruzTRukxeeesZdFcfc/p4HzKoahOHUVGzVuEr7dffrfi47E47Rq5daZ/7VH2wt4ysnisTUjRiZeqpZX1ywGWVnSXk5e9zvDkWSG64Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QvojUTFv; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-89a018cbbf8so11579146d6.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773230313; x=1773835113; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Kzn6AZnRX682NhBNc83If833FpVW7jRXEbyOc+GAJ9E=;
        b=QvojUTFvQZ479hDVjlaWEl4GXrbgwQMHFr/QZx1DvYem+JuVOnvAhpQgVUrJa39fIO
         OBncVvxYKl3rYnrIrHgr+LYt5SIDT7B983E+sTIRIQF8ZsA8FUbxqgVzzqaPXJM1MUxJ
         fAs6/mX4vCo5wwMdBfudNU802YWgmhv63DbJcrag/FkHQjdnMHOw+tkyZruWBOLQeBNf
         MK9RkDPO9shwux7gUxAMuFi+l4nP0UtvnJTXN/HKeGNa9CMsSidJG9km6w4tC7hlhaqz
         Pfyk669nCQ86E443PPk8AUslfVzdVBSK6oVTogG3ClDKX1eamBBnC7DEhBCRqOBspZBk
         0SzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230313; x=1773835113;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kzn6AZnRX682NhBNc83If833FpVW7jRXEbyOc+GAJ9E=;
        b=MzmJcgghsg5qA5LRoP4xTtLyU6fuH0KMCHPryynlMglw20k/Wg0wddNtjYaMHwIgjn
         MLTaT+GdNt3eslVw8eiCLXx/DnO+e7gxrof/QTQP6qT0HwVSBtyS28v91+RtwFFJhT3B
         q03Sg5HF2xxGgrUjq2SV7nKMU950IwQ3c9Tu///lntnlPO8N5GjqdQ0JUOQELFb+GPGX
         dIWZwiDz1LISiON8CRhkBir30cUkay+0jKuzs4HhgNHKA0pmV6z3q4TNHMAq8l/ReKO3
         zBYCMoM7iMNfbvol9kHJfikLkWJ9QrmMlGQeqa37FoYJK1/79a1aIs0Pm/F9d2HW4f+r
         eKVg==
X-Forwarded-Encrypted: i=1; AJvYcCXJpy7RVtkmZ7jhPBMCh6d63FyCbnPWThMdfeeygcTENhonio/fZ9KtPf1kzGx0j9+rZhiPQyFLwHM6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Rez2/pjerSpXHXitLYzVADv7242P0ma09VW8phOpDttjvnLX
	wXT4Y5m1Iv3z/VfvfiQqyS5UyZsJEBV6NttlbnHnQTP+qwxed9ofPVCf
X-Gm-Gg: ATEYQzynsaFeM3SNEGLLrLsO0BXYh8AnIA2ojVgz7hCFIvip8m8TsfunQWfAvI5q+pd
	QErw6BO5C3iF39sTNZN2HjUKqVSaVWGvtXKNdSP9+g9V69zGHsgnX56pKbKKbBlqrIWD3TnyBLI
	j551q3ta0n2pkkGlZ2azcInmShErUYwzUEJ/saeGWIUciheTYL/u/lfun4ep36JFiuYJU6qdikh
	aa7K6w+5Le9dl0qvSc3kwX7R9jxmyviutbzqsefkKEs0lVglZRKqJDoVZouQBLBZVIO5kryxSHX
	UvUU01COAvf/aOFihOCJy+WDZHpZW6PUbb5ie/4JOcKNxot3eFDuUwWL4cb0+vsa7VQrD9BpgdO
	omCfpNUU3iMxTYomi3K5rVFT17YkHhcdwHVzacXJZ6f3vNb8TBqMRAi4/eWKJ9FIyFPVmX7OGHa
	hJzUbix4cld2G+T7a3e0KLcgp1YjHTPC0=
X-Received: by 2002:a05:6214:1946:b0:899:f495:1a17 with SMTP id 6a1803df08f44-89a57c3b5f2mr94078516d6.15.1773230313230;
        Wed, 11 Mar 2026 04:58:33 -0700 (PDT)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65cd7f49sm12612136d6.34.2026.03.11.04.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:58:32 -0700 (PDT)
Message-ID: <de45c101d1e54b5aaff94326708042f90e8aa74a.camel@gmail.com>
Subject: Re: [PATCH v2 5/5] iio: dac: ad5504: add optional GPIO control for
 CLR and LDAC
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>, lars@metafoo.de, 
	Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	skhan@linuxfoundation.org, me@brighamcampbell.com,
 linux-iio@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 11 Mar 2026 11:59:15 +0000
In-Reply-To: <20260310174835.24209-6-0rayn.dev@gmail.com>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
	 <20260310174835.24209-6-0rayn.dev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4E6E5263497
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274048-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,metafoo.de,analog.com,kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 2026-03-10 at 17:48 +0000, Taha Ed-Dafili wrote:
> Add support for the optional 'clear-gpios' and 'ldac-gpios' properties
> defined in the device tree bindings.
>=20
> Use devm_gpiod_get_optional() with GPIOD_OUT_LOW to ensure the pins are
> initialized to their inactive state.
>=20
> Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
> ---
> =C2=A0drivers/iio/dac/ad5504.c | 14 ++++++++++++++
> =C2=A01 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
> index cd563460fc0a..58538f5263fc 100644
> --- a/drivers/iio/dac/ad5504.c
> +++ b/drivers/iio/dac/ad5504.c
> @@ -7,7 +7,9 @@
> =C2=A0
> =C2=A0#include <linux/bits.h>
> =C2=A0#include <linux/device.h>
> +#include <linux/err.h>
> =C2=A0#include <linux/errno.h>
> +#include <linux/gpio/consumer.h>
> =C2=A0#include <linux/interrupt.h>
> =C2=A0#include <linux/kernel.h>
> =C2=A0#include <linux/mod_devicetable.h>
> @@ -48,6 +50,8 @@
> =C2=A0 * @vref_mv:		actual reference voltage used
> =C2=A0 * @pwr_down_mask:	power down mask
> =C2=A0 * @pwr_down_mode:	current power down mode
> + * @gpio_clear:	GPIO descriptor for the /CLR pin
> + * @gpio_ldac:		GPIO descriptor for the /LDAC pin
> =C2=A0 * @data:		transfer buffer
> =C2=A0 */
> =C2=A0struct ad5504_state {
> @@ -56,6 +60,8 @@ struct ad5504_state {
> =C2=A0	unsigned short			vref_mv;
> =C2=A0	unsigned			pwr_down_mask;
> =C2=A0	unsigned			pwr_down_mode;
> +	struct gpio_desc		*gpio_clear;
> +	struct gpio_desc		*gpio_ldac;
> =C2=A0
> =C2=A0	__be16				data[2] __aligned(IIO_DMA_MINALIGN);
> =C2=A0};
> @@ -299,6 +305,14 @@ static int ad5504_probe(struct spi_device *spi)
> =C2=A0	if (pdata && pdata->vref_mv)
> =C2=A0		st->vref_mv =3D pdata->vref_mv;
> =C2=A0
> +	st->gpio_clear =3D devm_gpiod_get_optional(dev, "clear", GPIOD_OUT_LOW)=
;
> +	if (IS_ERR(st->gpio_clear))
> +		return PTR_ERR(st->gpio_clear);
> +
> +	st->gpio_ldac =3D devm_gpiod_get_optional(dev, "ldac", GPIOD_OUT_LOW);
> +	if (IS_ERR(st->gpio_ldac))
> +		return PTR_ERR(st->gpio_ldac);
> +

Fine having the above in bindings but as it stands now, not seeing the purp=
ose of
having it in the driver. We're not handling these gpios at all.

- Nuno S=C3=A1
>=20

