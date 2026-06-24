Return-Path: <devicetree+bounces-315068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id crG4ER6EO2pqZAgAu9opvQ
	(envelope-from <devicetree+bounces-315068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:15:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF56BC129
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:15:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PTBFnWrT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315068-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-315068-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 43EBA302E0FE
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E02238D01B;
	Wed, 24 Jun 2026 07:15:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3282B389DE3;
	Wed, 24 Jun 2026 07:15:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782285340; cv=none; b=rKo34/37z7bv1aThUx2F9mkAiKmabRHPy9Y7SkEsrtPekXK3G3Z0Hc+lri+TgFI0i+YX+WrFEzgWvqD1Y9YBCfReW9LJb/xexRdF8XWFcxGbksBdDeujTm0uOeJab/VRw8kbYomq9AesFbtFOl7KO+gNVQKZIq7765cZxgR5//Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782285340; c=relaxed/simple;
	bh=hGozsYHbqA28Lv2JaDrVlvd7AnoXfAz7v9pnqweVy6Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lE9tv8TH3wa8xCqyLEZwXG9BPPEMZFOr6Os9dCD+SDB5p17u31sYEBAFSuaxHFzBZsu85D3mp+GHVRTTkZwIBNA7poriLjM7KTb6PEj8dHh2wTOqxuANTTW79Ic8YgM69q1o4lQ9klFHbIqU2ju2Nzfi532lyTp0griRbG6/SfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTBFnWrT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F24E31F000E9;
	Wed, 24 Jun 2026 07:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782285339;
	bh=ONVxwC+Td25N43rGDzHnzsanpqUWTvIc0+6pDMU/MTc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PTBFnWrTnSlnRm7wA9VA1PKnERY9yuPOvIvAeqhs1Yt6aoGxjRIfYBkjLVOQMbeNz
	 kVBap/AwGkGSkpKtQ/39UY6tYC5h2Hxi7VKuzuAsEwE7Q8mVB/PU7I7Y4eJKS9ET6Q
	 zysZDCaCETP5NWRPz+SMh2iLvN3vwxYg3pK9Ax+i//noDUm+RX8Zntiq8Pd3FC1Ldt
	 PVyQL0gk9ZzMeM3ekhH4GVnrOpee7EB9Key3pzQBLLna0L0Ke76QM41Z4gJZ49GMV7
	 uKzysiCphyE2UP/cXefVGblMHKlA92DT3p3TmpOZ+BzGgY0nAwKsi+rplH5Naor63Q
	 2WpjSkr7z9qIw==
Date: Wed, 24 Jun 2026 09:15:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?R3LDqWdvaXJl?= Layet <gregoire.layet@9elements.com>
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, lkundrak@v3.sk, 
	devicetree@vger.kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, andrew@lunn.ch, 
	jacky_chou@aspeedtech.com, yh_chung@aspeedtech.com, ninad@linux.ibm.com, 
	anirudhsriniv@gmail.com, linux-serial@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/7] dt-bindings: serial: 8250: aspeed: add compatible
 string for ast2600
Message-ID: <20260624-realistic-spiked-parrot-db1d9c@quoll>
References: <cover.1782224059.git.gregoire.layet@9elements.com>
 <80d983887dfdfc7e70a6db95f8cb95b7312f3044.1782224059.git.gregoire.layet@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <80d983887dfdfc7e70a6db95f8cb95b7312f3044.1782224059.git.gregoire.layet@9elements.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew@lunn.ch,m:jacky_chou@aspeedtech.com,m:yh_chung@aspeedtech.com,m:ninad@linux.ibm.com,m:anirudhsriniv@gmail.com,m:linux-serial@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315068-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[jms.id.au,codeconstruct.com.au,v3.sk,vger.kernel.org,linuxfoundation.org,kernel.org,lunn.ch,aspeedtech.com,linux.ibm.com,gmail.com,lists.ozlabs.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBEF56BC129

On Tue, Jun 23, 2026 at 02:25:39PM +0000, Gr=C3=A9goire Layet wrote:
> The ast2600 was using the ast2500 vuart compatible string.
> This change makes it possible to have ast2600-specific properties.
>=20
> Signed-off-by: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets. See also:
https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/sub=
mitting-patches.rst#L830

> ---
>  .../devicetree/bindings/serial/8250.yaml      | 20 +++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documen=
tation/devicetree/bindings/serial/8250.yaml
> index bb7b9c87a807..3cbd0f532e15 100644
> --- a/Documentation/devicetree/bindings/serial/8250.yaml
> +++ b/Documentation/devicetree/bindings/serial/8250.yaml
> @@ -23,7 +23,9 @@ allOf:
>      then:
>        properties:
>          compatible:
> -          const: aspeed,ast2500-vuart
> +          anyOf:

This should be oneOf (by convention and actually more accurate meaning).

> +            - const: aspeed,ast2500-vuart
> +            - const: aspeed,ast2600-vuart
>    - if:
>        properties:
>          compatible:
> @@ -287,17 +289,19 @@ properties:
>    aspeed,sirq-polarity-sense:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      description: |
> -      Phandle to aspeed,ast2500-scu compatible syscon alongside register
> -      offset and bit number to identify how the SIRQ polarity should be
> -      configured. One possible data source is the LPC/eSPI mode bit. Only
> -      applicable to aspeed,ast2500-vuart.
> +      Phandle to aspeed,ast2500-scu or aspeed,ast2600-scu compatible sys=
con
> +      alongside register offset and bit number to identify how the SIRQ
> +      polarity should be configured. One possible data source is the LPC=
/eSPI
> +      mode bit. Only applicable to aspeed,ast2500-vuart and
> +      aspeed,ast2600-vuart.
>      deprecated: true
> =20
>    aspeed,lpc-io-reg:
>      $ref: /schemas/types.yaml#/definitions/uint32-array
>      maxItems: 1
>      description: |
> -      The VUART LPC address.  Only applicable to aspeed,ast2500-vuart.
> +      The VUART LPC address. Only applicable to aspeed,ast2500-vuart and
> +      aspeed,ast2600-vuart.
> =20
>    aspeed,lpc-interrupts:
>      $ref: /schemas/types.yaml#/definitions/uint32-array
> @@ -305,8 +309,8 @@ properties:
>      maxItems: 2
>      description: |
>        A 2-cell property describing the VUART SIRQ number and SIRQ
> -      polarity (IRQ_TYPE_LEVEL_LOW or IRQ_TYPE_LEVEL_HIGH).  Only
> -      applicable to aspeed,ast2500-vuart.
> +      polarity (IRQ_TYPE_LEVEL_LOW or IRQ_TYPE_LEVEL_HIGH). Only
> +      applicable to aspeed,ast2500-vuart and aspeed,ast2600-vuart.
> =20

More important, where is documenting of the actual compatible?


Best regards,
Krzysztof


