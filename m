Return-Path: <devicetree+bounces-2603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D3B7ABAA0
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 98178281E1A
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5369D45F61;
	Fri, 22 Sep 2023 20:49:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4117E22F00
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 20:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09E0DC433C8;
	Fri, 22 Sep 2023 20:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695415770;
	bh=FPBJggAqY3MztbyF5zZ2NdjIeZqv2URtl6MtPiF6gnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QhQdNr5AXpQdzHkF60qZT6YR4V9QaZ0PBw35A2BRTzX2/EeYjvotEXkl+Ygn6/qnF
	 k9y+Xu508Ix2oAPSXjWqNL24akI3+Pb68NuYrTpvQQ4yRUOkoDsrWGhNOLg8mgGipW
	 C2ES7eZrzRW862C5sGdbZN3SVh/VcT6BE6C24LBlLTQrPZ3/vj0O6fWeVLjaNU9pDw
	 awEOaez533uRlXrv2dmKh6Ya18xtQLzaSgQi6+jdaU8Kz74OJP0abISysC74Zz+BPe
	 wVGnjxKNX/pfPn6eHvmlKkR1E0NBEp2GlwlzY8jhJlivxHtprysh7d6oxuRrwJX6xZ
	 Uhuoibj/XBQcg==
Received: (nullmailer pid 3555012 invoked by uid 1000);
	Fri, 22 Sep 2023 20:49:27 -0000
Date: Fri, 22 Sep 2023 15:49:27 -0500
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, Lionel Debieve <lionel.debieve@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Olivia Mackall <olivia@selenic.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/9] dt-bindings: rng: introduce new compatible for
 STM32MP13x
Message-ID: <169541574331.3554336.16089460775037826049.robh@kernel.org>
References: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
 <20230921080301.253563-2-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921080301.253563-2-gatien.chevallier@foss.st.com>


On Thu, 21 Sep 2023 10:02:53 +0200, Gatien Chevallier wrote:
> Introduce st,stm32mp13-rng compatible and add st,rng-lock-conf.
> 
> If st,rng-lock-conf is set, the RNG configuration in RNG_CR, RNG_HTCR
> and RNG_NSCR will be locked. It is supported starting from the RNG
> version present in the STM32MP13
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
> 
> Changes in V3:
> 	- Squashed with: patch [V2 07/10]
> 	- Declare st,rng-lock-conf at top level and restrain its uses
> 	  depending on the compatible. I discarded Rob's tag as for
> 	  the modifications.
> 
>  .../devicetree/bindings/rng/st,stm32-rng.yaml | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


