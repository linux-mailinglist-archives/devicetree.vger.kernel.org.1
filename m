Return-Path: <devicetree+bounces-261659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDdCOrNGgGkE5gIAu9opvQ
	(envelope-from <devicetree+bounces-261659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:39:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46403C8E19
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D06693003637
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEFB2FE042;
	Mon,  2 Feb 2026 06:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DzBAgR2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F09D2F6188
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770014384; cv=pass; b=UrfrdnA5nGxrHAZtn3CeCCeIwSJJ8aeaNJcYzw7CphfiuncpF62+Q2Mn/c3DInRNbAm/HbuloJksfo5haLQfU3bsn8qDjGhUqGNUYf22NWkNu1Et5dj2FQMWetj2GfBSxEf572PJz9zO5puv/IOMXbmaWzohaJ+o/kBJKcTnsrs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770014384; c=relaxed/simple;
	bh=kkuvM7CJppS0pU/h0KzKixJfh04HhSPTu3S4mwLZ9mM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M9lXv63E7cBr/GLZVHPwg9THeBCTbMeRDXU4UISUjNaOtSJbh0mf/5OtRC5xvZDVxZxVDPA33uV0dTuM3xlRNrlJxcEj4JOhuwkzzjZJFEJ+rhXnYTk5vqpL0FaZ+9Lf+xZ+4eh3HHm9RQ1ui5gT6lRyqRp7U3eJaKXEduyNg3U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DzBAgR2t; arc=pass smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-658f1fde4bfso2702458a12.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:39:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770014381; cv=none;
        d=google.com; s=arc-20240605;
        b=BZPLtvIylOf/h0ZK9gBqoQ40OmMfn2ZQCTYxsDtEFV2AQld4YXxkUSDdtcmQVElpjQ
         W101LTsaFhLGqxmAULkuPsqijfQWRCepE//O0q2lwbBB+Z4yaAIxBTKs9QCszF7ZWF2T
         0b/oCAbHR1IlsFN1wjQFcsSbziSVq6uiXJ381qMlFc697EggnnjW4kH2J68idl/f7n4L
         xoNJcjWbv668DuPHacY8ckAR9X3DA/lNRUrYT8Z0sazzCYJ62AQkN4cWGhj3K+Her72A
         tGTtF7i3jtlqEm1FcGIFXmO7KuE8NCGj9gk4tdPqSpLWnEg9gcIn/MMaq7H+YEIpTG9l
         5xbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dE6334Db/8q+LVE4TPM0RlZCcc1UGZ7Evu81B8EwWuA=;
        fh=rnh4pazfm1ZSTa80JUxWmcC9EolQAgEnOn9VNLNzKCI=;
        b=Vyf74Y6Hq9jHCux1c7GRpaHbsvcl8vbMB7daWbSN/Sx3uIlCwAg9wJAxnzYoj/vatC
         IiKdMdud5n5isfG6RMpDQsaenxQeY4egGzouMkiltc7gfAb9YyDKCACWFaCMxvkyinBC
         fwXj7n2Hd00TAJa34A3s3BfRAWB5geT/15z61j44yuXg82TRDAZP9tXhUsWmZibsoNXZ
         EJPQs0KNJwMvoM8iB15zmhBfL9NelmPj0XG/WMv6QQmpjkm44mzThorY9ZHXndFl0I7R
         lgN7g/IX9++jvi9Wt3Oh/yTk78J7ydjSU7OIlZBHL/+dG7NMB4iCB3wwdomRnq/hk9Hd
         Ra4Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770014381; x=1770619181; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dE6334Db/8q+LVE4TPM0RlZCcc1UGZ7Evu81B8EwWuA=;
        b=DzBAgR2tgzZXVC6q3Q88dQsq2sRIyWcgn4PoPzfSf/vc10EgyFnB+yZ0pR4FniYOYD
         1lSipenITiWEhpEUMMWwnGoTfXy8mbPIuLfoKONRiOWcNVUZB+l7YSczZZL0KaHcd2qT
         JNu+uOAHbsXTQUTY+nGSXOmWIovw9pb8hDuLtANlWqiMhV4pxYsgZC9ZYnv9ZlRQ1M+U
         5Bhch9JdaXBkQtAzhOuLB0J4GCynStMeWD0mXxSAKv2aBeGdvv10/+hYVZaiDVr0KcWK
         eTfMBN9uQwk5oJTs8cssEEB5Tb3/T33+G2j7P+sY5Ikgh5iDBSZVPB7/hPPhNpCEBqEL
         VG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770014381; x=1770619181;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dE6334Db/8q+LVE4TPM0RlZCcc1UGZ7Evu81B8EwWuA=;
        b=HIrjUUaq9nqux0WA3Pljahi94C34ohUUJWQimWA7H98X6vCj5mi350G1gNcBerSNQP
         pQ8IM0d7F7fQZI+4wqcnIDUpET16TiwoAK/xbJqUfg1jv6j3Drm6HvDusu7S1I0tLKRN
         VJI43hoC2J+Yt+5qIq7pd5gDv/LwL2MwdLOPvOMLj5GHkiSq0OLfFnpSsceMY2K9vq2i
         upXmvcTbI8RSpNSM7wTaqYANG/xZPB37ioBd1omnoJ/TqOLWHw+woR01RtgpgXBFgJqf
         XPjU/13pBToTgI9gpp6EAgKm+mSSOINmkHoz14JqrFC9GHD3Ca9XPcKJtW+wOSgnK//V
         4knA==
X-Forwarded-Encrypted: i=1; AJvYcCWXEmzv8Y+eM4qUEGajh78cXCAnE6Fikxu7bXdn7K3jKZPBTaloUq70iq+dCVOLjd7V7Ns+mojRgxFc@vger.kernel.org
X-Gm-Message-State: AOJu0YwCwOrkZxIDAzmH8BGPchOVHUUEvsop4FTJuyCFqJmd1vc2IFFp
	f1PfADsbvKt9c4wyLA/B3LhohI2GpE2lUQa+HwU1MNN9OsJ802OtnyGa02ItI4645XqVQY2ZvNg
	LvGiRDOfeoCfKRzPY1GwaaBp+1+N0cUQ=
X-Gm-Gg: AZuq6aLMn+em+fz3SzXhaiFivvFsl+bcrNrZWkUxlY2Vwc/nzY48BoH+ar/pehxNAyD
	+dkp39+KxMEBOKy6bV5zJRFuN0AHpiLWd70F29R4q1KeXTLtuKkdlX6ZOq3S+Te4laJwrq3me3w
	0/zBZQlS+vXk9Ttk4sFFLAmt/SkAOiJ8yakEyXKtI9INXibvA0L924y3dSCs479Dw8RuHBHCehX
	QQ4VFwyiXPJAKREA/VARjHdUhgPNkK9Az9eR/RPB6ofobtXlmb+oGrxdWYAO5A/nBuomEg=
X-Received: by 2002:a17:906:2547:b0:b8e:380:5669 with SMTP id
 a640c23a62f3a-b8e03805c91mr453056266b.32.1770014381217; Sun, 01 Feb 2026
 22:39:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769476820.git.zhoubinbin@loongson.cn> <402121da829497fc97f1461c8aaa3a44252c3f06.1769476820.git.zhoubinbin@loongson.cn>
 <aXh000kBfaqd1G9H@smile.fi.intel.com> <CAMpQs4JTqWr6AqRwEO9bcno-_MjjE8GKm_kUvrpy7m_tLMtuSQ@mail.gmail.com>
 <aXtw9h8WUs5H9MgC@smile.fi.intel.com>
In-Reply-To: <aXtw9h8WUs5H9MgC@smile.fi.intel.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 2 Feb 2026 14:39:28 +0800
X-Gm-Features: AZwV_QhXj9tszc0HGFFue9c8RTPxI3-iEb6Mu4cCGgevEV_nbiL8J0mGuBe64dI
Message-ID: <CAMpQs4+Rk7-ERUetW_V4ojGxLtpzoX+hGgr7wV+0iQ8Uhdri4A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-261659-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 46403C8E19
X-Rspamd-Action: no action

Hi Andy:

Thanks for your patient reply.

On Thu, Jan 29, 2026 at 10:38=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Thu, Jan 29, 2026 at 04:07:06PM +0800, Binbin Zhou wrote:
> > On Tue, Jan 27, 2026 at 4:18=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@intel.com> wrote:
> > > On Tue, Jan 27, 2026 at 10:47:57AM +0800, Binbin Zhou wrote:
>
> ...
>
> > > > +/*
> > >
> > > It's not marked as kernel-doc, but looks very much like that. Why?
> > > Same Q for *all* cases like this.
> >
> > I didn't intend to mark it in kernel-doc; I just wanted to comment on
> > the variable.
> > Is removing the `@` symbol sufficient?
>
> But why? If you want it being properly documented, make sure it follows
> the regular format.

I sincerely apologize for not having read `kernel-doc.rst` earlier.
`kernel-doc` comments use `/**` as its opening marker. I will take
this time to learn the documentation.

>
> > > > + * struct loongson2_i2c_msg - client specific data
> > > > + * @addr: 8-bit slave addr, including r/w bit
> > > > + * @count: number of bytes to be transferred
> > > > + * @buf: data buffer
> > > > + * @stop: last I2C msg to be sent, i.e. STOP to be generated
> > > > + * @result: result of the transfer
> > > > + */
> > > > +struct loongson2_i2c_msg {
> > > > +     u8 addr;
> > > > +     u32 count;
> > > > +     u8 *buf;
> > > > +     bool stop;
> > > > +     int result;
> > >
> > > Run `pahole` and amend *all* data types accordingly.
> >
> >  Moving 'stop' from after 'buf' to after 'addr'.
> > >
> > > > +};
>
> ...
>
> > After run `pahole`, the structs are reorganized as follow:
> >
> > pahole --show_reorg_steps --reorganize --sort -C loongson2_i2c_priv
> > i2c-ls2x-v2.o
> > struct loongson2_i2c_priv {
> >         struct i2c_adapter         adapter
> > __attribute__((__aligned__(8))); /*     0  1064 */
> >         /* --- cacheline 16 boundary (1024 bytes) was 40 bytes ago ---
> > */
> >         struct clk *               clk;                  /*  1064
> > 8 */
> >         struct completion          complete;             /*  1072
> > 32 */
> >         /* --- cacheline 17 boundary (1088 bytes) was 16 bytes ago ---
> > */
> >         struct regmap *            regmap;               /*  1104
>
> It's better to keep pointers like clk and regmap next to each other.
> They are semantically coupled as "resources".
>
> > 8 */
> >         int                        speed;                /*  1112
> > 4 */
> >         int                        parent_rate;          /*  1116
> > 4 */
> >         struct loongson2_i2c_msg   msg;                  /*  1120
> > 24 */
> >
> >         /* XXX last struct has 4 bytes of padding */
> >
> >         /* size: 1144, cachelines: 18, members: 7 */
> >         /* paddings: 1, sum paddings: 4 */
> >         /* forced alignments: 1 */
> >         /* last cacheline: 56 bytes */
> > } __attribute__((__aligned__(8)));
>
> ...
>
> > pahole --show_reorg_steps --reorganize --sort -C loongson2_i2c_msg
> > i2c-ls2x-v2.o
> > struct loongson2_i2c_msg {
> >         u8                         addr;                 /*     0
> > 1 */
> >         bool                       stop;                 /*     1
> > 1 */
> >
> >         /* XXX 2 bytes hole, try to pack */
>
> >         u32                        count;                /*     4
> > 4 */
> >         u8 *                       buf;                  /*     8
> > 8 */
>
> Also think about it (don't blindly follow the `pahole` automatic mode).
> This is much better if you move the pointer to be the first, followed
> by a count, result, and others.
>
> >         int                        result;               /*    16
> > 4 */
> >
> >         /* size: 24, cachelines: 1, members: 5 */
> >         /* sum members: 18, holes: 1, sum holes: 2 */
> >         /* padding: 4 */
> >         /* last cacheline: 24 bytes */
> > };
>
> TL;DR: don't use `pahole` blindly. Use the common sense.
>

Sorry, I slacked off.
How about the organized data structure as follows:

struct loongson2_i2c_msg {
        u8      *buf;
        u32     count;
        int     result;
        u8      addr;
        bool    stop;
};

struct loongson2_i2c_priv {
        struct i2c_adapter              adapter;
        struct completion               complete;
        struct clk                      *clk;
        struct regmap                   *regmap;
        int                             speed;
        int                             parent_rate;
        struct loongson2_i2c_msg        msg;
};

> ...
>
> > > > +static int loongson2_i2c_wait_free_bus(struct loongson2_i2c_priv *=
priv)
> > > > +{
> > > > +     u32 status;
> > > > +     int ret;
> > > > +
> > > > +     ret =3D regmap_read_poll_timeout(priv->regmap, LOONGSON2_I2C_=
SR2, status,
> > > > +                                    !(status & LOONGSON2_I2C_SR2_B=
USY),
> > > > +                                    LOONGSON2_I2C_FREE_SLEEP_US,
> > > > +                                    LOONGSON2_I2C_FREE_TIMEOUT_US)=
;
> > > > +     if (ret) {
> > > > +             dev_dbg(priv->dev, "I2C bus free failed.\n");
> > >
> > > > +             ret =3D -EBUSY;
> > >
> > > Why?! What's wrong with the error code returned in ret?
> >
> > I want to indicate the bus busy state if it times out.
>
> This is not an answer. So, why do you remap error code. What's wrong with
> the callee's one?

I examined the existing callee and found no special checks for
`-EBUSY`. Using the return value of `regmap_read_poll_timeout()`
directly is the more appropriate choice.

Additionally, `loongson2_i2c_wait_free_bus()` is only called by
`loongson2_i2c_xfer()`. Its separate definition does not appear
essential. Calling `regmap_read_poll_timeout()` directly within
`loongson2_i2c_xfer()` seems more concise.

As follows:

static int loongson2_i2c_xfer(struct i2c_adapter *i2c_adap, struct
i2c_msg msgs[], int num)
{
............

        /* Wait I2C bus free */
        ret =3D regmap_read_poll_timeout(priv->regmap, LOONGSON2_I2C_SR2, s=
tatus,
                                       !(status & LOONGSON2_I2C_SR2_BUSY),
                                       LOONGSON2_I2C_FREE_SLEEP_US,
                                       LOONGSON2_I2C_FREE_TIMEOUT_US);
        if (ret) {
                dev_dbg(dev, "I2C bus free failed.\n");
                return ret;
        }

        /* Start generation */
        regmap_update_bits(priv->regmap, LOONGSON2_I2C_CR1,
LOONGSON2_I2C_CR1_START,
                           LOONGSON2_I2C_CR1_START);

.......

        return num;
}

>
> > > > +     }
> > > > +
> > > > +     return ret;
> > > > +}
>
> ...
>
> > > Ah, it seems it's a helper. Please, return the error code from it as =
int and
> > > not irqreturn_t, this will make things clearer.
> >
> > How about just define it as void:
> >
> > static void loongson2_i2c_isr_error(u32 status, void *data)
> > {
> > .........
> >         if (status & LOONGSON2_I2C_SR1_ARLO) {
> >          ........
> >                 msg->result =3D -EAGAIN;
> >                 goto out;
> >         }
> >         if (status & LOONGSON2_I2C_SR1_AF) {
> >            .......
> >                 msg->result =3D -EIO;
> >                 goto out;
> >         }
> >         if (status & LOONGSON2_I2C_SR1_BERR) {
> >          .........
> >                 msg->result =3D -EIO;
> >                 goto out;
> >         }
> >
> > out:
> >         loongson2_i2c_disable_irq(priv);
> >         complete(&priv->complete);
> > }
> >
> > and in loongson2_i2c_isr_event(), I reference it as:
> >
> >         if (status & LOONGSON2_I2C_SR1_ITERREN_MASK) {
> >                 loongson2_i2c_isr_error(status, data);
> >                 return IRQ_NONE;
> >         }
>
> > Its return value is meaningless for loongson2_i2c_isr_event().
>
> Works for me.
>
> ...
>
> > > > +     u32 possible_status =3D LOONGSON2_I2C_SR1_ITEVTEN_MASK;
> > >
> > > Split assignment...
>
> > > ...to be here, which improves readability (no need to go somewhere up=
 in
> > > the code to see what this is about.
> >
> > ok, I will put  `possible_status =3D LOONGSON2_I2C_SR1_ITEVTEN_MASK;` h=
ere.
> >
> > > > +     /* Update possible_status if buffer interrupt is enabled */
> > > > +     if (ien & LOONGSON2_I2C_CR2_ITBUFEN)
> > > > +             possible_status |=3D LOONGSON2_I2C_SR1_ITBUFEN_MASK;
>
> I expect something like this:
>
>                 /* Update possible_status if buffer interrupt is enabled =
*/
>                 possible_status =3D LOONGSON2_I2C_SR1_ITEVTEN_MASK;
>                 if (ien & LOONGSON2_I2C_CR2_ITBUFEN)
>                         possible_status |=3D LOONGSON2_I2C_SR1_ITBUFEN_MA=
SK;

ok...
>
> ...
>
> > > > +     strscpy(adap->name, pdev->name, sizeof(adap->name));
> > >
> > > 2-arguments version is even better.
> >
> > Sorry, I'm not quite sure what you mean by `2-arguments version.`
>
> Use 2 arguments instead of 3. I.o.w. just drop the third argument.

Ah, I see, the third argument is optional.

>
> --
> With Best Regards,
> Andy Shevchenko
>
>

--
Thanks.
Binbin

