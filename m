Return-Path: <devicetree+bounces-251994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47350CF9562
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BDD9A3009691
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC82D242D6A;
	Tue,  6 Jan 2026 16:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqUzJ+Ia"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDDB330B20;
	Tue,  6 Jan 2026 16:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767716831; cv=none; b=tGe6wJ5kKevyX3M2f1PVZTDPHRoQAqXs1W0xcKCql/HPukSK6oTi52XYAVI0ZFVeQNU4x/LYsF7+Ufp+wOcYtAoUl08H9PBSZEEsFAk6/iGGOQJs/UbY9mVEyY2bOvQHAzXfM/Z94TM4aLiAOftEDhR0KDe52k4E6ZK4mnOW3nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767716831; c=relaxed/simple;
	bh=cGpWhe23lT2709NvSBBr91G5iARd7mIGcZmENnU/auE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GnyTkn2jebRIylwrEOtgaUSgitv+1FNWVB1YZm9f2Ygm5dP/HbHzE7GXoxnkiZv3vVLX9FE4XddkavxJDClkgaYVp2U6AvtKEcRrlNTA9cwxtFLjWEdsl39ObybAHvYV2wkTuz/DX3nVPnaeboRBiZeNl0LOG2kQ85fOAtZ3Pcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqUzJ+Ia; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83487C116C6;
	Tue,  6 Jan 2026 16:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767716830;
	bh=cGpWhe23lT2709NvSBBr91G5iARd7mIGcZmENnU/auE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AqUzJ+Ia+xTOtcHo1w5mlkY08zHPM1dLf4bPX6VaU+nJ4QTbJurWuZhnmg6cP2niL
	 1yEpBNMYkAiA4CSozaOJQ2lAXsA+6GDNBEyBawIMsL8Z0PAKFgs4kyUu4t+wVvL/Q0
	 K5pnhkQUEIHU7vdc/i7BjAlxQwWB0OeSWxjV8aDfpWzah7jpbZWEApoM7qzuRtns2e
	 6P1bfTXkD5uE2CNJ5hxL/65vriwITQNqWE+s6omJUMWwGm59SMZMVVD3wcdXuyIHVX
	 pVgu+UOoZD0KMQU2tFzxdhjPOPapjklflIoF87BgMQGSn0KNubb1las1/EdIVF8K0W
	 3cuKPG4zmZgfw==
Date: Tue, 6 Jan 2026 10:27:09 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH] of: property: stop creating callback for each pinctrl-N
 property
Message-ID: <176771682221.2176029.6949882881378864931.robh@kernel.org>
References: <20251219121811.390988-1-linux@rasmusvillemoes.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219121811.390988-1-linux@rasmusvillemoes.dk>


On Fri, 19 Dec 2025 13:18:11 +0100, Rasmus Villemoes wrote:
> While not a lot in the grand scheme of things, this eliminates 8*2
> pointless function calls for almost every property present in the
> device tree (the exception are the few properties that were already
> matched). It also seems to reduce .text by about 1.5K - why gcc
> decides to inline parse_prop_cells() in every instantiation I don't know.
> 
> Supporting double-digit suffixes would still require tweaking, but it
> does match pinctrl-9.
> 
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/of/property.c | 32 ++++++++++++++------------------
>  1 file changed, 14 insertions(+), 18 deletions(-)
> 

Applied, thanks!


