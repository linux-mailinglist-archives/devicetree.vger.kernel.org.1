Return-Path: <devicetree+bounces-137039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7377AA0750C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B76903A059F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B35216E14;
	Thu,  9 Jan 2025 11:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZWN9Cko"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EEE2010EF;
	Thu,  9 Jan 2025 11:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736423325; cv=none; b=fP+J8Sc9nrbLVWh9+iwGsYGsfg2SZNV5RU4ajCkUY1u7sS0XxQ/bg1bvfzNYNYBmFzVswZJEmLMWQJaADUVBcIfCsWF8J9057ZO4UQwGHziq6JYkYKOX6DJ6F7mbv6RR3okf6p/4GBI7ONDvHfySBwznxUsZiTePpCWHGYLqB0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736423325; c=relaxed/simple;
	bh=MCSFNK0ljp5bhn33G8Uty0pdryj9FVXs2i1ZQpHdKg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ga8ny2sXpw+zwNNNtD79yMuYZKbb8pKkt+iUPYLIwoS36DdM5+A4Bog/yqEQXvY+htu4ZrV5ZehAPlvcZc5TnZVt3BKMZW2EBszOt+RKYtbdIu7pj5H+zzNLLNIHne3oijAuR6daTtEM3LaSkWPWOLsIwcOpIyK96LNpnWt2eVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZWN9Cko; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB2D3C4CED2;
	Thu,  9 Jan 2025 11:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736423324;
	bh=MCSFNK0ljp5bhn33G8Uty0pdryj9FVXs2i1ZQpHdKg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rZWN9CkoTalTHppgMVw1B8nSdgWyXRGpBZteg4YRw13BBjUICSDNEJNAtW4b4ZhBL
	 FfSRkib3PL59xNXN+uPeycQVTnMhypMq3ozv5Dp9HmKoHE8D2/U+YLA2SEOEUtb9E2
	 z5A2bGeqD0ESXVvtGjmp/k53o6dJz+qBfUNWpiyi9E/+hIqh12u7vCffeEqoiey61K
	 A4M4kA17PlgvcmLqikdtqap7RLvLWXn/29aq1coRh39OIkg3KQ2cjvXQP5RLkiWAu+
	 CTIAj5AZWCXGMjZFuiyKYRVbWkjaLZ1hUNr1W4MvTs49wMpDYvGetNo5x8Pmv5KLn2
	 OhsEScWpL7ydQ==
Date: Thu, 9 Jan 2025 11:48:40 +0000
From: Lee Jones <lee@kernel.org>
To: Romain Naour <romain.naour@smile.fr>
Cc: Andrew Davis <afd@ti.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Romain Naour <romain.naour@skf.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: mfd: syscon: Fix
 ti,j721e-acspcie-proxy-ctrl compatible
Message-ID: <20250109114840.GF6763@google.com>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-3-afd@ti.com>
 <48075e22-3231-4169-99d4-20fee4ad9b7b@smile.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <48075e22-3231-4169-99d4-20fee4ad9b7b@smile.fr>

On Thu, 09 Jan 2025, Romain Naour wrote:

> Hello Andrew,
> 
> Le 03/01/2025 à 18:45, Andrew Davis a écrit :
> > This compatible was only added to the list for compatibility with older
> > dtschema (<2024.02). Add it to the other list also so both new and old
> > tools work.
> > 
> > Fixes: 8dfc4a014086 ("dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible")
> 
> This commit is no longer part of the kernel git tree, I'll resend the series for
> the j721e with your fix applied.

So drop this patch and take the other 2?

-- 
Lee Jones [李琼斯]

