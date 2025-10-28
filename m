Return-Path: <devicetree+bounces-232324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CABC169A4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 20:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27AE21A252ED
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001BC34BA49;
	Tue, 28 Oct 2025 19:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrLIAFo8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D019733CEA7
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761679510; cv=none; b=AS4vKYen8y+kC6ya/wf4x1K1Xbziydqq9dmDgYruMJxB+7c9SEnNvmCRjBnzWErYZUskDrU5lulyQR0pUOHnOH42ZNzQ2oiGrQFGktE/GrrEaQwkFr6jcmECIBf5ofzNBltIHWYMxG/Gg+l0XFh60OYnPFZvN915IJPqBPAOs+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761679510; c=relaxed/simple;
	bh=XzkzbGZFJX7fWGHnbE/Y5oGhVPC5GuyUzPdnHmqzKb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KK/VkLghmm+Z5ZFacMh87c+ElYvvFQYgHwtrJklzzm6KeortUH93jw7hxjOYvyNyoiApteEYlN4MA/DBG2CTi2QpfBoMMZISEbA2ZYE4ejrgCYpidafYPu0WUhDbZxMTIuXl4v1+2JIuQ56tt8TX/tD6avlPTpIx1/Ms9udXMBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrLIAFo8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C818FC4CEE7;
	Tue, 28 Oct 2025 19:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761679510;
	bh=XzkzbGZFJX7fWGHnbE/Y5oGhVPC5GuyUzPdnHmqzKb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GrLIAFo837yv+OWNyDu2d7MfcVLAIEW1OGZDv4EX/FNQrHRPhEHQqqadlnFzzWtbP
	 pN6M2yGl+gQB88R+iroqnT2AlMq8biC3DoeyZ+uljYwqUIneHquhv29cbQZvEXcKu4
	 ACazwHy3RZlY96Dfaseqoa9pF2FiAxEMvs7fjak2Xbf+2PalNuQDUCa6SmcoIUExaz
	 Dd8Mef7vf09/9VhSGzDewGXOFDXKZGBht9veqw1xiqKow6c4c1KclcYhyaCClWtqks
	 i8NU6u9vULZaqPSZDOj1ylhaYG+E+CQesRtsfboIF7pcycyey9qxpWSxPN7wyJ4Muv
	 Chs3znba4NPSw==
Date: Tue, 28 Oct 2025 19:25:05 +0000
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 frl-enable-gpios property
Message-ID: <20251028-villain-baboon-a52e54d46050@spud>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
 <20251027222641.25066-2-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iclSnaj8umiVc3sR"
Content-Disposition: inline
In-Reply-To: <20251027222641.25066-2-laurent.pinchart@ideasonboard.com>


--iclSnaj8umiVc3sR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 12:26:40AM +0200, Laurent Pinchart wrote:
> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>=20
> Add an optional property to RK3588 HDMI TX Controller binding describing
> a GPIO line to be asserted when operating in HDMI 2.1 FRL mode and
> deasserted for HDMI 1.4/2.0 TMDS.
>=20
> This is used to control an external voltage bias for HDMI data lines.
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--iclSnaj8umiVc3sR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQEYkQAKCRB4tDGHoIJi
0piUAP9EBL9wyve+A7DplHmvD/iHMXkse+rSUiPoBFdlzDNptAEAvqsaVjGlt25G
KP2c82RyKgToVpl0b7ZzHc5UWZ26bQ4=
=a3Iy
-----END PGP SIGNATURE-----

--iclSnaj8umiVc3sR--

