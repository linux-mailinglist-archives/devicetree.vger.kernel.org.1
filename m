Return-Path: <devicetree+bounces-270387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBUpGhKopmk7SgAAu9opvQ
	(envelope-from <devicetree+bounces-270387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:21:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3F91EBC1F
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 618C030185E8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BBCA389452;
	Tue,  3 Mar 2026 09:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HBqTpAL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5826138C2D8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772529680; cv=pass; b=fvBcd6b5AKK2NF4ZWhwHMRWwpLAuYk5v85U7XnbciAY+WQhkYGOL0WkJMHZSzl7r0Hstk6DA+swgybKkb+VhXD8PcxWthccTXRUYcIwfsNjADP50Y542Hwf2QR4DzlLttt3Nx8WGkVFXaHXg9Y+2vuMZpuYrvflEoimGojAB7MQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772529680; c=relaxed/simple;
	bh=qUC4hlaUmuE3q9EP1O1YjY8UBnpLS5yfmPzZcVaubz0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WnrDf4DGpoihw0aGddZe8gNMeq4RpHk80R4s90wVE8v2gnFEsb/PslUXDZzbTidVd7k/5v2Xt09xCGw+syzCPoIfIvGVJbD5geSrKBmjfRVdiKKu0qIqu81QHnHtbZjcaqasbl9n6cTVPrrqxCdm8DsXiJCr/VlTjRehDO2paAo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HBqTpAL2; arc=pass smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-65fb991d7eeso7428770a12.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:21:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772529678; cv=none;
        d=google.com; s=arc-20240605;
        b=G3PbaLnnL/uLIK8zpx0go4tW72u8ZMUnff7A50LQnj8fXJut2kSKm5GSBSA+5cYcxY
         0Ka4Z+YKABgsbLw0ukeL8CB1Fi3bJV42iVXT4eQkfSe35V4BQvhJkZODKEBJ0R6+nZcM
         W3zBL2xZhp6NQAsv7fcvckwZCqSky2NJHlWW/9Q8WNnYbSjxnvB02BuRPN5Xx0O0J3zK
         Hwmshli+RYWoMOJG3eJfQMu0cY1+YRbMsz7RSzm1eUOyFryvcGtlLY37TUr0kKL3ROii
         8ggdyI3GCMnQX46q1k9qS6l36cR6SdE4w410qX+pVcEpcHGX/kyJRSUIRCyvAHDSDYOJ
         SsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=b+6M2KZPF5EI514CqHFmtrBWN6sT/McXIxVWsbPFXH8=;
        fh=MYQeXKdsuPxn0rM+uq1RuryVu74JUq5gOQTo77uHeK8=;
        b=SE/THep4TZ8pglRhq2yfB5kFsKq7vHakLiZXZ0R5pBHehmEVn17KMAPSC+MZtGuASi
         Ge0EwG2TEMQ7D5z8gesakU+YoHccOGUIgzFmCO40CqeMO7BIGRQO38vdgv1VdXASlvzv
         ERUrdrMRRZxXM97ANLQNSsQuTsGle2kns13obIMDNkMSsPU+K1NbE8sIuU76Lxd2TDXu
         9/r9Stg8uuHjsz2aQ1Ns9T5Xn7TxU7AaDB77ZgM/aYAAC9jQu4mTHpKmOjRJJFmbeK7s
         fdpEMgf8fOovLQ3/v/zYgyRxUC3Tn5NC50+7BgrzjlMt0jH7ZB11sqIc3uT7TvFd3rZN
         eNww==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772529678; x=1773134478; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+6M2KZPF5EI514CqHFmtrBWN6sT/McXIxVWsbPFXH8=;
        b=HBqTpAL27x9eCOEsq2i/Jfyo+vk+0RtMQZnYfyBH9Bi720ryCNk9ELjgI9vVQIaeQA
         QfAmlXbVuLz/ndtQNU/ZJi1vAiWiRKAYslO8CQ4R+vYGCCUPA70DS8TAcppRlyc37uOf
         Sih75loy/zCfDMyd09T2F5YoGi/GZ8Lwx55r7BNmhE+MmrE1kLrYhajw7O3bJCOEHsZp
         3NZnvzZjpP5b0qGCTORaXLk8RqKIl6rq3Cw3qop1U36BmzKxUkDcqrF7xFFIfvKN/ECW
         2KcIfsEFvW95WDQoeY/Y6Q53SBEarb1V9LgY9++pQEiDWwjnYNTJveOWDTwby8J0ZNVb
         uHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772529678; x=1773134478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b+6M2KZPF5EI514CqHFmtrBWN6sT/McXIxVWsbPFXH8=;
        b=cHn4vvy1vS9FQxUBz05i76VvTSrUzxCAMD4PHZCaHt0PlY6JpeD8b5bhg3kAWH4L0B
         aqcFE1U5WDm2ION+ySvbDxzD5XxaWfLmYwvFEKdlns2LKHmQGZSEM7oi1TGu0wDZi2N9
         io7VSK+xAzZwJ2va6exg4Yf+YPU/iSdGfjayQSVQ2l/4M6iavmTItUuMRJPeni6BYo7b
         X0HJONDSfT5LA7ByjLqcN4SszZnT17UZwBDCQKjR1QpCV5HZkgR5Cx/L59DaIj4XmsT+
         VxTZ/4mENwJqblHba8lrJb8RPmiaMEsUfNFnaLZr7pRESoDjnkPukk5DuLmuquE3Leju
         qR+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUrPEIKj2fpgPxiiZBOk8ERFFLMNjW/SUtqZQPCBacEw7aP8P2VwJxBhhs2uOfCoYPj3UFqUFyAFsCT@vger.kernel.org
X-Gm-Message-State: AOJu0YyrJs9RpX4rXTHTsx77wD9k0F6T6M7D+sxTGaU+p6hpQ6yZWVuW
	lx7amxYlN8GwRjHh/R/f4S7EF8R3HtPph8WhgDIUqIBgwbjC6T/SjN0x1S5bRKiotwqW9ulm/EF
	0Y8kbUJz4oLvtNgjNhuDOsjJwqtzhSUE=
X-Gm-Gg: ATEYQzxmlL56lQxNStp2C4zZaltDw23nPS1eEWOAA9u4UbZxArapjLYeGVDkl4YwGeu
	dI2ceFPjEG9eNP55vr5eE2o/QDXQVHzTFLYr2teu12JNkDaoIKbV6/PzmPxVcddFSA9KdPk8NbD
	rTt/lmAfqqdnvt5ZX7l/8nG3qinS4qrhXxC4poyBUwqcggOLERr8kqdcaY5++fr0jM207aACwU0
	QE53NedXx2Eo+mSiQujadytXc5aSo/fMpf5IbEeARy0i0CYdr9sdm9tjjP3U/iiGOe0ptaaA3bn
	ecMu2eQ=
X-Received: by 2002:a17:907:3d51:b0:b93:62dd:a4a4 with SMTP id
 a640c23a62f3a-b93765924famr1000653266b.51.1772529677321; Tue, 03 Mar 2026
 01:21:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772001073.git.zhoubinbin@loongson.cn> <27899156d9218ced7cb0679cad2b2f59f688bd99.1772001073.git.zhoubinbin@loongson.cn>
 <aZ7Jq5GTbROvcrJH@smile.fi.intel.com>
In-Reply-To: <aZ7Jq5GTbROvcrJH@smile.fi.intel.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 3 Mar 2026 17:21:05 +0800
X-Gm-Features: AaiRm53N21CC9RPmD2Ik9krhB2wBhnxwcc0xxmriyv_oPuqBCDKnV5p1bMyZQPI
Message-ID: <CAMpQs4J2NS23seuNWQOUeBxGF+=L=XZL9j478xc=bZx4x9v5Ww@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0E3F91EBC1F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270387-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,intel.com:email]
X-Rspamd-Action: no action

Hi Andy:

Sorry for the late reply.

On Wed, Feb 25, 2026 at 6:06=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Wed, Feb 25, 2026 at 03:34:44PM +0800, Binbin Zhou wrote:
> > This I2C module is integrated into the Loongson-2K0300 SoCs.
> >
> > It provides multi-master functionality and controls all I2C bus-specifi=
c
> > timing, protocols, arbitration, and timing. It supports both standard
> > and fast modes.
>
> ...
>
> > +struct loongson2_i2c_priv {
> > +     struct i2c_adapter              adapter;
> > +     struct completion               complete;
> > +     struct clk                      *clk;
> > +     struct regmap                   *regmap;
>
> > +     int                             speed;
> > +     int                             parent_rate;
>
> May any of these two be negative? The kernel doc says nothing about that.

It should be:

u32 speed;
unsigned long parent_rate;
>
> > +     struct loongson2_i2c_msg        msg;
> > +};
>
> ...
>
> > +static void loongson2_i2c_handle_read(struct loongson2_i2c_priv *priv,=
 int flag)
> > +{
> > +     struct loongson2_i2c_msg *msg =3D &priv->msg;
> > +     unsigned int i;
> > +     bool changed;
> > +
> > +     switch (msg->count) {
> > +     case 1:
> > +             /* only transmit 1 bytes condition */
> > +             loongson2_i2c_disable_irq(priv);
> > +             loongson2_i2c_read_msg(priv);
> > +             complete(&priv->complete);
> > +             break;
> > +     case 2:
> > +             if (flag !=3D 1) {
> > +                     /* ensure only transmit 2 bytes condition */
> > +                     regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR=
2,
> > +                                        LOONGSON2_I2C_CR2_ITBUFEN, 0);
> > +                     break;
> > +             }
> > +             regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONG=
SON2_I2C_CR1_OP_MASK,
> > +                                msg->stop ? LOONGSON2_I2C_CR1_STOP : L=
OONGSON2_I2C_CR1_START);
> > +
> > +             loongson2_i2c_disable_irq(priv);
> > +
> > +             for (i =3D msg->count; i > 0; i--)
> > +                     loongson2_i2c_read_msg(priv);
> > +
> > +             regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONG=
SON2_I2C_CR1_POS, 0);
> > +             complete(&priv->complete);
> > +             break;
> > +     case 3:
> > +             regmap_update_bits_check(priv->regmap, LOONGSON2_I2C_CR2,=
 LOONGSON2_I2C_CR2_ITBUFEN,
> > +                                      0, &changed);
> > +             if (changed)
> > +                     break;
> > +             regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONG=
SON2_I2C_CR1_ACK, 0);
> > +             fallthrough;
>
> Instead better to spell it explicitly:
>
>                 loongson2_i2c_read_msg(priv);
>                 break;
>
> > +     default:
> > +             loongson2_i2c_read_msg(priv);
>
> Missing break.
>
> > +     }
> > +}
>
> This also make me think for the possible optimisations.
> if regmap_updates_bit() in case 2 can be run after the completion,
> the case 1 with a parameter may be split to a helper.
>
> Also would be nice to have a comment why in case 3 we only read a single
> message.

This part might be a bit confusing. I'll try to restructure it, which
might make it clearer.

In `loongson2_i2c_isr_event()`, the read/write operations are divided
into three parts.

        /* TX empty */
        if ((event & LOONGSON2_I2C_SR1_TXE) && !(msg->addr & I2C_M_RD))
                loongson2_i2c_handle_write(priv);

        /* RX not empty */
        if ((event & LOONGSON2_I2C_SR1_RXNE) && (msg->addr & I2C_M_RD))
                loongson2_i2c_handle_read(priv);
//Handle FIFO empty interrupt in case of read, it is called when a new
data is received in data register

        /*
         * The BTF (Byte Transfer finished) event occurs
         */
        if (event & LOONGSON2_I2C_SR1_BTF) {
                if (msg->addr & I2C_M_RD)
                        loongson2_i2c_handle_rx_done(priv);
//Handle byte transfer finished interrupt in case of read
                else
                        loongson2_i2c_handle_write(priv);
        }


static void loongson2_i2c_handle_read(struct loongson2_i2c_priv *priv)
{
        struct loongson2_i2c_msg *msg =3D &priv->msg;

        switch (msg->count) {
        case 1:
                loongson2_i2c_disable_irq(priv);
                loongson2_i2c_read_msg(priv);
                complete(&priv->complete);
                break;
        case 2:
        case 3:
                /*
                 * For 2-byte/3-byte reception and for N-byte
reception with N > 3, we have to
                 * wait for byte transferred finished event before reading =
data.
                 * Just disable buffer interrupt in order to avoid
another system preemption due
                 * to RX not empty event.
                 */
                regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR2,
LOONGSON2_I2C_CR2_ITBUFEN, 0);
                break;
        default:
                /*
                 * For N byte reception with N > 3 we directly read
data register
                 * until N-2 data.
                 */
                loongson2_i2c_read_msg(priv);
                break;
        }
}

static void loongson2_i2c_handle_rx_done(struct loongson2_i2c_priv *priv)
{
        struct loongson2_i2c_msg *msg =3D &priv->msg;
        u32 i;

        switch (msg->count) {
        case 2:
                /*
                 * The STOP/START bit has to be set before reading the
last two bytes.
                 * After that, we could read the last two bytes.
                 */
                regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1,
LOONGSON2_I2C_CR1_OP_MASK,
                                   msg->stop ? LOONGSON2_I2C_CR1_STOP
: LOONGSON2_I2C_CR1_START);

                for (i =3D 2; i > 0; i--)
                        loongson2_i2c_read_msg(priv);

                loongson2_i2c_disable_irq(priv);
                complete(&priv->complete);
                break;
        case 3:
                /*
                 * In order to generate the NACK after the last
received data byte, enable NACK
                 * before reading N-2 data
                 */
                regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1,
LOONGSON2_I2C_CR1_ACK, 0);
                loongson2_i2c_read_msg(priv);
                break;
        default:
                loongson2_i2c_read_msg(priv);
                break;
        }
}

>
> ...
>
> > +static void loongson2_i2c_handle_write(struct loongson2_i2c_priv *priv=
)
> > +{
> > +     struct loongson2_i2c_msg *msg =3D &priv->msg;
> > +
> > +     if (msg->count) {
> > +             loongson2_i2c_write_msg(priv, *msg->buf++);
>
> > +             msg->count--;
> > +             if (!msg->count)
>
> Can be
>
>                 if (!--msg->count)
>
> but someone may find it difficult to correctly parse.
>
> > +                     regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR=
2,
> > +                                        LOONGSON2_I2C_CR2_ITBUFEN, 0);
> > +     } else {
> > +             loongson2_i2c_terminate_xfer(priv);
> > +     }
> > +}
>
> ...
>
> > +static int loongson2_i2c_adjust_bus_speed(struct loongson2_i2c_priv *p=
riv)
> > +{
> > +     u32 val, freq_mhz, ccr;
> > +
> > +     priv->parent_rate =3D clk_get_rate(priv->clk);
>
> > +     freq_mhz =3D DIV_ROUND_UP(priv->parent_rate, HZ_PER_MHZ);
>
> Usually the rule of thumb to put assignments close to its first user...

See blow.
>
> > +     if (priv->speed =3D=3D I2C_MAX_STANDARD_MODE_FREQ) {
> > +              /* Select Standard mode */
> > +             ccr =3D 0;
> > +             val =3D DIV_ROUND_UP(priv->parent_rate, I2C_MAX_STANDARD_=
MODE_FREQ * 2);
> > +     } else {
> > +             /* Select Fast mode */
> > +             ccr =3D LOONGSON2_I2C_CCR_FS;
> > +             val =3D DIV_ROUND_UP(priv->parent_rate, I2C_MAX_FAST_MODE=
_FREQ * 3);
> > +     }
> > +
> > +     FIELD_MODIFY(LOONGSON2_I2C_CCR_CCR, &ccr, val);
> > +     regmap_write(priv->regmap, LOONGSON2_I2C_CCR, ccr);
>
> ...somewhere here.
>
> > +     regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR2, LOONGSON2_I2C=
_CR2_FREQ,
> > +                        FIELD_GET(LOONGSON2_I2C_CR2_FREQ, freq_mhz));
> > +     regmap_update_bits(priv->regmap, LOONGSON2_I2C_TRISE, LOONGSON2_I=
2C_TRISE_SCL,
> > +                        LOONGSON2_I2C_TRISE_SCL);
> > +
> > +     /* Enable I2C */
> > +     regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1, LOONGSON2_I2C=
_CR1_PE,
> > +                        LOONGSON2_I2C_CR1_PE);
> > +
> > +     return 0;
> > +}
>
> ...
>
> > +     priv->speed =3D I2C_MAX_STANDARD_MODE_FREQ;
> > +     ret =3D device_property_read_u32(dev, "clock-frequency", &clk_rat=
e);
> > +     if (!ret && clk_rate >=3D I2C_MAX_FAST_MODE_FREQ)
> > +             priv->speed =3D I2C_MAX_FAST_MODE_FREQ;
>
> Please, use i2c_parse_fw_timings() instead of custom approach.

This section will be merged into `loongson2_i2c_adjust_bus_speed()`,
and `bus_freq_hz` will replace `priv->speed` as follows:

static int loongson2_i2c_adjust_bus_speed(struct loongson2_i2c_priv *priv)
{
        struct i2c_timings i2c_t;
        ....

        i2c_parse_fw_timings(dev, &i2c_t, true);
        priv->parent_rate =3D clk_get_rate(priv->clk);

        if (i2c_t.bus_freq_hz =3D=3D I2C_MAX_STANDARD_MODE_FREQ) {
                 /* Select Standard mode */
                ccr =3D 0;
                val =3D DIV_ROUND_UP(priv->parent_rate, i2c_t.bus_freq_hz *=
 2);
        } else if (i2c_t.bus_freq_hz =3D=3D I2C_MAX_FAST_MODE_FREQ) {
                /* Select Fast mode */
                ccr =3D LOONGSON2_I2C_CCR_FS;
                val =3D DIV_ROUND_UP(priv->parent_rate, i2c_t.bus_freq_hz *=
 3);
        } else {
                dev_err(dev, "Unsupported speed (%uhz)\n", i2c_t.bus_freq_h=
z);
                return -EINVAL;
        }

......
        freq_mhz =3D DIV_ROUND_UP(priv->parent_rate, HZ_PER_MHZ);
        regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR2,
LOONGSON2_I2C_CR2_FREQ,
                           FIELD_GET(LOONGSON2_I2C_CR2_FREQ, freq_mhz));
.............

        return 0;
}

>
> --
> With Best Regards,
> Andy Shevchenko
>
>

--
Thanks.
Binbin

