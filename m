Return-Path: <devicetree+bounces-301717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMcONVIzEGqVUwYAu9opvQ
	(envelope-from <devicetree+bounces-301717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:43:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B67F05B25FF
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCDD53024AAB
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A703CB8FD;
	Fri, 22 May 2026 10:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JQHxNiJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B773911CE
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 10:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779446309; cv=none; b=qyAmcXhYYw9VGDhxtwFUZerOMt+Llqvfd93iZfDWR0NspfXjrnmehXsCZFrH2qanllcyLbhaHMW45UiSoo8N9S5upq7Laq+DraulvOk1GhA4BIAsY/sOtStvQbO1tsrF6zSILhgbDCMB7wIzqoy/oYjvCGFvAgjvJZmzn2G20KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779446309; c=relaxed/simple;
	bh=/wJ57xNPnCf8dH8DjzmbGHCzUBmnFHtfYvzgs74xh6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YFnkfzk7cvKuNx51OO1C19PVjsBabAhFL1XwGzlmbh6MqzScYmI00PKucWN1Tsox1nboWmwzNeMZPugsk4xK6oVheJcwmz1HJIG5tdAG1rLec+TVOjyS3W78f7DUDamtiIYczZ//tjdThXyHNPmh/5UXLGVaTaPIKgXmCUAX+Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JQHxNiJn; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4903997fcb5so17149155e9.2
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 03:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779446306; x=1780051106; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mLsUocanVpLcdr3xQCUl3kNzYIEe9clsefrb8kWlcvk=;
        b=JQHxNiJnKrHq3OULqFsFgAz2seUp3wkoDGf56P609Lz8zcvIRqceYfvhxA02DLMXYU
         mMwnJptOGIzJxZymhJHIjbWvLCmeuj8n7UIOICLHS1gmmNzKr8p2KhNzX6DVGRlIPlpF
         VSz47h5C310AHM5l0xhftcy5tNUaVEPxRuSyak2yNSeWwErCCIpAyjoV+RbORQCkxRmX
         m3NVnxQYrV1baXShcz2azKhJZtASpm5UrCWmDSnwFuG70S1h9x8Z4yPPgKS4c91gBA64
         MA64GSY7llXVpYA9LFZ9x/2syM5AohGARrIEuPf7aGGumOsihGLkUvpC+Z11FmkpZpfI
         muiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779446306; x=1780051106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLsUocanVpLcdr3xQCUl3kNzYIEe9clsefrb8kWlcvk=;
        b=s9gXqkLNcerlowuULTAjnAWGDwYGbLSxsy3I/SL7NL2g1VTQoWKmkKkSTV1hwIiaff
         Sxxva3RaZDZWj/oSPfskPX+PjbXOvtX+5VRjw3XYxlNac5qGOoLuM0GO0EwnQO1e7FK7
         xrEvGmqwQla7n1A/5VCedTRBVE4vrArDHY+gr+3sqy6rPKoJjwmhWqhP3B2n/Xt6M/uZ
         ME4luKeLU1UAQqLszwov6zbjVpDEQQMw8aUOklSM0d0FSV7YD/QsgbpxVEkO5Cg1sKxD
         de7aFp6Iuah1KX0InJmTGxBatws4kw9JQmKlksDWXEMX53d9kV1uT2LJmJ/f2FfF7xRM
         chCg==
X-Forwarded-Encrypted: i=1; AFNElJ9ntskYeDsxQBEl6If+0KfKgCQoIvMGE5InPGY6bETZm1JxkVuS2yG2c+jEYY+siYOksWpw+ysXpoLv@vger.kernel.org
X-Gm-Message-State: AOJu0YzQe8dU7Sz2YSH2qfy9zOywm/7wh/HQ9So/JPnjgnRtRifZG3uJ
	QygPOIoCSusRu36sLIQJbVQVq+FP5BesAsLbYImXH00RyNJuqDwjimqQ
X-Gm-Gg: Acq92OGfESMvt+sd3f93nd1dex4cCyZPjcb8ceL4WfcaeOKWkF0gVZ3Z/kJMF0aphFE
	7xDOEct00v5j9zV5JOSxa1+Ud4BGXueaLLeiyVVECvxLSv7KrUGyDQ5b7vT5fICCPh3ofZijKow
	L67C8wXfmdv88egnc1DQI1b7XigbCFx+5t31ve4suaryyT8XLroko9Z8/qk9jQt4YQFxaNfV7Bj
	eBZnkaIyb5JosCCy5N7G2szeNOrTfKDTAE5GauiUYkT9fPvQ3kYoNBkWZ/9dZbeKMqY4s95fySv
	EDKWdwO9bJLiU6gLaQnm0A1J7jpZBDCSkFrOKDsVz9O+sjbzzCKG5HhGaWvz7otO1Dro7qZ81Wj
	vaCUYzpjJQtCJXksRQazPYogVP6okwkZ1fH5IERS96oTbYc8dDwEVikYYOtidICKGxYif34gBgL
	Y0og58nX7Z2foSs/qL6JYIG3bhyFCSE7plKqccJR68B8MpSkydw9dFGhsIBrhKGO/oZS898jy4C
	JfG8VBExjrNfA==
X-Received: by 2002:a05:600c:3e0c:b0:488:ac01:72de with SMTP id 5b1f17b1804b1-49042489c30mr44798295e9.5.1779446305909;
        Fri, 22 May 2026 03:38:25 -0700 (PDT)
Received: from orome (p200300e41f291e00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f29:1e00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490428d63f8sm13240135e9.18.2026.05.22.03.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 03:38:24 -0700 (PDT)
Date: Fri, 22 May 2026 12:38:22 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Akhil R <akhilrajeev@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Laxman Dewangan <ldewangan@nvidia.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v6 09/10] dmaengine: tegra: Add Tegra264 support
Message-ID: <ahAyF4i51x5ldppq@orome>
References: <20260331102303.33181-1-akhilrajeev@nvidia.com>
 <20260331102303.33181-10-akhilrajeev@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4oagdshx4rnxulqg"
Content-Disposition: inline
In-Reply-To: <20260331102303.33181-10-akhilrajeev@nvidia.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierryreding@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: B67F05B25FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--4oagdshx4rnxulqg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 09/10] dmaengine: tegra: Add Tegra264 support
MIME-Version: 1.0

On Tue, Mar 31, 2026 at 03:53:02PM +0530, Akhil R wrote:
> Add compatible and chip data to support GPCDMA in Tegra264, which has
> differences in register layout and address bits compared to previous
> versions.
>=20
> Signed-off-by: Akhil R <akhilrajeev@nvidia.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/dma/tegra186-gpc-dma.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--4oagdshx4rnxulqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmoQMh4ACgkQ3SOs138+
s6FfphAAs+xOd5AbT8+y/eH+MoUKuhrW0ACB8ym66bqs+OCu+VVuM9p6LR7+6Mux
2+AFLpjeYRRdRYHjzoAsdnUo0VnC/+IFrrqOdoTD8npmeo2SveLrJx+f+BQJ4McM
aHS06cHVboDMya7H3UWHieyto9IZcEmAQjudHId+FPg6rYs3rjbDI2r71M2PM5Ns
nkjaOnkF9S/zPaUptXfdATyviC3yseTgJ36x6N0zKh9EKs1r+kcwlMchCu3k4M/e
uAOx0TEw1Jr12BwQRevhHWPn7JQAbq6a5aSsP4y6Ubvoe0JZIg28+FMFjLC0OvLp
3RMXYpH/0ovuRq3ruMN2NIdpAVZrAnd6OBCAb6c8bQ875+PrkCuQWNhzkV5GsqCN
XNTZRbHAXRfc6Oh/HkxR0rB/US58pr170vp06VeeKsPvpaZYaLT/a+gpVrhyytnZ
0fHu/2sGTgXGdgDdSK37XFlqgCtOMluSPDPrf+mNyDYWorMNK5zrHDIlbIDsZdyT
z4aCMtFdeZhIQSf0IZse1Yi6Kp4pCJEc6836c2FwSDm4iy1o0sH9g8qnvRC1jgej
3FxbqdYz6rvsT/Ri3MdhfZJC+J7vgpZvO5Fptkc9Y4b0OfeisLlRNxMJdIZqDoq2
BIo1f/fukHUAiDdo79dDfnLb/UViqXKst2JZCqdgOykedZy9E4M=
=Y6T/
-----END PGP SIGNATURE-----

--4oagdshx4rnxulqg--

