Return-Path: <devicetree+bounces-311624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gs66Du2PL2o5CgUAu9opvQ
	(envelope-from <devicetree+bounces-311624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:38:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B5B683891
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:38:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cIS22vpz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311624-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311624-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A835230082AE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90DF93A9002;
	Mon, 15 Jun 2026 05:38:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09B93A7F61;
	Mon, 15 Jun 2026 05:38:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781501930; cv=none; b=u8qMSjnDSarsRQoStFNlDByz35qnljQRPoluQqT2XQ6Lmm75vwEhxR1TG85dLUq20GXVavbMaHnwPhO86wNMHMIGlbe4n0HrJPeD1iBOu27939n1K5Y4FeU1MBcqrOdRzuofKCK2Wavvr7JSkGNZ0m75uhNenWoeVedeTsw/adU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781501930; c=relaxed/simple;
	bh=XYz8WkBhkXVvEC1qzobYBWC1dAfs+wrs6ykV9KteXjg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dwNmmpQhlxOyUUwI55sZkVZmRMBgJEIUx5nTcBeOWRdyT1yJQjG1QXNiDv1S+JWPJClK4+ha+y9P1wZ0rSyEF5cPN8SMVsh3jc6F3/IQADMxLjKgoF3ZRlszLdlTTgTSRX0WG1MoSX3+722jN8vDOGtJf2pGaN3TZVikzHIM+NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIS22vpz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172EA1F000E9;
	Mon, 15 Jun 2026 05:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781501926;
	bh=61hhhHxcLFdnYxc73vAonQrotow/c6tshPZMdlSimBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cIS22vpzTpXb6oBTunY9fHvKllDKVLyTg9aFbuSKk45xfnJEICk4G0/WRGZtMPhkT
	 C3craMqr9NSt0FB3EY/idQnvhVy1Z0gPbe0A6uPT8umjArxH9wFS0RdKyfQ4HdMZYE
	 vOvsa1tQvisyYjnFZDgfnXmwvbsYKwc2Z1Ux/bHsQPgNsewjeLbrLg1jDWohkdxaew
	 Xjwcv6pF0UdwG4UxW1/vftfcLqts3+fuiTOdHVHnaMsDtoo+3XNFmWPg2T82v3rSkv
	 R7ysCXACp4FkPL/5mMbVxleWTPAdw8NsO/yEMz0mEVCbelFAmZx0IX2vKJ3mpIDDRK
	 R8gQhXv87tL0w==
Date: Mon, 15 Jun 2026 07:38:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org, 
	Amir Dahan <system64fumo@tuta.io>
Subject: Re: [PATCH v3 2/4] dt-bindings: display: panel: Add documentation
 for lg,sw49410-lh609qh1
Message-ID: <20260615-thick-trout-of-inquire-4e4251@quoll>
References: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
 <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sajattack@postmarketos.org,m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311624-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,ixit.cz,tuta.io];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1B5B683891

On Sun, Jun 14, 2026 at 05:07:59PM -0700, Paul Sajna wrote:
> Document how to use lg,sw49410-lh609qh1 in a devicetree

"Add Foo bar MIPI DSI panel, which suppors somehing something resolution
etc."

You describe hardware.

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  .../bindings/display/panel/lg,sw49410.yaml         | 79 ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 

A nit, subject: drop second/last, redundant "documentation for". The
"dt-bindings" prefix is already stating that this is documentation.
See also:
https://elixir.bootlin.com/linux/v7.1-rc7/source/Documentation/devicetree/bindings/submitting-patches.rst#L23

> diff --git a/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml b/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
> new file mode 100644
> index 000000000000..4c4bf4d89353
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/lg,sw49410.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LG LH609QH1 MIPI-DSI panel with SW49410 controller
> +
> +maintainers:
> +  - Paul Sajna <sajattack@postmarketos.org>
> +
> +description:
> +  LG LH609QH1 6.1" 1440x3120 MIPI DSI panel with SW49410 controller found in LG G7 ThinQ smartphone.

Please wrap code according to the preferred limit expressed in Kernel
coding style (checkpatch is not a coding style description, but only a
tool).  However don't wrap blindly (see Kernel coding style).

> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: lg,sw49410
> +      - const: lg,sw49410-lh609qh1

This is very confusing - why two compatibles and why same devices - both
sw49410 - are compatible with each other?

> +
> +  reg:
> +    maxItems: 1
> +
> +  backlight:
> +    description: Backlight device reference

Drop property here, not needed.

> +
> +  reset-gpios:
> +    description: Reset pin reference
> +
> +  vsp-supply:
> +    description: Positive voltage supply
> +
> +  vsn-supply:
> +    description: Negative voltage supply
> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +  - port
> +  - vsp-supply
> +  - vsn-supply
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
> +            reg = <0>;
> +            compatible = "lg,sw49410-lh609qh1";
> +
> +            backlight = <&pmi8998_wled>;
> +            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> +            width-mm = <65>;
> +            height-mm = <140>;
> +
> +            vsp-supply = <&lab>;
> +            vsn-supply = <&ibb>;
> +
> +            pinctrl-0 = <&sde_dsi_active &sde_te_active_sleep>;
> +            pinctrl-1 = <&sde_dsi_sleep &sde_te_active_sleep>;
> +            pinctrl-names = "default", "sleep";
> +
> +            port {
> +              panel_in: endpoint {

Messed/inconsistent indentation.


Best regards,
Krzysztof


