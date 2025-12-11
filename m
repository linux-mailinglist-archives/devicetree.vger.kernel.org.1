Return-Path: <devicetree+bounces-245874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E77F2CB6698
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 17:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E94F300C5DE
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 16:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6883A26E710;
	Thu, 11 Dec 2025 16:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcO3NBxt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403422773F;
	Thu, 11 Dec 2025 16:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765468816; cv=none; b=ulAoeRz/vZ1a4MEX113iTwolMiT6lxYtcwVtvmzKE6cCQIuoknIT+MwARb/XTbvi7rZ/Z1+EZtL3ngVVgnG9lj3iIzli7OFca89EvoMLZ5cpB4QtgSJTr8sAgTgdcmJg7ihABK69Q78FC1sWP3obiY6nfl7vfWQfkSJxkvALNXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765468816; c=relaxed/simple;
	bh=tWm4pp9IdFxUH810SQiXnaXzZK3H8gSPlK4Uk4k3lX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AW9d2XO5byj40orpOvWkJNVfi1nH6cVdQDMfZkDwTMi3e3wDZJY576O2jYLMK96Hkkf76WBJclGkzXIs2aNZKKd2WWGTqg0mxsiGPzgOy8q5OBUXWjYmxTl3I/s8g5FYiNN9Dn5MC6H+YITH+AEEyLCTQbZTqGiU1mw+Z3+evbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcO3NBxt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C9F7C4CEF7;
	Thu, 11 Dec 2025 16:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765468815;
	bh=tWm4pp9IdFxUH810SQiXnaXzZK3H8gSPlK4Uk4k3lX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jcO3NBxtMdynpjom17YQeJxXaBc2oKdYd/bYhNZikoyCc0oYEQ/0u+Url0SIuyYua
	 vm/Am4GobA6FaiuZGd+z5h+mpLJNRnxSHpy/7Xu+ZMFejygTi3HU3X8ftpaXo+KVb1
	 xKODMRpc7wkPinmLVWpugfg+fF8nSIfQ0WnoL5+eCp0BfGg1QQVWZPJW8Cs9E4n57P
	 j1BdoqLPY220li3kcu2jar4uOjjaAvxj7Jf+MU2voHRT4PDFjjmLt5FKOwoK2Ut32y
	 L11wicXjpu9zTpWJ3XpXVgz2Z6RCGEfFKe9JaQ680IX9Dvpa1NK2AdBTekEv/q4Dx4
	 MRpW1c0UNba6A==
Date: Thu, 11 Dec 2025 10:00:13 -0600
From: Rob Herring <robh@kernel.org>
To: Christophe Parant <c.parant@phytec.fr>
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	upstream@lists.phytec.de
Subject: Re: [PATCH RESEND v2 03/11] dt-bindings: arm: stm32: Modify
 STM32MP15x Phytec board items types
Message-ID: <20251211160013.GA1485420-robh@kernel.org>
References: <20251210101611.27008-1-c.parant@phytec.fr>
 <20251210101611.27008-4-c.parant@phytec.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210101611.27008-4-c.parant@phytec.fr>

On Wed, Dec 10, 2025 at 11:16:03AM +0100, Christophe Parant wrote:
> As Phytec manages different SoM configurations with different STM32MP15
> SoC versions, modify the phyBOARD and SoM compatible items to "enum"
> instead of "const".

Change to enum when you add a 2nd string. I don't follow why you would 
do that either. You have more than 1 SoM for stm32mp157?

> The description concerns PHYTEC SoM equipped with STM32MP157
> ("st,stm32mp157" is "const").
> Also add comments in front of the enum items to be able to identify the
> compatible string with the phyBOARD/phyCORE names.
> 
> Signed-off-by: Christophe Parant <c.parant@phytec.fr>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 408532504a24..fbd3d364c1f7 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -182,10 +182,12 @@ properties:
>            - const: seeed,stm32mp157c-odyssey-som
>            - const: st,stm32mp157
>  
> -      - description: Phytec STM32MP1 SoM based Boards
> +      - description: Phytec STM32MP157 SoM based Boards
>          items:
> -          - const: phytec,phycore-stm32mp1-3
> -          - const: phytec,phycore-stm32mp157c-som
> +          - enum:
> +              - phytec,phycore-stm32mp1-3 # phyBOARD-Sargas with phyCORE-STM32MP157C SoM
> +          - enum:
> +              - phytec,phycore-stm32mp157c-som # phyCORE-STM32MP157C SoM
>            - const: st,stm32mp157
>  
>        - description: Ultratronik STM32MP1 SBC based Boards
> -- 
> 2.34.1
> 

