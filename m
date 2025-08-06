Return-Path: <devicetree+bounces-202323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A079B1CF2C
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 00:50:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0A54720A4A
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 22:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7959B21CFEF;
	Wed,  6 Aug 2025 22:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDacCk6s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A01DED4A
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754520651; cv=none; b=ZHBPYcfquUhisOufu2aEs4UN3MoVPWlnWg8rgZP9fUSdi8OEkBiWhnI1bJ3/YlZYK9Hx3g1vB8azdBicIrGZpja3LLzdPt4PJFfGYD9ZWKKzEmNgNrbFG4x0FMBIU2qRZIufmv5Quv+f+13HMAioRZdqtaqyKE2J6Zb6U1ivSww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754520651; c=relaxed/simple;
	bh=0htdjNPNPdzGzjMhGpQX8V87ZFII00k24mLzTLTKnpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oe9T3TqKGPuOF4e0V8VnF+Y5/Jgqk+ch/OMuKjESC6dzxHNk1QHkpkOcW4GKbNoG4UPjNcz8PZJntOAyH9zkr7xOrIp2tnDa5JW4OMB07sEJ/h+W5jGX/PhdzxLORe3Fbfag+KbYgsYuQiyLh7NTPU+D05lqyLKycbnHEwjVXkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDacCk6s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4FF1C4CEE7;
	Wed,  6 Aug 2025 22:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754520650;
	bh=0htdjNPNPdzGzjMhGpQX8V87ZFII00k24mLzTLTKnpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rDacCk6snBl8QDqlAR9ane7golm9rrHSdETUfmWpFrP4VMfWrbuK2435QVlFLbQa+
	 l4s5psdijSZXtyk2zc5uNwJWOLTWwdS2FmkI0WRXpqiikzX7g+GjDFPRDiquUNHtMt
	 lpcdEg+e7yw64MJ40GvxikZ3PuDkZeKyrwnJKQy5ns51uAZmAZ8LNpcxsDlFSCeMCu
	 hj1X0QPCDkXqEVRYQ4olGhnBjid21fwbGeQEL+kD6sQiSxzESBXiPaTHaAQSZUnfMg
	 QGknng8YemxZ+KZF8WUlBQpIyHCl50UgwsUWjfyfYHrhRPtCTygmhHqLL8mChHZYIK
	 /JAP9C9EDpZ9g==
Date: Wed, 6 Aug 2025 17:50:49 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Spell out acronym
Message-ID: <175452064842.1957690.10043655787626564623.robh@kernel.org>
References: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>


On Wed, 06 Aug 2025 01:03:08 +0200, Linus Walleij wrote:
> When I authored these bindings I had no idea what "AEM" stood
> for. Now I know: it means "Architecture Envelope Model".
> Detail this in the bindings.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Maybe this can be applied directly to the bindings tree, I don't
> changed this document much.
> ---
>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Applied, thanks!


