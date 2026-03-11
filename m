Return-Path: <devicetree+bounces-273970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFl8LZg2sWmesgIAu9opvQ
	(envelope-from <devicetree+bounces-273970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:32:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB6C2608C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A3C0B305DA19
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6770E3D7D7B;
	Wed, 11 Mar 2026 09:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="C6aa4ykV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9763D7D6C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773220963; cv=pass; b=fm/AfUQ3Rpv3c2UhiKCZPcyKAiQ+UR+kWqJDN5UBgQc+ODRmlG/GZh7atfeJI0IA0bBue1cm7YJg+eXaWvJA9+l7NaewfYOC3xCVJMbtznMkRkGmGJ7Go0IbfxUGfoUwTKa50NWD3uQBZ0VLst0KBLH9UJ3C43mm9jRtiWZqBIo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773220963; c=relaxed/simple;
	bh=zBx9gnNsB9NSi+9Ij72hy3OCPS2lsLev1LAk6e7qJ5A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fjSyTkjV+A3nBpT59tpWxOfONfyxLjYEFmLwAqWc4rWkROLGS1YGizSrwEf1ZzqjBW+uV5x9ocOd8YywG3YDd1QUJbH2syNQg+ZtZTr1qcEvLTo9rvBTaIx1HDUEn/av4Ow6HrzUbtJCKycnUv39izpJQ8QhZ5AQt4psjKA/3jk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=C6aa4ykV; arc=pass smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-662a1855af2so4596491a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773220958; cv=none;
        d=google.com; s=arc-20240605;
        b=Cp9SX4l/JTYPLUgI8wz+3z4Ge/chHrGC22M4PgP0AhQP9uizXrePTyMZxjvlEMnYK+
         Ok5cyIRF4pRZuiqm+1VomE3pVNDYYj90XS7ujbQkbjXg692jQzLTKBiqwWHp/n8KVH64
         ZKJklJ5sO7Ln2bPcm5l8QJS01A2iPpQtRULFTKe9kvWGGweyyj9Tw1KXc/pzVPGZkV9b
         iGNUUtjNmWv21giKL9LFmFLxGPjf2ABd9GpKYrOmYJQmJQhvGa/lseM3eUSIla+c7UVl
         E5UD6UmW54TdOBVrmXtM5V8FwkbG2PTF0H2eqWmEX5lbHsbR6OX8NFvQjev4WyC7uQqD
         iLCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=klh9S7GuSCGDLDo0zlg3/zkjEOQHM6MtHgF3cZ88Urs=;
        fh=2iGMekOxBqBQT6uGHKDXmnlo9lcHoDAqyWAWRMOYIMg=;
        b=AxX7HT+X2apKoHzC7dgeYP85ao5fY7q+FOIT7LGMOKwyYYe+OHgVN6Ai8R+Nce7THi
         ZhLdj3X35btqerd6NkdqGuAp6urxNHf0Gtuq+eIVs9KyDdTyRqS0Kg4oKqJjASRbbG2o
         ManJvlqnzkx3vtpLa0lLb05T/BCBMaFAiza/ByEnTbZw2Cj3PhfiBtO1MA7eeW5ztZK8
         6jAu+n3Dg7YRA/Q+NhO1CoFd6AcPmoBm/17tzmyU++7S545cMAr81vqDm4B8bYvAGK6p
         EMDm7F2u4tcI/VN1jVwiwfSBY119rNPIAe2rPfn17tR9WwESheUWm/yKJXiSz27eTDhY
         LoCA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773220958; x=1773825758; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klh9S7GuSCGDLDo0zlg3/zkjEOQHM6MtHgF3cZ88Urs=;
        b=C6aa4ykVBB6xrUlkPOYyxPz5ylZ9amf7QAsy934xq8GlkXoml8fXvFvc7FRDF6kl1N
         VrmAOhmYYNu7wIVWumwE2Zsj/nRajokIf/+Aai1M3pYWY0KM7aJu6iMiB3+ipq1jrqyq
         M+C6ySgYoo+nvFd/NrEelM3x05Y95ZY48fip192Thf1RsFSVkWBCjMoXFEMIraRZaz18
         yUFJuHIooQm+dd1HVcuBZIZl9sVtNsRMKKewsUtAom15GeKSMZDcNiuPxAvPH6gp2aJ1
         TMs3PCVU79UtBv8BIP3FdCoS4T7XlWmwPNO6OFIwdEDP/ST5sVFocg5PwPytlMnttRzR
         wcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773220958; x=1773825758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=klh9S7GuSCGDLDo0zlg3/zkjEOQHM6MtHgF3cZ88Urs=;
        b=fQkCCC6fJjdELoE28uIUbjomqYgSvymps8iykVZidQbEz4o5HVWfQzDOp7Km7UrUJ8
         aUvYtsQ2S/hruaQJRTJ62c02TOTO71SCzQbvKUM9uhEzS1zrsXzsNSfEkYsYv8PY34AK
         exFCFiK6cR/pTgpJGaoN5SK/1mmddfz+PRIFd7Di85KhC/5tZ9QVm3On8D5a9wTIvoa6
         EDgtG9WuPxVgggd3cJVrimphLpstyKdXfjqHASqaMOX4NFgHx8mAMcLHKBMQzS+XHvjk
         jsyZi77ZJj2/CerxLYKubokDKXsunbfs0eCHlfpUZasv2QJRKY5etQP/PPLM+kicJc8B
         56OQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWkvvF05/LuPz4Cts/RMn3enC/fABYK4xS1NnkZ8xzeMnvJAVIWaNT37/XiSJUeaHNWLo/b7rk2pjP@vger.kernel.org
X-Gm-Message-State: AOJu0YyGNbEErgQAEYv2VDlghwSQgdT9LfGrKKICITwRQaEsp7pmeN4c
	RVLqj3ohZvfKsXS5rn7xbW/d4xOLrO4zubXCb4w6naI2pItvq6SUhF51OJI6cXLJMalhBqMcYUR
	M0DXzgpF1Anh6uHR3w28xfBs1q84xzpnErtAIF4R4GAOPIC47ayR4
X-Gm-Gg: ATEYQzxdn3IP4hnhadq+SHjK08GXHE1EzIlhEJDd7nBJ05hNZnDfGwU9fwHFizhYA5O
	Ll4QFTrOVH+YmNd+h6axPBrvYxv5ooDInYX+Exgc+9+4YKeX5+GcT5vpImSynlVEEU8yWm3P+HH
	lQ9IdjcIS6xXJQ8FYlkOF5v/AeaVGe1+qjjIq/mT7rMQcpsqmIeAlp1+37dBOo03+Y1aq0dBshS
	5F2DEuIln55n3U2fxbAfyrq3TE+NCexo8QazACzBYLPQuNm3HDjd86XwRyWkDEsiYwIYMO31JQ1
	vlb2/P8yaMwjvCNrlA==
X-Received: by 2002:a17:907:1b28:b0:b96:eb7e:bc3b with SMTP id
 a640c23a62f3a-b972e530602mr92994266b.49.1773220957598; Wed, 11 Mar 2026
 02:22:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
 <20260310-bq25792-v3-11-02f8e232d63b@flipper.net> <abEpAs5O1a3HqFTJ@venus>
In-Reply-To: <abEpAs5O1a3HqFTJ@venus>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 13:22:29 +0400
X-Gm-Features: AaiRm51i3wtRA2Tj_AVQFWiCPVOfdWRpC8ahXTfenbFGXvMip4nTXSyf9FEPXiM
Message-ID: <CAKTNdwEJei8duZAJDK6w=bJemnDbnnWAh5v7ZmqtSzUQVfUSSg@mail.gmail.com>
Subject: Re: [PATCH v3 11/11] power: supply: bq257xx: Add support for BQ25792
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 2BB6C2608C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,hotmail.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-273970-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,collabora.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 12:52=E2=80=AFPM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hello Alexey,
>
> On Tue, Mar 10, 2026 at 01:28:35PM +0400, Alexey Charkov wrote:
> > Add support for TI BQ25792 integrated battery charger and buck-boost
> > converter.
> >
> > It shares high-level logic of operation with the already supported
> > BQ25703A, but has a different register map, bit definitions and some of
> > the lower-level hardware states.
> >
> > Tested-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  drivers/power/supply/bq257xx_charger.c | 492 +++++++++++++++++++++++++=
+++++++-
> >  include/linux/mfd/bq257xx.h            |   6 +-
> >  2 files changed, 493 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/sup=
ply/bq257xx_charger.c
> > index 951abd035fc5..0bbb0a8b5f55 100644
> > --- a/drivers/power/supply/bq257xx_charger.c
> > +++ b/drivers/power/supply/bq257xx_charger.c
> > @@ -5,6 +5,7 @@
> >   */
> >
> >  #include <linux/bitfield.h>
> > +#include <linux/byteorder/generic.h>
> >  #include <linux/i2c.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/mfd/bq257xx.h>
> > @@ -18,12 +19,19 @@ struct bq257xx_chg;
> >
> >  /**
> >   * struct bq257xx_chip_info - chip specific routines
> > + * @default_iindpm_uA: default input current limit in microamps
> >   * @bq257xx_hw_init: init function for hw
> >   * @bq257xx_hw_shutdown: shutdown function for hw
> >   * @bq257xx_get_state: get and update state of hardware
> > + * @bq257xx_get_ichg: get maximum charge current (in uA)
> >   * @bq257xx_set_ichg: set maximum charge current (in uA)
> > + * @bq257xx_get_vbatreg: get maximum charge voltage (in uV)
> >   * @bq257xx_set_vbatreg: set maximum charge voltage (in uV)
> > + * @bq257xx_get_iindpm: get maximum input current (in uA)
> >   * @bq257xx_set_iindpm: set maximum input current (in uA)
> > + * @bq257xx_get_cur: get battery current from ADC (in uA)
> > + * @bq257xx_get_vbat: get battery voltage from ADC (in uV)
> > + * @bq257xx_get_min_vsys: get minimum system voltage (in uV)
> >   */
> >  struct bq257xx_chip_info {
> >       int default_iindpm_uA;
> > @@ -47,8 +55,10 @@ struct bq257xx_chip_info {
> >   * @bq: parent MFD device
> >   * @charger: power supply device
> >   * @online: charger input is present
> > + * @charging: charger is actively charging the battery
> >   * @fast_charge: charger is in fast charge mode
> >   * @pre_charge: charger is in pre-charge mode
> > + * @overvoltage: overvoltage fault detected
> >   * @ov_fault: charger reports over voltage fault
> >   * @batoc_fault: charger reports battery over current fault
> >   * @oc_fault: charger reports over current fault
> > @@ -79,6 +89,53 @@ struct bq257xx_chg {
> >       u32 vsys_min;
> >  };
>
> The above belong into the previous patches that actually added the
> fields to the structs :)

Fair enough, will move it there. Thanks for spotting!

> > + * bq25792_read16() - Read a 16-bit value from device register
> > + * @pdata: driver platform data
> > + * @reg: register address to read from
> > + * @val: pointer to store the register value
> > + *
> > + * Read a 16-bit big-endian value from the BQ25792 device via regmap
> > + * and convert to CPU byte order.
> > + *
> > + * Return: Returns 0 on success or error on failure to read.
> > + */
> > +static int bq25792_read16(struct bq257xx_chg *pdata, unsigned int reg,=
 u16 *val)
> > +{
> > +     __be16 regval;
> > +     int ret;
> > +
> > +     ret =3D regmap_raw_read(pdata->bq->regmap, reg, &regval, sizeof(r=
egval));
> > +     if (ret)
> > +             return ret;
> > +
> > +     *val =3D be16_to_cpu(regval);
> > +     return 0;
> > +}
> > +
> > +/**
> > + * bq25792_write16() - Write a 16-bit value to device register
> > + * @pdata: driver platform data
> > + * @reg: register address to write to
> > + * @val: 16-bit value to write in CPU byte order
> > + *
> > + * Convert the value to big-endian and write a 16-bit value to the
> > + * BQ25792 device via regmap.
> > + *
> > + * Return: Returns 0 on success or error on failure to write.
> > + */
> > +static int bq25792_write16(struct bq257xx_chg *pdata, unsigned int reg=
, u16 val)
> > +{
> > +     __be16 regval =3D cpu_to_be16(val);
> > +     int ret;
> > +
> > +     ret =3D regmap_raw_write(pdata->bq->regmap, reg, &regval, sizeof(=
regval));
> > +     if (ret)
> > +             return ret;
> > +
> > +     return 0;
> > +}
>
> Are there big _and_ little endian registers on the bq25792? Otherwise I
> would expect this to be done by properly configuring regmap.

Oh it's such a pain actually. Most of its registers are 8-bit, but
select few are 16-bit big endian. So if one tries to configure the
regmap for 16-bit big-endian, it incorrectly accesses the 8-bit ones,
as the least significant byte is then not at the right address (and it
also spoils unrelated registers at write). Setting big endian with
8-bit registers in the regmap doesn't make much sense as there is no
endianness with bytes. So I ended up setting the regmap to 8-bit
registers without any endianness flags, and dealing with the
big-endian 16-bit ones manually as above.

If there is a more elegant way to do that please let me know, because
I'm not a fan of that manual endianness trickery myself.

Thanks a lot,
Alexey

