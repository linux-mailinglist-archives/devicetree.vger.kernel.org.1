Return-Path: <devicetree+bounces-262382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIWzG40/gmlHRQMAu9opvQ
	(envelope-from <devicetree+bounces-262382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:33:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 609D0DDA5B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4F9583081AE2
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8677F3D4122;
	Tue,  3 Feb 2026 18:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaW4h0+0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CAF3ACEF1;
	Tue,  3 Feb 2026 18:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142797; cv=none; b=RMoQ/tP9UPUA1kGNuu49/IJc3r9jAjrUc+jMrh8udK8rHO1vb6uY6NhQDy4nNJnVp2lSyk20/tbxj4cuBZYM+uJ+RehhLuMfd0RA41KxOAYIC195IV0Ru/5fM0wNbUWU3K5qz/F4lMBMkPj7IWKo7f//n2iiVjCg1BKG4Fs8uGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142797; c=relaxed/simple;
	bh=7B0IqyFiAJCnuWiTN4bALRsmVJz8AG3X1eL0xm9SMRg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=njEbxob9Ojzff+nKtsHbWtz0rm8KgsnMvLQAVdPqxRz8UicjFhPoWx4hesDmACrUw/gAVccYqcnCfFW7FfI0Y9AeXL/MKVgvISKdqOMcRBLTa8pg5dHDiSRLb6iqQCqRi6fMYPuWF+dddgID60tUa3tkgcDEN49SdNY3l9fly7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaW4h0+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C87E4C16AAE;
	Tue,  3 Feb 2026 18:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770142796;
	bh=7B0IqyFiAJCnuWiTN4bALRsmVJz8AG3X1eL0xm9SMRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SaW4h0+0m9Rc2/LljbTgsNttztzpz587YPlZMnkhly0nPyQS5eQpaVDQFZV7zsGvd
	 CSg15FaN6U1OXiAz+YiRQbpxciMBM8tYBL5U3D00ac6FeyqDaP1VEs962EXaiTbQsp
	 kYZmvQPmA3daez1d5wZa7WvA+Utrchies2Qt8UCINJJSUwOXqI8A7KblsCZisPpeV+
	 jnyDzJiONeXg7aIXl4HygTBi3lmjLNl7tN/lp0cjZTilV6Dy0CaxzytbaCZS8FCOF4
	 UTDHDNc5MW0QcJjxFQ3wXEd7GJ/FG3zWlsT9V2FNe86kH7+GDcehKoR0+W6cSFPsql
	 6g/sCBf7JnDwQ==
Date: Tue, 3 Feb 2026 12:19:56 -0600
From: Rob Herring <robh@kernel.org>
To: Igor Reznichenko <igor@reznichenko.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kael D'Alcamo <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add Ilitek ILI9488
 panel controller
Message-ID: <20260203181956.GA3387284-robh@kernel.org>
References: <20260203054121.335441-1-igor@reznichenko.net>
 <20260203054121.335441-2-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203054121.335441-2-igor@reznichenko.net>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-262382-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reznichenko.net:email,0.0.0.0:email,devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 609D0DDA5B
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 09:41:19PM -0800, Igor Reznichenko wrote:
> Add binding for the Ilitek ILI9488 panel controller which is found on
> the FocusLCDs E35GH-I-MW800-CB MIPI DSI panel. Add "focuslcds" to
> vendor-prefixes.yaml as it's a brandname and a website for
> Focus Display Solutions, Inc.
> 
> Signed-off-by: Igor Reznichenko <igor@reznichenko.net>

Missing Conor's Reviewed-by

> ---
>  .../display/panel/ilitek,ili9488.yaml         | 63 +++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
>  2 files changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
> new file mode 100644
> index 000000000000..ea7449273022
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/ilitek,ili9488.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ilitek ILI9488 based MIPI-DSI panels
> +
> +maintainers:
> +  - Igor Reznichenko <igor@reznichenko.net>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - focuslcds,e35gh-i-mw800cb
> +      - const: ilitek,ili9488
> +
> +  reg:
> +    maxItems: 1
> +
> +  vci-supply: true
> +  iovcc-supply: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - vci-supply
> +  - iovcc-supply
> +  - reset-gpios
> +  - backlight
> +  - port
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        panel@0 {
> +            compatible = "focuslcds,e35gh-i-mw800cb", "ilitek,ili9488";
> +            reg = <0>;
> +            vci-supply = <&reg_vci_panel>;
> +            iovcc-supply = <&reg_iovcc_panel>;
> +            reset-gpios = <&gpio3 6 GPIO_ACTIVE_LOW>;
> +            backlight = <&pwm_bl>;
> +
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint = <&dsi_out>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index c7591b2aec2a..aa3a8fd67155 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -584,6 +584,8 @@ patternProperties:
>      description: Flipkart Inc.
>    "^focaltech,.*":
>      description: FocalTech Systems Co.,Ltd
> +  "^focuslcds,.*":
> +    description: Focus Display Solutions, Inc.
>    "^forlinx,.*":
>      description: Baoding Forlinx Embedded Technology Co., Ltd.
>    "^foursemi,.*":
> -- 
> 2.43.0
> 

