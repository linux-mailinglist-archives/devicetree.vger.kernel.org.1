Return-Path: <devicetree+bounces-272416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IOhLjMSrGkujwEAu9opvQ
	(envelope-from <devicetree+bounces-272416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 12:55:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2BF22B983
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 12:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DDCD3015D32
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 11:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8B1358363;
	Sat,  7 Mar 2026 11:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUw/Guku"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E973563C2;
	Sat,  7 Mar 2026 11:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772884517; cv=none; b=XOpNtoSa3Mylsa4ChZqn9+v8DfGFFUnRUrMAyQbjXI8W4YwdZZBzhxv53SW78NJpaTv6DD/c9eSAyPEp4WXWvPYLb1Eq8TPVqAZWpeEOEoaLQtxHdl7rhuC4UCpzJ6heGcw880kQgD6p1ZAmY4WhLGxdXtKqBh+FpMan4FJ+rPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772884517; c=relaxed/simple;
	bh=ulEWqneXzcoS43b6xamwKJRe+ZUGpd+GueORbAuvP8g=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ccaCn6m9JCU7TkxEuvtiPVNlqObhqCY0Ba8P9ivhZBFh9wGpSwrcTKgkoMnlpkGdfhW2RJ/RqLrr8Kf+XRZvIIoQc/IIG3q1oNQQLZG+ZdrVVz8Yw35iwcAZgsvnpkoLip8RHpiJQA+q3L+RMm4Spe75siLxd0eJMXhSWancue8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUw/Guku; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BAF7C2BC87;
	Sat,  7 Mar 2026 11:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772884516;
	bh=ulEWqneXzcoS43b6xamwKJRe+ZUGpd+GueORbAuvP8g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=eUw/GukuKYpxP3wos8cbZ1AZcln+/spQJcwTXYGtdg4fZkWy6m0vupfncQvLcuLeZ
	 W2g/gRqY6+zLbdLwD0DE3r3lV3GH00SafpMLC2mbXcmU4fnMUu13Ls04TlgQdGZG2V
	 HBIxsTAqCrBcOr1lz7yVQsxTHdAeUNVAxx0EdKnT530V9U0ZRvxF10lhn5ONDEewyN
	 J+U7ApSRXE/MyWtJk5Sk7YiFINS80kyBIwbRkUcjt6s/4WMFixNz05ayE8QNOh0MBC
	 U8DBz1GPqntw7/8vbY5z4sM/nbPB1N9Up1DsBRm+IX7++5pI5UuY1aocizYmGP9OY3
	 DF2bzRu9alsIw==
Date: Sat, 7 Mar 2026 11:55:07 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Olivier Moysan
 <olivier.moysan@foss.st.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 2/4] iio: backend: add
 devm_iio_backend_get_by_index()
Message-ID: <20260307115507.252f4793@jic23-huawei>
In-Reply-To: <20260305113756.47243-3-antoniu.miclaus@analog.com>
References: <20260305113756.47243-1-antoniu.miclaus@analog.com>
	<20260305113756.47243-3-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 3A2BF22B983
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272416-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.966];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Action: no action

On Thu, 5 Mar 2026 13:37:28 +0200
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add a new function to get an IIO backend by its index in the
> io-backends device tree property. This is useful for multi-channel
> devices that have multiple backends, where looking up by index is
> more straightforward than using named backends.
>=20
> Extract __devm_iio_backend_fwnode_get_by_index() from the existing
> __devm_iio_backend_fwnode_get(), taking the index directly as a
> parameter. The new public API devm_iio_backend_get_by_index() uses
> the index to find the backend reference in the io-backends property,
> avoiding the need for io-backend-names.
>=20
> Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>

One comment on unwanted code movement.  Putting the lines highlighted
back where they were will also make the break up into the previous patch
and this one more sensible wrt to the diff.

Thanks,

Jonathan

> ---
> Changes in v5:
>   - Split __free(fwnode_handle) cleanup into a separate patch
>   - Fix "Get's" -> "Gets" typo in kernel-doc
>=20
>  drivers/iio/industrialio-backend.c | 60 +++++++++++++++++++++---------
>  include/linux/iio/backend.h        |  2 +
>  2 files changed, 45 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industriali=
o-backend.c
> index 58f7e1426095..ab56e964bce4 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -949,25 +949,16 @@ int iio_backend_data_transfer_addr(struct iio_backe=
nd *back, u32 address)
>  }
>  EXPORT_SYMBOL_NS_GPL(iio_backend_data_transfer_addr, "IIO_BACKEND");
> =20
> -static struct iio_backend *__devm_iio_backend_fwnode_get(struct device *=
dev, const char *name,
> -							 struct fwnode_handle *fwnode)
> +static struct iio_backend *
> +__devm_iio_backend_fwnode_get_by_index(struct device *dev,
> +				       struct fwnode_handle *fwnode,
> +				       unsigned int index)
>  {
> +	struct fwnode_handle *fwnode_back __free(fwnode_handle) =3D
> +		fwnode_find_reference(fwnode, "io-backends", index);

Keep this where it was. So just above the check on whether it succeeded.
Absolutely fine to have uses of __free() declared inline with the code.



>  	struct iio_backend *back;
> -	unsigned int index;
>  	int ret;
> =20
> -	if (name) {
> -		ret =3D device_property_match_string(dev, "io-backend-names",
> -						   name);
> -		if (ret < 0)
> -			return ERR_PTR(ret);
> -		index =3D ret;
> -	} else {
> -		index =3D 0;
> -	}
> -
> -	struct fwnode_handle *fwnode_back __free(fwnode_handle) =3D
> -		fwnode_find_reference(fwnode, "io-backends", index);
>  	if (IS_ERR(fwnode_back))
>  		return dev_err_cast_probe(dev, fwnode_back,
>  					  "Cannot get Firmware reference\n");
> @@ -981,8 +972,7 @@ static struct iio_backend *__devm_iio_backend_fwnode_=
get(struct device *dev, con
>  		if (ret)
>  			return ERR_PTR(ret);
> =20
> -		if (name)
> -			back->idx =3D index;
> +		back->idx =3D index;
> =20
>  		return back;


