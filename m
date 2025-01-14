Return-Path: <devicetree+bounces-138524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F014BA10E5D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:55:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E19513AB963
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 17:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8571FAC37;
	Tue, 14 Jan 2025 17:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nITs+2XR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5197E1CDFB9;
	Tue, 14 Jan 2025 17:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736877300; cv=none; b=RcVEQGm7BxP2OAtFUpsQEMSFIm6Ira5boWP3uJ8EcpKXpJ+u+/YCq5N9wAgQ/oKaYzfOSWniabpaqorjUM4KhPWN6scfq9M22RPo8yBExSQurUH/jm0M7PG6o3FALl1Or/bbfSaVxKW3aXJzHVBgrKkyPwSdfsOyBI8Z+vM3py0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736877300; c=relaxed/simple;
	bh=h2KjFxw06B6LF0hjxFSlzMrtvNrwKNPLhQ/ilvcbkX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J12yfp9DSzN/hy6KsB9n60nIaiZ94IdIftaV44qDLQ+EKSbn8bjnAMbjH7Tibi95nxQFMUO3UPRH8DYzGKtQ5x8dMfX9oAGuCVTkwpMSAD4c/UwxnuX6mSleCOCe77obIujZe9hf4Zq4ugfLmhEGInAHmeK+17ZB5np+N6HTido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nITs+2XR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B0F6C4CEE0;
	Tue, 14 Jan 2025 17:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736877298;
	bh=h2KjFxw06B6LF0hjxFSlzMrtvNrwKNPLhQ/ilvcbkX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nITs+2XR8wmsdQrQGJWbuKOARecDv2a3AFL/gs+NcQZMLBl3EqGnAeiEgJXU9pqkJ
	 1dO6vmt9BnP/LxBbBjuHKlHdP7ag8exsuqsZ0Oo6P66DyE8p8f86aRoqoo+gAif500
	 Yf9VkNkWEhRBJ6HO+sZnBYmD726Ry2jUWPHXKmKI0MBKCxJy/hplIE1Hv7o1v3Ffds
	 1UGJr6YrdwX/iMhvmrDtNIXpX7Er05V6rBhgyQ3E7CW+J+g2QlxK7+MXqtMqpqsXsP
	 VWwR1ap9+VpBYslRdKyxxytSfACL7AX6MRVMY88zq5/dt5fsSuNBHN8bLCg8+qKYdD
	 zX7w00xVaGAow==
Date: Tue, 14 Jan 2025 17:54:54 +0000
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: add mt8370-evk board
Message-ID: <20250114-lily-defensive-3383449a7945@spud>
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
 <20250114-dts_mt8370-genio-510-v1-1-8517ee0fdbe8@collabora.com>
 <ef8bbe7a-64fa-4e51-86f3-4f7fc0bb3760@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RPVpWBDX/FhXg1pP"
Content-Disposition: inline
In-Reply-To: <ef8bbe7a-64fa-4e51-86f3-4f7fc0bb3760@collabora.com>


--RPVpWBDX/FhXg1pP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2025 at 11:32:47AM +0100, AngeloGioacchino Del Regno wrote:
> Il 14/01/25 08:38, Louis-Alexis Eyraud ha scritto:
> > Add bindings for the MediaTek mt8370-evk board, also known
> > as the "Genio 510-EVK".
> >=20
> > Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Can either of you explain why there's a fallback here to the mt8188?

--RPVpWBDX/FhXg1pP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4ak7gAKCRB4tDGHoIJi
0lBDAP9PkgIDwITUruIjeBxtqMSUuwk4v1X1d2SYS+SiD4O9fQEA6DtkErzD+2iZ
/x0RtcvkgL8gPS8oyQr68/8LSBuoIQE=
=5gLi
-----END PGP SIGNATURE-----

--RPVpWBDX/FhXg1pP--

