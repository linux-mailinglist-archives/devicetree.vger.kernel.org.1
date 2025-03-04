Return-Path: <devicetree+bounces-153656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A78EA4D687
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6F223AE640
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BCB01FAC4B;
	Tue,  4 Mar 2025 08:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtklWRBH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7807D1F940A
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 08:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741077165; cv=none; b=XNebKgvi26rUh0ytaVNm+AuoBHrObE4tkQsTbnhQ6ynWahcfpLpj+8bmi2584QrJfImQg1TtFqA3YmQReqQYJUhDDBPXxyd4ayopWA0QEsDWkVCt7W/MzUQQic3hC/ivcs55BcTRFr1JYI+0AL6Zfda+XIQsLzBkY0cvWNaj4kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741077165; c=relaxed/simple;
	bh=eoxVSvlYpLU4nYVQmp8hmagLMri1O0CXQYXZ6mhEMyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bSntFfqd+6P/TkJOCYOauJypaOTgBM8V9D0sE2P0VJ23sFdb2juLY+t2p7g3Ry2ci6xixQJbv3MGzQcj7ttadP4lFEEF0yI+uqR+FhIlfpLiTeqOfaKvMppFeH5ZcxsvowwcHhenK8ShEIss+eE1RBxCoFyGcLbNqPlmHLuWa9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtklWRBH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 046ADC4CEE8;
	Tue,  4 Mar 2025 08:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741077164;
	bh=eoxVSvlYpLU4nYVQmp8hmagLMri1O0CXQYXZ6mhEMyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XtklWRBHc9I7QS26Ujhh8c8Djs960OKJK7PLQOJ3wRhKbG5w6A4cp18XqTukX6nEq
	 1JVuBkCxduf4oXjuxkEhP3IjoXUe12lsmZDHVSchJc+BRzi5odJ4TpXjh14oTb3sJ9
	 LVLjaKbCE4+b4ClF6kespdYlNmQIDJ3NpwQnKVwdHnOyYvhXuy+9uM4k8/NVYey+eT
	 NuYjrBWKRZ7SqCV90qHFrRJE1CN9M7FpmxZ9jWQ76+FDZf0lVhjBmYvrbCwMj9oHOJ
	 JlWTv1gFNaAD+8qyHJWJWYYXl4F3unc5v6J7Zi5w4At8Yb9peYLFCSEEKNipeWftQy
	 rOLN19jwBbH2A==
Date: Tue, 4 Mar 2025 09:32:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, 
	devicetree@vger.kernel.org, tiwai@suse.com, amadeuszx.slawinski@linux.intel.com, 
	robh@kernel.org
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Message-ID: <20250304-banana-penguin-of-abundance-6defe7@krzk-bin>
References: <20250304062737.51701-1-zhangyi@everest-semi.com>
 <20250304062737.51701-3-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250304062737.51701-3-zhangyi@everest-semi.com>

On Tue, Mar 04, 2025 at 02:27:37PM +0800, Zhang Yi wrote:
> Add device tree binding documentation for Everest ES8389
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8389.yaml        | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
> 

<form letter>
Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument, so you will
not CC people just because they made one commit years ago). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline) or work on fork of kernel
(don't, instead use mainline). Just use b4 and everything should be
fine, although remember about 'b4 prep --auto-to-cc' if you added new
patches to the patchset.
</form letter>

> diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> new file mode 100644
> index 000000000000..2c522826bae4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> @@ -0,0 +1,82 @@
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
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: everest,es8389

Device is really different than es8388?

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

Drop, unsigned does not allow -1.

> +    maximum: 0x07
> +    default: 0x00

All of these should be rather decimal.

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
> +
> +  prefix_name:

No underscores in node names, missing vendor prefix... but more
important:  I don't understand the need for this property. Description
copies property name so it is not useful.

Drop. You maybe wanted dai prefix, but this is already in dai-common.


> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: device name prefix
> +
> +  everest,dmic-enabled:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      The property is a choice between PDM and AMIC
> +

No supplies?

> +required:
> +  - compatible
> +  - reg
> +  - "#sound-dai-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c{

Missing space.

> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      es8389: es8389@10 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "everest,es8389";
> +        reg = <0x10>;
> +        everest,adc-slot = [00];

Please open other bindings or DTS and take a look how single number is
encoded. In general, please rather base your work on latest bindings and
DTS accepted by reviewers and use them as learning/template to avoid
common mistakes. At least two comments in this review could be avoided
if you did this.

> +        everest,dac-slot = [00];
> +        prefix_name = "es8389_0";

Drop

> +        #sound-dai-cells = <0>;
> +      };
> +    };
> -- 
> 2.17.1
> 

