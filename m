Return-Path: <devicetree+bounces-305723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QkTqNx7/HmqBcgAAu9opvQ
	(envelope-from <devicetree+bounces-305723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:04:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 241616300E7
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:04:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Me99jb+r;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305723-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305723-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A9B073082424
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 15:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC773F0AB6;
	Tue,  2 Jun 2026 15:47:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51533EFFA9;
	Tue,  2 Jun 2026 15:47:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780415246; cv=none; b=em8cOCDG+a638JS46WqpAfvOz3fyzw8BZchRe/o1zwA/1aTVorBMrLVruy2etaASfiSQ9rE4F4sSceXf4ThOvIMFmvkT6hWw19CYikdT0mUUFLP5KS4IV9GE6eMc79ZAGF4+BlsBYowaojdn7sLeHIMqTH1cKTiZdzLmIzZBHv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780415246; c=relaxed/simple;
	bh=fB36J/SRW5tgF6/JUKwGX6SJvzrzKiu+kMVb7HNYsjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GezRVkMD8sVAuAJWYA98jKj05TVIDPSTHrUFQO2+fMOKlSgEXtQOw/YBNMTXtLRr1vpQKOtJWeeTbQ91RoMpNSFGuEiSzT9QfDMAdAqH4A3bG56AWexqJ7DB1m1DbOY0yk3WemaGEhEdV1O5aKoUxgafL6rW3v0GU+mnQCLlCes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me99jb+r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B1271F00893;
	Tue,  2 Jun 2026 15:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780415245;
	bh=rLJGRrI9wchr6WhD1/7j1dssOLlHbCro87xumtftL1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Me99jb+roHbsO/55bjAd+JNvbH/TdJt1UxA/XQgPQfLSqmRbKhL8X1rzyQJYHNu9I
	 KpY4PF7EcDOgd4HKie7lGi/vELjW9kza3vmU5640mOzV2H5QRnySYvGUXERZmIkfDY
	 lK7rvXLEBLZP1i4DbxAG+S8znCGyoHQtgUB/F6Fj8lXSgjX9ujhoWeMafmBzHu19YS
	 v4fvCpkUKfiZ8OQ+1m9J1ENk39alRzyAZy5XjcPigyfu3vpExICv8IWAngBeFXGCjj
	 bTf8zrdQ3Z8ENIA5/7C7zBhFe//4oPXzUJhVe4Nvd4appIZONfMBbosePt5T+9qxZp
	 eyRB8nFx6pGwA==
Date: Tue, 2 Jun 2026 10:47:24 -0500
From: Rob Herring <robh@kernel.org>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/3] dt-bindings: vendor-prefixes: add vicharak
Message-ID: <20260602154724.GA399800-robh@kernel.org>
References: <20260601162143.170030-1-hrushirajg23@gmail.com>
 <20260601162143.170030-2-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260601162143.170030-2-hrushirajg23@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305723-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hrushirajg23@gmail.com,m:heiko@sntech.de,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 241616300E7

On Mon, Jun 01, 2026 at 09:51:40PM +0530, Hrushiraj Gandhi wrote:
> Add the vendor prefix for Vicharak Computers Pvt. Ltd.
> 
> Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>

Missing tags. Perhaps because you are sending new versions before we can 
look at prior versions.

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 28784d66ae7b..504a691a33b9 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1791,6 +1791,8 @@ patternProperties:
>      description: VIA Technologies, Inc.
>    "^vialab,.*":
>      description: VIA Labs, Inc.
> +  "^vicharak,.*":
> +    description: Vicharak Computers Pvt. Ltd.
>    "^vicor,.*":
>      description: Vicor Corporation
>    "^videostrong,.*":
> -- 
> 2.47.3
> 

