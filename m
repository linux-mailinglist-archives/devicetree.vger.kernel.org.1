Return-Path: <devicetree+bounces-120903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BD89C4829
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 22:37:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1287BB39614
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 21:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2322B1BDAA4;
	Mon, 11 Nov 2024 20:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKcGOJqA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F3B13698E
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 20:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731358670; cv=none; b=QU3SoYGToEjTIjF+qYh984aJCa7mTIGZDuStE3AxB0V9LUYp2Jp/wSfArljvLvMUti+Cx4isSppBDPItoicaF67cKQ+7/vK64iFo/bEYENGY1cvyr8szoKwzqeRWd4Ico71AJRXMvWxBS/E9inylRDGnnVLTJKg7rbIA3uMV6RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731358670; c=relaxed/simple;
	bh=Vsculgs7Z2DtlbXQPus53rVTFwNMcZTM30kdcyNrxZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mXXEMfFv/RXIhX5+OWKDPG7ofUPaUEm0SNNT8fJ0UENJeGGl8MaoOn58I54oS4FAthJXFeRX86Ft6UfhFeIzf/yr2/5auCc2sbDrc3IUnBNpjhJNwfiBCSwQdsJLFxavZcOBT+sZTSzpGHRv033hyWtYV7uJl/2QhrNFck5L4Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKcGOJqA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CE0AC4CECF;
	Mon, 11 Nov 2024 20:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731358669;
	bh=Vsculgs7Z2DtlbXQPus53rVTFwNMcZTM30kdcyNrxZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKcGOJqAZTiVuiHiGlhpO0305iuMJGMklWGz1UntIF80Sy23zZLSotBn/7Jq24R2a
	 XSitOtv9kdeFlM4pu/pG2lgbzWSQOqOwkPW3Ki30N9qD6lYEAf2xUCLapN2ZAuE3N7
	 Cg9BsrNPfuBrEtIBdXrkB730q1LS0F4LJ8xUuR7g9knGz2cScH5KCTQztfUVbjGSpO
	 CitmJOed7+G0idfPhzFfq9yWe4+j2CuQRU1Epb8ICZQhDZz3HzTk5PW3ia8nyJx54z
	 IqyXqMFkh+1QhtSKOOjFGBKirSHgBMvHski49uZLghi8HawtlRSAbhHGOQNie/Fhih
	 9cZFg/dnRnchw==
Date: Mon, 11 Nov 2024 14:57:46 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3 v3] dt-bindings: arm: rockchip: Add Xunlong Orange Pi
 5 Max
Message-ID: <173135828350.1935626.3279818343954125790.robh@kernel.org>
References: <20241111045408.1922-1-honyuenkwun@gmail.com>
 <20241111045408.1922-5-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241111045408.1922-5-honyuenkwun@gmail.com>


On Sun, 10 Nov 2024 22:53:25 -0600, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Max board.
> 
> The Orange Pi 5 Max is a single board computer powered by the Rockchip
> RK3588 similar to the Orange Pi 5 Plus.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>




