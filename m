Return-Path: <devicetree+bounces-227547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21212BE27A4
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:46:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E28873B40D2
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79F7920E00B;
	Thu, 16 Oct 2025 09:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IN4oJiaI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61FC221F20
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760607925; cv=none; b=gNjIWM6B4teDiH/POCfxJkrq7mqXQsLq0u//8yOGvXsrTSrAvswiZBi1/lAodDCsv/5KgiGvuLFaJfj+dXRMRx3Y/Yw7HPmMiMQE+YGKbyeZK07lkXONiblkK7BEtBFOwf3Cbcm18Z8yrMvAti73LIDAg+nTpg8sKsWFDE2M3pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760607925; c=relaxed/simple;
	bh=Rq7Tue7rB04A5HvDcNDQCuYJBYqi51W3JG3UYAh6LNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLCWLxfo9Dw982n3c7Ikt1HZPSW5rJaiyvKGZD4/SBD9boGfRsavGuLjquM8B46XarY6DsiKgzVZWkCk2nkYHpEngoLkkjdzohnQ2z7Zk+bLsGpiebObcvIyBxCV/2+VBE+PjY9dIzECvKXCPNP7mNVddHBEhua8ZSwpbBJ0STg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IN4oJiaI; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e37d10ed2so3962845e9.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760607922; x=1761212722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=luIr/Vz4PlSP2i+Z6QDY9rTd9c5ylDxv7QfHE0S8P4Y=;
        b=IN4oJiaIcOCRwePxmKQlhwsoHHkl3geoE/3vFkPvXd3hE0OXm1lx1fPaKYJb81Ow/c
         CM4s10yFTlrqcJD+9Wp5Hnv4R5eGdB/aTkLal2KU+eV1r81GuFHxkyjsNhdGE6a10VR0
         1DsKgF8WL6bs8RXm/2gpUuj35IU83I9W4coiPMbx5rYksyRIyEEVHSyR5gvrZM/Cun0s
         GJjG6HpNrE6gOynaidKtBYYbSlo1eZw7LsdezNkJt7LrjyzqXlv6nY5HCrATPNCGX6Ai
         1Blvfd0WS5UGcoDs/gzlMddmvqhCMf0z8CCZD1u4zz0H2sQh4Pi64Y/MgTHNWl9X72Ir
         zegg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760607922; x=1761212722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=luIr/Vz4PlSP2i+Z6QDY9rTd9c5ylDxv7QfHE0S8P4Y=;
        b=mrME7ESsxH2Ou0qv+N7xVQlO+UZa3EWn15QbnZ4XaQC+LaSYDtN2nqlzDc/9iG/uFv
         rRjOemsr+YUP47B5Pfh06Y0uEQTwBRXsKukaj3Vj1/niJ/m6dICR1OXN3KCaPH+VuPKl
         S3wEWlOOuq1HVZMt4hO0swXuobJPdDyUupgSY6qg5RWqBHlULNLhbDZSA2qHJbhewzl8
         zI/RQF7g60Gb900lnmqUY3WI+EgHZTjpHj6TJtchHS6kr44uBTvIJYMX9s7BrS9pLKFD
         /lmtxSDfvjViQZPZkucrBSxhVyrk5V905A+MNgoeyw0nShz8Krkw7dm4794KgYjRMFIa
         E2PQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaA5BbyUsKeyalAVL750JFCKbVb8HHkWSZVnHGTTIwV36JTpvEoXj9of7nw2kKZUq7KwNLopWjjytm@vger.kernel.org
X-Gm-Message-State: AOJu0Yyum3kc7Nqdx8LTq3dU39EQO+pv+pQ07rGyM+MMs1Vnq5/TvIax
	2AF8rVVRkYA1iXq1bQxlvl0xvzvk/OeNkdVE+ivn/zH3gqR4K6iXryVs
X-Gm-Gg: ASbGncv40bGqFcF120KhRk7UZhmV+jULQ7lGPILoXJBN6oNWeZwlRSyZ9R4YrN1bzaH
	iaaGLX6AvcsjPDyV7GnleBBNZh27Cdgtz7vdR1o5nk+MJ9aXfsm0ITtOOF3kH93IoGV+zBGt+sr
	7yQVuh18d4TVukiiL8dy828dfXKRejWyqVXpZpYJ4lNoDTc3Opp9idRwQBd8iwofj3hE82CfIPk
	p+PPHFlTf9zUulkID8zRFPrxRsu9raavqJXkNy/iUk/0TZwQrxFHvhRFyZjMrx4ezTzv3AGZl9g
	wQSjcRb58elcGbzXdFJuzSLQfNr5UZGECoiy8pr6fd1qEQT5+PN66K2sgilbxkjYLC+GgJibPAF
	k79wL78Te1JpAUZ8PmLFZbpmE45A2vgOSyUTkjvpJAj+8rWSqyyH1SxjzuU7VB0/O2dSE8yMqOU
	joEn6E+L5LBtnGYz3D4Io+y/rjOWAxd1WqetSRFRyJR/UcCzvKRv7SW3eBxXQSBTI=
X-Google-Smtp-Source: AGHT+IEcFTF/lyt3/noYj8bqdWfDVAl5uR1p9xxB9hzRb0mEciw6fjt8YGsyFYmpGWdJ+VcwLffP9g==
X-Received: by 2002:a05:600d:41ee:b0:471:152a:e566 with SMTP id 5b1f17b1804b1-471152ae95fmr4831675e9.13.1760607921776;
        Thu, 16 Oct 2025 02:45:21 -0700 (PDT)
Received: from orome (p200300e41f28f500f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:f500:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5d015esm34572196f8f.33.2025.10.16.02.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 02:45:19 -0700 (PDT)
Date: Thu, 16 Oct 2025 11:45:17 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Jonathan Hunter <jonathanh@nvidia.com>, 
	Aaron Kling <webgeek1234@gmail.com>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-tegra@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: tegra: mark Jetson Xavier NX's PHY as a wakeup
 source
Message-ID: <go7hq4kv2aryxf2jjjarsc2xdpwtz6uellfkoxwc7pr2vhh5bb@fgoxzhl74vl5>
References: <E1v93ne-0000000AmQk-1nHh@rmk-PC.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bavjhyzzjjl25shl"
Content-Disposition: inline
In-Reply-To: <E1v93ne-0000000AmQk-1nHh@rmk-PC.armlinux.org.uk>


--bavjhyzzjjl25shl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] arm64: tegra: mark Jetson Xavier NX's PHY as a wakeup
 source
MIME-Version: 1.0

On Wed, Oct 15, 2025 at 04:52:26PM +0100, Russell King (Oracle) wrote:
> Mark the RTL8211F PHY as a wakeup source for the Jetson Xavier NX.
> This allows the reworked RTL8211F driver to know that the PHY is
> wired to wakeup capable hardware, and thus to expose WoL capabilities.
>=20
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
> I thought I had already sent this patch out, and I'm sure someone said
> that they had queued it for the merge window, but it wasn't merged. As
> I can't find it in any of my mailboxes, this must be a false memory.
> I'm way too overloaded to properly track anything right now.
>=20
> It's not a big problem. WoL will go from not being functional in
> previous kernels (and actually causing problems with interrupt
> delivery) to not being supported (ethtool will report so) in v6.18
> without this patch. Options are: merge it into 6.18-rc and have
> functional WoL for 6.18, or wait until the next merge window and
> have WoL working in approx. four months time when 6.19 is released.
>=20
> Note: the bindings update was already merged in commit a510980e740c
> ("dt-bindings: net: realtek,rtl82xx: document wakeup-source property")
> during the recent merge window.
>=20
>  arch/arm64/boot/dts/nvidia/tegra194-p3668.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Hi Russell,

I've picked this up now and will send a PR later on to get this into
6.18. I was trying to see if there's a good candidate for a "Fixes:"
tag, but since this will only make a difference in v6.18, I didn't
think it was worth having this backported.

Thanks,
Thierry

--bavjhyzzjjl25shl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmjwvqsACgkQ3SOs138+
s6F1Tw//eOYfJcrsWjukPL3v5DcKcgiunqkywibKRZO6ss+7wlGQtNPzenlQQaxc
CtH7JnlbrpMu5qPdlHgM2k9qcrxLpj/v6mOpewjrmKMHSPWl1j4sVYKjPnUUjBPr
lkwZVeWerGTwzWooa9W4pdEsREEHlWtZzD1b3+ZqmCmLzASk6JCVWxhNnQNw3IvM
a2t4b+aJUZnALkfeRhVZhaUKcSlCKFr26vpHdg1vk5ZoxwREgsM54+j+L/ieGfDa
7hoWry4OLTBBUU4KQsY4+ABgVduCtOnNF0UBeLNBYY3Q9mt/2xUqHDCJj2Jy2In+
5xsaOBqLCQXm0u15xTLtxx+i5MNPWrVJunoPLDRMoy1XTn+up7ZJvASzP2+DM+9u
dUCDVwLedT9ZgA7Y7w3ilBrPMQdmTymFKnxQGvBzpa2eEFOXKGTDXGDAObEO9gUR
BpwNiUOUby6whlCBAzfDvl7vDmFAwHj/tvcwSPk/l/FBlSlZZH/0ilm4RpJFubth
OkOT4rY9uiZ7Z2wdXk5OlIG+du+PcB2McFl7rd7RQn/+ieSpFowePmquCYGea9LJ
4cW3E0DwRiwA7Qs0KkwnnDqs7wzSrUXRqAJqW22CUGeun+Tn3mCLe5iHjmFH0z87
flbq2neifmdGqSz9HAovy6D8hMXhjsUmtgz5RIIJjASuJlehRSs=
=z4EB
-----END PGP SIGNATURE-----

--bavjhyzzjjl25shl--

