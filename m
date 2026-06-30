Return-Path: <devicetree+bounces-317612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w+GmMNmUQ2qicgoAu9opvQ
	(envelope-from <devicetree+bounces-317612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:05:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 718D56E299C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:05:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EpPmHs3E;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317612-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317612-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 423C93014352
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 679C03EB10A;
	Tue, 30 Jun 2026 10:04:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673883E44E0;
	Tue, 30 Jun 2026 10:04:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782813879; cv=none; b=iTHVM1Ba+/DyXVd1dXa0RLogrCMOsDc8xRz45gBGZUQcMRiPuwZk3g/5EO094haDAHl7Xga6v7SC2waAlzr4pYdhwlPeRJd+Hrh+X7Tb2mS/SrPZOzM3Os5zJCus/USXO7lFNQh7ispo2by10GYnDLKegVqZkO8C01NTLJgRWZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782813879; c=relaxed/simple;
	bh=09WOWTCw5tDbPOdV7wp/vCgW9f6Fp4w0o02Bo7vUZAY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwBrnXTKbAwObVMCzqQ6fwPhaW2ikY1mE29TnjV6l1ZaSWSDLUiQjL6oWFhsJjKZj91waa9WUzM+4xEkR6qlcuuEyKb7GHPtAYY22EQlA26qh/3XCdDuSt2LhitcDVyRnOWvGwxhaiFOVtgdhTcX+Yef/DCNo2R92kUBmNWLJ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpPmHs3E; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 529761F000E9;
	Tue, 30 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782813878;
	bh=Z4UJjEnZI2IYJ5pUOsVosDLT9elMsKBFDjcbHBD7kKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EpPmHs3E3KdDFMh4Bnn2wtm6nJ9lTEv/lIgf/9sQeG/nw/VENYLifFndX4rAiCjvV
	 qDzUUQ97ZuQe6Bx5wZUYrQTx9yCfQhurmN/BO3lUylkIqdTT4cWIyejsFxih+TURxT
	 vG+dpFcG00Xv32kVFzXtHMhVzGaJ5xGHm/Cpno/BsSEl5Nz0O2ihINyjipustybPaa
	 Fb9Ei5IhzkKcaAFvgYvKKFLU8Dd5E6SO+sRqlAUMvy28EBWLdXm8nVxB2cSuxVfhBE
	 bTgwNqf/5tCAn0LqzOQSK4TTKWSvnc18hlOjm2AGNoWcC63M/B/N3Ak7LpWNPXzf90
	 5oXrAURnDlq5g==
Date: Tue, 30 Jun 2026 12:04:29 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Sebastian Reichel <sre@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>, devicetree@vger.kernel.org,
	sashiko-reviews@lists.linux.dev
Subject: Re: [PATCH v22 04/13] firmware: psci: Introduce command-based resets
Message-ID: <akOUrV5BwU9/PuLJ@lpieralisi>
References: <20260514-arm-psci-system_reset2-vendor-reboots-v22-4-28a5bde07483@oss.qualcomm.com>
 <20260514212353.881AFC2BCB8@smtp.kernel.org>
 <c2bb7a24-e1d0-4308-ab53-208901108a5a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2bb7a24-e1d0-4308-ab53-208901108a5a@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317612-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[lpieralisi@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:arnd@arndb.de,m:sre@kernel.org,m:mark.rutland@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Souvik.Chakravarty@arm.com,m:brgl@kernel.org,m:sudeep.holla@kernel.org,m:devicetree@vger.kernel.org,m:sashiko-reviews@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lpieralisi@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 718D56E299C

On Wed, Jun 24, 2026 at 02:04:54PM +0530, Shivendra Pratap wrote:
> 
> 
> On 15-05-2026 02:53, sashiko-bot@kernel.org wrote:
> > - [High] The API illegally truncates the 64-bit PSCI SYSTEM_RESET2 cookie parameter to 32 bits, violating the ARM PSCI specification.
> 
> Hi Lorenzo,
> 
> Was going through this comment. The patch currently uses a 32 bit cookie.
> The spec also talks about "SMC64 - uint64 - cookie". Can you please suggest
> if we should add support for 64 bit cookie here?

I am afraid the bot is right, it is not correct to assume that the
cookie upper 32-bits are always 0 :(

Thanks,
Lorenzo

> 
> This will require a re-design for supporting about up-to three 32-bit
> numbers in reboot-mode framework.
> 
> thanks,
> Shivendra

