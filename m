Return-Path: <devicetree+bounces-77747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 620A290FD9E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:24:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F009E2817CF
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 07:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0EA543AD2;
	Thu, 20 Jun 2024 07:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPSB/nNu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71B042058;
	Thu, 20 Jun 2024 07:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718868265; cv=none; b=TK4VisWQY8VByqxXVgiTGboNuuM09MEAQSOWf+Vn4IfqmiirUY++5mFQ4ZN7FR86qB23Brq3M7gfdalECLGt4ah+4+fBcxPRijyvS9Kmbsj81LdpSS0Hr6L7FW7ggQTqpti4EtDRkvAbXO1jZ6UyubpZxX/z5F18Le+Dj4/fmKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718868265; c=relaxed/simple;
	bh=bFxZk/qrW9Ux3NsamNQ01/iN0dHJ3WeihXjldjVbGxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cUYULRUapKRfSSnJn8cUWNd9Faxbb8DHv6uOIfw3DLe9Qe7CxbXXvKFHynkBHt4OYzIKHTxY4zhNBJM6VJ0ZDTa9lvcbiBsX1B7LwPzPnJQdysPhRUXNj4SGyzPbLx4EXm6QfdsS42UDj85NNY9YGBMqjRvF8rZvvDz+J145F0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPSB/nNu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7B58C2BD10;
	Thu, 20 Jun 2024 07:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718868265;
	bh=bFxZk/qrW9Ux3NsamNQ01/iN0dHJ3WeihXjldjVbGxw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PPSB/nNu7/o86f2uDySNS6iU6hxlce1Rwnz8eiqLAK0rTUr51kHgQ9kFXKXpi2BoX
	 7M9ZHBzla44SomIdu8IyT8cWW6s1sAylFnxKgsoaNrwMfVmK4zx1ytaDwzIv3BYv1m
	 ss0J2Vr1zB8DpWs9uTOaHKsZBL07djgpDWKtEGx8ICv4rPI6yY0puJ8UCbi8xRuRZT
	 JqwBViaCIiLdEgLvf8YJZkugBO+odovHJjYl/cbK6gRPava8rb4w2eotiDFesTeLLR
	 aL9LKicoW9oIGA/f+s1IeIxe3LGRasN7Pu/lBbhQqKxEdLuEGNSF7PZBvMoRrk3MDj
	 fV9/W3ect/Jbw==
Message-ID: <89880cda-1140-4ed5-a67f-2201c2825447@kernel.org>
Date: Thu, 20 Jun 2024 09:24:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: soc: ti: pruss: allow ethernet
 controller in ICSSG node
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Suman Anna <s-anna@ti.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
References: <20240619112406.106223-1-matthias.schiffer@ew.tq-group.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240619112406.106223-1-matthias.schiffer@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/06/2024 13:24, Matthias Schiffer wrote:
> While the current Device Trees for TI EVMs configure the PRUSS Ethernet
> controller as a toplevel node with names like "icssg1-eth", allowing to
> make it a subnode of the ICSSG has a number of advantages:

What is ICSSG? The sram or ti,prus from the ethernet schema?

> 
> - It makes sense semantically - the Ethernet controller is running on
>   the ICSSG/PRUSS
> - Disabling or deleting the ICSSG node implicitly removes the Ethernet
>   controller node when it is a child node. This can be relevant on SoCs
>   like the AM64x which come in variants with and without ICSSG; e.g., on
>   the TQMa64xxL the ICSSG node will be disabled on variants without as a
>   bootloader fixup.
>   On Linux, this avoids leaving the Ethernet controller in deferred
>   state forever while waiting for the ICSSG to become available
>   (resulting in a warning on newer kernels)
> 
> The node name "ethernet" is chosen as it nicely matches the regular
> "ethernet@<reg>" format of many Ethernet controller nodes, and is also
> what the prueth binding example (/schemas/net/ti,icssg-prueth.yaml) uses.
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> index c402cb2928e89..89dfcf5ce8434 100644
> --- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> +++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> @@ -92,6 +92,13 @@ properties:
>      description: |
>        This property is as per sci-pm-domain.txt.
>  
> +  ethernet:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      ICSSG PRUSS Ethernet. Configuration for an Ethernet controller running
> +      on the PRU-ICSS.
> +    $ref: /schemas/net/ti,icssg-prueth.yaml#
> +    type: object
> +
>  patternProperties:
>  
>    memories@[a-f0-9]+$:

You are mixing MMIO and non-MMIO nodes. That's odd or even sloppy
design. It immediately raises questions about your bindings.

Best regards,
Krzysztof


