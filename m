Return-Path: <devicetree+bounces-318071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q4+8HJpTRGqVswoAu9opvQ
	(envelope-from <devicetree+bounces-318071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 01:39:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C97076E8ACD
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 01:39:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="i/mSlnvR";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318071-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318071-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F2FE302AF3E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 23:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231E73396F4;
	Tue, 30 Jun 2026 23:39:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2623B1C84D7;
	Tue, 30 Jun 2026 23:39:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782862741; cv=none; b=pegMCZJ0qE+nXVZ0EJiAHwIBekE8GyZgLTAGfm5zwi8xp/4w62OVYTobtSpa/n/PSLYqbzN4RSlemMFuVwvtidBTeyNRZX96xuzwc0hZBUFW6aHDEkeS/7lq1s6xB4x0NskUTdy0vvaBkqjjXFOJbkhhkqkOUkPJ+FHdZka9lgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782862741; c=relaxed/simple;
	bh=8ftUvM+U+YwrA6FgezMIU5JIH0sshQ0tLwIJ1gWGOhM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lxMSdhryPmENq25mvCftKHEpYM+azD+mDb2Kb6iSB4Ma3a1F6Gq2kTj4h6dwW7YFkV2KaXNNmb6NtNjtYS8PdejXmIadHHa0YwPRRY5tAmAbzY0RdgD+crGtVGnfb6ZunNN07urrnYfmh6g9EyJrwjtWEw9fpE2OSRyfTKYtgkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/mSlnvR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BED91F000E9;
	Tue, 30 Jun 2026 23:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782862740;
	bh=FQEymWMUNRG8sk5hn2KrPQ1InsJmesUG9Pbivjtz/Rc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=i/mSlnvRLI51lq3+IdKnmLxkaSgHfFb6k43864AA0ByJMaAae3tZu74voced2ZHfB
	 rfeMtZ3ErngKoRQqnjxGSbBB7m354oT2C9n+5yM/SD71gyeogFd5ogIS2rWiprvdaD
	 DtTGTm1lY2SMWVTPCfM1inwVGbA2keBNVo0Q1Fy5Mbvs8T13rQU6vXW0UDbuU+lp3/
	 ofRdYPt1aSKFFfMkAHwsSp+HYmFHhA+dIjbc5bgDlJzJWyoHZfH0ei69aH6mtTh22M
	 eJpec/EdRDCAThUVEzszfIYEyjT9ZYglzOFCViOAhLQSFlWCmGCc+k2LaBwV00fFM8
	 PKDnbvpNmGI/Q==
Date: Wed, 1 Jul 2026 00:38:53 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Varshini Rajendran <varshini.rajendran@microchip.com>
Cc: <ehristev@kernel.org>, <dlechner@baylibre.com>, <nuno.sa@analog.com>,
 <andy@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
 <srini@kernel.org>, <marcelo.schmitt@analog.com>,
 <jorge.marques@analog.com>, <mazziesaccount@gmail.com>,
 <Jonathan.Santos@analog.com>, <jishnu.prakash@oss.qualcomm.com>,
 <antoniu.miclaus@analog.com>, <duje@dujemihanovic.xyz>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 03/13] iio: adc: at91-sama5d2_adc: rework temp
 calibration layout handling
Message-ID: <20260701003853.2a44477c@jic23-huawei>
In-Reply-To: <20260630093603.38663-4-varshini.rajendran@microchip.com>
References: <20260630093603.38663-1-varshini.rajendran@microchip.com>
	<20260630093603.38663-4-varshini.rajendran@microchip.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318071-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:ehristev@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:marcelo.schmitt@analog.com,m:jorge.marques@analog.com,m:mazziesaccount@gmail.com,m:Jonathan.Santos@analog.com,m:jishnu.prakash@oss.qualcomm.com,m:antoniu.miclaus@analog.com,m:duje@dujemihanovic.xyz,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,microchip.com,bootlin.com,tuxon.dev,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C97076E8ACD

On Tue, 30 Jun 2026 15:05:53 +0530
Varshini Rajendran <varshini.rajendran@microchip.com> wrote:

> Extend support to handle different temperature calibration layouts.
> 
> Add a temperature calibration data layout structure to describe indexes
> of the factors P1, P4, P6, tag, minimum length of the packet and the
> scaling factors for P1 (mul, div) which are SoC-specific instead of the
> older non scalable id structure. This helps handle the differences in the
> same function flow and prepare the calibration data to be applied. Add
> additional condition to validate the calibration data read from the
> NVMEM cell using the TAG of the packet.

Last bit smells like an AND in a commit message.
I.e. should be in as separate patch as it is making a functional change,
whereas the rest is refactoring only.


