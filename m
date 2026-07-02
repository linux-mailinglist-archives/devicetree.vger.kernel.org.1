Return-Path: <devicetree+bounces-319141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r0jGGfQgRmrLKQsAu9opvQ
	(envelope-from <devicetree+bounces-319141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:27:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7D56F4C62
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:27:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZQaM1bAQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319141-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319141-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A21F302003A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 08:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D6B42980A;
	Thu,  2 Jul 2026 08:25:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12FA40D572;
	Thu,  2 Jul 2026 08:25:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782980742; cv=none; b=piDKBn/ECqyz8mwlad7aMl9EeMAPHMFoXL3FznPIAMCCyQNONe2+FahKa3bg0vvnv1LhR4ZGQ7NzVupQQ0//V91K88kvrdNaGzdRruANO3qhVYHSg4mbbfCdfZwtWuCUxFze73PtCsskGSKe3UtoAVNsbRx6u7Cr3glHEiDQUpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782980742; c=relaxed/simple;
	bh=nvmSYrY2ZjddaWIHgV/D6Rg16qj79i4tUgCS2+4BukA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iYgTmKTrKLd8GFJSNZgJNUtZNO8AP+eln14ANUXxtVdPyRM4ojY4oB0ldudbJvqfkIet3Zs8EiOqOa5AuQl4f9uea2W09V4RMUsYaQnTkvgeD/hdX5wLBfe+pC2z/fi/3CTf0exd984LM9G8QU1oSBKwKU4BN/XgyoaSKVkVlTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQaM1bAQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1FF71F00A3A;
	Thu,  2 Jul 2026 08:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782980737;
	bh=4RY6J5hQsKwwS1bODNyJH4n0AYCEf0BX4FbYt1LmhgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZQaM1bAQ4JjnPHk4nL6I/xL2zRMuxjW8IYTzz1iMgcDC7gq0rPmgrU3aPeZ+Yuh2f
	 LrrpGKLZ1JtGJy6Lh3gbWyHQSVZArAYsxZ53k8q3kPG63seQYLxnbAbkFsiYP+7UO1
	 tdaN298mTxAzR5LHevcBRh1iZrmx6upDRIYoMdLtsLTn0ifY+JkkyeGZtdHA1hR/iW
	 WiannNMPw8hsKAdYGtF70dJgitWc9ADcQtaZCQp6qJEI5qVR6Kwwe2UVmlePHfaHqJ
	 JjPyQG978zg3CsJU+pPrNkJ0I0uKr0+dZzAMantZsCeSCdNtw4VJZwgZb5HRPeRpOG
	 RiOnQvVo7Fp4g==
Date: Thu, 2 Jul 2026 10:25:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Junjie Cao <junjie.cao@linux.dev>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	caojunjie650@gmail.com
Subject: Re: [PATCH] MAINTAINERS: update my email address for the AW99706
 backlight driver
Message-ID: <20260702-ethereal-granite-pronghorn-839bf5@quoll>
References: <20260701133533.32585-1-junjie.cao@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260701133533.32585-1-junjie.cao@linux.dev>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319141-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:junjie.cao@linux.dev,m:lee@kernel.org,m:danielt@kernel.org,m:jingoohan1@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:caojunjie650@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linux.dev:email,qualcomm.com:email,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB7D56F4C62

On Wed, Jul 01, 2026 at 09:35:33PM +0800, Junjie Cao wrote:
> Switch my maintainer entry for the Awinic AW99706 WLED backlight
> driver from my personal Gmail address to junjie.cao@linux.dev.
> 
> Update both MAINTAINERS and the device-tree binding maintainers field.
> 
> Signed-off-by: Junjie Cao <junjie.cao@linux.dev>
> ---
>  .../devicetree/bindings/leds/backlight/awinic,aw99706.yaml      | 2 +-
>  MAINTAINERS                                                     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


