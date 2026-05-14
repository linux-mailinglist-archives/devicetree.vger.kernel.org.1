Return-Path: <devicetree+bounces-297693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HNiDaDsBWpAdgIAu9opvQ
	(envelope-from <devicetree+bounces-297693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:39:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABF154425A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F03D330A0684
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F9B4279E6;
	Thu, 14 May 2026 15:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACz3womu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AC033FE1F;
	Thu, 14 May 2026 15:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778772368; cv=none; b=WfMNvnkMuiR7N2oAz3ugzXnPFbD2qzSd+1YEJJQx211GKLFeqgxssFb3Vj9Co+FTVKPULwQXoJidlqTeSHKhxnxKYC/xIU+sLmhzMMlPzErH+T922Pb0lvxCu5IWfMRF1nqSDtmHI95ZTPR7N+1yTENYEs+J7DHYIIUDUO3VeIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778772368; c=relaxed/simple;
	bh=PyYkFU78XrDN+dRlBF4X3PwXS525pHWwfGv4sOLUCyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fd3SZR+sMPhTJFEB0XbeGkJwBVdKc/4Ljz3MozTsCibie8oGfdla1kwLgv73uZZIQ9buMzeue4E9w1tjsEaptnU23dBGQsoC9x8mH9+JqSvXzHA4lX2P2A+VjpZYko90W/tfzgUALHJdaQ5Q5cmkJiSXOm9XjawjnwAU1GLQFOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACz3womu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DCF2C2BCC6;
	Thu, 14 May 2026 15:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778772367;
	bh=PyYkFU78XrDN+dRlBF4X3PwXS525pHWwfGv4sOLUCyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ACz3womumcDZQ0WsKY8C97YMJrXkewXKrjxtxbCW7uooMRNcX3vfelP/spofGGp3C
	 9ivoUL/Y8oJmF4jZ1IbWZH4k0qktiul1Kr09Lpz/Gw8ovAxqiACdiSfjViFR2UloZ7
	 wGDXrgs8ilLZgu/g2GXZIyZrkYRYenRja+yFLKzhJ2GOZ8640sueB6ocSJEvk0vA4t
	 G6iX+7eeaWsCFyxlxIRzv2sKhJsEBQ6bsWpnQ3ygDgFnd8dril1AXVlt9J/ghAKl2O
	 AUtpoNbmehgcRodfQ+tSlCQIb5USLRHPmBRFBqwPvfqxU+PLLmpQwcFJ2rGJiAwftn
	 UVbzhMLEewj7w==
Date: Thu, 14 May 2026 10:26:04 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <linux-sound@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v3 1/1] ASoC: dt-bindings: Convert eukrea-tlv320.txt to
 yaml
Message-ID: <20260514152604.GA614286-robh@kernel.org>
References: <20260513165942.3742718-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513165942.3742718-1-Frank.Li@nxp.com>
X-Rspamd-Queue-Id: 4ABF154425A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297693-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,i.mx:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 12:59:39PM -0400, Frank Li wrote:
> Convert eukrea-tlv320.txt to yaml format.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v3
> - add fsl,mux-int-port and fsl,mux-out-port to required
> change in v2
> - Add comments about "The AUDMUX port numbering should start at 1"
>   v1: https://lore.kernel.org/linux-devicetree/CAEnQRZACes8EptdEgg0i0vzdcxgUJwZAfQHU0DEhMnXtA-g01Q@mail.gmail.com/
> ---
>  .../bindings/sound/eukrea,asoc-tlv320.yaml    | 57 +++++++++++++++++++
>  .../bindings/sound/eukrea-tlv320.txt          | 26 ---------
>  2 files changed, 57 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/eukrea-tlv320.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.yaml b/Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.yaml
> new file mode 100644
> index 0000000000000..190c923468cad
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/eukrea,asoc-tlv320.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/eukrea,asoc-tlv320.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Audio complex for Eukrea boards with tlv320aic23 codec.
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: eukrea,asoc-tlv320
> +
> +  eukrea,model:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      The user-visible name of this sound complex.
> +
> +  ssi-controller:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the SSI controller.
> +
> +  fsl,mux-int-port:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      The internal port of the i.MX audio muxer (AUDMUX).
> +      Note: The AUDMUX port numbering should start at 1, which is consistent with
> +      hardware manual.

Sounds like a constraint.

minimum: 1

Is there a max? I'd assume it is much less than 2^32.

Rob

