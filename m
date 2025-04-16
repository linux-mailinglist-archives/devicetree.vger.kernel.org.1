Return-Path: <devicetree+bounces-167632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE1DA8B2D0
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:58:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F0D67A69F8
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A295422DFB6;
	Wed, 16 Apr 2025 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="MvcOO5hz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654ED1DE3C4
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744790296; cv=none; b=EU2B1mbikfeQkCfupKIdzx6KgKBnZ+z3uU3i2GTgBQ7bzqqDN4arvumoRqUy/lOA8Cpn/d7l2KJ0LZk2Djp0Zb2N0HHmjAhVXpujZz/FUqziwWbPnmrnt8LwRNX9wot2cLSBykT0adWlNWEj9mjFteLxIDo8zQ/JB4XNgn2Xm2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744790296; c=relaxed/simple;
	bh=QB4w6r8owO4Bb0m5tcn046y0Jgd8/AvOYokKG/K6tmA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fgt33qSWe9dK2M4OwT1SiiIS7wlwmRMG7YoXlgCXmFdEGrRgDYGEBRWRZ25RGL2e6uyO5tFSFASBgx4gAJ6QDv7Ex+0alSL3MJ1WJBLUYBU/oYLmUUgZkOVZRSSeXVischXozuhXyZI5hZfFQhJEGgp5NxFUuWEjCtew4+d2sqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=MvcOO5hz; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=QB4w
	6r8owO4Bb0m5tcn046y0Jgd8/AvOYokKG/K6tmA=; b=MvcOO5hzdI8eBgKgmURd
	jgyKt2mivgEVksW4Byp5EGtGLCpmJJnf71YP67o98TuZNUGt1liI8eM3j7sCUsxf
	NgYTjEkS99eDtav6hF5WxcWj0syq3d9Hv8LiVGURCJwtoVzDzEtOnkB4LQC3CT6K
	z50u/HWNMD/no5CwTZTnKz12tlKRQChvWW9WoTExvqj+SKx6qVEMZQCPyAGtq7F8
	uexsqA6Dlb34jQzFXg/HMTNKHcQTW+Qmtm2/R+RId8/7o3w5DQD3T+5kBXwra/1O
	NfGakzswIDZkIafzge1fxTT9IgsiJif7K4jm3OzR8dVMEgzChC/PtxTc6oqPjqeo
	Bw==
Received: (qmail 625012 invoked from network); 16 Apr 2025 09:58:10 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 16 Apr 2025 09:58:10 +0200
X-UD-Smtp-Session: l3s3148p1@KWRypeAyKJYujnsq
Date: Wed, 16 Apr 2025 09:58:09 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 5/5] ARM: dts: vt8500: use correct ohci/ehci
 node names
Message-ID: <Z_9jETTOLcm6xoc_@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
 <20250330193833.21970-12-wsa+renesas@sang-engineering.com>
 <174478928969.20468.13803674314386256291.b4-ty@linaro.org>
 <bd011058-1d39-4334-8b2c-40f085366cf3@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Xcer6L9aSalqn0Cx"
Content-Disposition: inline
In-Reply-To: <bd011058-1d39-4334-8b2c-40f085366cf3@kernel.org>


--Xcer6L9aSalqn0Cx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> I assume the rest will be picked up by their maintainers, but if after
> some time (+2 more weeks?) there is no update, you can ping me so I will
> grab these as well.

Will do, thank you!


--Xcer6L9aSalqn0Cx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmf/YxEACgkQFA3kzBSg
KbZkBBAAnrntkbWNLY0+3cOgTJUzY1ufGVPXzoS8bZfIAdUJa0ZBQCPS68ug+4t9
WRxYdx7uNH6YnRjas+QHPbQa/WX+QYf39NYr3NMlDpI1pfOe+coGzcX+f2QkhS+R
AFpMWXRQULzXwgGYw2bIgUxjvKFRLwePjpU7LYRrqt/9QdBACLqX6o2dS/87XFwS
KJqGZ5Bg4Z3hokfbYli8f2ISPQ6/Jw3j2rU8vuneQq2QVxPvUL2UrC5ds1qdN150
0w0OpYCdsjJiVgLNhCAy7b8GxHEiRFJw4j41HdQTZZv4hkjVFHLg1WK3CYvlB5qH
rNQHeSb6t1ze85FpOfXV3rAVrA7Owc3MbvwQ7NKPC0F1p0wFvy4YAROsGVPbPYIu
qySNNi+rubjGyTgd9s695qPN0oXZvitxIwS9JbX8w2ptbQSJ91nzf59swFK3OKFc
LgQ4FaHk3lHsE3I9S6kI77q9K6v3OhHZM698jfNRyG6g3cuKnIqzZ2di1Pcwad/9
w7f34UVmGmFdYCbDwrrBbtPHUznX3LVr2EgykM1imIegJQ7fAMGhO4Jgdpl/YEYM
O8wmu2dNAU2qdRaFYgd79DVxQjY369RLZEUIgx0nOXCNrP7shKGgERn3z1z9yyJm
V3QK7meAGSTr4r/Gu+88YzgQjjWASwNEoXSVPZ5gKwosSMHkyp4=
=hR7w
-----END PGP SIGNATURE-----

--Xcer6L9aSalqn0Cx--

