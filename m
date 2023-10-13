Return-Path: <devicetree+bounces-8529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E647C883F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61AFC1C20B67
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5873C1804F;
	Fri, 13 Oct 2023 15:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vnu7aFC+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3769229A9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:04:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E71FDC433C8;
	Fri, 13 Oct 2023 15:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697209471;
	bh=FB2R70WBb+RX0qj+NMyIeD7qQ29uR6VXNPam77tDofY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vnu7aFC+LvPhcMA4J3tnalV+kHW/W2NQXWzU/84tgyYqjASJ6w0/+tSswWwWuwXtp
	 AFU8Qt8jsuZdU9IIHCELPTMUFHYtKBVUjZapMWdq/0pvI4GfEMI2+QEBvsqKEk7RJm
	 uzCh5u18ELxFh/IJuLjqSUieoPV4WaqlDJw8p5WNKMWSvHO7ANhsSQq7SlkE1StyVd
	 it0f+NpVUjfs0oxpijbaTFE7jDiKC9frq4CXEybwc/Qu7BsCfHIpamDLdvcN7rGO9D
	 ZxPSsI8+nnwbXiAmIxjz8sNB8qLkC0RXkOP1sxll4JwfFH8+d7oK4AbOAD+WCd3Bgg
	 mqM71qr1LX2cA==
Date: Fri, 13 Oct 2023 16:04:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: arm: mediatek: Sort entries by SoC then
 board compatibles
Message-ID: <20231013-manpower-unmoving-c40fc53e05af@spud>
References: <20231012230237.2676469-1-wenst@chromium.org>
 <20231012230237.2676469-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Yaoptxthnmnc5rvc"
Content-Disposition: inline
In-Reply-To: <20231012230237.2676469-2-wenst@chromium.org>


--Yaoptxthnmnc5rvc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 07:02:27AM +0800, Chen-Yu Tsai wrote:
> Some of the new MediaTek board entries were inserted in a chronological
> order, or just randomly. This makes it harder to search for an entry.
>=20
> Sort the entries by first grouping by SoC, then sorting by board
> compatible strings. Also add a comment at the top asking people to do
> the same.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--Yaoptxthnmnc5rvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSlceQAKCRB4tDGHoIJi
0uMkAP9FBpDroU9zuSOnz3MjTjKZpnxV7J+6qg4PS6wmhlUrUgD+Ob9+UuB6eUWL
x6jDnjhbUwiYIxqF0LdzvLoTYl4IRQY=
=7kRj
-----END PGP SIGNATURE-----

--Yaoptxthnmnc5rvc--

