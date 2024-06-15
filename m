Return-Path: <devicetree+bounces-76028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C56E3909789
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 12:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB2ABB20C26
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 10:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A659D1BC40;
	Sat, 15 Jun 2024 10:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMGU2PFK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784FB4409;
	Sat, 15 Jun 2024 10:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718445703; cv=none; b=fR12MYbHLJxwSFrgSa+7lxiXZAEMKKzLWdCQ0t3RfzvyvUzepUhyKLMTW53cPqPZdMn2zdKyfPV1cMv3Cg5hEUSgLbrhJnAF6CX0kHVJMRfCnYFxR3zIRwzC8rHzuZ1WKt6z+zu3126/ovWJ0GwAOUPpVEqv8xFgdgNV862Ut+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718445703; c=relaxed/simple;
	bh=SuUngXVi66Z8vwLiQwUb1zCHM7eRerxjwJDEyTTbjWs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UNl+HIT+zGMB39pXIjWBOnz2F/b6JSrz56DOdqfagW77JqDEY4v0tn26CCYT6kQ2eADbIJIMpmNikItPf2dRMHNA04rLjv9fS8DKY2zTDXhX12UfFkxcrHNPZ0xXFyUOxLEybxuQKIcn/kxU5k3OGXa0iMluydX+a+29AtrDYs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMGU2PFK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66FB3C116B1;
	Sat, 15 Jun 2024 10:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718445703;
	bh=SuUngXVi66Z8vwLiQwUb1zCHM7eRerxjwJDEyTTbjWs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aMGU2PFKBSMsOjU80Sfh5yZU3botEHZKHw9RSUgfYDz2XVVMMOkxGaYi3oDRiBv4N
	 NFbzfONZtbsZd1cOVp2QGQAQZ4l3RDZcdSRaz1EAIUwEResLbr9hjs0wAnNv9azwI8
	 J4Z2mBSxHMYPO5tanE2o+31jrw0reFQUtEVjOw6uV5/z//CPGutuDnK7Wu3Ee9LPAw
	 06hc97ktlxGl9EXt5IE8urkXAVip2Ore3zfCMW0ysBvOwRVl7sw3wLe3RH5RtkEmHs
	 83pvmgj6pKRJuLI2IixvjB+ff2fnOnhtghoMcCY5+trA88YvOkm5swuG+tx7r7dSms
	 Ir/mEJKUyM+rw==
Message-ID: <83cbf43e-c927-449f-8b7e-5c8d3ee8cece@kernel.org>
Date: Sat, 15 Jun 2024 12:01:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] ASoC: dt-bindings: lpc32xx: Add lpc32xx i2s DT
 binding
To: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, "J.M.B. Downing"
 <jonathan.downing@nautel.com>, Arnd Bergmann <arnd@arndb.de>,
 Chancel Liu <chancel.liu@nxp.com>, Michael Ellerman <mpe@ellerman.id.au>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
 <20240614163500.386747-1-piotr.wojtaszczyk@timesys.com>
 <20240614163500.386747-2-piotr.wojtaszczyk@timesys.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240614163500.386747-2-piotr.wojtaszczyk@timesys.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/06/2024 18:34, Piotr Wojtaszczyk wrote:
> Add nxp,lpc3220-i2s DT binding documentation.
> 
> Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.


b4 diff '<20240614163500.386747-2-piotr.wojtaszczyk@timesys.com>'
Grabbing thread from
lore.kernel.org/all/20240614163500.386747-2-piotr.wojtaszczyk@timesys.com/t.mbox.gz
Checking for older revisions
Grabbing search results from lore.kernel.org
Nothing matching that query.
---
Analyzing 24 messages in the thread
Preparing fake-am for v2: ASoC: fsl: Add i2s and pcm drivers for LPC32xx
CPUs
  range: dda6bddbafe9..33a2a5c8fb4c
Preparing fake-am for v3: ASoC: dt-bindings: lpc32xx: Add lpc32xx i2s DT
binding
ERROR: Could not fake-am version v3
---
Could not create fake-am range for upper series v3


You are making review more difficult.

> ---
> Changes for v3:
> - Added '$ref: dai-common.yaml#' and '#sound-dai-cells'
> - Dropped all clock-names, references
> - Dropped status property from the example
> - Added interrupts property
> - 'make dt_binding_check' pass
> 
> Changes for v2:
> - Added maintainers field
> - Dropped clock-names
> - Dropped unused unneded interrupts field
> 
>  .../bindings/sound/nxp,lpc3220-i2s.yaml       | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml b/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
> new file mode 100644
> index 000000000000..04a1090f70cc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/nxp,lpc3220-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP LPC32XX I2S Controller
> +
> +description:
> +  The I2S controller in LPC32XX SoCs, ASoC DAI.
> +
> +maintainers:
> +  - J.M.B. Downing <jonathan.downing@nautel.com>
> +  - Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nxp,lpc3220-i2s
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: input clock of the peripheral.
> +
> +  dma-vc-names:

Missing vendor prefix... but I don't really get what's the point of this
property.

> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description: |
> +      names of virtual pl08x dma channels for tx and rx
> +      directions in this order.
> +    minItems: 2
> +    maxItems: 2

What part of hardware or board configuration this represents?

It wasn't here and nothing in changelog explained it.

Drop.


> +
> +  "#sound-dai-cells":
> +    const: 0
> +

Best regards,
Krzysztof


