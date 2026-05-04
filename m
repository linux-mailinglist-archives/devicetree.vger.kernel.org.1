Return-Path: <devicetree+bounces-292491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JqiLEJC+GnCrwIAu9opvQ
	(envelope-from <devicetree+bounces-292491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 08:52:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 115394B9074
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 08:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C5BB8300130D
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 06:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2D12C08A8;
	Mon,  4 May 2026 06:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5wjrPdT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D626980F;
	Mon,  4 May 2026 06:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777877564; cv=none; b=IP/bN2tS2dkr5Q8y9Vs2pW4t38WEvK5BQDyVCXu5OkHGH5nT7qoF3xTthc5XADOICPyutZfwHpMf3HYTQvJi3DdQ5EIN2xg9k3t8TCWfu0BwBnhlTu9RIzlcitKpPm1jebl4i9e0rpmWqyqlyUDfcGUKB+1xov+XfWmG47V5bIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777877564; c=relaxed/simple;
	bh=5/OQpBVx22aOC6izR09mUiEWJlx0JKm4J1adoowDLyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k59ktmZEkSFO8MiBzslAZsMfnuTE/lmI0ncAfKctQT7rvoHJ7yJUUd5b1jEm7BTCW2CPzaDiD3tOhS8yt4AQc2oDbZuMGe19FuJ1n+TaXKAkbSQ34t0OUx8EWY7wfYJkLDNvnsPC8iNeN1uNOQbJngHJFfUQvoLTXxQFVPQE6ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5wjrPdT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 581C0C2BCB8;
	Mon,  4 May 2026 06:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777877563;
	bh=5/OQpBVx22aOC6izR09mUiEWJlx0JKm4J1adoowDLyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p5wjrPdTIB5rRz+bNTpTMojIq/NqzCiWPRO8p6/FGP+MRhBDiFX1sH8XmeoA4FCrQ
	 XfeXp3/jteHHFz0Ab+kn2bBGmYCdpKcdpJ44ANz9qN2ry3V8PDJ41FtDN80YVck8nF
	 rTAV7Ou9/V5kH54kL7Ok8/uTLE8Ll6hkydY/BLMvHrkJAHtkPTglvkQjONcbvC10ey
	 Psr/74to+XuUIEK4h2p80si7T0wje3nASo8k8GLlLERH1VUSvjkZaR+hDyEFTNxoZX
	 HLR5Hf8R6hfOjmRNsB5BdPuTPwGPjh2SMpxo0tfRnB3qSgwh+C1P7BZ8vDruGDQjcS
	 oTbRr4s80mTEQ==
Date: Mon, 4 May 2026 08:52:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: Andreas Klinger <ak@it-klinger.de>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 03/11] dt-bindings: iio: adc: hx711: add RATE GPIO
 property
Message-ID: <20260504-tentacled-smart-goat-82a3a5@quoll>
References: <20260503120949.80292-1-piyushpatle228@gmail.com>
 <20260503120949.80292-4-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260503120949.80292-4-piyushpatle228@gmail.com>
X-Rspamd-Queue-Id: 115394B9074
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292491-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

On Sun, May 03, 2026 at 05:39:32PM +0530, Piyush Patle wrote:
> Document the optional RATE pin GPIO used to select the HX711 output
> data rate.
> 
> Update the example to show the property in use.
> 
> No functional change for existing users.

You just changed existing binding for existing users, so this is a
functional change. Drop all such incorrect statements from your
patchset.

Best regards,
Krzysztof


