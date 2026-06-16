Return-Path: <devicetree+bounces-312650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tZuBIe6HMWpJlwUAu9opvQ
	(envelope-from <devicetree+bounces-312650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 19:29:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6F16932F4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 19:29:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JLG6mbuV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312650-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312650-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89AA2301A7CE
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8DD0478E3E;
	Tue, 16 Jun 2026 17:29:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A890247B413;
	Tue, 16 Jun 2026 17:29:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781630946; cv=none; b=EuFBk8xyW/OC9pX9ThJAvOqjYO8ylQDQLRl3R0NmP+YdCNiHIYIF4nRaxOWsgeDmUtscfLibYRsCM7OHRAb6GB5Iqr15rMKPAl+p6n6LlFyEosMU8qAg7UiSw5lCWbc1aaj1mFgLSsbIId+56hgc40motvXoPaYjY1RULaq/5Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781630946; c=relaxed/simple;
	bh=NaxzfdP9ayheFK9mT097DNbSlCN1Kw1VdldDufukB7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SMzjW+CK3p0StlkCH58/S+ab/VDZ2XWyH/TMF4/8WUFomfWcWPOBDuDOy6pbOksv8UnNa3DsD07GifdXVpAH5tYy6HB6pxz3hTvvbq5cyche6HWtcHIk+R8gjaSS0NHGnFxBRwycXBf8Pn3gXtTrycfaEj0TjrvyBDFZUix0xyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLG6mbuV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72061F00A3D;
	Tue, 16 Jun 2026 17:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781630944;
	bh=tPiaiG+PobOwjWjYLwLmVH9nP3FU1Y5GnnLskZEHqPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JLG6mbuV6OmZVfx/OkWLfxHdd+7JHDrEDOgeYNZ1Dy+OlDKHR8RGz7N+HKIWkkRAT
	 gRjNidRDXowAGyOucAgF2jKCzqpBl9lu8xoCCC/Owwjy0gEeCkUqJPpAH3I7hSO22U
	 AzyC+YOVwi1ls/vyQvLMu+yD4jVKd65D2Hrx8v46uT9LpVyUonLCusfQw5ebb+QyfL
	 8BRNCdv93pBzGfQPom+7KWQq01lOvO/rQ6AoFmYmXA7SKCF/4YUI7rx2Tek7dczALY
	 qzWNwLnjEu6ZSoAH5KZOt5ODjkIVgXOdnf+rzxzDP3jGRBo1Ftvg9fPDpb5ZfXXZo/
	 kxDv6UArbNFTg==
Date: Tue, 16 Jun 2026 12:28:52 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tapio Reijonen <tapio.reijonen@vaisala.com>
Cc: linux-serial@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Jiri Slaby <jirislaby@kernel.org>, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: serial: maxim,max310x: describe
 per-channel rs485 subnodes
Message-ID: <178163093205.2469869.2417966435525371534.robh@kernel.org>
References: <20260615-b4-max310x-rs485-dt-v3-0-7e79f064bdd7@vaisala.com>
 <20260615-b4-max310x-rs485-dt-v3-2-7e79f064bdd7@vaisala.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260615-b4-max310x-rs485-dt-v3-2-7e79f064bdd7@vaisala.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312650-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tapio.reijonen@vaisala.com,m:linux-serial@vger.kernel.org,m:conor+dt@kernel.org,m:hvilleneuve@dimonoff.com,m:jirislaby@kernel.org,m:linux-kernel@vger.kernel.org,m:gregkh@linuxfoundation.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
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
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,vaisala.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C6F16932F4


On Mon, 15 Jun 2026 10:27:36 +0000, Tapio Reijonen wrote:
> The MAX310x is a family of one- (max3107, max3108), two- (max3109) and
> four-channel (max14830) UARTs. The binding pulls in
> /schemas/serial/rs485.yaml at the chip level, describing a single set of
> RS-485 properties - enough for the single-channel parts, but a
> multi-channel chip can wire RS-485 differently on each channel.
> 
> Split the binding per compatible:
> 
>  - single-channel parts (max3107, max3108): the chip node is itself the
>    serial port and carries the RS-485 properties, as before;
> 
>  - multi-channel parts (max3109, max14830): the chip node is only a
>    container and is no longer a serial node; each channel is a "serial@N"
>    subnode that carries the standard serial.yaml/rs485.yaml properties
>    (and may host a serial slave device). max3109 has channels 0-1,
>    max14830 has 0-3.
> 
> This avoids a chip node that is simultaneously a serial node and the
> parent of serial nodes. The driver still reads chip-level RS-485 for
> single-channel and legacy device trees, so existing users are unaffected.
> 
> Signed-off-by: Tapio Reijonen <tapio.reijonen@vaisala.com>
> ---
>  .../devicetree/bindings/serial/maxim,max310x.yaml  | 92 +++++++++++++++++++++-
>  1 file changed, 90 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


