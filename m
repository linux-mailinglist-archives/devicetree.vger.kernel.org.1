Return-Path: <devicetree+bounces-264631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DyDGI8mjGliiQAAu9opvQ
	(envelope-from <devicetree+bounces-264631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:49:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B27121B1B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:49:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E56F30329A1
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C09313540;
	Wed, 11 Feb 2026 06:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig9oYtbX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B5729C338;
	Wed, 11 Feb 2026 06:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770792588; cv=none; b=WMWb65SlSlo+Fy3V0/SSx2qZAqOgfyTOcfgmZQTo6x6X0B1CP1Ms7aYnAlyynkclB1oER96YHEMtJxrGZToQgUBhH0hVEKz6vcgIvaEi1X0vkesokZdPx0yeTSceYkqwrg9xEt6pDymuKJrIcsLLzeK85DdTfh7aMGios/wIWSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770792588; c=relaxed/simple;
	bh=OYfWQg9thq1Z4lUXJpP4sm0GZngOsXWcnSCX9sggLHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IroTweZ3jxaWkk2ycwcCmWS/kX+f3bRpO7gUK0BRs4RLcOVtJWigSwZ1DPSoInT7zWKXRZfDHI5b+wFMPuoSUWrgFXObNOTNwmwNhaxD6EvMe/V/WoI5rRscqH1DyqX4c5uuvIRpDzh53awBR7KlQ7ZHzXYiCCpz5bMXhWEByoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig9oYtbX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81D97C4CEF7;
	Wed, 11 Feb 2026 06:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770792587;
	bh=OYfWQg9thq1Z4lUXJpP4sm0GZngOsXWcnSCX9sggLHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ig9oYtbXpWKC+pWK3Q8o4bN/RiMJW7ApiMOK/4o9atIkABnbPDmWEK8kW0W1j5qEk
	 OpRtPtX0XR3b5Q1gBYQpwZy+Z1dtLijV3VDKhl9+gQ+P0LpchU4k40edZJFH2LXcrS
	 omwCDD5q3Ku6zcAj7V3uOVCgrdBl4QuT5vER04HdGy0fcUVjd4wZD3xFfJr4/z0+Lj
	 Z1AAurycN6BCwyhuEIC3k+nHOSLHo4kVG662MbgP+KQqVTzx3K4qI8ZWr8VIhjAQy4
	 /3b0hPOmcCSEqwMnpWgbulcmytoYa9Hqzm36niwnXzy+XWbk5UwRP91Os+oToL0lNf
	 h6XCAjl0YEnhg==
Date: Wed, 11 Feb 2026 07:49:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
Message-ID: <20260211-sceptical-frog-of-revolution-fc3cf4@quoll>
References: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
 <20260210-cm36686-v1-1-aef68dd46ad4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260210-cm36686-v1-1-aef68dd46ad4@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264631-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D4B27121B1B
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:46:10PM +0200, Erikas Bitovtas wrote:
> Capella CM36686 is an ambient light and proximity sensor developed by
> Capella Microsystems, now a subsidiary of Vishay Intertechnology Inc. It
> has an I2C address of 0x60 and is fully compatible with an existing
> driver for VCNL4040. Capella CM36672P is a proximity-only sensor that
> is fully compatible with CM36686, and therefore with VCNL4040. Add
> compatibles for cm36672p and cm36686, with a fallback for cm36686 of
> vcnl4040.

There was CM36686 v1 and v2, so I do not understand versioning here.
Also, lack of any changelog.

And how is it supposed to work for us? Try yourself:

  $ b4 diff 20260210-cm36686-v1-1-aef68dd46ad4@gmail.com
  Could not find lower series to compare against.

Please implement previous feedback.

Best regards,
Krzysztof


