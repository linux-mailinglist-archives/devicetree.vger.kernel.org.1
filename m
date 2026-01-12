Return-Path: <devicetree+bounces-253799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FC3D116AB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4527930C369D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E70C322B66;
	Mon, 12 Jan 2026 09:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRvOj1aO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB443090D2;
	Mon, 12 Jan 2026 09:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208828; cv=none; b=qOIkWgXUcx/dn2YDom2VBjsP+DcFuW5YqbrWaZCwsg0BuU9cJ2G51zQNU4y9cAQTG5hfiWQ1nL997Lfe5lPjtM9lzxGnZz/l/iSKzttq34opNsIINQSPQMzQkXRGEZdPenKYyES6naQZLH43UCf7bRLtvghfT8E/p+Ea7400AfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208828; c=relaxed/simple;
	bh=BTb8pbhyC1oJxM6pUV77pioSiIIHU6svZzVv7lDmZwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JwXCRltahVWMXipr7Nt96U4iuScqJplJ1mhIZ+Co1jjYrWtcYVdfN7x+6vNnZXFuKv30sZLR7QJi3bAzWUSr60gbzZT38Sgroxea7cmqk6ffXa9XxIqXa8VT/q4BTxn5MoqzCJczlaFXS5w1i9GlQ2laTV62cb96RPeFnGKQg0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRvOj1aO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC10C116D0;
	Mon, 12 Jan 2026 09:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768208828;
	bh=BTb8pbhyC1oJxM6pUV77pioSiIIHU6svZzVv7lDmZwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BRvOj1aOZICX6wkNxoyeOInlzjC3lzEvrNN8V+0SRgrwJQFJGf0IITzeNHMGZJLdU
	 +gJFkxFgd12iyVBHC/eNIQwcTMepy5asPZdiz1bdvKjxIM4Oc4oytWcaSy4NzOYPv2
	 YdBy7gGRMDA7E9I60xKa+jCAeAKzAkBzAAnmIeubKhKCdCRey8DOtZVIYgm8xHhmAG
	 CsL2Dis20DQtZkcm2mV9wWWWaxfGa9aYaxmXPBRjJw4U4klQkVuRKR362efTQNKqeU
	 +zp+uP4rsUj5Q8cHccpwk/x+M8HlJYhaFAl/Ql9v2f7jDMnY4xsvQ9Y8Hmuo5Kz7+U
	 2Jb71OYfzmK+A==
Date: Mon, 12 Jan 2026 10:07:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanho Min <chanho.min@lge.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kever Yang <kever.yang@rock-chips.com>, Kael D'Alcamo <dev@kael-k.io>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2 v3] dt-bindings: arm: lg: Add compatible for LG1215
 SoC and reference board
Message-ID: <20260112-agile-elite-tuatara-dea08d@quoll>
References: <20260112053421.3185738-1-chanho.min@lge.com>
 <20260112053421.3185738-2-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260112053421.3185738-2-chanho.min@lge.com>

On Mon, Jan 12, 2026 at 02:34:20PM +0900, Chanho Min wrote:
> Add compatible strings for the LG1215 SoC and its reference board
> (lg,lg1215 and lg,lg1215-ref).
> 
> This SoC is the next SoC following the LG1313 series, developed
> by LG Electronics.
> 
> Signed-off-by: Chanho Min <chanho.min@lge.com>
> ---
>  Documentation/devicetree/bindings/arm/lge.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/lge.yaml b/Documentation/devicetree/bindings/arm/lge.yaml
> index d983ef7fcbd6..0d0661470eaa 100644
> --- a/Documentation/devicetree/bindings/arm/lge.yaml
> +++ b/Documentation/devicetree/bindings/arm/lge.yaml
> @@ -24,5 +24,10 @@ properties:
>            - const: lge,lg1313-ref
>            - const: lge,lg1313
>  
> +      - description: Boards with LG1215 SoC

1215 < 1313, so this looks oddly sorted.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


