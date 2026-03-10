Return-Path: <devicetree+bounces-273333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEgdM+fSr2kccwIAu9opvQ
	(envelope-from <devicetree+bounces-273333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:14:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF8B2471BA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:14:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C69D930E8DE8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB223E8C50;
	Tue, 10 Mar 2026 08:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlFy80XZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1E3351C12;
	Tue, 10 Mar 2026 08:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130138; cv=none; b=LohkWaIApQQ0NSZCntvsOMUmGiEQ/21TNbmbDGVTPvT3cgiI0nt8/MPYfZT3PK3E0cMUsdcz0v6f5V4O0+1sBpdQkgmgkWQ/YHqVvV44ivjsLWUiMsCh0PS1eM1CG1XiTsLAGn0ZmVkVZMZ0OrQf3YUE+i863+GUHmuD4o0AU0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130138; c=relaxed/simple;
	bh=WcBBvfrFZ/ZC/56LCWyFzzBFQxHdHvvu0WsbwEaQcKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BC9GpOfPCgfe0q2gsP3s7J+6h3oCIL2FwH+0DMizfT9ZG96tR5LcPw8tVhutj/v/yMLEhv+8Rx9kd0noYFLgmw4fqjexr5cQeoojrvf2DQq30yLgoePHD83BPsmFTFZoEILxc/5AEvKrKimuQV+4j/D3UTDNasc9dglHFwWVbaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlFy80XZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9ABBC19423;
	Tue, 10 Mar 2026 08:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773130137;
	bh=WcBBvfrFZ/ZC/56LCWyFzzBFQxHdHvvu0WsbwEaQcKg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XlFy80XZUiU1KbE3pYd4Nlwyli2mOM8VDGu98J4qj+o31GYc3wSdlWUmzZB5yQPoa
	 2Uwh1eY4/OHxcRjZjQv2gHLQtFPl7owiawAgCLb/DPOMPcDM+SYKsTxCH1FHjjOrMG
	 mQ5aADJyDJvU+0cJ5a9zTmQiC0A+ZZhH+yvlRxYISbWFdiyHqG+L5J+LVgreqN1IlX
	 Qq37L+KW8aq98HF8+mJ8npads0j0z8NTlp1xmcit92TueXrItK7bJ5PXvpFy+WizGa
	 6EC0Dcop7r7qrBUxYAk/QS5D1ybROnRDGFlAzalEXtaesecKDnHxuLCbI7l2ebndew
	 v238k8oCG84hA==
Date: Tue, 10 Mar 2026 09:08:53 +0100
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
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Message-ID: <20260310-ancient-barnacle-of-reading-32eeee@quoll>
References: <20260309-upstream-6162-v2-0-debdb6c88030@ite.com.tw>
 <20260309-upstream-6162-v2-1-debdb6c88030@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260309-upstream-6162-v2-1-debdb6c88030@ite.com.tw>
X-Rspamd-Queue-Id: 2DF8B2471BA
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273333-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,60hz:email,0.0.0.1:email,bootlin.com:url,0.0.0.58:email,0.0.0.3:email,0.0.0.2:email]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:42:01PM +0800, Hermes Wu wrote:
> Add device tree binding documentation for the ITE IT6162 MIPI DSI to
> HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that
> supports the following configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The chip also supports up to 8-channel audio output via 4 I2S data
> channels.

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
>  .../bindings/display/bridge/ite,it6162.yaml        | 216 +++++++++++++++++++++
>  1 file changed, 216 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..01aa33110a20b8ad5e2946ab5e01229dcb4cb5d3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> @@ -0,0 +1,216 @@
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
> +    description: >
> +      Boolean property indicating that HDCP (High-bandwidth Digital Content
> +      Protection) is supported and enabled on this board/hardware instance.
> +
> +      When present, the driver may initialize and enable HDCP functionality
> +      (typically HDCP 1.4 or higher depending on chip/firmware). If absent,
> +      HDCP support is considered disabled or not implemented/wired.

How HDCP is being disabled in this chip? This does not look like
property for this device.

> +
> +      Presence enables support; the property value is ignored (use as flag:
> +      `ite,support-hdcp;`).

Drop, do not explain us how the DTS works.

> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Input port for MIPI DSI-0 (first DSI lane pair; optional)

schema defines what is optional or not. Don't repeat constraints in free form text.

> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +              lane-polarities:
> +                $ref: /schemas/types.yaml#/definitions/uint32-array

No, what is happening with this patch? It wasn't here.

None of these are correct, don't make random changes to the binding.

> +                minItems: 1
> +                maxItems: 5
> +                items:
> +                  enum: [0, 1]
> +                description: >
> +                  Array of lane polarities starting with clock lane, followed by
> +                  data lanes in the order given in data-lanes.
> +                  0 = normal (active high), 1 = inverted (active low).
> +                  If omitted, all lanes are assumed normal (0).
> +              clock-noncontinuous:
> +                type: boolean
> +                description: >
> +                  If present, allows MIPI DSI non-continuous clock mode
> +                  (clock lane can be stopped between transmissions for power saving).
> +            required:
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Input port for MIPI DSI-1 (second DSI lane pair; required)
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +              lane-polarities:
> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> +                minItems: 1
> +                maxItems: 5
> +                items:
> +                  enum: [0, 1]
> +                description: >
> +                  Array of lane polarities starting with clock lane, followed by
> +                  data lanes in the order given in data-lanes.
> +                  0 = normal (active high), 1 = inverted (active low).
> +                  If omitted, all lanes are assumed normal (0).
> +              clock-noncontinuous:
> +                type: boolean
> +                description: >
> +                  If present, allows MIPI DSI non-continuous clock mode
> +                  (clock lane can be stopped between transmissions for power saving).
> +            required:
> +              - data-lanes
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Audio input port (I2S; optional)
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: HDMI output port (optional)
> +
> +    required:
> +      - port@1   # Only DSI-1 port is mandatory per your request

per my request? What?

Again, Don't repeat constraints in free form text.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - ports
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        bridge@58 {
> +            compatible = "ite,it6162";
> +            reg = <0x58>;
> +
> +            #sound-dai-cells = <0>;
> +
> +            interrupt-parent = <&pio>;
> +            interrupts = <128 IRQ_TYPE_LEVEL_LOW>;
> +
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&it6162_pins>;
> +
> +            reset-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
> +
> +            ivdd-supply = <&pp1000_hdmi_x>;
> +            ovdd-supply = <&pp3300_vio28_x>;
> +            ovdd1833-supply = <&pp1800_vcamio_x>;
> +
> +            ite,support-hdcp;   // HDCP enabled on this board
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    it6162_dsi0: endpoint {
> +                        data-lanes = < 1 2 3 4>;
> +                        remote-endpoint = <&dsi_0_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    it6162_dsi1: endpoint {
> +                        data-lanes = < 1 2 3 4>;
> +                        remote-endpoint = <&dsi_1_out>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +                    it6162_audio_in: endpoint {
> +                        remote-endpoint = <&i2s0_out>;
> +                    };
> +                };
> +
> +                port@3 {
> +                    reg = <3>;
> +                    it6162_hdmi_out: endpoint {
> +                        remote-endpoint = <&hdmi_connector_in>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> \ No newline at end of file

You have patch warnings.

Write detailed changelog explaining WHY you ignore or drop people's
review and WHY you are doing these changes.

Best regards,
Krzysztof


