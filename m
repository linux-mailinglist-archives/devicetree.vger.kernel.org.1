Return-Path: <devicetree+bounces-262158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGvyFu/HgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:03:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0DAD744B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6FA063013D8C
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CECC339C638;
	Tue,  3 Feb 2026 10:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q+gdIPF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81B139B49B
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113004; cv=none; b=Ib6PZpWOEVgKkEsUva5mRw6w8ABdepCmjrWCFzxASpyrTjPZg/W12rR0mLuaQsksZ8ZekOfdcUqmSxXtL9FktlmRSCfMANgRFZZjKCRWBNXsLDFXHdGVfq2pmDknSHWVvcbhaOJwLrZO8cNGpte8c5aYxdT1NrAysRmOyyQJ3bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113004; c=relaxed/simple;
	bh=ao5SwoLNTIiHJURJeN/qxgiD0uarUaiktckItiBuuxc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CQGFvMphxhx9pwxv/FEmhTKlcPOgjlFLKtjdyTR4dKrBNfsCGsZSTWW8vtU/47fh6qWp34Wq6ZqY3qjErzinzqAnthe4IupMP1SCRrlFGGnzqwd+ua+r0DtG8UKI/GBeCVg14nyEA4t6MpQD+4X1e5knM1wzzUDS0/wPteEUh2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q+gdIPF3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so3750709f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770112999; x=1770717799; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9t5Fe5bGozogr0ZNYAWcRlOMGPdLPrptTIS9SavKeiw=;
        b=Q+gdIPF3SmpI+vGeoYLyresfGoXQJErwLP4kt0vS7MHbHziBXkiMJr4FGSgqTg3Ba2
         kYlDInqM//a5uMC4b+BFNwDQ1xhlKT5hFw0ESwENUKUyvnind9qlcMAkhn37VDPfYruZ
         rI2JA35kbaqVw02DEAqEeJCjf+GnST5hjsQtlz2k1Hye41gYF15v4mvTVBBu0WoI9qRE
         bx1i+yj6Fo0v1J4E/qDHIPrVE9AX+MkJndllfCIG1ZJ84uskaOXhONfTmZrEXIptq9VM
         QrrBU1TBFPdNSaAhJa3CzYgpiI6BREvOM1nCKtnzLK2+/Dc0nbLQ/y9yUUJUsSq/+7lQ
         MsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770112999; x=1770717799;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9t5Fe5bGozogr0ZNYAWcRlOMGPdLPrptTIS9SavKeiw=;
        b=o1cusZKgnEYAH+87pSb0L4tnGt4llYut9h+kfllCKrxznvskOmVzTj/1VsKBV4Dxb1
         BpeNsiLqbO5Ah61NIim6e5XxXcj1JlWyE21d+9NPs364xpFhmvnB4W6E2nTivITlmks2
         TvPbV/52Fkuo8+QpvOkyuJhdn03xRnspx8JiwtkJs5tPBguwme4KpTPxH6Us+mbd4pg1
         fz5gzlKhzWQBWFr0W3CWLEVBRHzuEZd+tVTeakculQXjSAyrfAeRTaaxQL8x/CMNghOl
         YB3zgS8CbWLDyjwRcyVJi1Eeb3WElbOrdKWdTVEuVwPAjU+J/jReFDOW6j4+PFpBISFO
         eybA==
X-Forwarded-Encrypted: i=1; AJvYcCU1+40mbDKBsPcxvg1zfXMwMneb+X57pxVVhexo5tOVvfsLeVp9HYyD+E9B3TzyONEtGwmFTWC3iUHW@vger.kernel.org
X-Gm-Message-State: AOJu0YzMSDLjAII20evOfE05gsWtgT0z5CW1u+BCjdPF2MCoLY1Cj+ty
	jYQcqJL5V3jf53gapfnBV8UEaOXT6RJTmYisyN/QGl5KuHJfRSCEqDt8
X-Gm-Gg: AZuq6aKB381VQJXxdDGaL8orbOkiDsSNPBbUaHcwLoIbCP1FfjghDAcjyIHzheNPQs4
	wEHThD2UyVPkoDNaUJyN6Iy+qyKE6Fu00UcYQNDjJpUuZSAFECNL/ZEUfF/knX+vuw/Mm7Ok7z2
	64SIYZQT83yq29oJqaOwEn19kn18sDvB+jI5tqLqtKKfSAYUxrhgyR+CP9On2Auv4yAPpyqyZfZ
	DNnqXXz4KxNjm0Qx/MdX3pmPI6mCLuE0YYpHHFofnteEMDFiJghsT1kGw+FifaJ8yt59Pnto5hS
	7ZkNqFQ0T8+dYWKR/WVTyvyDjgAENWz9SEsLs2ag378dRjTNcifLZSjBPEqNXElRNurQySqmUoR
	KkGx04W2fFiyMHnh7+NnW83DccWyFjioqDzSKwIKaCorXYjmb5xNH9zkl49Kgl5xi5I0FFR+oU3
	dhasJuebOZEsUGrj6rXMMgzNlka2FlFg==
X-Received: by 2002:a05:6000:1ac8:b0:432:c37c:d83a with SMTP id ffacd0b85a97d-435f3a86321mr22562027f8f.15.1770112999096;
        Tue, 03 Feb 2026 02:03:19 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e135422csm52922361f8f.40.2026.02.03.02.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:03:18 -0800 (PST)
Message-ID: <c4efbcda461cdfd58c7a7ab8b8c29c5f47fbda01.camel@gmail.com>
Subject: Re: [PATCH v6 2/8] iio: core: add fixed point parsing with 64-bit
 parts
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, 
	rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>,  Andy Shevchenko	 <andy@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich	
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
Date: Tue, 03 Feb 2026 10:04:01 +0000
In-Reply-To: <nzowa6uhnlcllceml2pqjk4so33kl3rf2jwu36eh3znnxug6ub@gfzafmi3m5re>
References: <20260130-adf41513-iio-driver-v6-0-cf46239026bc@analog.com>
	 <20260130-adf41513-iio-driver-v6-2-cf46239026bc@analog.com>
	 <eb1d9b939f95888739ce4a70f516cec07393c6df.camel@gmail.com>
	 <nzowa6uhnlcllceml2pqjk4so33kl3rf2jwu36eh3znnxug6ub@gfzafmi3m5re>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262158-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0A0DAD744B
X-Rspamd-Action: no action

On Tue, 2026-02-03 at 09:26 +0000, Rodrigo Alencar wrote:
> On 26/02/02 09:57AM, Nuno S=C3=A1 wrote:
> > On Fri, 2026-01-30 at 10:06 +0000, Rodrigo Alencar via B4 Relay wrote:
> > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > >=20
> > > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > > to parse numbers from a string.
> > > A helper function __iio_str_to_fixpoint64() replaces
> > > __iio_str_to_fixpoint() implementation, extending its usage for
> > > 64-bit fixed-point parsing.
>=20
> ...
>=20
> > > =C2=A0/**
> > > =C2=A0 * __iio_str_to_fixpoint() - Parse a fixed-point number from a =
string
> > > =C2=A0 * @str: The string to parse
> > > @@ -895,63 +1026,43 @@ static ssize_t iio_read_channel_info_avail(str=
uct device *dev,
> > > =C2=A0static int __iio_str_to_fixpoint(const char *str, int fract_mul=
t,
> > > =C2=A0				 int *integer, int *fract, bool scale_db)
> > > =C2=A0{
> > > -	int i =3D 0, f =3D 0;
> > > -	bool integer_part =3D true, negative =3D false;
> > > +	s64 integer64, fract64;
> > > +	int ret;
> > > =C2=A0
> > > -	if (fract_mult =3D=3D 0) {
> > > -		*fract =3D 0;
> > > +	ret =3D __iio_str_to_fixpoint64(str, fract_mult, &integer64, &fract=
64,
> > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scale_db);
> > > +	if (ret)
> > > +		return ret;
> >=20
> > I know it feels tempting to do the above while adding the 64bit variant=
. But isn't the
> > overflow safety also an issue on the 32bit variant? IMO, we should firs=
t have a patch
> > adding the overflow safety with a Fixes tag and then add 64bit support.
>=20
> I think handling 64-bit support after taclking the overflow issue
> would require changes on top of previous ones, which might get a messy
> commit history, no? Mostly because the 64-bit variant of the function
> is being used inside the 32-bit one. Also, the added auxiliary function
> that implements the overflow check parses u64, which allowed for the
> removal of the while loop in the __iio_str_to_fixpoint() implementation.

Typically we do fixes before because we might want to backport them and we =
just want to backport the
fix (so not the 64bit support). But we never really had any known issues wi=
th the current API
(AFAIK) so it might be ok as-is. Will defer to Jonathan.

- Nuno S=C3=A1
> before this assignment.
> =C2=A0

