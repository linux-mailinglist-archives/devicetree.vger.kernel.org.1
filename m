Return-Path: <devicetree+bounces-204833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60558B27052
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 22:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B638173098
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 20:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 673A2267733;
	Thu, 14 Aug 2025 20:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOrbQn1n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DE2192D97
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755204383; cv=none; b=uGn/QE8tI6egqpNbpV6/fiVdUSBjC156UekYPvf5Jx7kcqhEbNXXJIYFedQFZ46R227EVqqgZ1gjmYkDY9IlXF1Z2TWQYSHyBVU8ZJHfe35bcRYl4fkUYt2f2IZd2ZyN3avVIRHA4mtBLXxUXd6neVsuH0Dsi2ducmx8nyz1IzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755204383; c=relaxed/simple;
	bh=YdMtPBXKk1u2j4jjpHs+vAXDIB1/oOWn7NFhrksV4Jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mx5LBjBgad4wyzOTLHBXmaK6kq/y5TdNV68JaPnfWB8XzznyhbZYBIKE30it4c1LRqDCnMEgvZ4boNX5ATuOxETcmeoKqVET2UuCPsjCtuIb99PDuUXMPgE0G16cqblr+PSzSUKWloQCKbpUGwrGZni/kqgeEMLJsFd7frH+5Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOrbQn1n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B816AC4CEED;
	Thu, 14 Aug 2025 20:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755204382;
	bh=YdMtPBXKk1u2j4jjpHs+vAXDIB1/oOWn7NFhrksV4Jw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QOrbQn1noZWRB9b/kz/zPp5AfWDa8GsXKJb1bhpz/f4X4fQDJ1e0HeSXXrfXMebBn
	 TAEzCSM4IWgU9R9dqWXA8vQOLb4iwUa068vhPrXnCh0aiH8oHyjy6uHL+X/Npy9a8t
	 e5Nxitnsu1Z5e+Xx8tGCJXdgXhsurAT5QJgNDwhFAVIszGgQNCrw3BhaFAqx0HWtlp
	 kiUk+cbDA7fSaH2bKG4u6X64+ag5Wd4mc5a8/4TjxH2baeYvbCzthYodzQyBIXvf0F
	 WoJNWdO26yjtBoWIpxJsvogtWYS1XeA5+vKVkIrgtZcZb1QAfd/MqA5KCH1FJzGDVz
	 molTqE7AMAeZw==
Date: Thu, 14 Aug 2025 21:46:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: Add Actiontec vendor prefix
Message-ID: <20250814-activism-earlobe-cb4e66ac3929@spud>
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
 <20250814-ixp4xx-mi424wr-dts-v1-1-b7c10f3c4193@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0+sIP5LDZwZ34Nyx"
Content-Disposition: inline
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-1-b7c10f3c4193@linaro.org>


--0+sIP5LDZwZ34Nyx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--0+sIP5LDZwZ34Nyx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaJ5LGgAKCRB4tDGHoIJi
0tVdAP91XXuBvJp1CZerEY380UTqLoTlCFjD1u/qRdyVHGFvVAEAoEuk6Um0q2/F
xZ1tjnVDge1slMCIY0fVlVAqDUt54AA=
=7sIA
-----END PGP SIGNATURE-----

--0+sIP5LDZwZ34Nyx--

