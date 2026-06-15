Return-Path: <devicetree+bounces-311614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dQpIEhaPL2oMCgUAu9opvQ
	(envelope-from <devicetree+bounces-311614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:35:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD2C683809
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:35:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MEUoMAHM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311614-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311614-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DE66300878F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D873A784A;
	Mon, 15 Jun 2026 05:34:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8802F3A6EF0;
	Mon, 15 Jun 2026 05:34:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781501675; cv=none; b=bA6sHKwpMFX/0cazweIzEus+qQgCIBh3U5nYz7qG8nQqaQ7yPMeAQEj7fu3TvcVJL4MteJp5TP7cj1Lo2RKNwBezflF16mxsnVHud9FZ1N9dJLwLBT9EqVOsShfIxlwi7aqfoqQlzbcxatOsVPRBTp89Ie304qbuP1AulHako24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781501675; c=relaxed/simple;
	bh=gz6/l0fXkcdM/dbGFOo+klHAC5CoFwOPed43QpQPJOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=COfkhREc5pBH7rcr9IXLDGDoF5ruHgXKg8wCg3e0OqU4PJD4Uo0ketT+0In/jToyo2uyPMJuDcTWXvbvm7symuu9r0reAgzWRaqVaEpcFKfZ4mAtSbVwQlOrdO+baker6aYEpqV4YPNyne7vhwM+VJfxgx+N57CYxMJaEVlc1y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEUoMAHM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2FD31F000E9;
	Mon, 15 Jun 2026 05:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781501673;
	bh=p2KuLQe/7E0ZPoi/8l8aRNtishmv1ue1DbKBYRDqUpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MEUoMAHMuVTje62FFnx5D960VtzJ/kOUnv/F7q9+0utpqVdTEPluVlTpa6SIChwcp
	 rt7FZmtuip1stbaXqHaK0RcFGovACwvnBl9xiZCtpbXukBOZDhvBIgup/TCKv6k6+F
	 6Y4JzQI00XvlU+wImdBxtgkOes0NB84wYgSvi6AZZuBawCiKuR9uVE6A56Iyg80Nyi
	 JSbw+du2JR9iCY/IXgifVdz2Qra4OGsKXqqvkhQOv3tn0c/BajDyiZRY4x5t2rPoB9
	 jGe7mkDTpNaCcwYDU8Govb/i1D/fkoYCxBr3axhwwgiX2Q66J9vNPx3isKYQIdgYQ/
	 KLe/t0r3aZCFQ==
Date: Mon, 15 Jun 2026 07:34:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, antoniu.miclaus@analog.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com, 
	duje@dujemihanovic.xyz, jic23@kernel.org, jishnu.prakash@oss.qualcomm.com, 
	jorge.marques@analog.com, krzk+dt@kernel.org, linusw@kernel.org, 
	linux-kernel@vger.kernel.org, marcelo.schmitt@analog.com, mazziesaccount@gmail.com, 
	mike.looijmans@topic.nl, nuno.sa@analog.com, robh@kernel.org, 
	sakari.ailus@linux.intel.com, wens@kernel.org, joshua.crofts1@gmail.com
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: adc: ti,ads1100: add support
 for ADS1110
Message-ID: <20260615-outgoing-chocolate-cat-63be5e@quoll>
References: <20260613190957.654798-1-jakubszczudlo40@gmail.com>
 <20260613190957.654798-2-jakubszczudlo40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260613190957.654798-2-jakubszczudlo40@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:joshua.crofts1@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-311614-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,gmail.com,topic.nl,linux.intel.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DD2C683809

On Sat, Jun 13, 2026 at 09:09:55PM +0200, Jakub Szczudlo wrote:
> Register layouts are the same as for ADS1100 but ADS1110 have different
> datarates and have internal voltage reference that is always 2.048V
> 
> Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
> ---
>  .../devicetree/bindings/iio/adc/ti,ads1100.yaml        | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


