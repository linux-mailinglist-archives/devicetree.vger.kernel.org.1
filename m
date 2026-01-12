Return-Path: <devicetree+bounces-253668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D081D10431
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 02:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ABC23024D45
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 01:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981B11CEAC2;
	Mon, 12 Jan 2026 01:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="XNb12peP"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B28A500948;
	Mon, 12 Jan 2026 01:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768181501; cv=none; b=FygQjNvcavN6Ne8UpWah69MSJgRB5dchCVHCXoK4LVI3L47nlVraAIKNZAUakhawePH1eniC3Vspnira+0ECe8aqhCwSsQ4vDAMWtZgVM9dhDFFY/VyWNQayQhZdtvLwQ3G+WrBiQ9KImx5ynfWCV/NaPV4fKZ8m0VcTqtnKOeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768181501; c=relaxed/simple;
	bh=2EZGAGj4mxKMc9TBwMP5s7SOY2mvUzQcYppNZKTDksI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=o6sJXtXDyvn8pIUBvqfsyTBdSBCIrG2u1l99qqeHrx86BRF0Rhz0SD/BUGUjxbEJLy2zYZb20PrT6QZjdc8ksDjrrZOTKBiZ5pamjJ13cSolqa8b5dQ8nUY/U+/MCEe5XNx2Ex6kCMr3uCmI8W0dHHCsq3XTL4XvqDJCqDh4Xz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=XNb12peP; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1768181490;
	bh=2EZGAGj4mxKMc9TBwMP5s7SOY2mvUzQcYppNZKTDksI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=XNb12peP0C2TGNPDv/KF3sxfwLnepAAdkGCXC8mcqIoPCGRDjpSEE1fvTrj3Kr0DT
	 pcQqPtHn5sOnUdZ6gYd6bcqsbU+X3/mlmw3d9IHj8yhZ1CfvcrieWYE7iQ6wKvyaXy
	 A3e4FTeGhvbo1TzULng5d0A7bPT0Xv4AwRDB9HSt5yG4Ty2nj3/DczaT1P09fWgQZo
	 1/rA06eq2IDFJcKkd9K+gzKZmFCXKuEtNBZM6Lkjpe9RwPNiQ7GvgqqDURqqx6n6wu
	 sJZKvG7BI2sky36rOcy+h9oga5nbq/Y9pyWJizLkIkG2CHUsdvBzbK8Kfbl4i85j1b
	 bCijTcvJCj/vQ==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 35AD6648B5;
	Mon, 12 Jan 2026 09:31:28 +0800 (AWST)
Message-ID: <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Mon, 12 Jan 2026 12:01:27 +1030
In-Reply-To: <20260111201040.162880-2-anirudhsriniv@gmail.com>
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
	 <20260111201040.162880-2-anirudhsriniv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2026-01-11 at 14:10 -0600, Anirudh Srinivasan wrote:
> Document the new comptaibles for Asus IPMI card
>=20
> Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
> ---
> =C2=A0Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> =C2=A01 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/D=
ocumentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> index 9298c1a75dd1..b2d20341f8eb 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> @@ -79,6 +79,7 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - ampere,mtmitchell-bmc
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - aspeed,ast2600-evb
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - aspeed,ast2600-evb-a1
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 - asus,ipmi-card-bmc

It's a bit bike-sheddy, however: the pattern tends to be
${vendor},${platform}-bmc, but as the platform can't be specified and
the card's function is the BMC itself, I'd go with "asus,ipmi-
expansion-card" (I couldn't immediately find a useful identifier other
than the product name).

Andrew

