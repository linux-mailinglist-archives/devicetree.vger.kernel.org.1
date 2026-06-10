Return-Path: <devicetree+bounces-309630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jVjjNaMtKWodSAMAu9opvQ
	(envelope-from <devicetree+bounces-309630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:25:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 261A5667D12
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:25:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Je3bodaE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309630-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309630-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE5D73064DA7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FFA3BD63D;
	Wed, 10 Jun 2026 09:09:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B803B992A;
	Wed, 10 Jun 2026 09:09:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082599; cv=none; b=cvZ2SxeB6JIm1oPxMirAN3uiDyWfkHwPcHAzKNf5MFOIZdOFC0oqCbaTZfkiHM9Fca+ZuFA9c10iab0JxGcmozuU5HSiIeqJfl+LhNk0EV4PRSyP1XPZ/pdITR2bSohZEOdXXDiJrAVdFC4oMVj/CeJ9I6L+46P4AsY4KV83n/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082599; c=relaxed/simple;
	bh=v4v9Piyk/z22bG9iWAufISTcgnS9atBg5KHELjUqw+I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bcr6JF3ad3HoEDb12gZ8T4iXPvBwDoUucPhnJliqeyMby4iqt0jRLxgoI6UxiBT1yXGYOfVeXTwKYn8pyMtcuqTmI9Zjs2RqFx9JwVCuaLPfS0gHktpionE+KbO4MLYP9yCJDNSHK6aH/CYkhY4vPYQmpVVTncgZoc6/QjU+RJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je3bodaE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A571F00893;
	Wed, 10 Jun 2026 09:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082597;
	bh=v4v9Piyk/z22bG9iWAufISTcgnS9atBg5KHELjUqw+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Je3bodaEzY29bvMUA+mMoT2JBKGxljxVE3h5Uv1FgR3yAzQzWrEJtfgQz/Ym9IJur
	 KR/5PW4Z8TxuuyQfEOjMSSN8Ilk0Ry0ps88ZyusmCAjzfFEmHU/u+2XhmDlDIGExi5
	 1fEXoWG8ClIc+xJSxAVv6alicS7z0P++08F1yTfsTnzAcH7weGXrzdAIS1JgaZcNBp
	 /wXKU2BTwqJyO812T6Rk2kPyM+nd2ZP0l9HgjjdzIIiox9m/zgB86OMU9Lkp2+7xAj
	 +3cifBEELQy/GcDhu+lP+kGc1kWViqOz1UY6lJcQD7HBRuEmfFiHUrrncfmdXXhuPV
	 3LCpTM1m6jUbA==
Date: Wed, 10 Jun 2026 11:09:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Maxwell Doose <m32285159@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Tomasz Duszynski <tduszyns@gmail.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Add myself as maintainer for PMS7003
Message-ID: <20260610-pastoral-dark-ostrich-5ca3f6@quoll>
References: <20260609160326.45123-1-m32285159@gmail.com>
 <20260609160326.45123-3-m32285159@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609160326.45123-3-m32285159@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:m32285159@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-309630-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 261A5667D12

On Tue, Jun 09, 2026 at 11:03:26AM -0500, Maxwell Doose wrote:
> Tomasz's entry is no longer valid, as he is not active anymore. Add

Why is not longer valid? I see activity in Feb...

Best regards,
Krzysztof


