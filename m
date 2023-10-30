Return-Path: <devicetree+bounces-12849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC4F7DB892
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:56:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16020B20C8E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81403D52D;
	Mon, 30 Oct 2023 10:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKhdv2vF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DB8137E
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:56:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD9CC433C8;
	Mon, 30 Oct 2023 10:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698663381;
	bh=mscw5FoNP8WY7i1Rz1mdswb8KnRo5eaSMEj+P0a+Bt4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lKhdv2vFyRH3tqd9j6a6kIg80mr3hrBRMbYrR/GvVKU9SKJlfeh3EqFiJhrgjp9hb
	 LYbTjkvJ/xE0VKaq31fSNwioL2MqJZ+sRamOO5k5VeBxhkCSTsRa+ua3bko0uYLYde
	 MV1WSTYDpUInCc0lxrwFENVHgIsW8vYhLuS97PaYbPyE0lG69ozycYR64+9cGq4E/L
	 /Adw33OLkWrbqfaBLIfrk/pnxRxfqQfhFQVciR84B/zsgPCr7h+zNDb7qH7lk3UZ1J
	 ThqNvnHvafzgyWf44nTGpy7IcOfjquLKp9bSLbV/qmTgok/xu9lxSvyN17pRvlXmiy
	 C1qbXtNRX7mVw==
Date: Mon, 30 Oct 2023 10:56:17 +0000
From: Conor Dooley <conor@kernel.org>
To: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
Cc: Andrew Jones <ajones@ventanamicro.com>, linux-riscv@lists.infradead.org,
	apatel@ventanamicro.com, palmer@dabbelt.com,
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
Message-ID: <20231030-attest-unchain-ab99981a5738@spud>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
 <20231029-kitten-provider-1602fa805c35@spud>
 <680a2f25-59e7-4757-ba93-1de7fe1279e3@ventanamicro.com>
 <20231029-sappy-ought-98fecff551fc@spud>
 <20231030-d3db6c3f8cf46bbdd8191d65@orel>
 <513ea612-b354-44d4-b6d7-490741ed14a3@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IIaFEd3wvXZ+3DFb"
Content-Disposition: inline
In-Reply-To: <513ea612-b354-44d4-b6d7-490741ed14a3@ventanamicro.com>


--IIaFEd3wvXZ+3DFb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 30, 2023 at 06:14:45AM -0300, Daniel Henrique Barboza wrote:
> On 10/30/23 05:18, Andrew Jones wrote:

> > I guess after letting this ping-pong back and forth in my brain a few
> > times the ball is currently resting on the "let's add cbop-block-size"
> > side.
>=20
> I'll go ahead and understand that it is ok for QEMU to add a riscv,cbop-b=
lock-size DT
> then.

Aye. And in case it was not clear, here's an unqualified ack.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Can you pick this up Palmer?

Cheers,
Conor.

--IIaFEd3wvXZ+3DFb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZT+L0QAKCRB4tDGHoIJi
0hMPAQCMsCb+SvAVdgaM4m3P6r43xVt3M4diRiIs8T4bT4M6KQD/RIJ9/1xcf4eh
tb4QBNhay5DF281J59X1Vu84npUgawU=
=xciD
-----END PGP SIGNATURE-----

--IIaFEd3wvXZ+3DFb--

