Return-Path: <devicetree+bounces-309590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CeAMHKQoKWrxRgMAu9opvQ
	(envelope-from <devicetree+bounces-309590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:04:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E24466679A4
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:04:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LFv1vv9h;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309590-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309590-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B362132A112A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE28B3B5DED;
	Wed, 10 Jun 2026 08:54:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870E53B4E9F
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:54:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781081643; cv=none; b=hQBgKlDa3IvUEa7Zs0ghaD6Mkxugf/Nn79tNM5Vewr81Sf5h/t9Uy4meqmU2rjkCOMU2v3oUasvY1++ilGZNYySvYqMjMjcBIN5B+IaEE+/AZKkPjLIrkSeaFDlDLXQlvVinjui+meUFP1WoeyDHsBeoQKE8deQl/5R/u7hVfsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781081643; c=relaxed/simple;
	bh=rfHKo2BsIFf5LBDvYisQeztCD1wHPW4yosK+6jx/jMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OqAc0zSQ1sshY4JBvuse2xDePGB+Vler8kDWkhaX4lVNFd+KxTC3MWx7BDaJbdI/9Z+g/m959/Mw0oscoXkFQTuQynhJKTUENs7cDzxlE8/f/OHzzzhIb1ZmVyS1V/5+GzoPiwbBYHQmR8oZkIUx1OGI7X7C8rzL79ZxfjIceZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFv1vv9h; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B1C81F00893;
	Wed, 10 Jun 2026 08:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781081642;
	bh=C9A0mbzrOaNvpsifB/cslG4XdJoD+uBzY6C1wWrtac0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LFv1vv9hDxl5mOnEUllg3V+dwldIZla1he4ZiXOvepWeYxtqnfIjvoXExDu9dFhdL
	 39yVutNM0m6XP0iYCbMxDeCaO+xUBDNcpFU3GvhwNXWgOEVCaspWvcgj5ZX0IzLb4D
	 D6VdU6AvjPl1rgd5WNrko7/kS3iTlbsnU3s/DVIwqUY7VWpIgkDxRW4dJtiLMeiu6M
	 2397zWUqu97+6cYcRr+n8yjV2gghHe4kstCFXrNjMb8Lh+tPM7TSH2iTTzRg+j6nmK
	 6j/onNEylcaGbdZm6AwyDKi+ySzRa6miGQS9JI1x9KeM/F+9kb44qTT6c6F194JpBp
	 2Bb7tndsbnDMg==
Date: Wed, 10 Jun 2026 10:53:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, 
	devicetree@vger.kernel.org, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Subject: Re: [PATCH 7/7] ASoC: dt-bindings: ES8389: Add members about HPF and
 clock
Message-ID: <20260610-belligerent-chocolate-tamarin-9b9336@quoll>
References: <20260609071732.20939-1-zhangyi@everest-semi.com>
 <20260609071732.20939-8-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609071732.20939-8-zhangyi@everest-semi.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309590-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,everest-semi.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E24466679A4

On Tue, Jun 09, 2026 at 03:17:32PM +0800, Zhang Yi wrote:
> Add members related to HPF and mclk_source
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---

You already sent v1 and received feedback.

You just completely ignored it.

NAK

Best regards,
Krzysztof


