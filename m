Return-Path: <devicetree+bounces-111825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D379A01BD
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EE13B24516
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C550193089;
	Wed, 16 Oct 2024 06:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM6yX04a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FC918C32E
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729061451; cv=none; b=es5OA5DzxtVAlIR4Zy1XuW1ydomisLVk4Yb5F6CKKdYL9+fxZWmLhrvwvRxhwyuHv/m9FHjM6jsNQi2MKdwLG8iduwr3xT1Uo2vwxZ7dLhN8YIOwU9Da7pZM5E9O8gPp1jezWumWjro3/sunFnnFje18nvc170XFL/rLjXNvn+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729061451; c=relaxed/simple;
	bh=2jUrHH5GhahHmWOKm0XOR0m1uQ6CW6EzBsf+IvUUFpQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gwHj5xz3+o22i6tUqQf1xRcNwtkboJk0GkL2PQdw8vCf8J70rW7qCXJ5I1rYcijRTGx1k2aJUAozeue1GoDoVWmi7KhX4SeB6CpjNCUkLRtJdxJ3scO143kceC4+Ea9XrugpciCA8P5725baicz52bG0SR8mqL3BgZGVhSOPdKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM6yX04a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2551C4CEC5;
	Wed, 16 Oct 2024 06:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729061450;
	bh=2jUrHH5GhahHmWOKm0XOR0m1uQ6CW6EzBsf+IvUUFpQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DM6yX04aTezkh4TaiZKoTVCDHLuF2IATV8rQOhJZwzekuABEABuOcYiyEl80C2Mwa
	 Vyew4tlhkf3trCOnPNM12MAszCOZJutyVouwdOQqTxAwVurQw4J4uoW+IabYFiDsVK
	 9cHs4lblQideXth405sGVg9JvLeTfeNFnNoADUUnYiD7sTBykpv82uVS9VqGyrgDDO
	 QvMy11YIkmPevgmk0Dy11UWlicw/uD5imRHCMNnqgBxg7AjwmCuCdj5cUwUhNPclcT
	 sxVE+l5cZm0RxAzEzwpIIDvQgMOGHOczZjS1Bzz5/voiQRnLNI7zIE6JetXD49VOdC
	 /IAc1zBbOiNhQ==
Date: Wed, 16 Oct 2024 08:50:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Message-ID: <4eywdjkuei7itd2grhtms57p5e5bqlsg7qg6ifjmqzwfzj66o4@un662ws7thiy>
References: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
 <20241016054842.3435609-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241016054842.3435609-2-markus.stockhausen@gmx.de>

On Wed, Oct 16, 2024 at 01:48:41AM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
> 
> Changes in v4
> 

You still did not respond to my feedback from v2. I reminded you this at
v3 and you keep ignoring it.

Limited review follows because of this.

>  - fixed addresses in example
>  - missing firmware-name denotes "skip firmware" instead empty string
>  - fixed reg porperty
> 
> Changes in v3
> 
>  - renamed to realtek,rtl8380m-serdes.yaml
>  - removed parameter controlled-ports
>  - verified with make dt_binding_check
>  - recipient list according to get_maintainers
> 
> Changes in v2:
> 
>  - new subject
>  - removed patch command sequences
>  - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,rtl8380m-serdes.yaml | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> new file mode 100644
> index 000000000000..8ccb3a34b221
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
> +  and RTL931x series have multiple SerDes built in. They are linked to single,
> +  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
> +  the integral part of the up-to-52-port switch architecture. Although these
> +  SerDes controllers have common basics they are designed differently in the
> +  SoC families.
> +
> +properties:
> +  $nodename:
> +    pattern: "^phy@[0-9a-f]+$"

Drop nodename.

> +
> +  compatible:
> +    items:

Drop items and place here enum directly.

Best regards,
Krzysztof


