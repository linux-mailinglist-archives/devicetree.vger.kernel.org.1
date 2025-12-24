Return-Path: <devicetree+bounces-249602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C67D5CDD251
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 00:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54100300CCDE
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3380F280312;
	Wed, 24 Dec 2025 23:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFngvylg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1291D5146;
	Wed, 24 Dec 2025 23:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766620320; cv=none; b=Ol4Fl5UFlGO8XepoXz7CQjCbQvkqPf4EjMgdto3c0Kj4+D+1DF5Jxk51IH8wE9uvPCS7RfiwxOa5eF5Imrgvp6C2TRjyIcVwHCDYyf5UxK2AK3KB2TcHOwbkDRgMZ62QqfFMGb9B5oaFpvC4Upjo++ugQ7u8n4pedTJWOdgc6DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766620320; c=relaxed/simple;
	bh=r04ONwOk12O0xtjUc1ghPQyx7Cx9gH3sO7kIyFuAFZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WYBr5IcHy/ow3iLLQGMvII85zUcoIIGj+SJp6nGA2fh311+3DXy5jJlREDewrhWkIZPwjA3ZUi7al6cvRe/KwjolTcrkftbNp9h3B3AQkPfRtmUVCR5npt3Fr1PInf4xVldB7KBEcP7T4HG/bVi93YzK/CN36yvzudwrET/08VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFngvylg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29E89C4CEF7;
	Wed, 24 Dec 2025 23:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766620319;
	bh=r04ONwOk12O0xtjUc1ghPQyx7Cx9gH3sO7kIyFuAFZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GFngvylgv5jOLAGEG69if4X6NQx+r1wS92wnN5Xyi27y7uLZ0IpknS7At7gjvp3Vs
	 a+acEElug/+WXG5qSxe9MjrhopNO20gEMw/BXxdU9I6qV/2FN/Ctn/oLsGkK0I97Ln
	 fQOXtlHQMbCxFAwTOvx1ikC/2iDWdkyf26kHd0QtZbJ4BImKd26aS2L7ImB1FU5My6
	 VcX9En+yhc2sHT955BhXx6MjYrfboJObGpnz4lBEM/mv4pbdV3e9T9+J8/BkDxIeAr
	 uK2dKJPHJc47G/iyetdUQnzkBR+IEPoP3Bovq1pfc3FWBSiqWhbKq1mzQpjXy8gwyh
	 8ska2tfCpX9Uw==
Date: Wed, 24 Dec 2025 23:51:54 +0000
From: Conor Dooley <conor@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC] dt-bindings: riscv: update ratified version of h,
 svinval, svnapot, svpbmt
Message-ID: <20251224-shuffling-sierra-c6fab4368530@spud>
References: <20251223-h-description-v1-1-98bea93b0919@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vz/vFtXledt/oQ7C"
Content-Disposition: inline
In-Reply-To: <20251223-h-description-v1-1-98bea93b0919@riscstar.com>


--vz/vFtXledt/oQ7C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 08:52:24PM +0800, Guodong Xu wrote:
> The descriptions for h, svinval, svnapot, and svpbmt extensions currently
> reference the "20191213 version of the privileged ISA specification".
> While an Unprivileged ISA document exists with that date, there is no
> corresponding ratified Privileged ISA specification.
>=20
> These extensions were ratified in the RISC-V Instruction Set Manual,
> Volume II: Privileged Architecture, Version 20211203. Update the
> descriptions to reference the correct specification version.
>=20
> RISC-V International hosts a website [1] for ratified specifications.
> Following the "Ratified ISA Specifications", historical versions of
> Volume II Privileged ISA can be found.
>=20
> Link: https://riscv.org/specifications/ratified/ [1]
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> I'm not sure the 20191213 version has been removed or there are other
> reasons. But since RISC-V International is the official source for such
> documents, I think the version history in their website should be
> respected.

I think this needs a fixes tag (or tags) and is a copy-paste mistake.

With the tag(s),
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--vz/vFtXledt/oQ7C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaUx8lwAKCRB4tDGHoIJi
0kD6AQDJ3HbBcok5VacFNgCU3hDLAKIMSuwdjkBbuUikPsMO8gEAg51p8fvaklLA
tjEz9TlqRV8fiPlWz45SPPHVToewpgk=
=ADAX
-----END PGP SIGNATURE-----

--vz/vFtXledt/oQ7C--

