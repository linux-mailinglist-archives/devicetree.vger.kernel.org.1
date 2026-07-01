Return-Path: <devicetree+bounces-318192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kEkUHqvARGo20QoAu9opvQ
	(envelope-from <devicetree+bounces-318192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:24:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC9E6EA9AB
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:24:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SmDSIMcw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318192-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318192-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D33063012CF0
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 07:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9EC03B636A;
	Wed,  1 Jul 2026 07:24:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A015C3B1013;
	Wed,  1 Jul 2026 07:24:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782890664; cv=none; b=AKmPwVky0LrtDSqTTQVNELtXbJgcOvehJkkUJ/xBixyhokFce3HVHSxXl+Pe38FhvYvAQMbfPECKQqTcyDhi6sLFvokby0ebzKUt/w2eWCW74sKku6uZ7Fn4QH30Sc9HQbVqQk9VkhlvsKYHmoFmj2xzCmrh8+d6EeEYEpUjD6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782890664; c=relaxed/simple;
	bh=GMb9LthRmuhhSd3efSsOT8GcA5mKyOKSWct0GZO5u4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DeM4PgfThI8eG9iDbod3XpQnLxXm8+QC/0suClh66JskKpVQoN7o4pAGxwhBXGOvJEhuwy4otzY3EaMSUJr1dmgzH8Z5zzZZy4fFMIW7929zdG3o+WekzcUi1evQMsqR+BsxtpY3PFavcTr02vE3MppV6pfLL+4g8+wvedKYw3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmDSIMcw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A4421F000E9;
	Wed,  1 Jul 2026 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782890663;
	bh=40Mb1Q99LRaplTPmkgBZJY94T9rle7tGhhFunsh/I3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SmDSIMcwnkAhvV07pgkGpaqWSEuRNLUWfPKAeriaCkIXZD34kRN5VJPAwhVedlSf1
	 /hYhWjjucOLBDlTYTPWoP7QbMGD0y7pA+x8IOyA3MZunI05vQz/OGVLUpdlV/ju33J
	 jTmz0rKr8NRNnois5ZXerPyMbIuFovPjNJtx2tW7U064PVNyGFUVeWI9tnJNekzrHd
	 SerYLbMRGU5XUXdFShrDClwCUKZLcIIxbkNJeWiR12VWLAY6WkLmZlrA3ywOu7iJuL
	 8pmpE+djdZ8w+qXX7NzOvUju+RZAiAR1NnAQOCoAE6ql4ngwPKktd2kgtFSAq008Vj
	 0LxLq3NVIcFJw==
Date: Wed, 1 Jul 2026 09:24:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gregor Herburger <gregor.herburger@linutronix.de>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: raspberrypi,bcm2835-firmware:
 Include 'reboot-mode.yaml'
Message-ID: <20260701-casual-bumblebee-of-emphasis-ddb404@quoll>
References: <20260630-rpi-tryboot-v2-0-f68d2dc6aa27@linutronix.de>
 <20260630-rpi-tryboot-v2-2-f68d2dc6aa27@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630-rpi-tryboot-v2-2-f68d2dc6aa27@linutronix.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gregor.herburger@linutronix.de,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:rjui@broadcom.com,m:sbranden@broadcom.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:eric@anholt.net,m:wahrenst@gmx.net,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318192-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[broadcom.com,kernel.org,anholt.net,gmx.net,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linutronix.de:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCC9E6EA9AB

On Tue, Jun 30, 2026 at 10:59:28PM +0200, Gregor Herburger wrote:
> The Raspberry Pi firmware allows to set a reboot mode called tryboot
> that allows to try booting from a different partition to allow updating
> of the boot partition. Allow reboot mode properties by referencing the
> reboot-mode schema. The firmware allows a 32bit value to be sent as
> reboot flag so restrict the maxItems to 1.
> 
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
> ---
>  .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml           | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


