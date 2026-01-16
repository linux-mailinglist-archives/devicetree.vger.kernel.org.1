Return-Path: <devicetree+bounces-255911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E895AD2E0B8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCC5E3040641
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616CA2EC081;
	Fri, 16 Jan 2026 08:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XocVInbz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0682BE02A;
	Fri, 16 Jan 2026 08:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768552190; cv=none; b=eB5ILb2CFd07jsrjyr4mSUmJwu2wqg+g7JLoPQufw4/iPLxOOfz4HzJdMh7TiMwGW6+LbcOPqT/orCQgNkGGVdlcFsLafQmkt3in1csCHZ4t4Gc4eR7aCNL7jrPC7ZTGOi81c8fsBK74MuUFn3gf90Ov2PhGYQeRS2i3bcLoikk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768552190; c=relaxed/simple;
	bh=Al3kFcaB7akn7z3aiSKGU7xXbFyv/buj8pvUdwLKR+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HmizSYUh0viHdtIPSvFVrAgFajE8mYTOQy+BvZFJBsqtrxmZlA4P3Otwhs/Qn75kIFf1RIFUjyrl5Pi8f4BOL7aFEVemXZX/4hqqdjtiSHcTlQrzNSmZWngNTJCgWiepI7q/pCj/YOfnFm4I9NEws9jmj5oNzY8sXfBcNMTiLxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XocVInbz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52D25C116C6;
	Fri, 16 Jan 2026 08:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768552189;
	bh=Al3kFcaB7akn7z3aiSKGU7xXbFyv/buj8pvUdwLKR+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XocVInbz2p03kKy8b5KdS72+S5ZeKy8D4uqX+QmYwGCXzaPYdtAuUXMJ6YyAAQ8Af
	 KHzm4hPwJ4CLJziirgcWWAaeuDrcWX5+xC5sfxd9EHMdViRJyx4vkFEb0rI5Vu96A/
	 f9UG3I6ykQP8j7gdK+flEW1FW7m6kja7KJ194dXhwfkvya5xS0tCJbCp25tjhWyAe6
	 D0qmijuRhU5aXLro+0jMY27rTI1zAFqf/V4fB92iDPWsqDG8t1i3Rflzl5PvDfrjc1
	 riw8M2iO8MG6msZwe6vPUtTXnISp/SVLjqcXX5GqKH9FAaSKIVGgFTSFJOyIA6fADq
	 wIy3cSpzZ72dQ==
Date: Fri, 16 Jan 2026 09:29:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, David Lechner <dlechner@baylibre.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/4] dt-bindings: mux: gpio-mux: add adi,adg2404
 support
Message-ID: <20260116-invaluable-ambitious-piculet-dade13@quoll>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260115121943.23715-4-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260115121943.23715-4-antoniu.miclaus@analog.com>

On Thu, Jan 15, 2026 at 02:18:21PM +0200, Antoniu Miclaus wrote:
> Add adi,adg2404 as a compatible string. The ADG2404 is a 4:1 analog
> multiplexer that uses the enable-gpios feature.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v3:
>  * integrate with gpio-mux bindings instead of separate adi,adg2404.yaml
> ---
>  .../devicetree/bindings/mux/gpio-mux.yaml     | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> index 199792d42323..f5866b9f46dd 100644
> --- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> +++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> @@ -19,7 +19,9 @@ description: |+
>  
>  properties:
>    compatible:
> -    const: gpio-mux
> +    enum:
> +      - gpio-mux
> +      - adi,adg2404

I do not understand why this was placed in gpio-mux. You have a strictly
defined hardware, with known muxes, not a flexible semi-software
binding.

Otherwise please explain: why do you have both 0 and 1 cells?

This is supposed to be in its own binding.

Best regards,
Krzysztof


