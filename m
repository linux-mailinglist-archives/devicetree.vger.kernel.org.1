Return-Path: <devicetree+bounces-318151-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8eGrI1+4RGodzgoAu9opvQ
	(envelope-from <devicetree+bounces-318151-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:49:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B2C6EA52D
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:49:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c2VoM09+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318151-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318151-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3AFB300DD65
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 06:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65F93AEF3D;
	Wed,  1 Jul 2026 06:48:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934462222CC;
	Wed,  1 Jul 2026 06:48:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782888538; cv=none; b=E6+3EphH2zdk43EYkgtZ03r4eUvi0Yz1mBlbwa5h2JcPSV9ecfNxeoyfIIddts8/rhGmfPuQSnFrFdAmKlISvxF+c+VQzQDTnLwqJQnKC9A78Iv+FhXRB9Wz5doC+DfpbR3yT+ldatKoBhZw4oDroF8UgkqhXxGAHIbXBYV3vr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782888538; c=relaxed/simple;
	bh=O8ok//vkUpJ8IC0w58gonWcEwAQiZ3Sr18Cml5A6zN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jigstR1j44Y9+niNLLA1fMwA/9tN8E80XmuCQSKKiaMzX62576Kw132TxAZuQ7QTDBOEF6SVSyxAsqj7abYi86NL++Bc2kB916Z5jzo0FllBTsebJWKetbfro+cWZIf8MaKO3CGyfNz6GlUSc+KQvCKT8y41EPeFaSYfsxAl9aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2VoM09+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153F91F000E9;
	Wed,  1 Jul 2026 06:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782888537;
	bh=qqxjSfdNptRpMmnYEFCOxj743R+/l3YLArLI7MNlECg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c2VoM09+A49PImIpp8iIVPTzA7pRP8dBNVaXjrbkPsCv1QLkjb338Us4egdCxuyyF
	 yxcut5idanoVL0t1ozdHhAIhZK1y3hsR/RyWI7COiXg7Eg3plu8YN9Tl6irKEmwyH4
	 2ylYeq4MvW4z9kpews/s1XXcJHZprIRdMNZPL4BZfnF6BJl3dLr6aY0bMlZ4JvXKw8
	 hkFS1FVX0PyvtHvsT3HlnKPN6tqR9cgCsB/Mr/9pdsAYfVHw36V7ARrNoWUYPxmNLD
	 kZa4csVVZY9DKokf2pcSsTpODUEDF52STT6lN4VvXOM5t9ZqdKMaVMKXXBm8iU9pho
	 NV3U2ulcZtskQ==
Date: Wed, 1 Jul 2026 08:48:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Fitzgerald <rf@opensource.cirrus.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	patches@opensource.cirrus.com
Subject: Re: [PATCH v6 1/3] dt-bindings: clock: cs2600: Add support for the
 CS2600
Message-ID: <20260701-optimal-honest-earthworm-db18cf@quoll>
References: <20260630155549.824059-1-rf@opensource.cirrus.com>
 <20260630155549.824059-2-rf@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630155549.824059-2-rf@opensource.cirrus.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318151-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rf@opensource.cirrus.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:patches@opensource.cirrus.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,cirrus.com:email,quoll:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7B2C6EA52D

On Tue, Jun 30, 2026 at 04:55:47PM +0100, Richard Fitzgerald wrote:
> From: Paul Handrigan <paulha@opensource.cirrus.com>
> 
> Add device tree schema for the Cirrus Logic CS2600 clock generator.
> 
> The majority of the schema is typical clock, power and I2C
> properties.
> 
> Passes dt_binding_check:
> make dt_binding_check DT_SCHEMA_FILES=clock/cirrus,cs2600.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   CHKDT   ./Documentation/devicetree/bindings
>   LINT    ./Documentation/devicetree/bindings
>   STYLE   ./Documentation/devicetree/bindings
>   DTEX    Documentation/devicetree/bindings/clock/cirrus,cs2600.example.dts
>   DTC [C] Documentation/devicetree/bindings/clock/cirrus,cs2600.example.dtb

Why is this in the commit msg? What is its purpose? Do you see any of
this in any commits?


> 
> Signed-off-by: Paul Handrigan <paulha@opensource.cirrus.com>
> Co-developed-by: Richard Fitzgerald <rf@opensource.cirrus.com>
> Signed-off-by: Richard Fitzgerald <rf@opensource.cirrus.com>
> ---
> 
> Changes in V6:
> - Fixed clock naming in descriptions to match datasheet.
> - Fixed clock-names property values to match datasheet names.
> 
> - Added cirrus,internal-oscillator boolean to flag that the internal
>   oscillator is the clock source. Previously the driver inferred this
>   if clock-names did not contain "ref_clk_in", but this made it difficult
>   to enforce dts correctness because there was no way to tell whether
>   ref_clk_in was intentionally or accidentally missing.
> 
> - Changed the cirrus,clock-mode enum property into two booleans, since
>   effectively it was two separate features masquerading as an enum:
>   - cirrus,smart-mode present to enable smart mode.
>   - cirrus,smart-mode-clkin-only to enable a feature where the output will
>     be suppressed until both input clocks are present.
> 
> - Changes to cirrus,aux-output-source property:
>     - Renamed to cirrus,aux1-output-source because it's for the AUX1 pin.
>     - Added more options.
>     - Renamed the "no_clkin" option to "clkin_missing".
>     - Reformatted the description as a list instead of one long sentence.
> 
> - Changed clock-names from an enum to an ordered list of const.
>   This implicitly ensures ref_clk_in is always required.
> 
> - Added properties to invert bclk and fsync outputs.
> - Added property cirrus,fsync-duty-cycles.
> - Added #clock-cells and vdd-supply to the list of required properies.
> - Rewritten description description section.
> - Reordered the property list to put common properties before custom
>   cirrus properties.
> - Added more examples.
> - Added header file to define the clock indexes for DT consumers of the
>   CS2600 clocks.
> 
>  Note:
>  V5 was Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>  but I haven't carried this forward because the changes in V6 are large.

Dropping my tag is right thing to do, but making significant changes to
hardware at v6 is very odd. Bindings represent here the hardware, so how
is that v5 had one view of hardware and the next revision rewrites it
completely.

Probably answer - v5 was heavily incomplete - but we do ask to make it
complete in the first place (see writing bindings), so all my previous
review was waste of time.

This will wait for review.

> +examples:
> +  - |
> +    /* Smart mode */
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      clock-controller@2c {
> +        compatible = "cirrus,cs2600";
> +        reg = <0x2c>;
> +        #clock-cells = <1>;
> +        clocks = <&xtl_clk>, <&sync_clock>;
> +        clock-names = "ref_clk_in", "clk_in";
> +        vdd-supply = <&vreg>;
> +        cirrus,smart-mode;
> +      };
> +    };
> +

Two examples max.

Best regards,
Krzysztof


