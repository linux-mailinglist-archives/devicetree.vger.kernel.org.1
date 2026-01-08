Return-Path: <devicetree+bounces-252572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5285D012B3
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46B223011181
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0212232BF24;
	Thu,  8 Jan 2026 05:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="IsBBA8QF"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBDD325728;
	Thu,  8 Jan 2026 05:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767851331; cv=none; b=uYOD9lHd4NzYcNuPcpmBDFP9uqU0hIEAXx16lyZoIyU7UJ4LkbapDZykZiepGQOs6RKzEMaDS3aJgIUKRMU9ROlB0SaitKwSlPThmZXeRSLbLwSxbnZ7quOnUDUSgUQ5oQOk1mtC+JkHbLoH5VQLE5OCNr1PTmWg5JYak6nxW4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767851331; c=relaxed/simple;
	bh=6HTw58LbbRBmk04pgi7jyjScM20PkaliJVCu22kzXsE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=NEI5Hne0E9gIX9fNElFlOdctz5V+4SeG5arex5Txw9UyfVEm8Y4IdB4hHNJijsye54hbSrZlj0XvURTGmSgd6eZNKLqoz4FUd86Aoy/AEJHEaMS+8StCSRAg1jy14cHKMdYHnwfblhd5wxZwv2kPTMMF5BTa5Sha3fBROXIMaBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=IsBBA8QF; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767851327;
	bh=6HTw58LbbRBmk04pgi7jyjScM20PkaliJVCu22kzXsE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=IsBBA8QFvLxQMVHzF30vbYakhUQgQIaJSTm+nogeqVZl8imjICmyV7Viw/C1K8rvk
	 q0iIVLictrI0z3Oj+xYAHAsgJeqm+rZk53fWWjD1TFwKfxij7eBJgXuTR05FsoH8FQ
	 w0xQSBp5+ILvlonutMkNruM9LFu+3UsrGysq5tlCR4jI7Yhz3RhdFqvpeUkIg5s84T
	 7dEI4YnpbIy9s2aMdefrmwzVXOqw6/lHYMAZzYFfEmR0oiFXTwnDj/XXTsrfygF9gh
	 ugISVJF+eZ7a/MCxwZ6WMeaBUCBudSoOFsLPEnro+N4KSC5oEJZHPt4qbvTyke8s8l
	 0d/eYoRL3+I4w==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 68BAF7C834;
	Thu,  8 Jan 2026 13:48:46 +0800 (AWST)
Message-ID: <61e23c80136a6fb5bac79887f24399fd0686157f.camel@codeconstruct.com.au>
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: aspeed: add ASRock Rack
 ALTRAD8 board
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Tan Siewert <tan.siewert@hetzner.com>, Krzysztof Kozlowski
 <krzk@kernel.org>,  Rebecca Cran <rebecca@bsdio.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, 	linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>, Conor Dooley
	 <conor.dooley@microchip.com>
Date: Thu, 08 Jan 2026 16:18:45 +1030
In-Reply-To: <b10a233e-02c3-4b02-8f11-098f6fb8197c@hetzner.com>
References: <20251218161816.38155-1-rebecca@bsdio.com>
	 <20251218161816.38155-2-rebecca@bsdio.com>
	 <5aa36c56-798a-40cc-b0b8-be3f7c92136f@kernel.org>
	 <b10a233e-02c3-4b02-8f11-098f6fb8197c@hetzner.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-12-18 at 17:44 +0100, Tan Siewert wrote:
> On 18.12.25 17:21, Krzysztof Kozlowski wrote:
> > On 18/12/2025 17:18, Rebecca Cran wrote:
> > > Document ASRock Rack ALTRAD8 (ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q)
> > > compatibles.
> > >=20
> > > Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Tested-by: Tan Siewert <tan.siewert@hetzner.com>
> >=20
> > How was the binding tested?
>=20
> My bad for sending the wrong trailing header in v4. Tested-by should've=
=20
> been only on the dts instead of the dt-bindings+dts.

I've dropped your Tested-by tag from the binding patch while applying
the series.

Cheers,

Andrew

