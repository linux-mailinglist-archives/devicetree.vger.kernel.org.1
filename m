Return-Path: <devicetree+bounces-262377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN52JFo7gmmVQgMAu9opvQ
	(envelope-from <devicetree+bounces-262377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:15:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3FEDD69A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9511B306493F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7F7359704;
	Tue,  3 Feb 2026 18:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdAANDNw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7EE287258;
	Tue,  3 Feb 2026 18:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142548; cv=none; b=E4iaVBhqe/wrsKPhSickF7xV1jpNPvk6K1gHgXT4LL1dCGebZtNDq7GxuQpYvI92jBwR86CUUx3uhpRT4TAFpqdZ7dLez8BJdpBPr5L4guoymisRgBi39hwozUWKxaPfBHJmpMatBrm4CaWuiaGp+d42VLKo6CStWYkGVDSGz+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142548; c=relaxed/simple;
	bh=khb0qkO8INDyk6vcJcw+8nWVBaRf32ZF++5Jlt7k6qc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eDBjV1UoevPzl7YAZ6wgZVju7jaFHk1b27X/sZKKyAwArK/8sGeS6SZBDumfu7gcA8euQBm6JR81wHRQVBKm0EHrLue5HWR2CN7IeXpihL7xjsjXbBMG6BtZxyFFHm7Bfr88UccT1XTdP9+wJSNy/o4zqGiHR3vzzJ+kgMd4/gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdAANDNw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96AC5C116D0;
	Tue,  3 Feb 2026 18:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770142547;
	bh=khb0qkO8INDyk6vcJcw+8nWVBaRf32ZF++5Jlt7k6qc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WdAANDNwOhZlg+hre3+vA7CGEx3x93TOkMopfnQbLp4pTQuGIHASX/28BQYSD3mES
	 A2DsxGrKGm8fJd3Kc83grWrfv0YVcNVFbroKo9csmyLAwyJRZx0KIwwqDZvak9r8m2
	 aNGHwgTzfkqzEQbb0gSwKDKLjyXgoXa9Sv6UqCk7lJ7Acf9htVcpwmhZx8u5jAkKbL
	 Il7B+s5tX+6LUFVe0VTyu2vaviAGvcW9pnZXhW8XRYgYiBWDnFZMsohG0ZG+ocZmqa
	 k6Hc4rLy+gb0Hx5ILeqDjcljY3xFGzHbLYO7UVA04PWiy2HLQXESRgRo3f2BXMvMsy
	 N+x8NAe+CO89g==
Date: Tue, 3 Feb 2026 12:15:46 -0600
From: Rob Herring <robh@kernel.org>
To: Pet Weng <pet.weng@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Hermes Wu <hermes.Wu@ite.com.tw>,
	Kenneth Hung <kenneth.Hung@ite.com.tw>,
	Jau-chih Tseng <jau-chih.tseng@ite.com.tw>,
	Pin-yen Lin <treapking@google.com>
Subject: Re: [PATCH v6 1/3] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Message-ID: <20260203181546.GA3341586-robh@kernel.org>
References: <20260130-it61620-0714-v6-0-70afa65923b5@ite.com.tw>
 <20260130-it61620-0714-v6-1-70afa65923b5@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-it61620-0714-v6-1-70afa65923b5@ite.com.tw>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,ite.com.tw,google.com];
	TAGGED_FROM(0.00)[bounces-262377-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,30hz:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.58:email,devicetree.org:url]
X-Rspamd-Queue-Id: 1A3FEDD69A
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 03:51:34PM +0800, Pet Weng wrote:
> This chip receives MIPI DSI input and outputs HDMI, and is commonly
> connected to SoCs via I2C and DSI.
> 
> Signed-off-by: Pet Weng <pet.weng@ite.com.tw>

Missing Krzysztof's Reviewed-by.

> ---
>  .../bindings/display/bridge/ite,it61620.yaml       | 142 +++++++++++++++++++++
>  1 file changed, 142 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..e195d192f6b1a2d092b3745e3e7f62b8b1d2d8ce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
> @@ -0,0 +1,142 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ite,it61620.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ITE IT61620 MIPI DSI to HDMI Bridge
> +
> +maintainers:
> +  - Pet Weng <pet.weng@ite.com.tw>
> +
> +description: |
> +  The ITE IT61620 is a high-performance, low-power HDMI bridge that converts
> +  MIPI DSI input to HDMI 1.4b TMDS output. It supports up to 4 lanes of MIPI
> +  D-PHY 2.0 input at 2.5Gbps per lane (10Gbps total), compatible with DSI-2
> +  v2.0.
> +
> +  The HDMI transmitter side supports up to 4Kx2K@30Hz resolutions, and is
> +  compliant with HDMI 1.4b and HDCP 1.4.
> +
> +  For audio, the IT61620 supports up to 8-channel LPCM via I2S (multi-line or
> +  TDM mode), with optional S/PDIF or DSD (for SACD). It supports audio
> +  sampling rates up to 192kHz.
> +
> +allOf:
> +  - $ref: /schemas/sound/dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: ite,it61620
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
> +    description: core voltage
> +
> +  ovdd-supply:
> +    description: I/O voltage
> +
> +  ovdd1833-supply:
> +    description: flexible I/O voltage
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Input port for MIPI DSI
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            required:
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output port for HDMI output
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Audio input port (I2S)
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - reset-gpios
> +  - ivdd-supply
> +  - ovdd-supply
> +  - ovdd1833-supply
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
> +            compatible = "ite,it61620";
> +            reg = <0x58>;
> +            #sound-dai-cells = <0>;
> +            interrupt-parent = <&pio>;
> +            interrupts = <128 IRQ_TYPE_LEVEL_LOW>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&it61620_pins>;
> +            reset-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
> +            ivdd-supply = <&pp1000_hdmi_x>;
> +            ovdd-supply = <&pp3300_vio28_x>;
> +            ovdd1833-supply = <&pp1800_vcamio_x>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    it61620_dsi_in: endpoint {
> +                        data-lanes = <0 1 2 3>;
> +                        remote-endpoint = <&dsi_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    it61620_hdmi_out: endpoint {
> +                        remote-endpoint = <&hdmi_connector_in>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +                    it61620_audio_in: endpoint {
> +                        remote-endpoint = <&i2s0_out>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> 
> -- 
> 2.34.1
> 

