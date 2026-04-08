Return-Path: <devicetree+bounces-285574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCcoNZb61Wn4/gcAu9opvQ
	(envelope-from <devicetree+bounces-285574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 08:49:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B403F3B7BBC
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 08:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EA4EB3011167
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 06:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8B2435DD1C;
	Wed,  8 Apr 2026 06:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jefaGRsh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37EE2D0614;
	Wed,  8 Apr 2026 06:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775630996; cv=none; b=W2KlKCTIttHEcCNVxvgLdnL3RAAxROas3sphtlKT8JGfbBe8c35f9R5iOD/FW9PK/SVhbBiEROhb3GFb5jcEnx6G+ltz1h9bqPrYnOQG5w4y/4PinxGB/Tlcgcw0OlkyjWT5rTFdlP0UtWGrYarcISuo8HJKl3Bi6zW2YpWV7sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775630996; c=relaxed/simple;
	bh=OJinugmxk3U59o8Evz03tGU+ZiGJ5IC9Tl/JyCwJolQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bcysq7uQnPr/tL6y70QiFFm2Q9CjbrYP/KRTAxpTpimdsWiPaUm1XBNzhyae+feXxce4gB3MK988TJmXC6Qw4sl8T1oOo3a6daDpKfEYti4N5F/r3yBIyBMoj9ZryddklYbGNg0OYk4bYNbheJkAIhfBD4/vYIFciTeG5siooio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jefaGRsh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06413C19424;
	Wed,  8 Apr 2026 06:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775630996;
	bh=OJinugmxk3U59o8Evz03tGU+ZiGJ5IC9Tl/JyCwJolQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jefaGRshR9m/AZQS3dwk2dgYtMI7pdtGh7qqqUMcmxKabsrErngqg0ZVO44OaYXzE
	 +QzXMZkBySSPouG04gvWI9a9iu02cWlGTekQeOuY84SgC0OJls3bBqXl5ccxu+lS6C
	 gUMqCH3Ip3a7YKnV2THDOiT3OftuWa5rC/dg4Zn8EyCREDJpmAYEgEVkgtx8FxoCGU
	 F5rZlAikJpGmcH4U2J4M3Z028Dh93XHh9GnbHZ+q9GiXkN8wnhjm7M+ICgM2pi/1J+
	 pFDsNOEf91T0DV2W6iDagsJYMfFZCMsust1EcrKamzaEFqSAFFzOMvhLzVgSUM2Run
	 gOVYtaqJ93Z7w==
Date: Wed, 8 Apr 2026 08:49:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.dev>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/9] dt-bindings: mmc: spacemit,sdhci: add pinctrl
 support for voltage switching
Message-ID: <20260408-nocturnal-talented-dinosaur-cbb9c0@quoll>
References: <20260407-orangepi-sd-card-uhs-v6-0-b5b8a1b2bfc8@gmail.com>
 <20260407-orangepi-sd-card-uhs-v6-1-b5b8a1b2bfc8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407-orangepi-sd-card-uhs-v6-1-b5b8a1b2bfc8@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285574-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B403F3B7BBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 10:25:21AM +0200, Iker Pedrosa wrote:
> Document pinctrl properties to support voltage-dependent pin
> configuration switching for UHS-I SD card modes.
> 
> Add optional pinctrl-names property with two states:
> - "default": For 3.3V operation with standard drive strength
> - "state_uhs": For 1.8V operation with optimized drive strength
> 
> These pinctrl states allow the SDHCI driver to coordinate voltage
> switching with pin configuration changes, ensuring proper signal
> integrity during UHS-I mode transitions.
> 
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---
>  .../devicetree/bindings/mmc/spacemit,sdhci.yaml          | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> index 9a055d963a7f0cdba4741c1e3e7269688dcd5f45..932fccc609bf8dbaf3ecfe09d9e610852ac7afa0 100644
> --- a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> @@ -11,6 +11,7 @@ maintainers:
>  
>  allOf:
>    - $ref: mmc-controller.yaml#

Drop

> +  - $ref: sdhci-common.yaml#

Best regards,
Krzysztof


