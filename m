Return-Path: <devicetree+bounces-307286-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5qJZLUOiImoWbQEAu9opvQ
	(envelope-from <devicetree+bounces-307286-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:17:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2B66473CC
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:17:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eg8GsaXu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307286-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307286-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9F02300B605
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7453E5599;
	Fri,  5 Jun 2026 10:03:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637B53E4C85;
	Fri,  5 Jun 2026 10:03:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780653804; cv=none; b=YEpghyngria+goNjWG9zGw67gftg/mL0lW24washiPXRhRLqQuPIxYKoDM93aPxP3iol+WZrEpKi92OkM1L/7F90r2owdxAfYnzkR0/GdSVDMacrR81KrUa2tkGOF4fOMdphUAJFBM089EXQz0cPQi9fZUa2kG4/QpnzLyXYJ8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780653804; c=relaxed/simple;
	bh=VLwp8fH4ZG7f8zXVPmp53g3+/ajhfCm3ZoMUcZBkgBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eKDn77lGdgWr6t5zG/sKZXYERop/MTdl3kFd/qpslf5YJI8xnZZ8B14xHlaVGYJw3TvS2XDmzKsFV56MsNXSvFn6KBpIUDfSKGhIjf1d29lnOF8JFCzJhdmEMYY+XeEzu9Rfvh1FOLEd3pgrgEO+UaiBJHfsLDJHkTsSYcWE1C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg8GsaXu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A9D31F00893;
	Fri,  5 Jun 2026 10:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780653803;
	bh=S7BMO8cpcnRmf/pdVAVdW2RAssH+EVoJVhCq/grmx9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eg8GsaXu63euOYEvi0ZAFb3GboTIFgfUUQgee2nHiYbTzEsCdsvBfif7HlHFW2ZBA
	 AInNaXOsSRkuXAlaX4doBl36un7RRwUvI7kVKqd6aMegM7zfLAsv/diHk2T6vE1OXe
	 G+JyftXGdvDsuVAt6o4rd/jUkV2Pxphfj/uP9BP++8TkJUdv/AbWCUsRViN8GlyejZ
	 +53PeGzULhrUnWKpC1AWDmMCV9P/TEFA7fmpdCEKMcR8XC6hGfyhRPeTNE4LPxhgPT
	 hIUSmaLnxQF3L27J/FqFWFXvqIhdEa3gSGM9JG51D4qci2OzOHTXCsWe4bylYzr0wK
	 h9h+/xvu1VncA==
Date: Fri, 5 Jun 2026 12:03:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V10 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260605-big-auk-of-progress-c99b3a@quoll>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
 <20260604201832.60656-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260604201832.60656-3-macroalpha82@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jic23@kernel.org,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-307286-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quoll:mid,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B2B66473CC

On Thu, Jun 04, 2026 at 03:18:24PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the ICM42607 and ICM42607P inertial measurement unit.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. The driver does not require an
> interrupt for these specific chip revisions.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


