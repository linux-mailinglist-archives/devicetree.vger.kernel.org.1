Return-Path: <devicetree+bounces-292490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGL6IABC+GnCrwIAu9opvQ
	(envelope-from <devicetree+bounces-292490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 08:51:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 758AC4B903C
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 08:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B75130063BD
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 06:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F8642C031E;
	Mon,  4 May 2026 06:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLLBt8DX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9EE26980F;
	Mon,  4 May 2026 06:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777877500; cv=none; b=tmmJTRuPduCAZXYXsghWUONcdNc08vWPGI9poLc64sfFK2KJ54YLD+LpS41sr9TE2gYWxGHsaJ6UFdAZWmObnese7OALhdKB7ezQIsfXxdmQOaha4eseDzbJj1o7VH6mRKY81LkMgvXGkLDNHC4YuaiArcqBF0ZN99FTUBbpqek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777877500; c=relaxed/simple;
	bh=Yo0n45NrKvqBLKJK0yUlOg22z0DqQC9PPWHInSUYGnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FX4XcNiJ+ohB7GHW5saUzUzkuvmGEmr/AK2Bh9Qo2Wr5dLXJQ0ki0cNiFpIPyC9AgqZeW1RiITGD3tBA7wKAhCL4cZheOS0IcANCwNs4UTrD0/RW2kMAnOgUoI7K2xr8uaL/z9QqiZxJR4+x+MfGeyQzkWpdwXC8IuIksoE8rEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLLBt8DX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F919C2BCB8;
	Mon,  4 May 2026 06:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777877499;
	bh=Yo0n45NrKvqBLKJK0yUlOg22z0DqQC9PPWHInSUYGnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HLLBt8DXfxCY8bQaT7mrL6J8eAJ7hDRibt3TEAgdLO3ZQd4o9Ub6iTcPfdumUnMzS
	 wkzDwFioNrQEsx7sPAgw9VTpj8Q3S2a+rMzgEZx+nrrxvGQ1pQiQjZuMRA06NmcnqL
	 39tRoVRApHO/cfk1Z6iNIZPVJTTcy96f5ckxtn4Cnmbi+q3rbrMZAH4T7KV5CG3hxy
	 SihxXR9XZDxnk1w31ZVl+1oKYolskBAfvhqNFB2dsT7AW2mSFg2gM6SzXOIqBEIvAu
	 +Kq9M2pfe4qc9Ik+Nz8R8Avd8GipRgGwN6LkMNdaRfYLl2KpISVJc3uxDG4TYbToxp
	 gg1r3zvD3OBvQ==
Date: Mon, 4 May 2026 08:51:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: Andreas Klinger <ak@it-klinger.de>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 02/11] dt-bindings: iio: adc: hx711: add VSUP supply
 property
Message-ID: <20260504-simple-garnet-quokka-bfd9b3@quoll>
References: <20260503120949.80292-1-piyushpatle228@gmail.com>
 <20260503120949.80292-3-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260503120949.80292-3-piyushpatle228@gmail.com>
X-Rspamd-Queue-Id: 758AC4B903C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292490-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
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

On Sun, May 03, 2026 at 05:39:31PM +0530, Piyush Patle wrote:
> Document the optional VSUP supply used by the HX711 on-chip regulator.
> 
> Keep this separate from the HX710B support so the existing HX711

What does HX710B mean? There is no such device in this binding.

> binding extension stands on its own.
> 
> No functional change for existing users.

There is functional change - you added a new supply.

Best regards,
Krzysztof


