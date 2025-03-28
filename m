Return-Path: <devicetree+bounces-161506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F810A7454D
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5154D7A40A7
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C42211485;
	Fri, 28 Mar 2025 08:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfdEU50t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F253B18DB2B
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743150238; cv=none; b=bjKWLafbfh/UQ1e1krREcw111AoJcGbkh9QmU/sq9aO9OG9XiQkGk9XJkJt6tLc/jxBMkTbJ2sDDBKwzPg6YSe3QxdQvqx1NrDtObuqpT6aCU1IWQurbtT6Ze9iBmBP60V14a3pAec7YlYFAn7iNVsi97fophJyV2jAmgV/ahaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743150238; c=relaxed/simple;
	bh=EChM5lZ02vQW3NFPu4SvlJhSoekdEWsTAF8Ta+yEhxs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=riei4s455ho52oRBi3vt8Aq/q++ldxu1xCr3hjuQof6vok5G5WkA546WZGokbw3R6qQdpKL5TFZzfwFFOfDPBGyBTfHvKTw2AEhskS0m1IhIzdLq5GXUqz5set9gOcqcSqU7jbrBB2z4tmOP7TxfapZhp8IMRKfLJaC6jWwLF1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfdEU50t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA09DC4CEE4;
	Fri, 28 Mar 2025 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743150237;
	bh=EChM5lZ02vQW3NFPu4SvlJhSoekdEWsTAF8Ta+yEhxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kfdEU50tAlrImVBnCDiKUb91BGet1mqQjVmlmN0LJxzj3fb6Zx+gnBwOkbROkkaAy
	 VkPuX5MSz7e8ApRUdk12TUrQp1q/IEPIEKPQ+Mq6/J8H75jsOr79xrFQOzv8VT8bRn
	 GnAiYg3pgDS/lt6qLw/HsNRhTcVnlk/9VKDUywnGyqQBsT5B2AG/jX8IkAdKPfiOQC
	 VYGVP89JlLmIG78fyih0GYUoqKKz2xf1T99Bw0FT+pHDQR0bSXWlF8at/5KhtiZHkS
	 O0nh+26hROskyWX6ySHBkfPokPVHjPhT/aemHaTCLeaGA1o1yZIVgd5o2gCWVTLqCw
	 DWoOV+bRBxhjg==
Date: Fri, 28 Mar 2025 09:23:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: justin.chen@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, rafal@milecki.pl, alcooperx@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: brcmstb-usb-phy: Add support for
 bcm74110
Message-ID: <20250328-acrid-pygmy-dogfish-babce2@krzk-bin>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
 <20250327185623.3047893-3-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250327185623.3047893-3-justin.chen@broadcom.com>

On Thu, Mar 27, 2025 at 11:56:23AM -0700, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Please order the patches as stated in DT submitting patches.

> ---
>  Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> index 580fbe37b37f..2e668935b454 100644
> --- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> @@ -15,6 +15,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - brcm,bcm74110-usb-phy
>        - brcm,bcm4908-usb-phy
>        - brcm,bcm7211-usb-phy
>        - brcm,bcm7216-usb-phy

That's incomplete. Where are the updates for constraints? Look at entire
file, not just top 10 lines.

Best regards,
Krzysztof


