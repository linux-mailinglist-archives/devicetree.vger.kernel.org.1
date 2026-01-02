Return-Path: <devicetree+bounces-251078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 527F0CEE777
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 13:13:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5421530022B3
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 12:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1F42E7BCC;
	Fri,  2 Jan 2026 12:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeaexvRW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FA11F875A
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 12:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767355995; cv=none; b=fMPffasMfBw6e3YYT6fUgzgPv55LzBcv+Tz8vNzDYhJGh6QHauCelSa/OQNZJ6AICDBqsye6AY55s5yIiMyFfxG4YsvCvY0DRkVRS8HR+kJjWLO4wMSuD580TkSyE+D52QtZgaDEgmwrasXOLM611Q/uG8TE5XetbolvIPvWmXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767355995; c=relaxed/simple;
	bh=NcRPChKxYj82FiPy4b7x8IpELwc/9I1LcPx0q63Fxig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IBwp6kjv/d5D9q1ag+7rQGJk9y4ZfhDLJQyR50Sd2+Id2R+pvT5NE25LOgr7xj0It7fh5g8+QS7AHgf+k2u0+QGMJ7JgvqCFqgR7b03d19mMXPxp4B8mApFdehHrGheOBHAgNbv4C7rgIK9clXpp9Z8fXwG0B520QWNeq7JHU6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeaexvRW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76953C116B1;
	Fri,  2 Jan 2026 12:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767355995;
	bh=NcRPChKxYj82FiPy4b7x8IpELwc/9I1LcPx0q63Fxig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GeaexvRWNhiKsqd2gZm7KDJXfhJutk9i6mAW9+BPYp+Xs7mcN8yaGmygZoUJwQogJ
	 67KhqCKivg9pWFOI5GY0Y0cIlqZmGffKAKaE8NBo7MWVjkqkFHsSzcVawj5dQ8oszp
	 QEvVyPn8REexi1XzzLR3L3bazPzmQaNDF2ujqAPb/nXdWPT/x2WCZq6ynwerZkz/90
	 HObOMiisnJblzEWx/Frh74n/6HgAB1ANMXA9Bga67eBk40ghKno0Qf4/Vkq3nNcbVu
	 2Ba69gQEQZ1+nrr8YhYmp/hi0T5Y/dITENHP8vN9sEUBT98gfG+F7pOZFrpww9ouOJ
	 aRKW2sqFNYOmg==
Date: Fri, 2 Jan 2026 13:13:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Innolux
 G150XGE-L05 panel
Message-ID: <20260102-garrulous-mink-of-engineering-f2eaef@quoll>
References: <20251230125913.3670617-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251230125913.3670617-1-festevam@gmail.com>

On Tue, Dec 30, 2025 at 09:59:12AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index fc244fbb5a54..3b7550f09936 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -182,6 +182,8 @@ properties:
>        - innolux,g156hce-l01
>          # InnoLux 13.3" FHD (1920x1080) TFT LCD panel
>        - innolux,n133hse-ea1
> +        # InnoLux 15.0" G150XGE-l05 XGA (1024x768) TFT LCD panel
> +      - innolux,g150xge-l0

g < n

g150 < g156, at least that is what is visible in the diff. Please keep
things sorted.

Best regards,
Krzysztof


