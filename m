Return-Path: <devicetree+bounces-246217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC19CBA15A
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 01:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 84BD83011B05
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 00:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B52B3594F;
	Sat, 13 Dec 2025 00:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="AyhbqKWe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4FDA55
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 00:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765584240; cv=none; b=sQ2n3xgQk1Qk8xZHWLWsd2j7PEvPGukzzSQ7bMF8kOEQv0PLze1OKsi87tdrIFnPBynbynZ2LYEqZjMcfJMYsfjxFCJOUlyRmSqpbHj0E4M89kyyQ+LdSOanj4uFhpaEaUTIHqP/zMVFlw8nQ3uYqYV1v5F/8cAeyBWR5g225Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765584240; c=relaxed/simple;
	bh=uWBlgI6lleVjBRX3dGhYEGvuHr17iLuHUk03UVwAews=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fKhhZxJB08TfR/Cd07+8Og1N5AybEmM1QultplQOQbj+Z/iE7tA9ss5RUvE1aUFXBs4bVdVGVGyZMynmsprOROrSd3xohD/1W4SaR1Y0vH4rSQHuz5khhLbnEOPXhtZsjqLILTkVibsEq6kisnTyH49UPOw0ilpQay824obmH3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=AyhbqKWe; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=3vFE
	eYAXaf3SW6O0CRcnu6sCW72HvMdruArHRMGAKsM=; b=AyhbqKWe0U1hUfrwnOWF
	jH1B2aE8Y81qXHLbaipdJ8gqNy6Bw/51y6OFSS7lWubz/9BZ527M4oI7joUQvewM
	Xu/jLVfGg09xyOwcRak+DeYlZ6bMs3+2/WZcgFCqXR8U+TkZuAQaRPaaefsW95T7
	ceS4Hb7PFarwQuZDvfl2M0s0GV8WI3XVVRurU1pz8lV0a1TtoqDUmjr4VXSOCfnU
	niMJAZUbTepNSFaQnJUDWZdnmid6ePbXxZlVUtdUZeLQ+a+9bJXBeOO3kB9r3F0n
	E/b9p+bnPCRBwrN7F+ntCg7KSvCQbHJ7w1jGg29kEeKAJmOqRlpJqietNhU8Zyxt
	Mg==
Received: (qmail 129915 invoked from network); 13 Dec 2025 01:03:43 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Dec 2025 01:03:43 +0100
X-UD-Smtp-Session: l3s3148p1@h0xRHMpFguAgAQ9wBwAkACQ4Xrn/InjS
Date: Sat, 13 Dec 2025 09:03:39 +0900
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: microchip: Drop usb_a9g20-dab-mmx.dtsi
Message-ID: <aTytWyyZiYFnyauo@shikoro>
References: <20251212203226.458694-8-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212203226.458694-8-robh@kernel.org>

On Fri, Dec 12, 2025 at 02:32:14PM -0600, Rob Herring (Arm) wrote:
> This .dtsi file is not included anywhere in the tree and can't be
> tested.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Nowadays, this should be a dtso which did not exist back then. Is it
okay to convert it? Yes, I can do this.


