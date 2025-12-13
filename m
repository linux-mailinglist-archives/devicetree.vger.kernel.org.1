Return-Path: <devicetree+bounces-246221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1056CBA25B
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 02:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45157304D57B
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 01:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81BE238C1B;
	Sat, 13 Dec 2025 01:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="r7/akPv0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BA71DF748
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 01:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765588183; cv=none; b=tWJITDcdi9XX5KHiS09kIQgr4IveE9LvO7xztsxzEfFf7gZsKAhi8aFrq6rkiT2aMkMkcd6pmKkg9cDnWF5MqnAua5po7cwHrPrHePeyh79Hn83uRO+2Z1Bsvhe84pAShX7T+CtxCrpE/WkCAo0wPQVp4llo1QzANIEdU7rr6K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765588183; c=relaxed/simple;
	bh=+aeQEgFy+BcL37/IrDuieBzYFfoL/6gf7xl1zshMASk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YT8Aj8lxUwWBiqR2lSsYxygkLGEDRs9IFOgBfzUUzXXY8Pv0dfgp3Utv01VKJCoBkqvJrI8zjb53OgMRLUZUK5ycU71LsaaxcK6+0b5Q2/H2C0m/qs5LXW7NOaPmHTM0jOMeCX2aMTzLjANf2daj8BRe3JGHlVSW8NWhi2RY9Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=r7/akPv0; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B54ACC1936E;
	Sat, 13 Dec 2025 01:09:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AED816070C;
	Sat, 13 Dec 2025 01:09:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2E887103C8D89;
	Sat, 13 Dec 2025 02:09:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765588177; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=inO5mMNHZ47Bm4+rKLc88zkAFFzs0iu8YvVNFbkzeRA=;
	b=r7/akPv0xpDvS9+O+WsdxVmqkgAIrrlY7GtyJ/ebLJ/DGxw+yCy8+Y3eSQPQ4qGr5cUiX+
	8oL2B1AOW2v0UmHhQBSWZEhO6ZyPawJmCsBRguraQnNTBNvP6pr8RxEQiTNYKkTnoFz36R
	PvKmd88CIB8VvHIngz9DY9O3PTBqJ4uA56FQk38qUNdSSC6vsiCTQAwfS43PYP6wFkD7VE
	Ai0Av7ifoLHBIj9PYJ/C14SEPsagQl0V4QvoylyS3uByz6H2r9K7iUJ1UeXyNOzQVILevh
	ZakbhnSpMuaax8MgY6Xk89SgLeRLlprDZEaKlvlK5coFHDYfHc3xkgv/8QLSrw==
Date: Sat, 13 Dec 2025 02:09:34 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: microchip: Drop usb_a9g20-dab-mmx.dtsi
Message-ID: <20251213010934353f1efe@mail.local>
References: <20251212203226.458694-8-robh@kernel.org>
 <aTytWyyZiYFnyauo@shikoro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTytWyyZiYFnyauo@shikoro>
X-Last-TLS-Session-Version: TLSv1.3

On 13/12/2025 09:03:39+0900, Wolfram Sang wrote:
> On Fri, Dec 12, 2025 at 02:32:14PM -0600, Rob Herring (Arm) wrote:
> > This .dtsi file is not included anywhere in the tree and can't be
> > tested.
> > 
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> 
> Nowadays, this should be a dtso which did not exist back then. Is it
> okay to convert it? Yes, I can do this.
> 

I don't think this will be missed by anyone. Unless you actually have
one of the boards, I would simply drop this.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

