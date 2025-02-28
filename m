Return-Path: <devicetree+bounces-152607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEEEA499BD
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 13:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CE34188DDA5
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 12:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98EC726A1AB;
	Fri, 28 Feb 2025 12:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHjwrmC1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733F18468
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 12:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740746817; cv=none; b=MkaIU1URH7+1XyBNrhUfaXf9ioM6/EZe3A3H53Hi3vvGv8DOPVEmEwCjG6I9dvNm9xFDsCKX7wDj81ZX3ckf0rhxk6ggrTlmXfd8Hii/n2TGBWQXNIce9/9vLQ50Q1f36K7QECtdUJMZqXCnPDug3ZqC7DLsRIO89GU0c0snFlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740746817; c=relaxed/simple;
	bh=Zs7UKJ5mO2LrCqW+3vzB8Fs0DOadd02IqoHcc0BVo84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dNuavb0We49cggyVQylt2+cNLsQ57tfLlYDq30a/c1l6hT1f0Kktl1xb8HYSDxO7/ERyCBwBwEtSbOpumeSFzPW+ppoRdaLvBwdaZDsQKhKW//mT/BdOe1Mbt8BDnMM6l08Mp6oDo3jqDdDzVvkQzZVtgTbMkaHoF8fY7WthmVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHjwrmC1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29148C4CED6;
	Fri, 28 Feb 2025 12:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740746817;
	bh=Zs7UKJ5mO2LrCqW+3vzB8Fs0DOadd02IqoHcc0BVo84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cHjwrmC1aznSD9ZOprotrrfA+uJsaQrEofHsiejpszbuG+BDO4pc7GNm68cdZPM7t
	 cRrtEAdddtY2bze9ZPPKkrMN0Ka+iatWR5eVRhDu3uAR52jScczduyzkB5QWPrKbqI
	 6Ttn6zpkUD2qOzJ2LpZiUo35kDYnagaV5UMeUF2AfmHqvWAozlGmjnA6cjOs5EjQOd
	 gsghmnLQbM4kiFLyZMadsj7LeCZip49+Xm6/V4fZU+iZ49bzfiuSztifWPd0kcJcfn
	 5ATTpVSyUY4ZpwBQXOM55Ys0PzrEqFawsxtggtk2cpN7P+HblRGYNEn3ApOoaoPAZi
	 oeOQ4EV8qqO0w==
Date: Fri, 28 Feb 2025 06:46:55 -0600
From: Rob Herring <robh@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org,
	devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com
Subject: Re: [PATCH v1 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Message-ID: <20250228124655.GA2368607-robh@kernel.org>
References: <20250228100245.127413-1-zhangyi@everest-semi.com>
 <20250228100245.127413-3-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228100245.127413-3-zhangyi@everest-semi.com>

On Fri, Feb 28, 2025 at 06:02:45PM +0800, Zhang Yi wrote:
> Add device tree binding documentation for Everest ES8389
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8389.yaml        | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/sound/everest,es8389.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> new file mode 100755
> index 000000000000..4629a89b915e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/everest,es8389.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Everest ES8389 audio CODEC
> +
> +maintainers:
> +  - Michael Zhang <zhangyi@everest-semi.com>
> +

Add a $ref to dai-common.yaml.

> +properties:
> +  compatible:
> +    const: everest,es8389
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for master clock (MCLK)
> +
> +  clock-names:
> +    items:
> +      - const: mclk
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  everest,adc-slot:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: |
> +      This property is used to set the slots of recording data when multiple
> +      codecs are connected in PTDM mode.
> +      please set this property to default if you are setting STDM mode.
> +    minimum: 0x00
> +    maximum: 0x07
> +    default: 0x00
> +
> +  everest,dac-slot:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: |
> +      This property is used to set the slots of playing data when multiple
> +      codecs are connected in TDM mode.
> +      please do not set this property if you use single codec.
> +    minimum: 0x00
> +    maximum: 0x07
> +    default: 0x00

Can't the dai-tdm-* properties work for you?

> +
> +  prefix_name:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: device name prefix

Why do you need this?

> +
> +  everest,dmic-enabled:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |

Don't need '|' if no formatting.

> +      The property is a choice between PDM and AMIC
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#sound-dai-cells"
> +
> +additionalProperties: false
> +
> +examples for single codec:
> +  - |
> +    es8389: es8389@10 {

audio-codec@10 {

> +      compatible = "everest,es8389";
> +      status = "okay";

Don't need status.

> +      reg = <0x10>;
> +      everest,adc-slot = [00];
> +      everest,dac-slot = [00];
> +      prefix_name = "es8389_0";
> +      #sound-dai-cells = <0>;
> +    };
> +
> +examples for multi codecs:
> +  - |
> +    es8389: es8389@10 {
> +      compatible = "everest,es8389";
> +      status = "okay";
> +      reg = <0x10>;
> +      everest,adc-slot = [00];
> +      everest,dac-slot = [00];
> +      prefix_name = "es8389_0";
> +      #sound-dai-cells = <0>;
> +    };
> +    es8389_1: es8389@11 {
> +      compatible = "everest,es8389";
> +      status = "okay";
> +      reg = <0x11>;
> +      everest,adc-slot = [01];
> +      everest,dac-slot = [01];
> +      prefix_name = "es8389_1";
> +      clock-names = "mclk";
> +      #sound-dai-cells = <0>;
> +    };
> \ No newline at end of file

Fix this.

> -- 
> 2.17.1
> 

