Return-Path: <devicetree+bounces-311378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e0F/AC6lLWq7iAQAu9opvQ
	(envelope-from <devicetree+bounces-311378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:45:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8474767F576
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:45:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a4E5x29D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311378-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311378-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE3B130041C8
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD8D3859EF;
	Sat, 13 Jun 2026 18:44:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B0837F011;
	Sat, 13 Jun 2026 18:44:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781376299; cv=none; b=O53kgJjOitoKedrAtQyBN8ykgVsMh6oeoAW+vybwsCr/zUvQtaVF1JmYOYGQ+rdgEGBdW07LESJvPWv9ESqQ/dm/u/QRWkcmTtQJ+ZRqm00M/xjTDvkxLTNUfyu/cQHajtdo+aorbRrs6o3bPFUhQs/64FleN51V2ogvYrfi+Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781376299; c=relaxed/simple;
	bh=GRXNIqwh7Tkzf3BNVPv/j4cKJRjcRitKxUa76to4/p4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UPhhPk0hcx2f9HI139gqB3R/SRFerJBd3D0m8EUGgUOLUcrMrpEglXxphfc7pkDkK59L4r4fwyLYgsq3pQrj0r7hy4B3hMWCtnS+3bcdh4ttg0bd1f+iaScdig5zvc52NU9twH1AYbhO95BmTw4n8OCAPcqc2Z25JdjHuk1vBTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4E5x29D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF8CB1F000E9;
	Sat, 13 Jun 2026 18:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781376298;
	bh=RvtPhUmYt3jfH3tQ8SpX4R+e+sVqhDVDrv50TBQhfxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a4E5x29DfEhL4n5atvx32eD5+PitMiMDer8a3nqVtmjdq1mbK3+6f4O/ySjxYkadL
	 TMolbc+gRbYWMiYzQ39vgwTdHTJkpmNGrYB5JYMstHTU8Y4QqG6fPUkn/D9Ph9brpi
	 gEQ4phqLTPQuOd539F4Plh4kxwkXU7r/frU+YRmN4Mp+ig3xKn4KfPU2yoqbopyvXl
	 wMEtSevacTrfXos5AtaFdLEqQyumIKUf7oXNGV/YcSpHY3lB/Nk6e9ndl5cL7A4uli
	 OJbX1OTYpmXmoX6aayHKFCA6M7yJLCZNy+oqLz8wuunyYOsq71XShjDsedUAIEcDQ3
	 PEH+OyK3gpsiA==
Date: Sat, 13 Jun 2026 20:44:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Animesh Agarwal <animeshagarwal28@gmail.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: Fix RT5677 "realtek,gpio-config" type
Message-ID: <20260613-optimal-frog-of-honor-b0eff9@quoll>
References: <20260612214911.1883234-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260612214911.1883234-1-robh@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311378-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:animeshagarwal28@gmail.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8474767F576

On Fri, Jun 12, 2026 at 04:49:11PM -0500, Rob Herring (Arm) wrote:
> "realtek,gpio-config" is described as six 8-bit GPIO configuration
> values, and the RT5677 driver stores and reads those values as bytes.
> The binding incorrectly documented the property as a uint32 array.
> 
> Document "realtek,gpio-config" as a uint8-array so the generated
> schema matches the hardware definition and the existing driver helper.
> 
> Assisted-by: Codex:gpt-5-5
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/sound/realtek,rt5677.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


