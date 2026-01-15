Return-Path: <devicetree+bounces-255711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8590FD2664A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:28:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9A622304AE64
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96173BF2F7;
	Thu, 15 Jan 2026 17:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlESdXIR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962F43BF2E7;
	Thu, 15 Jan 2026 17:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768497392; cv=none; b=t5Oivzv/UtIkzt7qWo5anuRegABHlLLOVabneiwbg1hOJax0vmkzhTYBw5vyBEIKpy76CKRbHI0VIIhRI6MID5Yfx2+fXSeM/T8wCtyhT18sUZXhyefoBKF4DM/u2ve9xKdRGUohZ4Ri7MCjEezcUvw0GWeB3xA9SNGcKmpm0S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768497392; c=relaxed/simple;
	bh=EoDuHPKYADtTQ3CbH8ajn3cz4Fwrwq6IKHjrNnSNqVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NICkUQj/2M2ROwpZo758se5iVzxOPOSuGHwnOTOHVgXQtD3m/DrVDTVIyjZDzRO3h85vZCwsJRlewOcAdkoPtFDOZmPJpIBt+s8ML6ouegdZPT4MOHWGMy8mxhTvmI/lPajBEXWtP5wiyBoWyLs8EgsW66ezuIVMtwJ/c0R2DFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlESdXIR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39E66C116D0;
	Thu, 15 Jan 2026 17:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768497392;
	bh=EoDuHPKYADtTQ3CbH8ajn3cz4Fwrwq6IKHjrNnSNqVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KlESdXIRDi4LaDQt/CNKvfnKjJ7Y6Snc9KH+I3n6uqvXVDaiD4jZonAkz0RnY/GL4
	 GArii35s6IZn9a/VYHwwlHrTzMC3vtBQ3r7Ytdvly+/ZbnHNqztKL/2BdT/FpIX642
	 pXqXb8QllzIwqfiOB3DMMA+jIvzb/MPRjHqx9o5KgjbLEp+bDjg4MBGAUHkyvsfGkL
	 YAiO6lSUymNqEMVRqCF8UlmBAu5tURwePPF/G1aNsiGLYTLamyrpQmYvHf8k+ISQnT
	 9NVBQ/Paj2Z6XSTvkKb5IWXSVGtGudZO50YkPbINj2jsI9QIjJrNz5/9Vm5igbRy1Z
	 Hp9f4ilsveKnQ==
Date: Thu, 15 Jan 2026 11:16:31 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
	Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: mfd: Document smp-memram subnode for
 aspeed,ast2x00-scu
Message-ID: <176849739064.906870.7559981756194987059.robh@kernel.org>
References: <20260109-dev-dt-warnings-mfd-v1-1-1aabe37e9a14@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109-dev-dt-warnings-mfd-v1-1-1aabe37e9a14@codeconstruct.com.au>


On Fri, 09 Jan 2026 17:05:18 +1030, Andrew Jeffery wrote:
> The platform initialisation code for the AST2600 implements the custom
> SMP bringup protocol, and searches for the relevant compatible. As a
> consequence, define the requisite node and the compatible string, which
> in-turn tidies up the dtb check results.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> ---
> Hello,
> 
> This change was original part of an RFC series tidying up the AST2600
> EVB devicetree at [1]. Many of those ended up being merged directly, so
> I'm splitting out what remains into separate, smaller series.
> 
> Please review.
> 
> Changes since RFC:
> - Address the warning from Rob's bot
> - Tidy a description line that was dropped unnecessarily
> - Remove RFC label
> 
> Link: https://lore.kernel.org/all/20251211-dev-dt-warnings-all-v1-16-21b18b9ada77@codeconstruct.com.au/ [1]
> ---
>  .../devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml     | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


