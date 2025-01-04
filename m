Return-Path: <devicetree+bounces-135516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9167AA01397
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 10:26:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60093162060
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 09:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561AD16D9AF;
	Sat,  4 Jan 2025 09:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3Gtsjx+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4E113DBB6;
	Sat,  4 Jan 2025 09:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735982791; cv=none; b=M/bxVPeEZx6P+ce685zDzyeopDW96cU/CSKPF/bqwgkCS2/xF7xr2aa/bjpJD2NVun9MCUxb92Rph2kY3Ww+c2sDysyqqTH7Z/MTzx3UpAPu7KPmDv539mK8a8kNCSnp2tO9HZhfVmR7JCTd5oDlhkRKCY6q23E1ybifXaOeoSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735982791; c=relaxed/simple;
	bh=LFY4U3OKYKEjEv828+0XX9EvdbQrFa8HpKgheIerKxY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=urjmNRX3Abxkt2vCCwd0u68SvDxSApuQq4xsCGFtrNxdR3LoBxxl6rk5I9duVJsoqpQoIHQ1CgDRCJrbAQXMXucchsdAV+sMvOlLrzlK9LKkygZPf9q3K6Ztu//wSf6VUEjIoh1QXLD4aYpyBxOPC1Ny1noEgk1xVPMjmcYJrzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3Gtsjx+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8FB9C4CED1;
	Sat,  4 Jan 2025 09:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735982790;
	bh=LFY4U3OKYKEjEv828+0XX9EvdbQrFa8HpKgheIerKxY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q3Gtsjx+f/bLkcQD2YHUgiaPj6YZAMSSKY5pFV9Aig04DRe/gk/BBoOBCNJUpL1CF
	 ymytOmAQvWEYTsqVflvT+HjlZZ8Ruje1HVUkzZCn4mVlA5m9lVdXYEbD7iG4OhxRnd
	 wWOHYEfh/D+bYT71tO8dV1S0F0gPBuYifYLVUpiu16kbJRwz1Sue+xdVp4loDOO2Yl
	 5e/lq760PkPEw2Ko7wtzRbJymE5rVieMFSSkDjvMKDzIMOpqX+L7v7xWTKRoFuJSjT
	 qc5SmZ4lOdcomZC4GJMAZK/vaBZYKmDVw5rQOSvPVMjFV2y+GzopKv8T21QdNd3e1f
	 N0IWmRIhxTc1A==
Date: Sat, 4 Jan 2025 10:26:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
	Romain Naour <romain.naour@skf.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: mfd: syscon: Fix
 al,alpine-sysfabric-service compatible
Message-ID: <4gl6ycepzd4r5ycki4wqmc7li36e2ves4j3iraa2xlysh5rpbe@4yqonsxcg4qw>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-4-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250103174524.28768-4-afd@ti.com>

On Fri, Jan 03, 2025 at 11:45:24AM -0600, Andrew Davis wrote:
> This compatible seems to be missing the last 'e', looks to be a typo
> when creating this file. Noticed this when diff'ing the two compatible
> lists (which should stay in sync).
> 
> Fixes: f97b0435c857 ("dt-bindings: mfd: syscon: Split and enforce documenting MFD children")
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


