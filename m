Return-Path: <devicetree+bounces-248325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E50FCD145A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 19:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A9AF301CE50
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 18:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C84F42D3A69;
	Fri, 19 Dec 2025 17:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjhOqUn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEC02BD58C;
	Fri, 19 Dec 2025 17:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766166747; cv=none; b=pq7OhgZ+wPUd5iZ41FzplxoSsGsE99y6G4Z4+x+aNr1a4+5y0oAVBB63LeiF+v1EzAssAagzi6SHpCgMTmbnk8KoVNduTS9Vc+wmTVoy4QUrHZx/+J5wkXybFg8EQeNHluDEGFMITb0ZJlW6ubCvsWlaLp+7Zl0z/N/6CsbmT18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766166747; c=relaxed/simple;
	bh=nPpUA6C5LaWQvcqwvb9J+SkaEScOjybsv/fwrTVVI/o=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=IiaGBkYcgSHxI5GX+5rlIK1yLJpk2YiWayH2KEeBR6s8MxqsqfHjlA7ZjSfksY+pGMemxA1ByYA8vPAGIzO0qNGPkwqOTAlPkE0mrw8F4L2HE51NIWWg772RfoJ+vGcBjUYiWAP//cqEv0W06qQwj2aN/KQCRHvDaXaUEyYOBpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjhOqUn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6230C116B1;
	Fri, 19 Dec 2025 17:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766166747;
	bh=nPpUA6C5LaWQvcqwvb9J+SkaEScOjybsv/fwrTVVI/o=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=WjhOqUn3ZtzyITW21i8T302ogXylMOUcr55Tm4Sif3qY2ljzctsB9MYMBAejTYaOv
	 M17pzZ4lYlD1jK5h73X5LkjfeUbYjMgiOWVMdTOLgAGqFw+HmGIFvB3EitJRu1mWNG
	 WK9KG3KM+txkqhv8aFJBENrbDhFzuqXGouMr1ZG7xBt57x+XyGWwTy34m573qIROOD
	 NCk1Dv9t4+HBNbLa2Ozyp1U02kHw2MpYTcKNmJ7Omi6VHZTxf9f6ncJZImzPZccofA
	 7FhSZk8Kb5MjPEcJ3aaf1PwzS2EOjC99oBa12frPv4iu4V7k97R5pRIngS1yqH9A9k
	 6nYqCPEHNvEQg==
Message-ID: <5ba1d58f-6c54-4727-9152-152de70e5ffb@kernel.org>
Date: Fri, 19 Dec 2025 18:52:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: mux: adg1736: add support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251219143554.22793-1-antoniu.miclaus@analog.com>
 <20251219143554.22793-2-antoniu.miclaus@analog.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251219143554.22793-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/12/2025 15:35, Antoniu Miclaus wrote:
> Add device tree bindings for ADG1736 analog multiplerer.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../devicetree/bindings/mux/adi,adg1736.yaml  | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mux/adi,adg1736.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mux/adi,adg1736.yaml b/Documentation/devicetree/bindings/mux/adi,adg1736.yaml
> new file mode 100644
> index 000000000000..0ba662ffc9cc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mux/adi,adg1736.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mux/adi,adg1736.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADG1736 Dual SPDT Switch Multiplexer
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  Bindings for Analog Devices ADG1736 dual single-pole, double-throw (SPDT)

Describe hardware, not bindings.

> +  switch. The device features two independent SPDT switches, each functioning
> +  as a 2:1 multiplexer. Each switch can connect its common drain terminal (D)
> +  to one of two source terminals (SA or SB).
> +
> +  The device has two independent mux controllers (mux 0 and mux 1), each with
> +  two states:
> +    * 0: SxB to Dx (control GPIO low)
> +    * 1: SxA to Dx (control GPIO high)
> +
> +  The EN pin is shared between both switches and can disable all channels when
> +  set low (inactive).
> +
> +allOf:
> +  - $ref: mux-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: adi,adg1736
> +
> +  ctrl-gpios:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      GPIO pins connected to the control inputs IN1 and IN2. Index 0 controls
> +      switch 1 (S1A/S1B to D1) and index 1 controls switch 2 (S2A/S2B to D2).

So just list the items with description.

This is basically gpio-mux with enable pin, so use at least matching
naming - mux-gpios.


> +    minItems: 2
> +    maxItems: 2

And drop these.

> +
> +  en-gpios:

Use standard gpios, see gpio-consumer-common schema.


> +    description: |
> +      GPIO connected to the EN (enable) pin. When low, all switches are
> +      disabled (high-impedance). When high, switches are controlled by
> +      their respective ctrl-gpios.

So just active high?

> +    maxItems: 1
> +
> +  '#mux-control-cells':
> +    const: 1
> +    description: |
> +      Mux controller index (0 or 1) to select which SPDT switch to control.
> +
> +required:
> +  - compatible
> +  - ctrl-gpios
> +  - en-gpios
> +  - '#mux-control-cells'
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/mux/mux.h>
Best regards,
Krzysztof

