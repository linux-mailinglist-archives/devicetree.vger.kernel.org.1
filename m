Return-Path: <devicetree+bounces-251021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB94CEE23B
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1FF133007D8C
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95C41A0BF1;
	Fri,  2 Jan 2026 10:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ids168b3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913311EA65;
	Fri,  2 Jan 2026 10:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767348921; cv=none; b=hgtknF+mCoEUlgQtVrNcfodH0PNsg8JaXcVT3LVKcKTnWeJ5TWrJN6GC1V89dLXrlfjy9DM63Pj68rYMLFmbkNQC8u9v/5UigxpDJlRFmm+RpVLmT5DvTfnbspvGBOcLpjbUnIWdyBu/pBuSO4vnRu6gsVvrTK0GIrMBX95mvrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767348921; c=relaxed/simple;
	bh=d4z5sb7bmr1BuMkl4VvfvrNWs5fgs9S+SXf3Cve2jYg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZodBbJ6UjlBf4XOvopMkFDFMhPQsC6uUdP2975YLR9PQ7eefygT+sjIkgWLYLOFaCszWWPAIkG9U2THw6PXze8VQRgxrd//f9ODuchmXuFvGlKPuRDSVWdRRDBKlAy+RaKBWxY3fYuVyEMjN2xMK6J47sFFlmHtAyiOO+Twe7BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ids168b3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BCB4C116B1;
	Fri,  2 Jan 2026 10:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767348921;
	bh=d4z5sb7bmr1BuMkl4VvfvrNWs5fgs9S+SXf3Cve2jYg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ids168b3usTtwwYcWXFfbfYgr/wmLs1x4U6JIOViMU6eh63w5iwcfY7FiQEmAYHH4
	 vv6lFe6aq6RPyTWoB7pFoRJBhJWoZ+dXbK3w4DR1ryu0cj7y1AJOvAHRoBIv/sbzZH
	 VjzoJHx7BRIQZzix9QL1koqEj8EVzNBkbzW47vgJKXrm3eErBRALWhsvKbTN1mmdpU
	 ZRhZoRIfp/oHVBKTAPfniUBgbuX4/9yD/2NxafO+LFBI0vfY9fNS7vS+91h4n4Dhoy
	 sxkDa6Y5lrHaXKM36ppzH8hCqg3Xg1dowG0Zib93vRq+bdrOH6m2/rwNbg5Rvi2j7U
	 gdwDCQjiVKAXw==
Date: Fri, 2 Jan 2026 11:15:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Palmer <daniel@0x0f.com>
Cc: krzk+dt@kernel.org, romain.perier@gmail.com, robh@kernel.org, 
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/8] dt-bindings: clk: mstar msc313 cpupll: Correct
 clock-cells value
Message-ID: <20260102-maroon-dragon-of-expertise-7bb714@quoll>
References: <20260101034306.1233091-1-daniel@0x0f.com>
 <20260101034306.1233091-2-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260101034306.1233091-2-daniel@0x0f.com>

On Thu, Jan 01, 2026 at 12:42:59PM +0900, Daniel Palmer wrote:
> clock-cells should have been 0 and causes warnings when

Why it should have been 0? That's what your commit msg should explain.


> validating devicetrees.
> 
> Fix the value and fix the binding example.
> 
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>
> ---
>  .../devicetree/bindings/clock/mstar,msc313-cpupll.yaml       | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml b/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
> index a9ad7ab5230c..889419fba269 100644
> --- a/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
> +++ b/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
> @@ -18,7 +18,7 @@ properties:
>      const: mstar,msc313-cpupll
>  
>    "#clock-cells":
> -    const: 1
> +    const: 0

That's technically ABI break and your commit msg must explain also the
impact of that break.

Best regards,
Krzysztof


