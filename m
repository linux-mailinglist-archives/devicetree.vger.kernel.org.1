Return-Path: <devicetree+bounces-320528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xscECgidSWoQ4gAAu9opvQ
	(envelope-from <devicetree+bounces-320528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:53:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A224C708AA7
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:53:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CoYLpjAn;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320528-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320528-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02BF53009164
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 23:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58306325726;
	Sat,  4 Jul 2026 23:53:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2E5433E7F;
	Sat,  4 Jul 2026 23:53:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783209220; cv=none; b=gtyeCS14bATb90mQRcgcdCCiu190RY2Y8Doco0l3yoW2dlOHfyoY7/QMoAGh0oZiDrKpAcG1zycIPiz/njqG7njkmSxuVAK7wceQMGaqyawcROcXuSIicnnHgLH4YMwWURhOQTxswL59K+kLKSAFeuDovWE5CYDzljC88cD5ejk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783209220; c=relaxed/simple;
	bh=0VLtQdyq5UZGHJEbEc0i+jjqir2HYEAMbvgB0pe/RZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=I70yQr5Z7bOvdeL8E8KC7oBfSF+teO17I0XydI4dn7tJuQa3R0nN62gcUHrMWT2VII1GT+gSunpRJkyexQpiWZNFPBUdNBUvgXh3ee9kyPDphKS0tZLkiQ/cv0Ujus07GV065lwk+tf08nk5BVH8Tc8oDLTSEbtR1x/10NcMzL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoYLpjAn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FAAF1F000E9;
	Sat,  4 Jul 2026 23:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783209219;
	bh=0VLtQdyq5UZGHJEbEc0i+jjqir2HYEAMbvgB0pe/RZ0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=CoYLpjAnixKkqcYDlbBuAuqy4BKBjqxyCU22/MWThaTy670q298LGu0jZCivvzqWa
	 JO3kuFQB7sFNH9Ma934zFbWFqcAQbJZ4VrhfFJTgShpAoX/0PwbCr5z31aTC1UAyD3
	 i7wimOMGU4EW2vahTRo2o0K6O6j7IImfrRjlCYWp8YMZIAp4Gkbddiobes54Zvg9Ho
	 7SuOpc974iXNvthe7eSN/lLp6yha6yZUhTOL8oEqbaPmb5rqWtmHqjS3j1b0YDm2vr
	 we40MW33J3d2nJvcGwZM1oOqZaFy+ut9zqoGiu2Bw191ciS3cAE0ZvIE69u+/fRQOf
	 nttLRXiyg5ZFQ==
Date: Sun, 5 Jul 2026 00:53:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 0/6] Add support for AD3532R/AD3532
Message-ID: <20260705005332.3d5c5cc4@jic23-huawei>
In-Reply-To: <20260703-iio-ad3532r-support-v4-0-69d9a336f4e8@analog.com>
References: <20260703-iio-ad3532r-support-v4-0-69d9a336f4e8@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-320528-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,analog.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A224C708AA7

On Fri, 3 Jul 2026 18:10:05 +0800
Kim Seer Paller <kimseer.paller@analog.com> wrote:

> This series adds support for the AD3532R/AD3532, a 16-channel, 16-bit
> voltage output DAC, to the existing ad3530r driver.
Applied to the testing branch of iio.git.

Thanks,

Jonathan

