Return-Path: <devicetree+bounces-307783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fzjkDdouJWoYEQIAu9opvQ
	(envelope-from <devicetree+bounces-307783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 10:42:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A16B864F26B
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 10:42:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eDgGKaLJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307783-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307783-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47179300D693
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 08:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F0B370AC6;
	Sun,  7 Jun 2026 08:41:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48F0302753;
	Sun,  7 Jun 2026 08:41:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780821718; cv=none; b=ogCno5x2NUMZnareHE0mEp5qyraKzTZzZUNT7yc0izDD9helPMdaAYGPpCuHH/u7ucpRj5WdFaBdACUqr1JLHE/MtZzaDxQYcStT8byGHAx368R9gsZr5ePZMtcVH3MFRqdTiT0Eyp9CNk5piEAFNZ3ZRMp2phs7Z5o2zzKzVxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780821718; c=relaxed/simple;
	bh=+V3zWc/Auo8HB2b/uhZaYjqFNmhkeI/SoiT6RIUxf0c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RevclUMQopiEELrkQc5b+oEqohvS3Fk69POZmvmJ9SU4VNqv70yMBkhbh03Fnmieh7NHh9j2e0wpMbx991rPqGr3+cVpojJTU4zT/t8W74g/xmNfodLPpl1zJFTpde7PHy30BQ9EgP/wLASpKesvx59Pj39BmlZq7iOXQSQd82g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDgGKaLJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C7F21F00893;
	Sun,  7 Jun 2026 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780821716;
	bh=kjPQkxov/SW+RyzYMoBRSYRRk88Hyr+yTDMsr3g/ti4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eDgGKaLJwRa6lEovXKWsNCTYuN/4cJX7QUBtAQSR8kYnsnB9JpLj3bajjTz7lQj/q
	 2wFtzOfNDavNX0yq4jpzosQFtXnhczU06GAgBCLZ/h3nLq3H6WkUmqBzPUarOARX6K
	 lxKiqnXKcIOJgq+nkSmywwQR8IkbkzPblL72wKb+AaDJYnHzRUyljsDY2QWFx0yiyw
	 DfE4fI80eqkySrlKbkAd4xlBWVJC88H+A54xfaJfG4vvISOfeG+5Fvvqhy3UkkVxog
	 KVOAFtQSp5uafikiFtQt6W0Z/MDivoU0FQlCeuaw1v37hEtx/qfNRbwI1NhQbz/CS9
	 8puSAW1+7BXAw==
Date: Sun, 7 Jun 2026 10:41:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tapio Reijonen <tapio.reijonen@vaisala.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: serial: maxim,max310x: describe
 per-channel rs485 subnodes
Message-ID: <20260607-advanced-easygoing-capuchin-0bac3b@quoll>
References: <20260601-b4-max310x-rs485-dt-v2-0-a105105f8e70@vaisala.com>
 <20260601-b4-max310x-rs485-dt-v2-2-a105105f8e70@vaisala.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260601-b4-max310x-rs485-dt-v2-2-a105105f8e70@vaisala.com>
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
	TAGGED_FROM(0.00)[bounces-307783-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:tapio.reijonen@vaisala.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hvilleneuve@dimonoff.com,m:linux-kernel@vger.kernel.org,m:linux-serial@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A16B864F26B

On Mon, Jun 01, 2026 at 10:25:32AM +0000, Tapio Reijonen wrote:
> The MAX310x is a family of one- (max3107, max3108), two- (max3109) and
> four-channel (max14830) UARTs. The binding pulls in
> /schemas/serial/rs485.yaml at the chip level, describing a single set of
> RS-485 properties - enough for the single-channel parts, but a
> multi-channel chip can wire RS-485 differently on each channel.
> 
> Describe each channel as a "serial@N" subnode. Being a serial node (per
> serial.yaml) the channel carries the standard rs485.yaml properties and
> may also host a serial slave device. Constrain the channels per
> compatible: max3107 and max3108 have none and keep RS-485 on the chip
> node, max3109 has channels 0-1, and max14830 has 0-3. Chip-level rs485
> properties remain accepted and are the only form for the single-channel
> parts.
> 
> Signed-off-by: Tapio Reijonen <tapio.reijonen@vaisala.com>
> ---
>  .../devicetree/bindings/serial/maxim,max310x.yaml  | 90 ++++++++++++++++++++++
>  1 file changed, 90 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/maxim,max310x.yaml b/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
> index 889eeaca64a027b4d9e8ec87bcf63fcc8fd9d55b..988864e7957416caea2d86c38957a894ce57c6fb 100644
> --- a/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
> +++ b/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
> @@ -40,6 +40,36 @@ properties:
>      minItems: 1
>      maxItems: 16
>  
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^serial@[0-3]$":
> +    type: object
> +    description:
> +      A single UART channel of a multi-channel variant. Describe the
> +      channel's RS-485 wiring here with the standard properties from
> +      /schemas/serial/rs485.yaml#; being a serial node, the channel may
> +      also host a serial slave device. Single-channel variants have no
> +      such subnode - their settings stay on the chip node.
> +
> +    allOf:
> +      - $ref: /schemas/serial/serial.yaml#
> +      - $ref: /schemas/serial/rs485.yaml#

So now both top-level node is serial and its children are. I don't think
that's correct. This binding should be split for two cases - single
channel and multi-channel, while multi-channels will require subnodes
(in the binding, keep driver backwards compatible).

Best regards,
Krzysztof


