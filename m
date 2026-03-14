Return-Path: <devicetree+bounces-275646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHPmBSQstWnNxAAAu9opvQ
	(envelope-from <devicetree+bounces-275646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:36:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6470428C66F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F123830530ED
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E6E318B85;
	Sat, 14 Mar 2026 09:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr+I6Vxo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFAC248F47;
	Sat, 14 Mar 2026 09:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773480922; cv=none; b=Vo783ERnqy/ng0Cs3YkiQp5X9RR/PTMGEj1YmGlW46/B+hMrxD9QrrroUOz07WGukO6zYG+UNuw1zLvubGVAsX8R9vxvALpDr8xCpLT+1MgP3JV9fJLbwtpRTLWrg1+oiUZuHXiKQRVrhGAgiQJe9CkHiZFz3Jds/oO3OqfvE1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773480922; c=relaxed/simple;
	bh=G/HvirnM8kwBidIX/83urhAQGGGdEhPrgtoz3GiBBrI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KOYaAn84b+yuG50KjifQFFIRR1JsGkKVru+BSve2t1/dgvVGqp9BLtcY/0Bxs6M53Hd8rQHPcb1q9vfcB7zTvaLMEz9gSJxufBZnDw4wQ7YfbMCntZ5Dztmp8Rjk9PVHZ+nvMIn52oFu0CAxQrI2IMm05Z7fCQDxr2EWknmT8kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr+I6Vxo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 510CFC116C6;
	Sat, 14 Mar 2026 09:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773480921;
	bh=G/HvirnM8kwBidIX/83urhAQGGGdEhPrgtoz3GiBBrI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dr+I6Vxo6j20ToKtROSa9l3I5yXZzwhwmUiZtqVW+VF2VO952LyFJvNNdPC7rt3Gc
	 yasMm0nK+Z20M2R++1yi1GlwQqe1TJC2Dcv219jgOsnTR6UGlURJTaX+C0Pp+M9Kg1
	 Mc9MN5YuGpZc2R9k7bQJKjzpTMU3cl7W4LCwfgJX0hmKc/spg+ywE4pvc4IZUbq0Iq
	 EYRVwnS94MxL2vlVMbcjh2FQEHR0U2RLnQpFUBn/G8PNNh6oFmrJrl6lKhZ3OCCz3m
	 8/OC9BqKJGk0C/qy6Fx1Llhwp1k2t0x90H0k35kF9yotNj0dFD2STH/MMZ/1OoXiLd
	 3dBLpr94prW5g==
Date: Sat, 14 Mar 2026 10:35:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hermes Wu <Hermes.wu@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Message-ID: <20260314-chipmunk-of-therapeutic-development-ce2a73@quoll>
References: <20260313-upstream-6162-v3-0-8497fb7c4406@ite.com.tw>
 <20260313-upstream-6162-v3-1-8497fb7c4406@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313-upstream-6162-v3-1-8497fb7c4406@ite.com.tw>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275646-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,60hz:email,0.0.0.3:email,0.0.0.1:email,devicetree.org:url,ite.com.tw:email,0.0.0.2:email]
X-Rspamd-Queue-Id: 6470428C66F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:16:00PM +0800, Hermes Wu wrote:
> Add device tree binding documentation for the ITE IT6162 MIPI DSI to
> HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that
> supports the following configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The chip also supports up to 8-channel audio output via 4 I2S data
> channels.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
> Changes in v3:
>   - Fix lane-polarities: remove $ref redefinition, allow via video-interfaces.yaml
>   - Improve ite,support-hdcp description to clarify FW-based HDCP behavior
>   - Remove descriptions repeating schema constraints
>   - Remove stray comment in ports required section
>   - Fix data-lanes spacing in example: <1 2 3 4>
>   - Add missing newline at end of file
>   - Add missing change log that Reviewed-by tag was drop in V2.
> 
> Changes in V2:
>   - Drop Reviewed-by tag due to DT bindings changed.
>   - Add property "ite,spport-hdcp" to enable HDCP
>   - Add property "lane-polarities" and "clock-noncontinuous" for DSI
>     setting
> ---
>  .../bindings/display/bridge/ite,it6162.yaml        | 178 +++++++++++++++++++++
>  1 file changed, 178 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..b33fd140a9932cff3ede342298488988d337477f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> @@ -0,0 +1,178 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ite,it6162.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ITE IT6162 MIPI DSI to HDMI 2.0 Bridge
> +
> +maintainers:
> +  - Hermes Wu <Hermes.Wu@ite.com.tw>
> +
> +description: |
> +  The ITE IT6162 is a high-performance, low-power HDMI bridge that converts
> +  2 MIPI DSI signals to 1 HDMI 2.0 output. It supports dual MIPI D-PHY 2.0
> +  links up to 10 Gbps each (20 Gbps total), compatible with DSI-2 v2.0.
> +
> +  The HDMI transmitter supports resolutions up to 4Kx2K@60Hz and is compliant
> +  with HDMI 2.0 specifications.
> +
> +  For audio, it supports up to 8-channel LPCM via I2S (multi-line or TDM mode),
> +  with optional S/PDIF or DSD (for SACD). Audio sampling rates up to 192 kHz
> +  are supported.
> +
> +allOf:
> +  - $ref: /schemas/sound/dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: ite,it6162
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  ivdd-supply:
> +    description: Core voltage supply
> +
> +  ovdd-supply:
> +    description: I/O voltage supply
> +
> +  ovdd1833-supply:
> +    description: Flexible I/O voltage supply (1.8V domain)
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  ite,support-hdcp:

I don't see how this property varies per board, since it is always the
same chip with the same firmware. Drop property.

> +    description: >

Drop >

> +      Enables FW-based HDCP 1.4 and 2.3 negotiation. When absent, the
> +      bridge firmware will not attempt HDCP authentication regardless
> +      of sink capability.
> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Input port for MIPI DSI-0
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes: true
> +              lane-polarities: true
> +              clock-noncontinuous: true

Drop all three. Why did you add them?


> +            required:
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Input port for MIPI DSI-1
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes: true
> +              lane-polarities: true
> +              clock-noncontinuous: true

Drop all three

> +            required:
> +              - data-lanes
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Audio input port
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: HDMI output port
> +
> +    required:
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - ports

Best regards,
Krzysztof


