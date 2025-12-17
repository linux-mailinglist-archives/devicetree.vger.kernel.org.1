Return-Path: <devicetree+bounces-247646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50941CC9CBC
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 00:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D409302B749
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 23:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DEA330334;
	Wed, 17 Dec 2025 23:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="K7Y/10aj"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AC32253FF;
	Wed, 17 Dec 2025 23:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013741; cv=none; b=s6baE74rgN3a8AGbSfWRMVXkDALyJoyEgLPE1uvbISCa3r8f2FH7NYJYiwu1RhSEdMQOqaZTTEgEUPIfnm3qe4KXfDFXNDlVsd2Fm4c0UIkHffyOAnwMI1gYTR1WNuqfDgQTXiucBVHCs9D2JnK2q2n0pdhLGVO3pzu2/7QYeaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013741; c=relaxed/simple;
	bh=An/dh+69Qe8AwBl8yL4PiDoDvRHbBVKuX7FThD3xgjQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QI2xmicnJaE4Ew8EqZW1p+LfuhJSEyb4pRGDovPrRqz7WfVe/HErLKw/edhlepNfk7SVdCcMEhqeWwzYhs1uANOy51RQNwB2Q6VixrW8FHNyR7vyS3T7ugjeuuOIGrLNTdcdQXYWcHHfZov22roBIiwqvzxcbJQzyZN2hAFiC1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=K7Y/10aj; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1766013738;
	bh=An/dh+69Qe8AwBl8yL4PiDoDvRHbBVKuX7FThD3xgjQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=K7Y/10ajRzQlraz7ZqT1w/H9LjiCA+lN7D2OeigeMyRx/h9qWxYJ+t7Ga7sF6s6lE
	 JuoqWMvhAtKETdchtH0uoqjp/xeYsIf8+wZd0Opf8yWW9L4x9T8FX2fnk/VOimrk2v
	 P0nh3zB7Fqj2gWIpOo2T6krP8J/GeMDA4gMHceEQziJEreepd1Sd6SRPDxxwe2hliK
	 wKaND46MneavZvLex98rDYA0vvTpTUhzHMkTIJlI53KI9V5J9sMukvsid/YNJmxqw7
	 KVZ5Nnb/2vRR9lfvoK8zCSAZOFeeddl/4Y4UfoY6ojSRFqA9/wewBQ2YbSxzNY96hd
	 0ZU6R2vEzO1qg==
Received: from [192.168.68.115] (unknown [180.150.112.216])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 080947C1B2;
	Thu, 18 Dec 2025 07:22:16 +0800 (AWST)
Message-ID: <bc0904e4742cd04fb49b2d39ee2c0f72f28c1c4a.camel@codeconstruct.com.au>
Subject: Re: [PATCH] arm: dts: aspeed: add an alt 128M flash layout
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Marc Olberding <molberding@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 openbmc@lists.ozlabs.org, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Thu, 18 Dec 2025 09:52:16 +1030
In-Reply-To: <aUM5HcEs0OVrDO1w@molberding.nvidia.com>
References: <20251211-alt-128-layout-v1-1-100f57d2bc4a@nvidia.com>
	 <61f561d95af86a46f1e1075df39e1ce0f1324098.camel@codeconstruct.com.au>
	 <aUM5HcEs0OVrDO1w@molberding.nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-12-17 at 15:13 -0800, Marc Olberding wrote:
> On Thu, Dec 18, 2025 at 09:29:44AM +1030, Andrew Jeffery wrote:
> > On Thu, 2025-12-11 at 13:35 -0800, Marc Olberding wrote:
> > > Add a 128M layout for the BMC flash chip we didn't boot from.
> > > Including
> > > this allows the user to write to each partition on the alternate spi
> > > chip. This dtsi follows the existing standard of using the same
> > > layout
> > > as non alt version and prepending `alt` to each partition's name.
> > >=20
> ...=20
> > This may be fine, but please add it in a series that also introduces a
> > board that consumes it.
> >=20
> > Andrew
>=20
> Ack, I wasn't sure how to handle this, since the MSX4 hasn't merged to
> master for upstream yet, its just been merged into the openbmc tree.

I've applied it:

https://git.kernel.org/pub/scm/linux/kernel/git/bmc/linux.git/commit/?h=3Da=
speed/arm/dt&id=3Df28674fab34f07fff9612c3f390d3699bfe8ed90

It will be part of v6.20 (via pull-request to the SoC tree).

> I can either just hold off on this patch or update the msx4 series.
> I'm assuming that including this in a patch targetted to the openbmc tree
> is a nonstarter. Any thoughts here?

Send patches based on the bmc tree's aspeed/arm/dt branch (i.e. the
branch containing the commit linked above). Your work is going to land
there anyway, so no need to strictly base your work on Linus' master
branch (though this is generally reasonable when there are no other
dependencies).

Andrew

