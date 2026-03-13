Return-Path: <devicetree+bounces-274976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qC2cH9PGs2kqawAAu9opvQ
	(envelope-from <devicetree+bounces-274976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:12:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D83E27F5C2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 898B6301E4B5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 515EC34EF1C;
	Fri, 13 Mar 2026 08:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJiuitR7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4F71917ED;
	Fri, 13 Mar 2026 08:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773389247; cv=none; b=QKagspg+17MDIEqMsO7vczAcOr4j4/W3bRHexksM+zTIABIvJboOH99nz7t1aZZD6Eo7qa8ESIvVpV9VETQezehKGFeybzDbx6uN/M6S0CXnfmhQt0GRtmU7LemMiFozlg6jVGfVZfUg/KslDhaq/EIqW/c7gGC0oArrdMYduYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773389247; c=relaxed/simple;
	bh=BAFxxWkx2IgRzgNPdMPH6uFnWP2crppyP6IoAUZefKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nGipyqphOCopm4m4YGOOVBM46iIIyoHOatzwkXw5rQP9xAFLWiLZ7sjJn7sc65gwTU0tcgsOZ4nqTWNfzM0S+HZ5hw7Y4M1ZPYx1vJe8CiD0cNmhdv9pnpkjfwjnOiWdnVj/d1WtqHGZcGI0q8CgApDZ3vJ+8b1vn6RmxMuIUFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJiuitR7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FED7C19421;
	Fri, 13 Mar 2026 08:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773389246;
	bh=BAFxxWkx2IgRzgNPdMPH6uFnWP2crppyP6IoAUZefKg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uJiuitR7Haq3lXxpiq3jbRP/lBg29qXBB/GfL03xHGk24raNz7luWLOcEdJQVYhDG
	 Gt2n0Ijs7GiM50zpRtx36vgVE+UlPJL7zvwW8z9R6PlaG8pwNb256WI8dGdigQi5OQ
	 8x4pcC8rf38ePtAxejdEy/Oq9ShC3w0LHAWBtwHgVqs7FrUhY7Ih2Mo4cR2PkkdVZc
	 os+lXQ7Y3KxH13zDKU3IpaKj3a7vODk8LTkhUS0NWqm7E1NH9hm7bbI+dkWb9zrV00
	 fT3xo6p/EQTLjDh87KyOI7QDs37V2UI8BIsCZ13opji3GTRoIDaGpU6WxVz5y+FYuq
	 QEJVOvkF28Zzw==
Date: Fri, 13 Mar 2026 09:07:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: ulf.hansson@linaro.org, adrian.hunter@intel.com, jszhang@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: snps,dwcmshc-sdhci: add HPE GSC
 dwcmshc compatible
Message-ID: <20260313-mighty-rapid-cassowary-6915da@quoll>
References: <20260311181112.1700667-1-nick.hawkins@hpe.com>
 <20260311181112.1700667-2-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260311181112.1700667-2-nick.hawkins@hpe.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274976-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 7D83E27F5C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 01:11:11PM -0500, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add the 'hpe,gsc-dwcmshc' compatible string for the HPE GSC (ARM64
> Cortex-A53) BMC SoC eMMC controller.
> 
> The HPE GSC requires access to the MSHCCS register in the SoC system
> register block to configure SCG sync disable (bit 18) for HS200 RX
> delay-line phase selection.  The existing 'hpe,gxp-sysreg' syscon
> phandle is required for this compatible to access MSHCCS via regmap.
> 
> The HPE GSC eMMC interface only exposes a single 'core' clock (no
> bus clock), so clocks/clock-names are constrained to a single item.
> 
> Add an example node with the hpe,gxp-sysreg syscon reference.

Difference in one property does not warrant new example as there are
already two examples (two are enough usually). Drop.

> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 7e7c55dc2440..74734d46c70d 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -23,6 +23,7 @@ properties:
>            - const: sophgo,sg2044-dwcmshc
>            - const: sophgo,sg2042-dwcmshc
>        - enum:
> +          - hpe,gsc-dwcmshc
>            - rockchip,rk3568-dwcmshc
>            - rockchip,rk3588-dwcmshc
>            - snps,dwcmshc-sdhci
> @@ -77,6 +78,13 @@ properties:
>      description: Specifies the drive impedance in Ohm.
>      enum: [33, 40, 50, 66, 100]
>  
> +  hpe,gxp-sysreg:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the HPE GXP SoC system register block (syscon).
> +      The driver accesses the MSHCCS register at offset 0x110 within
> +      this block to configure clock synchronisation for HS200 tuning.

You need only one reg, from that syscon, so you should pass it as
argument:
https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42

> +
>  required:
>    - compatible
>    - reg
> @@ -87,6 +95,23 @@ required:
>  allOf:
>    - $ref: mmc-controller.yaml#
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: hpe,gsc-dwcmshc
> +
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: core clock
> +        clock-names:
> +          items:
> +            - const: core
> +      required:
> +        - hpe,gxp-sysreg

else:
  properties:
    hpe,gxp-sysreg: false

    Best regards,
    Krzysztof


