Return-Path: <devicetree+bounces-282784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SA9QJmduy2npHgYAu9opvQ
	(envelope-from <devicetree+bounces-282784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 08:49:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F305C3649C5
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 08:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 595DA3026A9E
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 06:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0793845A3;
	Tue, 31 Mar 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nanm4Y+t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680E0377016;
	Tue, 31 Mar 2026 06:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774939713; cv=none; b=sal+o0oYYtR6WGfRozavBMiIACFbiMj6WdZ/rdI542kifWsCVqzVsJx/NIM3K6MA82E4hd0OjpYycToaBNphnhYgNCAGJXOqN7Aij5wcWLZQH1WV4lxrJs8d9vJzYgOm5y7i03ZDzrx8Q7MZFrJs5Hua+5kKYUuh38ML8LOhW7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774939713; c=relaxed/simple;
	bh=ezx0Ms8en0l0JsWpz/LL91KCza1vVnbzIyBSo3p3zko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q2PrArnLuNgAEWCzIYufF6htPshprN/PGBHvXg11DRoqPugXfbiFmabGjuPIWlcTbkQNc+n/qz5UNDRJ4uz1ESWnRWtAl4YOAPMwQDPhVUSHWpVKsVhPNjuPbTbLa7MKKbLA3VRP6+mx9lEHbxtJegd40YcV9BtpoWqYeBZpQvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nanm4Y+t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F775C19423;
	Tue, 31 Mar 2026 06:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774939712;
	bh=ezx0Ms8en0l0JsWpz/LL91KCza1vVnbzIyBSo3p3zko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nanm4Y+tHZI+aNy/m8diIfcWEKD1SNww+kmlfWUy+EvoLpNJOD/FaCCkOikoZfwb7
	 /YEm9fGDl3Z4LUmzzqIEu8uOE0/bcMhvvgJ41ZkBZrx/lphkm+Wj2XLyWnISA+uFqG
	 KnV7bA1jAThzKrhZmmSpxh14e5kI8Kwjaj4jA9zYt4aFKJ/TYw8t1/FxCECcty1Dyw
	 wKfd3x2k7iXGiMrDOluruC0i4R2p9qx2ahmIABWwal6qer7rsmQPQiBBsVna3sVc9e
	 QRQSHUhNt1cQcOx5cFIam2PPCsedULcRxeofALjCtNDqcXl9WmIboUCf5Dmnksc1QJ
	 h5DI5gX/ef/rg==
Date: Tue, 31 Mar 2026 08:48:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, Javier Martinez Canillas <javierm@redhat.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/9] dt-bindings: mmc: spacemit,sdhci: add pinctrl
 support for voltage switching
Message-ID: <20260331-eager-kind-civet-62f60a@quoll>
References: <20260330-orangepi-sd-card-uhs-v5-0-bd853604322d@gmail.com>
 <20260330-orangepi-sd-card-uhs-v5-1-bd853604322d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260330-orangepi-sd-card-uhs-v5-1-bd853604322d@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282784-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F305C3649C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 10:38:02AM +0200, Iker Pedrosa wrote:
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
>  .../devicetree/bindings/mmc/spacemit,sdhci.yaml         | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> index 9a055d963a7f0cdba4741c1e3e7269688dcd5f45..201ab97f0e88376a4680dcca7917e8b3172bd84a 100644
> --- a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> @@ -44,6 +44,20 @@ properties:
>        - const: axi
>        - const: sdh
>  
> +  pinctrl-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum:

No, that's not enum but list. Look here:

> +        - default
> +        - state_uhs

Instead: uhs

> +
> +  pinctrl-0:
> +    description: Default pinctrl state for 3.3V operation

So first item must be default, not uhs

Best regards,
Krzysztof


