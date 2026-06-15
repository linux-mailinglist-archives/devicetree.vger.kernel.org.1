Return-Path: <devicetree+bounces-312211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HAZlNO2KMGoTUQUAu9opvQ
	(envelope-from <devicetree+bounces-312211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 01:29:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4237E68A94D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 01:29:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=UX1Cs3Fp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312211-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312211-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A31430254F5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 23:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8403130B50F;
	Mon, 15 Jun 2026 23:29:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397BD2DF152
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 23:29:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781566173; cv=none; b=nYkZVgGCBSkH5evxpfRpO/l26VnKtqXtESrAlFaeSWrOxWbolo+u40tpNteNHkSnvXJH5bGBDDmTiITsfCsWMD9h6fR1BFgDzlp9t/6c/qshfrzICyxJtdGz2VlaDomEsGfd7xeNDu3mPSsfvg6A3PCuYjHP6VYQDqwvyOVHWOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781566173; c=relaxed/simple;
	bh=sHWeHro7f83t/pbIMwX302HbMjlK/IBrGWBOw0IgvHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D9pFK7KORt1fH1N6FAsn8XVKcjfJzAS1KnMBGSUtEOiYmjg8C2yZ9/j0H6Pp56LC+KgpwzuCvT21MbdQ5Tw3BR+HsifuGF9txvyfMg3lRRbKT5ZpXEAcVpf9iHrDYEvCcRJpGz3s4J46GsxcCPFIztnanmDBbcHhL6JMj7ujkFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=UX1Cs3Fp; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B57FA4E42F16;
	Mon, 15 Jun 2026 23:29:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 668A6601A8;
	Mon, 15 Jun 2026 23:29:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 164BB106C96F3;
	Tue, 16 Jun 2026 01:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781566162; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=+aFICluLxl1YQYB539NIMAyFqzwzwtH7RKM4CStfk/g=;
	b=UX1Cs3FpiFya0xBUfd3tQH777nYyMi4aNnSLzptl/wn/o+t8d09saDwOdZHHFvMCyvlirz
	BKrQUYF0jq4TBEwqw4yq6o/v4Hwn0qmlWJ0lcaRmlxW8/vzdTHIUbaRMmY+BU86IpTBq2J
	0z3IdUDx3fwYg/oDWZDKTXoTqgjK9vHcPhDQaVKhU/cZo+V3exAj7AbAchKT9S8ZiovjTc
	SrDDim5yV2kyxKNFkSOJoMY3koD2W3qsW6T7p9DEesc8daJP04z8NF7tFZ5ctWZYhj9Teo
	KCvVUc2way8YaTZFUKdJlgshEeSYWdPtl96NSyBJN5kbadVVfhttVZEdQQE6og==
Date: Tue, 16 Jun 2026 01:29:19 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	Frank.Li@nxp.com, lgirdwood@gmail.com,
	Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: vikash.bansal@nxp.com, priyanka.jain@nxp.com, aman.kumarpandey@nxp.com
Subject: Re: (subset) [PATCH v11 0/9] Add support for NXP P3H2x4x I3C hub
 driver
Message-ID: <178156613342.628917.851293723714358205.b4-ty@b4>
References: <20260612111816.3688240-1-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612111816.3688240-1-lakshay.piplani@nxp.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312211-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,nxp.com,gmail.com];
	FORGED_SENDER(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-i3c@lists.infradead.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:broonie@kernel.org,m:lee@kernel.org,m:Frank.Li@nxp.com,m:lgirdwood@gmail.com,m:lakshay.piplani@nxp.com,m:vikash.bansal@nxp.com,m:priyanka.jain@nxp.com,m:aman.kumarpandey@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:url,bootlin.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4237E68A94D

On Fri, 12 Jun 2026 16:48:07 +0530, Lakshay Piplani wrote:
> This series adds a driver for the NXP P3H2x4x family of multiport I3C hub
> devices.
> 
> This is an MFD driver integrating I3C hub and on-die regulators.
> 
> The series introduces:
> - Core I3C master enhancements required for hub support
> - Generic I3C hub framework
> - MFD driver with regulator and I3C hub child drivers for the P3H2x4x I3C hub
> 
> [...]

Applied, thanks!

[1/9] i3c: master: rename i3c_master_reattach_i3c_dev() to *_locked
      https://git.kernel.org/i3c/c/79c41666b397
[2/9] i3c: master: Expose the APIs to support I3C hub
      https://git.kernel.org/i3c/c/8d8afa428318

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

