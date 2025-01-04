Return-Path: <devicetree+bounces-135517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A45F4A01399
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 10:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BCEF3A3351
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 09:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40AB16DC12;
	Sat,  4 Jan 2025 09:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZhG84r2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9C513DBB6;
	Sat,  4 Jan 2025 09:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735982885; cv=none; b=nzd65QwgSFVqzM1yuly+tF1Le8BEnNA/dLon6LRhAgYOBg/GEyGSNJKdBCoSHmpaCLjESuRY62iHn0FWrIQ98J9t5IRqnzfvtsQyLCz4ctyxW8st/UDHDmTW+9HujaJrZmE6aSF15APhptDOQlw35IBQbJY6pBruENYWr8etWgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735982885; c=relaxed/simple;
	bh=8/ZWEM4I1iOjQ9hvFkz0JBAzlV2Q/s1zGplLJXCXu0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iyKapOdQg48erXSC/dHspQBrtq/g7924iourXICLFQY9mt2y6HQPvZnqe2cNp6gZmE8nlDJ6FF62EfaR0zJ/tp0puJ94+3yjbRtO9N5YtInwjAmezyAoqm1zzi3PVo7rp2r51Iz7+dcRB16ZZbJHkjT4RawYBexyy6QRgUroXLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZhG84r2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61AA9C4CED1;
	Sat,  4 Jan 2025 09:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735982885;
	bh=8/ZWEM4I1iOjQ9hvFkz0JBAzlV2Q/s1zGplLJXCXu0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RZhG84r2b/WFS+2gulpy/DyMLtr3UYBsHbhNni9o1zD+kqxUYZKSMbG3QGE8ZtSTy
	 21RUkwIx9QMXIX8tO+SFgopala5ga6e9cWl4H0EsyN9kv9wVdhvgBlusJtKXMVZjzN
	 UzaAvU1xqe2aTAK68aFVh14QI4tB7dfpx3cPEXpSPzO0C5o/lVDO2NCSDqgWIed+0S
	 EgJOSGkfwwrnYKmBtEpivAZEyLMgI2PjquH+vMchWlxfR5oEouQSg52dtef1lVW5lo
	 PsnoXm+SwfMXE1/AyF/j3u4DyqizKYu85IP6UXwUUTlmIR+c8Hunsw+QucvFfH1/8k
	 4EHYq4Eqf721w==
Date: Sat, 4 Jan 2025 10:28:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
	Romain Naour <romain.naour@skf.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: mfd: syscon: Fix
 ti,j784s4-acspcie-proxy-ctrl compatible
Message-ID: <dghnlh5q6kr3sxix6qjv3egontxoasiu4ll6a3gamzpiwxe2i7@3qfbv5wawf5m>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-2-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250103174524.28768-2-afd@ti.com>

On Fri, Jan 03, 2025 at 11:45:22AM -0600, Andrew Davis wrote:
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old

That's not a list of compatibles, but just select to apply the schema on
older dtschema.

> tools work.

This compatible was simply never documented and never really worked.
Original patch was probably never tested. :/

> 
> Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


