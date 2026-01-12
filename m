Return-Path: <devicetree+bounces-253887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99998D1260B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C32E304D869
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8641F352F95;
	Mon, 12 Jan 2026 11:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov0GMxKt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631F6280309;
	Mon, 12 Jan 2026 11:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768218439; cv=none; b=j8W7raukx3ryjFB9x+UebK6Fa+gEq51Db4/5HW08RJsCMp5Zh2NVYTzxnrVlzFAYtgAf5TwWL37SrYQ/A2LMpZA5cF5npLnYO4s3UxPoeJMGxqM2Ue1wT5sWrvN2zcuNbxsN5zXp/j8cU7X5EzRSkKEPPqN8buVgafmjdsLdP9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768218439; c=relaxed/simple;
	bh=/4S2ffhUScYe1oalT7XXK9u5A6GaoEljjZjRU+VMDxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o5gjPt5C/2vrOdj7eKIGpOUouajQNktiNd+y5UFc20Q5bvVAJOcwscrBfdrBypNwETKnD7cSQi4QQjbIzWVJfxUbgWOi5Y6Byqrq4vH93k1dmXTLaZA28r4Jlf8OWTeSsLb4ebPUClK8B7eSCl1lXz14VYz2Ry41KZXDg2o4GHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov0GMxKt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7095AC16AAE;
	Mon, 12 Jan 2026 11:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768218439;
	bh=/4S2ffhUScYe1oalT7XXK9u5A6GaoEljjZjRU+VMDxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ov0GMxKtj6Y4+sxQolquMOuCwO7oaWxw44KyaJs4xFm75xPKzFOctgkFbOcUM/0JN
	 Ry/H7xWWRSJbf+RwNKiEMrJ8SF7IJla970kNNe9+urBUYj8p51knfh/j6dRJLly9y7
	 r6FZAIWHup8GEU+ReniBNQ7CLLTrnR91w7+gh1QaWUJTqGksssDvMsuEcOEVI1pY5x
	 sHZB4IibalOo0ok63dZjENzq0/FZ9ga+9ywzs2C9fiwOLdubLnScm8oNmua4jR/WlG
	 gRteS7LzQgfSWhQ3QngqReZcJsWBAF+KOh04pNXdCHdhTl31H8IDLjpsYiBKFl63PZ
	 HQ/oW/wAfA2EA==
Date: Mon, 12 Jan 2026 12:47:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Anirudh Srinivasan <anirudhsriniv@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
Message-ID: <20260112-whimsical-annoying-fulmar-25e4d9@quoll>
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-2-anirudhsriniv@gmail.com>
 <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>

On Mon, Jan 12, 2026 at 12:01:27PM +1030, Andrew Jeffery wrote:
> On Sun, 2026-01-11 at 14:10 -0600, Anirudh Srinivasan wrote:
> > Document the new comptaibles for Asus IPMI card
> >=20
> > Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
> > ---
> > =C2=A0Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> > =C2=A01 file changed, 1 insertion(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b=
/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> > index 9298c1a75dd1..b2d20341f8eb 100644
> > --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> > +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> > @@ -79,6 +79,7 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 - ampere,mtmitchell-bmc
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 - aspeed,ast2600-evb
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 - aspeed,ast2600-evb-a1
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 - asus,ipmi-card-bmc
>=20
> It's a bit bike-sheddy, however: the pattern tends to be
> ${vendor},${platform}-bmc, but as the platform can't be specified and
> the card's function is the BMC itself, I'd go with "asus,ipmi-
> expansion-card" (I couldn't immediately find a useful identifier other
> than the product name).

This should include some model name or at least soc. What if you have
IPMI card for ast2600 and later completely different for ast2700?

Best regards,
Krzysztof


