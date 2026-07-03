Return-Path: <devicetree+bounces-319888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MyFVJqtvR2oBYQAAu9opvQ
	(envelope-from <devicetree+bounces-319888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:15:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AA06FFF64
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:15:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IWoGWMat;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319888-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319888-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23BB6312A47D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31EB372696;
	Fri,  3 Jul 2026 08:01:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B934377EA7;
	Fri,  3 Jul 2026 08:01:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783065716; cv=none; b=Vmn/aN7iL1MARhicQF/T1d5d3szzIT+zAoS/Acv5t2dpAv9HOFv52ztsWOV7Q0ssilQMC2FmUbukrbKuIO0dFFqLdS0DxJ65dko/PP26FE+7uNqletfD2oZwm9RsVrQwvufUKDIrLxycGFG3RLCyit2Sstz+GO5/eFhSl8dbpUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783065716; c=relaxed/simple;
	bh=UXiDKmuYOMfhFcWtxBBj2JF1cSEdNZGUCMFWxjWkWVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bgpzw8sLtVGDNWv6pzhagSeTQAXG18DIHHVF1FexBOBTOO2SJMYSvYlW0UjoNJwS9ch/ioI0xWrOFRXTm8BLud5fxX2qVizXgjEJReECed+AzlUW4mRrtu75FQyJJoGLslspg+YC/y/eRz3s1WdVDurtqMIuXcLhp5PemhhQZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWoGWMat; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C54A01F00A3F;
	Fri,  3 Jul 2026 08:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783065715;
	bh=tHSR40BSJEjXogpbgoRNtUmX9ocgOZObmswLHfCZhCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IWoGWMatctxsGF7rx3pcK3h70bTxMvKI4xxdFq2pZl2iEmeX4Lb6ciDsWkRQqh+qc
	 uiGJjJGa4Hxfkx9vfzqNx8vWkpdSG00Ijk4ygHeJdDgOLnukNYBvNskJq9cfMH7484
	 zar9xU+ypVOy0uqu/A7z+VldSXyTdb2WM7csWVwu8vqkSKGd1qY0BBsj7RI1Yg3S3N
	 38+vIeglQjWQ16eAPq1n0IQzKHV4el5ecFmJXl/QzQp13UGy4yN++Zm0NuofGj3i6j
	 gAxTEI9qBiU4xZKDtpaGKaD0I9k5nel+PXWphEvN87I3xFPxp6tWOa71gnlKw1PK9G
	 6UtNPiJAGUQhw==
Date: Fri, 3 Jul 2026 09:01:49 +0100
From: Lee Jones <lee@kernel.org>
To: Junjie Cao <junjie.cao@linux.dev>
Cc: Daniel Thompson <danielt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	caojunjie650@gmail.com
Subject: Re: [PATCH] MAINTAINERS: update my email address for the AW99706
 backlight driver
Message-ID: <20260703080149.GF2108533@google.com>
References: <20260701133533.32585-1-junjie.cao@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701133533.32585-1-junjie.cao@linux.dev>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319888-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:junjie.cao@linux.dev,m:danielt@kernel.org,m:jingoohan1@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:caojunjie650@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1AA06FFF64

On Wed, 01 Jul 2026, Junjie Cao wrote:

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

Doesn't apply.  Please rebase onto -next or for-leds-next.

-- 
Lee Jones

