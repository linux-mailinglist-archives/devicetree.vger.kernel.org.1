Return-Path: <devicetree+bounces-167940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5818DA90CF6
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 22:18:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CED8C5A2CBE
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81729229B30;
	Wed, 16 Apr 2025 20:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hivB+Jet"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DA721B910;
	Wed, 16 Apr 2025 20:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744834677; cv=none; b=an7SrNEjXyH9L81XT9VTBnxNoji5w0Xg3rY+jhva6Ccy/kTChOYZ0wlF2XzIGEClCiev+P2pcu0uHAZHeb2GHms/sIB5c5H4GRn/rcmotQo+dmcKg26D2w7ZnoKCf9zy0L9toPd+I3JbXUjvbY/71UXOmxwTON4SLGsqh3DGJw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744834677; c=relaxed/simple;
	bh=Rqjfm170FU04ptSuzldQXNurK+mFSfeb6c6X8NWF9pM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ppefhh2Yw2ALlmlXkYlDgIyR72bgGOji7W9Wxu8NOqjqCt5iJ881+LKAV60kqhrjE8OoNDz5NkRCbTapUSbJpvHpBU6Z7JzkyRL8tv+qeG9treWqogwZlR2W6xB11U/xjZ/3g1R/6GEWugAkE3NlnQ0JHB+/azSzrXsA8/cLbiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hivB+Jet; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88D5FC4CEE2;
	Wed, 16 Apr 2025 20:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744834676;
	bh=Rqjfm170FU04ptSuzldQXNurK+mFSfeb6c6X8NWF9pM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hivB+JetRtogsRvxo2jcHwJQU7ACyQBe7X6ol7HpWhfrKq2kebyAGsXVlg4hb+EwA
	 ZMxSbHkTE79VtFICzI6sJ3n8e9UcmyOnkFlEz+nrT5KIegI3hx5+2FNkW71kVsTVjL
	 NGcjF+jgq9y7KELzkZk8cF4+zTha+tmRRqFcI3ykUJ+UupOWiT4VFbobS8zuxFtYS+
	 hLXN41GvYwYyyx7Mt7OTwcGBRI8VKtndBloxgsz679gQW2BEhLh31YcrlFPLk9VbWQ
	 oBFxVe1Y6NloUXt/l6TUWex7vQLKXpHEv6c5VLw75wv6RLAjbx9hb6GJp+ZOOkemF2
	 txyThFvyc+8sg==
Date: Wed, 16 Apr 2025 15:17:55 -0500
From: Rob Herring <robh@kernel.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-pwm@vger.kernel.org
Subject: Re: [PATCH 07/13] dt-bindings: arm: vt8500: Add VIA APC Rock/Paper
 boards
Message-ID: <20250416201755.GF3811555-robh@kernel.org>
References: <20250416-wmt-updates-v1-0-f9af689cdfc2@gmail.com>
 <20250416-wmt-updates-v1-7-f9af689cdfc2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416-wmt-updates-v1-7-f9af689cdfc2@gmail.com>

On Wed, Apr 16, 2025 at 12:21:32PM +0400, Alexey Charkov wrote:
> APC Rock is a development board based on WonderMedia WM8950 SoC
> released around 2013. Paper is the same as Rock but lacking a
> VGA port and shipped with a recycled cardboard case.
> 
> While at that, put myself as the maintainer, given that Tony is
> unavailable as of lately.
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/vt8500.yaml | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/vt8500.yaml b/Documentation/devicetree/bindings/arm/vt8500.yaml
> index 5d5ad5a60451f569e6ef30c924a1964d02e1aa82..1906a8843b0ceebe31eebc3b429560dd0d9cea6a 100644
> --- a/Documentation/devicetree/bindings/arm/vt8500.yaml
> +++ b/Documentation/devicetree/bindings/arm/vt8500.yaml
> @@ -7,19 +7,22 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: VIA/Wondermedia VT8500 Platforms
>  
>  maintainers:
> -  - Tony Prisk <linux@prisktech.co.nz>
> +  - Alexey Charkov <alchark@gmail.com>
>  description: test

Delete this line while you are here.

>  
>  properties:
>    $nodename:
>      const: '/'
>    compatible:
> -    items:
> -      - enum:
> -          - via,vt8500
> -          - wm,wm8505
> -          - wm,wm8650
> -          - wm,wm8750
> -          - wm,wm8850
> +    oneOf:
> +      - const: via,vt8500
> +      - const: wm,wm8505
> +      - const: wm,wm8650
> +      - const: wm,wm8750
> +      - const: wm,wm8850

Keep all these as a single enum.

> +      - description: VIA APC Rock and Paper boards
> +        items:
> +          - const: via,apc-rock
> +          - const: wm,wm8950
>  
>  additionalProperties: true
> 
> -- 
> 2.49.0
> 

