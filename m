Return-Path: <devicetree+bounces-255306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88809D21F29
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 02:12:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4965F3012DD3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 01:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEEB5239E8B;
	Thu, 15 Jan 2026 01:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="REOw9Uf4"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0BD22127E;
	Thu, 15 Jan 2026 01:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768439570; cv=none; b=c5bHPTOfBaRQV+w3p7fzYhpkxFVQI2a0gcyx9A/mdFZzVFQxZ/SAGhYD4muYXBzkquoCkUy7XV8uihyEbCEGy432DrQkIYUH8l28MEuHIh2MJ+lglzDjuHb7EVmn0NzcUvJLK9MD0WeMxkyJZQ9PaGr+RTBFzUTArBu3amDRzD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768439570; c=relaxed/simple;
	bh=w8qv7zGjKLg/PB6Q6k/X+xJDPtRPLbBTgNo+kvs+s14=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AFv3y17LDVEQGY3l2js/5xusl7hDK1zo7w9wY5HpVU4VW42FWsC0noxFXa914joRb26l9sz3cW72m9NZW0V1MhRisCCcRdTNk35wxvpjJkM9mXaKu9NlntGgCREZWA93Ykk0D7eODvLlr9XulKGNjfutliR2VJ/XNcT/bj6kXG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=REOw9Uf4; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1768439566;
	bh=w8qv7zGjKLg/PB6Q6k/X+xJDPtRPLbBTgNo+kvs+s14=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=REOw9Uf4sZS4m++NHjUuL06qkr98+A08cZmsmF48lK0ym7qvP+7KNER4qUUCM6SWg
	 Y0ZXtHU8pHvntidwMv3EicjRZe9P9aRaPTRaeTurl5e8mEJkWDdsFmhe8VSV9dH/XI
	 2O+NTS41YBC70cEUAvg1/rLJrpmXUwuR49Kx1eX/QLnekXayK6n7jaZkA8Xcn+THyK
	 C2m5QScS9gBSfHobr2RK4y85PCueDDG5mRgpp7DA2NkTAqFBuPFEkGJJMTMN/T1IZ3
	 j/72Mwat04UwCNCJKOsjqKgLZvVA4ZyU0d6iN7TR36UXFP/+1i15u0BVisGKa7NdB2
	 CvthhyFlzMEqw==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 286836472A;
	Thu, 15 Jan 2026 09:12:46 +0800 (AWST)
Message-ID: <9cdf03250dd923859638de4850ce4b4e4279bf8a.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 0/2] Add Meta(Facebook) ventura2 BMC(AST2600)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Krzysztof
 Kozlowski	 <krzysztof.kozlowski@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Date: Thu, 15 Jan 2026 11:42:45 +1030
In-Reply-To: <c391ded8-6569-48a2-9c49-6b68838f91b0@oss.qualcomm.com>
References: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
	 <c391ded8-6569-48a2-9c49-6b68838f91b0@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2026-01-13 at 08:17 +0100, Krzysztof Kozlowski wrote:
> On 13/01/2026 03:57, Kyle Hsieh wrote:
> > Summary:
> > Add linux device tree entry related to Meta(Facebook) ventura2.
> > specific devices connected to BMC(AST2600) SoC.
> >=20
> > Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>=20
> Where? How is this possible?

Kyle: Tags only apply to the patches they were provided for. Tacking
this one on the cover letter implies Krzysztof has acked the devicetree
as well, which is not the case with respect to [1].

[1]: https://lore.kernel.org/all/20251223-ginger-worm-of-swiftness-a8fa05@q=
uoll/

It appears you're already using b4. b4 also handles tags for you:

https://b4.docs.kernel.org/en/latest/contributor/trailers.html

As it suggests, run `b4 trailers -u` to automatically and correctly
apply tags you have received for your changes.

Please fix the issue here (remove the tag from the cover-letter, apply
tags to the correct patches) and send again, _after_ you've addressed
all further feedback on v3.

Andrew

