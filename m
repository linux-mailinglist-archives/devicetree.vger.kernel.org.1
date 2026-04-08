Return-Path: <devicetree+bounces-285669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BFbKD0c1mluBAgAu9opvQ
	(envelope-from <devicetree+bounces-285669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 11:13:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CE53B9B1C
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 11:13:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57D03303AAB8
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 09:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E4838A704;
	Wed,  8 Apr 2026 09:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAv2XMHH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EE9272E56;
	Wed,  8 Apr 2026 09:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639288; cv=none; b=DvICgqMvcNp/33pC5SJp58dH6uu1btI9qV7M2NNtxAIuA7DsKYQMCV48RreHssHMVcPsaGxXjvzwt0dKeNhy+l+RHBN4HFOtCOMD9Kxz9RkRk8940NH7gKLggEaANQHFT913F5fFm0AJcLgNt/eUcECb92cgxEj4pJ29poaZwsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639288; c=relaxed/simple;
	bh=lgoVoRQJgK+iTapu5694gt/ry5HO/EnVUwS7HoWkvLc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iIJ5FPPPyhF2gC2LbQiYJwSn83Tw4ed7eSLkbGNKoNGj4sAGbTft/XcCqdvccAyLtu2Uq9vrPwwrIUH7bJDNYBmsC1NJRgyGelVTjqlo13OgToFdMU+1qe601WGMsnosfkqIbcLJOFtjkSKp9gffoUAvemeRUnqFgLFOEaVbCxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAv2XMHH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A65C9C19424;
	Wed,  8 Apr 2026 09:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639288;
	bh=lgoVoRQJgK+iTapu5694gt/ry5HO/EnVUwS7HoWkvLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XAv2XMHHcGIt8BKzWnfYEfnd207lEZTHuvhVRppiYapdAbMAWVyAxswXz2oHr8yPy
	 ll0HeS9lNCWpeGYkMbazKkmIgdznpXBU+5xVxxA0qUx2tF1VAcwRiRm46cP/XafaEa
	 6CefLktRgBVSMsNyNV5D5pSOC3USM+8bHuBQykEjC4mHVgG2A0OzJZic0WcOMSV96v
	 qCCGIGNP6i32U+pgm5vZ7OV7qrAIIEEi8lbOXVuUQ7LaDaVIULwBSw7KPfpCzJcdIh
	 XTjnID3h7BH6QnUCK1UHwUYgFDUk+GAGAh/+JKtA0uch4JSERhqFOuIujK1SvUThh8
	 6ccvcuDMkQbFw==
Date: Wed, 8 Apr 2026 11:08:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Phil Pemberton <philpem@philpem.me.uk>
Cc: Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tom Rix <trix@redhat.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, linux-fpga@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: fpga: add binding for Technologic
 Systems TS-73xx FPGA
Message-ID: <20260408-successful-glittering-bullfrog-e03dff@quoll>
References: <20260407172730.1779804-1-philpem@philpem.me.uk>
 <20260407172730.1779804-2-philpem@philpem.me.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407172730.1779804-2-philpem@philpem.me.uk>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285669-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,redhat.com,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,philpem.me.uk:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 46CE53B9B1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 06:27:29PM +0100, Phil Pemberton wrote:
> Add device tree binding documentation for the Altera Cyclone II FPGA
> found on Technologic Systems TS-7300 series boards, programmed via a
> CPLD memory-mapped interface.

A nit, subject: drop second/last, redundant "binding for". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> 
> Signed-off-by: Phil Pemberton <philpem@philpem.me.uk>
> ---
>  .../fpga/technologic,ts73xx-fpga.yaml         | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml
> 
> diff --git a/Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml b/Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml
> new file mode 100644
> index 000000000000..1f7a651e8f10
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fpga/technologic,ts73xx-fpga.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Technologic Systems TS-73xx FPGA Manager
> +
> +maintainers:
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +description:
> +  FPGA manager for the Altera Cyclone II FPGA on Technologic Systems
> +  TS-7300 series boards. The FPGA is programmed via a CPLD interface
> +  at a memory-mapped register pair.
> +
> +properties:
> +  compatible:
> +    const: technologic,ts73xx-fpga

So xx is a wildcard? That's not allowed (see writing bindings or any
talks). You need specific compatible. And compatibility, so fallbacks,
if you have multiple distinctive devices.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    bus {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;

Drop entire node, not needed.

Best regards,
Krzysztof


