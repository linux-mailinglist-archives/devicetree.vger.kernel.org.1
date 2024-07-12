Return-Path: <devicetree+bounces-85345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F13BF92FBB3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 15:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E9CF1C21D15
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 13:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0255816F274;
	Fri, 12 Jul 2024 13:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIsqPTwS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25742BB15
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 13:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720792014; cv=none; b=Tmi9rB+Bv/Ge7Fhy2BDj/HG+hctqQhJxFGN5WfnQJ/efLpYvGU7IwT2wZfCuTUGPoYYrjk42Zkv3HHoXRKncY2SstU1wF46YPRF0kathx74Xiylvo8ZlDfTv99QaynGSqqgrTUpsURBoaYveFwHCklc66eh58B3aXkKp0VRqcZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720792014; c=relaxed/simple;
	bh=GD6ACwItdOdYKWCSinqqJ1Q4m+CiGf/Wmcn6qQyR3ds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pRuLqu4iczIg4bA+bKlQkFy5KL6YteL6Wj4KZWqBYQ8M7839S5NVcaa98OAGkaBE7ZGtDPi4u5WcoHFS6XztSgzptWW2dzhfP00UcSW2m8/KxAU6ZWx5E4EcL3Dlbya/W1eFbGGbKjq3qWGWjMl1LL190jvoF7e8srX55OzkyiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIsqPTwS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 460EDC32782;
	Fri, 12 Jul 2024 13:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720792014;
	bh=GD6ACwItdOdYKWCSinqqJ1Q4m+CiGf/Wmcn6qQyR3ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rIsqPTwS6D7KEwXvOVH9NmzEM4StZ/5B7qjClnfXfOxdH+9u0SJcwwb4HPSsfJTpk
	 nXXoep7wzmaDjxsTBwzzTEP2jOcjnKDs1IkqapD410W8Q1qG/64g22CdCIB/kuLUxZ
	 tpuSxczh+CI33iRKh9quSlsUcNS/Bl6GfW9zk331ya+rQBy1DuhMNoGdWKqV5Rj0rC
	 QYko9/BYBbDNAZwB05i6/CJbK8fKv+wFehXEgt34YNBKWXjneeeVhQAQe4atj/d7UY
	 cL3mIBChE+7vi1ku1tuKrnX74kSHYsLyz/bFIrHN4t5c4xyDDiRDjP0Qpez/Y9d0tr
	 2t3kVSc28uZPQ==
Date: Fri, 12 Jul 2024 07:46:53 -0600
From: Rob Herring <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi
 E v3.0
Message-ID: <20240712134653.GA593124-robh@kernel.org>
References: <20240711210526.40448-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>

On Fri, Jul 12, 2024 at 06:05:25AM +0900, FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip.

Subject is wrong. This is not a dts file. Use subject prefix matching 
the subsystem.

> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf..3caa4e6428be 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -782,6 +782,7 @@ properties:
>        - description: Radxa ROCK Pi E
>          items:
>            - const: radxa,rockpi-e
> +          - const: radxa,rockpi-e-v3
>            - const: rockchip,rk3328
>  
>        - description: Radxa ROCK Pi N8
> -- 
> 2.43.0
> 

