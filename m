Return-Path: <devicetree+bounces-263671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CBOFv1ViGmLoQQAu9opvQ
	(envelope-from <devicetree+bounces-263671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:23:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00917108320
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9024B301110E
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 09:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E5A33D4FF;
	Sun,  8 Feb 2026 09:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TY6AZ+At"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492DE221F1C
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 09:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770542585; cv=none; b=orn5l/C5Hkw/sQJ7WivFRq57u5dorZV9ZP4T/bS8CpZs3d0KEO40tKd4quKH+o+Huwd99qkp4z0+EibHLzHoITEFHYjgfK2fKps43vS1+wm4YF63mLEGwYz5lBUrFAClBbMLlgBCoEKuRpKmWg42dO4CMcpKkSfWKalrKAGPj5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770542585; c=relaxed/simple;
	bh=TE3PJHu2TEnqBSRz5l+14VoSIvMd0CJS7C2vhNBxg7I=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mroHkdky/01ddKVyQMf99X3osDgqCheE/Y6Wq+GXFWPaZS6JKoh53tiu1mvBPVp9k3Q+o5aKRSyQJfOCuWMx9UC8puOBRyGodGtXXRK4VY4EEhvyiKVDJrEARQ4IBlZzBO64kbNSVcKu9a2vkXriub3QnPsOi6pN0iDjU6yiV30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TY6AZ+At; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4362197d174so2019284f8f.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 01:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770542584; x=1771147384; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eLptmtdkgDA/2Ft5zoqrhICOvhLVuzkpsfVXfo41zIc=;
        b=TY6AZ+Atnccs5VqPxAyNXZAz6EOUYqS6MZ15LR1fqIaYRjAJ7LQ6P1MNk+Z+gf26sW
         kpRoFvIR+PTHwL0IqmxXRNV3jqJ2FkWmXTtqZ0x837OagTK+7ZwND5EG4iEUiVTPkwUb
         KfEbZPm1JjOsPmYekGP5x1HUgQutcpunT+eQwZSQx580RnzV+19l7pWab8bbEAhyE2uy
         kpcWjTvAmwMRR9wKRUhxzX3fiw3s66m9s57YISOLiKa1BEeG0+0i7uUSy1A1yizcrQp/
         FQ0tmeQjQB1fI0ICDQtn4YyLWUC7JS/EQjURZqBmnljKPTTg51s74k/r25tnUUBZw3S3
         W+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770542584; x=1771147384;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eLptmtdkgDA/2Ft5zoqrhICOvhLVuzkpsfVXfo41zIc=;
        b=ZuBx5LDOcjt376wMok2PeM/fwpEiEPXy0c307lHhnoIJuQ1hJJYtnn3Mv1/Moz3Sdg
         k4mo87SeB/p5G8gzBMlzWVWK1uk2rczL+eduXl2PpioKRXPe7sQ2zRuv162rmSkFkoDH
         KCAKf0oT+AKXLWYBRF3BDyqT6yYBov3cYp6HZ4pqZAMpBODvb+Mu2WnbQKwc8tnAH4qx
         FyYrfEcJRNdVrpubA/WfoVKblUY4DA/4vkTNFWYcDZ+lL3bJSoWtNgmKRujVH/qbvA9r
         MpQeUQqTp3kNwP+5Rvx96bK73zfPU5bnBwz3B0u3DZxvnK7VHzgCQdQUHeQwGn6SS3IN
         9lkw==
X-Forwarded-Encrypted: i=1; AJvYcCVbJposFoXahKqAH+BL+IH4D4F6OU7L/zAm4H6O69SZmCKM6d3WVqGL4lj9plomqVKE/7nsuVboy/mO@vger.kernel.org
X-Gm-Message-State: AOJu0YyeDbhoXyHUu3T2+XQROL5gouLvcvxOEa6SlH0uOCp7QMHsY918
	OmzcH0mHMZKNpiFFHf12qKzqV45i6Ts58i0EC8/YLsxBq3RJECY1i4gC
X-Gm-Gg: AZuq6aI0I5BanKMXTenJw0D2DFYKtGRkTvYm98bu8JKcMk1F3nmLIO86zW9E2MxsF6G
	bn5M2LlNljT8NdljoEnpskaGBrYlfMLBVvUU5k0Gf0R2S5KVF1vQkuIMTXOmKxk9XBR6UrLCaoy
	gflEWbVVsb7pVyR8fEanZ5+4eUpnah3sQNa29OL2wLFFcAUlvFzb4DF+zMzQQ1+O4Jo4ByEImXY
	c8oaNaZR4ip5XAfRNaU865V0sARBU0npegTiCaYz1kinK3DjnEr+oN9XLWv/8y8ej4BpFgdAcRn
	jOskBOyR3V9MXZa/FYlpKWroeB/B448N3jvFw3mZ1PcCrxMRggg2ERnm9Kj1lklpBchb3OjzIHy
	1buLHyTUL0k/r171RKzE24r0NgmAip8yiL9p4xm53V+svpz/06NZ1h60itvLViHQo+wthiVrmia
	Ge4yUIPgdmIUY46atjd8NqL8ViYVJzal+2Jn5iUunp2xy1at6Zn8LpeDmtDMU=
X-Received: by 2002:adf:f5d0:0:b0:436:3475:473e with SMTP id ffacd0b85a97d-43634754869mr4193507f8f.51.1770542583506;
        Sun, 08 Feb 2026 01:23:03 -0800 (PST)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fc26sm16557044f8f.22.2026.02.08.01.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 01:23:03 -0800 (PST)
Message-ID: <c731b6fba72286707821ea6e7722835ba45f089c.camel@gmail.com>
Subject: Re: [PATCH v2 2/4] iio: backend: add devm_iio_backend_get_by_index()
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen	
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron	 <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, Mark
 Brown	 <broonie@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Sun, 08 Feb 2026 09:24:07 +0000
In-Reply-To: <550323d752213f177b7673bdd42e667f1d2228cb.1770393792.git.antoniu.miclaus@analog.com>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
	 <550323d752213f177b7673bdd42e667f1d2228cb.1770393792.git.antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263671-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 00917108320
X-Rspamd-Action: no action

On Fri, 2026-02-06 at 18:07 +0200, Antoniu Miclaus wrote:
> Add a new function to get an IIO backend by its index in the
> io-backends device tree property. This is useful for multi-channel
> devices that have multiple backends, where looking up by index is
> more straightforward than using named backends.
>=20
> The new function directly uses the index to find the backend reference
> in the io-backends property, avoiding the need for io-backend-names.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> =C2=A0drivers/iio/industrialio-backend.c | 51 +++++++++++++++++++++++++++=
+++
> =C2=A0include/linux/iio/backend.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 2 ++
> =C2=A02 files changed, 53 insertions(+)
>=20
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industriali=
o-
> backend.c
> index 447b694d6d5f..3b692d48481e 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -1008,6 +1008,57 @@ struct iio_backend *devm_iio_backend_get(struct de=
vice *dev,
> const char *name)
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_NS_GPL(devm_iio_backend_get, "IIO_BACKEND");
> =C2=A0
> +static struct iio_backend *
> +__devm_iio_backend_fwnode_get_by_index(struct device *dev,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct fwnode_handle *fwnode,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int index)
> +{
> +	struct fwnode_handle *fwnode_back;
> +	struct iio_backend *back;
> +	int ret;
> +
> +	fwnode_back =3D fwnode_find_reference(fwnode, "io-backends", index);
> +	if (IS_ERR(fwnode_back))
> +		return dev_err_cast_probe(dev, fwnode_back,
> +					=C2=A0 "Cannot get Firmware reference\n");
> +
> +	guard(mutex)(&iio_back_lock);
> +	list_for_each_entry(back, &iio_back_list, entry) {
> +		if (!device_match_fwnode(back->dev, fwnode_back))
> +			continue;
> +
> +		fwnode_handle_put(fwnode_back);
> +		ret =3D __devm_iio_backend_get(dev, back);
> +		if (ret)
> +			return ERR_PTR(ret);
> +
> +		back->idx =3D index;
> +
> +		return back;
> +	}
> +
> +	fwnode_handle_put(fwnode_back);
> +	return ERR_PTR(-EPROBE_DEFER);
> +}

I believe we don't necessarily need this. Why can't we use io-backend-names=
? I get
that in here we just want something matching the number of channels we have=
 so giving
names is probably does not add much added value. But still, I would prefer =
t have
more simplicity in the API and it should be fairly easy for the frontend to=
 use the
names argument.

_ Nuno S=C3=A1


