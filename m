Return-Path: <devicetree+bounces-308781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bEtcIQHDJ2rf1gIAu9opvQ
	(envelope-from <devicetree+bounces-308781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:38:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DE78865D4BC
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:38:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Ji+SRwM/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308781-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308781-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C829A30A29E0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A79433DBD7C;
	Tue,  9 Jun 2026 07:33:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27933DC84C
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:33:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990389; cv=none; b=HaJn5mXEQjwPC7tL9NrKqi+hhzRzkURu+AGCFL1wUe7NjvqoVsNDJwhGmZrQPFljQGDHPUlZoPa5QYBIUfQlqMn5ezosSSmRRhkUvyq7YZtarIwIsU9bDdUELHUlIJbAJYSQKrDIpwgJdwUAbV+eKsUKqIGX+QL+zrF0+2fnLp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990389; c=relaxed/simple;
	bh=lnRXYauZivJZYZKKpwfjuvGMGi/Kptw0SsII1kh49V0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hLSg1TEniVzJ9d0qmVkVaJsuQjvsQ+1omjJiYirYsrViCLRj29fbRM5H+c0yYzlw6IKzcTHUVN+E2tGoYh4iHmRD2qFSnYTKdVYWd9NTUNUrMPxvDMtMa7stJQHomK2Lba6ZtAloGjc4xJKSNkc5eittbbjthcoCoiehoe1UbgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji+SRwM/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46DC71F00893;
	Tue,  9 Jun 2026 07:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780990388;
	bh=JUkrHSIawlDovwdqb3YkhtzZRBnNrrGbpK99tAgrPQY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ji+SRwM/0W6UFN993aF/K3YBxh9rvTZzYPqcLYo+BFw05SL7Cqnz7UXbU54wQCRBc
	 JyQABtGt5j/QmoXRmrkFbvNkGG9Eede9p3ed1pLnotpdBhoQcGKK91iDAgWptfiQZm
	 Ir1ZZEsWrXjHTZ3E0pnBXaX6oJJOSmBG3vikl4S+zv9gdX6OjaIs6QjBKgLVxxnyqD
	 waKW0ar14+Aop9VVpAosMn3YkiO39bGg2tbjtTAVl2LYxcWnL2C2UmPbpHlALFJ8dY
	 vXV62glI12p4GxKu1QNxlEFTyl2o4lViEnyyuPW7dUXVGoFH3913Ssn4zqJ+oTrYh0
	 ASwlrE33Ucr3Q==
Date: Tue, 9 Jun 2026 09:33:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, 
	devicetree@vger.kernel.org, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Subject: Re: [PATCH 7/7] ASoC: dt-bindings: ES8389: Add members about HPF and
 clock
Message-ID: <20260609-vociferous-thick-lyrebird-d53eda@quoll>
References: <20260609030623.17404-1-zhangyi@everest-semi.com>
 <20260609030623.17404-8-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609030623.17404-8-zhangyi@everest-semi.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308781-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE78865D4BC

On Tue, Jun 09, 2026 at 11:06:23AM +0800, Zhang Yi wrote:
> Add members related to HPF and mclk_source

Please organize the patch documenting the ABI (DT bindings)
before the patch using that ABI.
See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation/devicetree/bindings/submitting-patches.rst#L46

> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8389.yaml        | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> index 75ce0bc48..be92014c0 100644
> --- a/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> +++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> @@ -38,6 +38,27 @@ properties:
>      description:
>        Interface power supply.
>  
> +  everest,mclk-from-sclk:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Indicates that SCLK is used as the internal clock.

And what happens with mclk in such case? Is it still wired?

> +
> +  everest,hpfl:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description:
> +      the HPF value of ADCL.

Is HPF value in dB? If so, use proper unit suffix and proper units.

> +    minimum: 0x00
> +    maximum: 0x0f
> +    default: 0x0a
> +
> +  everest,hpfr:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description:
> +      the HPF value of ADCR.
> +    minimum: 0x00
> +    maximum: 0x0f
> +    default: 0x0a
> +
>  required:
>    - compatible
>    - reg
> @@ -58,5 +79,7 @@ examples:
>          #sound-dai-cells = <0>;
>          vddd-supply = <&vdd3v3>;
>          vdda-supply = <&vdd3v3>;
> +        everest,hpfl = [0a];

<0xa>? What did you want to say here?

Best regards,
Krzysztof


