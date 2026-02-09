Return-Path: <devicetree+bounces-264076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKcrE6EQimlrGAAAu9opvQ
	(envelope-from <devicetree+bounces-264076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:51:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDD0112ADE
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F5B23035259
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 16:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E1F3859D5;
	Mon,  9 Feb 2026 16:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CtyEMc4G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1BA3859CA
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 16:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770655586; cv=none; b=MKCW2ocxxlfqAYke3j0cvwibd4BsIHdvy1MMRl2O8HNvWnRldDkKw+mO/+IXl3BjJdXTeNkc7xq6vYOPTc/FKLCNe38binvf1wgtOT1wvfrr4fnL7bAjY8ggp/5fikIoxAF8/OxOO3EcySaq4NyNq2VYAG5t+Nobx2/scqQtWac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770655586; c=relaxed/simple;
	bh=CwohizHSnVaA2NNgNrCByNQlZ1oJaWWA0GxEuHaseKg=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ea5g4bI41N/5JrmC94h7aAixrChk0L0s5gDYSZAdVE2F4+OIUMHJ6jjWt8gCyUK9UAvDuRY+BVoS8HzNy5XDZb1v0GuS4nB4IAIK5hlHbW8GPGbpMJxIPnPq8Y9P4Z8puWlWV7I88lGt/o/c59LX4Dm5QiA9RS0ZldHja8cygC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CtyEMc4G; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-482f2599980so54238135e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770655584; x=1771260384; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lLb8ag3ra6IO++ksPTcs7qsE4fbhw6boR1CyaCV8y8M=;
        b=CtyEMc4GwyVBEzvrQEIciduy2i4+EtGAxYgjt3wFjCosVAoyBNl7oOKNDjIz9W3sT7
         84syF377CGo9ImIx2b9ZGlR0qZ/wIsbxCHqENnSUfjviyYRz6wb5nE7mgS3ZdafYH0hw
         b4D0E1IbYYVS8y9XAYyKMDuKhHAx/y6yYFL73FJbDPOZuXq0ztVG4OoG7zG+Lr8hOfa0
         iKubVufqn/GVW7UuRmuR5Ry+bJ0NyuZQnzgREWMmzepaNbBZV5zXGddC3+uzz7TVSOgc
         2ZTlXC+1EBoh1THLXy9T+l+m+w/102Mjkj6HfGrORZA2qt0FtOoTzaL/vifxxdBH2Fdv
         1IVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770655584; x=1771260384;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lLb8ag3ra6IO++ksPTcs7qsE4fbhw6boR1CyaCV8y8M=;
        b=AqAqWytZ2+tQrb7SPUBr+YBQ3z2ycysAdW24xjZBcAMBauzfzjfryeepfhEXW7lREw
         jJ1RiUFV//iSd8Gqin8qRtbg6NWcerAaPuOF6Lm7wlAW8yMMRGe1Or2uxoL4n+UeWryw
         GJeyjS6zfHcJqpufZ79dWoqgt1x3JRXAOmBK9YQpfym2cKibdz/Zs68vmC/pRfK9qyri
         pR8yPGbZbtJLtg+st2woWtDXJC6EoWenwFh/9tu7yCZsGjkgo50P57+LYmHpaWCsFj4+
         ZmitEm9pyf426lCZKqqYtBz17TaUysmb7wr9cyp4q2zt2pfJlt+2a19VeSbeHlHSiI84
         pujA==
X-Forwarded-Encrypted: i=1; AJvYcCW/vr6JDWvshKYvpy2RJZouRsLrUaDwL45ODUfjN9S6Fx/Ojhes96caOuPA2i1Z4e6lIkMG1WLUhg6m@vger.kernel.org
X-Gm-Message-State: AOJu0YxVWMT22ZuK1FBDFrpaB7mRqz86ti8yjslpLTY07Z0VlcDpoINF
	QBCrxrxtNfH6RXVBsljEnHMwM4wsnRmyqVNrqbdMvscOrlIyJznEeKPE
X-Gm-Gg: AZuq6aLhbL/Bja5uXm8PjCAiomx+7Q/erCwRohIwKy+ktBavgcw6A35lI4jcWplJctL
	CgoPEOtsrVCrP6tvwHNgePhJbLpPtVmxBvHVinZ5TIJoiKsj5QHy4bQ2BXKdIaDEaaVL5aRychZ
	aq3q7ZQMb93ivvPauLRDBJk5wODlcbtWKQX3VHT097K46i/PFmTunPFDEW2c/z3YIemF9IrGDKH
	3pr3JQDKDd8JJ5nVUaEXmCzf3OZSmm2m9KOYNkFCtQQRuiODTJSSsjUBjwatoPTbFO4cGJMuvGV
	d1Cca+69Lh60azHRvM5zxqRbrKIRuSzpkDBMYT6iLUIVLbYRiqOPPGA6FS8Nlj0JiZ6cnRuLZfo
	KlI8GZ3wpIXaUGySJajkRec4z+VXUYU3EqcglJwJwkTlUhQBRviCuXMTpVRcW5UJK6BfWCg02rb
	iWTnmetCmOuQWSLWlRW4PaO84qXi/8Byo=
X-Received: by 2002:a05:600c:45cb:b0:477:8985:4036 with SMTP id 5b1f17b1804b1-483201dd216mr157441135e9.1.1770655584079;
        Mon, 09 Feb 2026 08:46:24 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm1924275e9.1.2026.02.09.08.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 08:46:23 -0800 (PST)
Message-ID: <be8457799b32d420228df5e2841c5547023ec515.camel@gmail.com>
Subject: Re: [PATCH v2 2/4] iio: backend: add devm_iio_backend_get_by_index()
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: David Lechner <dlechner@baylibre.com>, Antoniu Miclaus	
 <antoniu.miclaus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley	 <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, Mark Brown	
 <broonie@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Mon, 09 Feb 2026 16:47:06 +0000
In-Reply-To: <becd9db1-818f-4aa8-8362-91a711861839@baylibre.com>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
	 <550323d752213f177b7673bdd42e667f1d2228cb.1770393792.git.antoniu.miclaus@analog.com>
	 <c731b6fba72286707821ea6e7722835ba45f089c.camel@gmail.com>
	 <becd9db1-818f-4aa8-8362-91a711861839@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264076-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: CCDD0112ADE
X-Rspamd-Action: no action

On Mon, 2026-02-09 at 09:28 -0600, David Lechner wrote:
> On 2/8/26 3:24 AM, Nuno S=C3=A1 wrote:
> > On Fri, 2026-02-06 at 18:07 +0200, Antoniu Miclaus wrote:
> > > Add a new function to get an IIO backend by its index in the
> > > io-backends device tree property. This is useful for multi-channel
> > > devices that have multiple backends, where looking up by index is
> > > more straightforward than using named backends.
> > >=20
> > > The new function directly uses the index to find the backend referenc=
e
> > > in the io-backends property, avoiding the need for io-backend-names.
> > >=20
> > > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> > > ---
> > > =C2=A0drivers/iio/industrialio-backend.c | 51 +++++++++++++++++++++++=
+++++++
> > > =C2=A0include/linux/iio/backend.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 2 ++
> > > =C2=A02 files changed, 53 insertions(+)
> > >=20
> > > diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industr=
ialio-
> > > backend.c
> > > index 447b694d6d5f..3b692d48481e 100644
> > > --- a/drivers/iio/industrialio-backend.c
> > > +++ b/drivers/iio/industrialio-backend.c
> > > @@ -1008,6 +1008,57 @@ struct iio_backend *devm_iio_backend_get(struc=
t device *dev,
> > > const char *name)
> > > =C2=A0}
> > > =C2=A0EXPORT_SYMBOL_NS_GPL(devm_iio_backend_get, "IIO_BACKEND");
> > > =C2=A0
> > > +static struct iio_backend *
> > > +__devm_iio_backend_fwnode_get_by_index(struct device *dev,
> > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct fwnode_handle *fwnod=
e,
> > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int index)
> > > +{
> > > +	struct fwnode_handle *fwnode_back;
> > > +	struct iio_backend *back;
> > > +	int ret;
> > > +
> > > +	fwnode_back =3D fwnode_find_reference(fwnode, "io-backends", index)=
;
> > > +	if (IS_ERR(fwnode_back))
> > > +		return dev_err_cast_probe(dev, fwnode_back,
> > > +					=C2=A0 "Cannot get Firmware reference\n");
> > > +
> > > +	guard(mutex)(&iio_back_lock);
> > > +	list_for_each_entry(back, &iio_back_list, entry) {
> > > +		if (!device_match_fwnode(back->dev, fwnode_back))
> > > +			continue;
> > > +
> > > +		fwnode_handle_put(fwnode_back);
> > > +		ret =3D __devm_iio_backend_get(dev, back);
> > > +		if (ret)
> > > +			return ERR_PTR(ret);
> > > +
> > > +		back->idx =3D index;
> > > +
> > > +		return back;
> > > +	}
> > > +
> > > +	fwnode_handle_put(fwnode_back);
> > > +	return ERR_PTR(-EPROBE_DEFER);
> > > +}
> >=20
> > I believe we don't necessarily need this. Why can't we use io-backend-n=
ames? I get
> > that in here we just want something matching the number of channels we =
have so giving
> > names is probably does not add much added value. But still, I would pre=
fer t have
> > more simplicity in the API and it should be fairly easy for the fronten=
d to use the
> > names argument.
> >=20
> > _ Nuno S=C3=A1
> >=20
>=20
> IMHO, using names in this case would just be annoying because we would ha=
ve to
> sprintf the string to add the index to the string. And also have to spend=
 time
> coming up with more complex DT bindings. Using the index seems much simpl=
er.
>=20
> If you really feel strongly about it though, maybe we could make a
> devm_iio_backend_fwnode_get_fmt() function instead that handles the
> sprintf() part so that we only have to write that once?
>=20

uHu? Maybe I'm completely missing your point but what I had in mind was jus=
t something like:=C2=A0


// from the frontend:

static const char * const names[] =3D { "adc1", "adc2" }

for (c =3D 0; c < ARRAY_SIZE(names); c++) {
	back =3D devm_iio_backend_get(dev, names[c]);
}

So yes, I agree we would have a bit more complex bindings and more complexi=
ty in the
frontend. But on the bright side, no need to change backend code at all. An=
d the
-names property is already used like the above fairly often If I'm not mist=
aken.

But again, I can agree that for this usecase getting things by index makes =
sense. Given
that we just want n backends for n channels, the name does not add much.

- Nuno S=C3=A1

