Return-Path: <devicetree+bounces-135518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF10A0139B
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 10:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13FE418844D5
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 09:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5240C17278D;
	Sat,  4 Jan 2025 09:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBHBgMlK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F6216DC12;
	Sat,  4 Jan 2025 09:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735982910; cv=none; b=j0l4aJXD/tD28uxTL/HtFkbj09qNlDUTsQvYWCeDcEZkHMJTzjWK/2L+aNwjO85sESYHaZu5pdECLuOIv/3wOudeiEU6Hckt+BSy1hLSuEr4sl01mFpDctCePTHqQMFKDC4ijFrxMZfwafdKgAgpSHaNkNNOxLdGqpiYYFk4W2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735982910; c=relaxed/simple;
	bh=dWbRiUiU5xi02gVTVJwlPazUSmridGlgwAJiHvZ/C2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HifoCkStFQ9W3Pc+cepTRlxUlFGiFJ70NgZxmpPwtZ/9UHaEK+JjI6qY4b8mt1qVHPs4MtPW0MsxnwK9o0nvkPvwq42D3ggm+eHLjdxVCJqAutFbawCLdqsrchlbSZJMaZH0prTVffC3GBVip5cs7q+mzvctzAwa2i6UHdGR23g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBHBgMlK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02045C4CED1;
	Sat,  4 Jan 2025 09:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735982907;
	bh=dWbRiUiU5xi02gVTVJwlPazUSmridGlgwAJiHvZ/C2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XBHBgMlKZ6Dqhu8htPGP4s5rZB87T141RcYR43L/RblY0rr89i1R3Sec55/1uJlJ9
	 BTF2yFG+HhBtKd0o9vU1iBvSdyBkgluhvBxmgjsDNXadUYu3iXkCLw55EzGrCLFOsV
	 k6GNFThqY+6/rCVvIP+pgx8autPd0cS8T9zfR0HfkmG1EINGGdGF8j/YjRpVTo0fik
	 uZIJg/wm6PwP+X+UaGXZjMMy7EPRp2rD1MBsuWgH6gjXSfn/AWQI0wulkcniOji/ow
	 e9lkIkqchXbmDor9wOpaMylCOHDZkw9X8vlc7zED4trHBjxZX6RzkutUy7n4M9q8YC
	 PE/baeyOJ+QbQ==
Date: Sat, 4 Jan 2025 10:28:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
	Romain Naour <romain.naour@skf.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: mfd: syscon: Fix
 ti,j721e-acspcie-proxy-ctrl compatible
Message-ID: <iq7gkfv2jjm3cn2winqduovmw5b7xquhuqmgjjzfjj5yx5klex@daxfzgeiu3nr>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-3-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250103174524.28768-3-afd@ti.com>

On Fri, Jan 03, 2025 at 11:45:23AM -0600, Andrew Davis wrote:
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old
> tools work.
> 
> Fixes: 8dfc4a014086 ("dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible")
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


