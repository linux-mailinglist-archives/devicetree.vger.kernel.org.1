Return-Path: <devicetree+bounces-253557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48833D0E9A0
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 11:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82F0130139A7
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 10:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A31E335555;
	Sun, 11 Jan 2026 10:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xzq9hh3M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F305F330661;
	Sun, 11 Jan 2026 10:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768127862; cv=none; b=QfTxIkXAAaefZsWSIXVdhQgn6RcEBbHXmNe1K4SV8cjn6E5ZkEyFKduLuqECw8rm86qUGK+SfyTDelTIrv86eudSi7/mEKgA39a+gk5ep8lbse/dLcAEYNaYg/DZvYsXf4+WmYO43/6ix5Nj5SuvM2vu/5ngS/15ADnyzO3IrTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768127862; c=relaxed/simple;
	bh=9UpBDNHe5jcoYRtrv4gn8uXXwDp4yiBsR/f8enh8Hyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rFJWwrJOpYsGAev+gMz5NEHAEdFjoPFlMnEPpYpvr/Eo+seaP6lDuaj8FSaRStA+pXrScgXFrUvg/1cN/JjhSRrTi5rXwU5Oeu5CkNkZz3Wnaxesqj43528ISzZAtqDykgmNd3OLCiBVzWs1mT6gIOlicqdiTmiQv01O6ynNA84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xzq9hh3M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1642FC19423;
	Sun, 11 Jan 2026 10:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127859;
	bh=9UpBDNHe5jcoYRtrv4gn8uXXwDp4yiBsR/f8enh8Hyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xzq9hh3MT9GZEifu4fhQWEdPRgrFYoGfUw/Mq8y6aLgmNrR2+0GaLHljvBgfM8oJR
	 9jhngsGNLPJRNF4O6ih3LAGfUT8aU2xTusklouJdDYjWG7BtghzqGA49HJ0Ry3m+e5
	 pkP2iGldANmKazxyiE2e7rCOeXUFx9JAFKiEPJbwwi8LISnBFe1IzGHb/pT3cx66AB
	 cfj+Bst1f7ujbj0Li/YO7hgNbiNpGNfF0g4cjHd5L8UtX2EYvzRDyN0WN9qF2jbVN5
	 B3eHxP1EL81ClisWyH7VbgzGaIgc3d0rxBT8p6LZhzqSDdtQeUFm3gheMUSuUDKuna
	 9P0ihrFiF3kqg==
Date: Sun, 11 Jan 2026 11:37:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>, 
	Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: axiado,ax3000-emmc-phy: add Axiado
 eMMC PHY
Message-ID: <20260111-camouflaged-shiny-wrasse-796dbd@quoll>
References: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com>
 <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-1-dd43459dbfea@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-1-dd43459dbfea@axiado.com>

On Fri, Jan 09, 2026 at 05:43:29PM +0800, Tzu-Hao Wei wrote:
> From: SriNavmani A <srinavmani@axiado.com>
> 
> Axiado AX3000 SoC contains Arasan PHY which provides the interface to the
> HS200 eMMC host controller.
> 
> Signed-off-by: SriNavmani A <srinavmani@axiado.com>
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---

You did not bother to test your code...

Best regards,
Krzysztof


