Return-Path: <devicetree+bounces-290182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JCn9CbqT7GloaAAAu9opvQ
	(envelope-from <devicetree+bounces-290182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 12:13:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B550465D94
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 12:13:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 923C3300CE6B
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 10:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0481B30CD92;
	Sat, 25 Apr 2026 10:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5TBSE4B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B2B208D0;
	Sat, 25 Apr 2026 10:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777111990; cv=none; b=U/7MwM40doQP4fOw5ipok1qrQiKgzpDxOGuaaMcySH+bNjtpcCBwKe/DewipFNlg67BYlFmpJlMBwVN4/u6lxQATRZNfCPfOBc3qTLGP33BxcjMrJEAm1mNPVaN6GgZBSnTM0GgkhtSxhKW0gFKb7l0IL4g8ziOH6B93gLBl4CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777111990; c=relaxed/simple;
	bh=EepHaXvMJ/59V6jWWeqgUAmVIm+clJcqk9UfSMrlJlg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OKCXSPRbCGVrJBKElpxKcoY+r2JgOB3I1ChOuse0NS5sT/Heoe49f2us+GwrJGu8eLHGsFAW19DxQ7tDgCtdQWy3WNhGuXhxtlLCPxzaymWOA6bUtpNrO8RDfVVMFe8Myx8mmHf3fUjLNMf1G9Q9gGktYTZk5e0Emkdzg/9Jrd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5TBSE4B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE28CC2BCB0;
	Sat, 25 Apr 2026 10:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777111990;
	bh=EepHaXvMJ/59V6jWWeqgUAmVIm+clJcqk9UfSMrlJlg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N5TBSE4B5vVOuDr/JjNoX54tMYOeFhArGRhrcTR//MUVefJldVtXafFzVn0P4W+yK
	 pLPXh6bdHW1Yf7awJPsQScYP3ybZTYVHyAZQEhXg5efpdxGWEMgnWuXtAKj9bl04wa
	 uNJF6ieuDZCOPgU2AXu7ysxMUpRKaHEjTk60PgdvtEJDt24LGjmNbpynVaZO3G0gfe
	 tXcKhyouQtlPhdSeWuX6jx9DpTMZKbLTTggalK+uDXCUudeG6OfUdxG14phYXZU+cp
	 ypDohHcZPHRL5bZ+WkaPtSSFach3dUizG6j169Uchr8sZaSB/uKF1EgBt58v9FuS3m
	 9DoOvh0Ig4JyQ==
Date: Sat, 25 Apr 2026 12:13:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neo Chang <YLCHANG2@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, 
	tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, alsa-devel@alsa-project.org, neo.chang70@gmail.com, 
	kchsu0@nuvoton.com, sjlin0@nuvoton.com
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: nuvoton,nau8360: Add bindings for
 NAU83G60
Message-ID: <20260425-independent-puzzling-pigeon-a3fd84@quoll>
References: <20260424033953.280520-1-YLCHANG2@nuvoton.com>
 <20260424033953.280520-2-YLCHANG2@nuvoton.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424033953.280520-2-YLCHANG2@nuvoton.com>
X-Rspamd-Queue-Id: 6B550465D94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-290182-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org,alsa-project.org,nuvoton.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]

On Fri, Apr 24, 2026 at 11:39:52AM +0800, Neo Chang wrote:
> Add device tree bindings documentation for the Nuvoton NAU83G60
> audio amplifier.
> 
> Signed-off-by: Neo Chang <YLCHANG2@nuvoton.com>

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> ---
>  .../bindings/sound/nuvoton,nau8360.yaml       | 115 ++++++++++++++++++
>  1 file changed, 115 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
> new file mode 100644
> index 000000000000..29b10155c4f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/nuvoton,nau8360.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton NAU83G60 Stereo Class-D Amplifier with DSP
> +
> +description: |
> +  Stereo Class-D Amplifier with DSP and I/V-sense driver.

If "driver" as in "Linux driver" then please drop the word.

> +  This device supports I2C.
> +
> +maintainers:
> +  - Neo Chang <YLCHANG2@nuvoton.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,nau8360
> +
> +  reg:
> +    maxItems: 1
> +    description: |
> +      The I2C address of the device. The address is determined by the external
> +      hardware configuration of GPIO1 and GPIO2 pins:
> +       - 0x1a (GPIO2=Low, GPIO1=Low)
> +       - 0x1b (GPIO2=Low, GPIO1=High)
> +       - 0x4a (GPIO2=High, GPIO1=Low)
> +       - 0x4b (GPIO2=High, GPIO1=High)
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: mclk
> +
> +  nuvoton,dsp-bypass:
> +    type: boolean
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Forcibly disable/bypass DSP path.

Why would that be hard-coded for given board?

> +
> +  nuvoton,low-latency:
> +    type: boolean
> +    description: |
> +      Enable low latency mode.
> +      Please note the feature helps sensing performance
> +      but worsens power consumption.

I could imagine that low-latency needed for certain use-cases, like
realtime audio, thus not really board-level DT configuration, but
runtime.

> +
> +  nuvoton,anc-enable:
> +    type: boolean
> +    description: |
> +      Enable ANC (Active Noise Cancellation) feature.

This as well.

> +      NAU83G60 provides configurable low latency ANC path to Advanced DSP through TDM-RX.
> +      To reduce latency, the ANC path only supports 48 kHz sample rates.
> +
> +  nuvoton,aec-enable:
> +    type: boolean
> +    description: |
> +      Enable AEC (Acoustic Echo Cancellation) feature.

As well.

> +      NAU83G60 provides Advanced DSP processed audio data as AEC reference through TDM-TX.
> +      The AEC path only supports 48 kHz sample rates.
> +
> +  nuvoton,pbtl-enable:
> +    type: boolean
> +    description: |
> +      NAU83G60 supports PBTL mode for mono output.
> +
> +  nuvoton,vbat-microvolt:
> +    minimum: 8000000 # 8V
> +    maximum: 24000000 # 24V
> +    description: |
> +      VBAT supply voltage in microvolts.

This device does not have any supply, so how could you set its voltage?
Plus, regulator bindings define it, not per-device propeties. Drop the property.

Also, add missing supply.

> +      This is the analog power supply, provided by an external power source
> +      or battery, and must be between 8V and 24V.
> +
> +  nuvoton,tdm-channel-length:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [16, 24, 32]
> +    description: |
> +      Assign TDM channel length.
> +      The length must be 16, 24, or 32.
> +
> +  nuvoton,dsp-fw-names:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    minItems: 2
> +    maxItems: 2
> +    description: |
> +      Assign firmware filenames for left and right DSP cores.

Please use standard properties. This is the second one you re-implement.
If there is one single thing which upstream kernel hates is the
reimplementation of standard things by each vendor.

firmware-name:
(and see other examples how to write it - items: with descriptions)

> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        codec@1a {
> +            #sound-dai-cells = <0>;
> +            compatible = "nuvoton,nau8360";
> +            reg = <0x1a>;
> +            nuvoton,dsp-bypass;
> +            nuvoton,vbat-microvolt = <12000000>;

Add the rest of properties o make this complete.

Best regards,
Krzysztof


