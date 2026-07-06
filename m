Return-Path: <devicetree+bounces-320894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wgQmGhpcS2pAQAEAu9opvQ
	(envelope-from <devicetree+bounces-320894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 09:41:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1207270DADB
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 09:41:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=xbOdLygW;
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320894-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320894-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 877C830285FB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 07:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D6134A3AB;
	Mon,  6 Jul 2026 07:34:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B83CE48F;
	Mon,  6 Jul 2026 07:34:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783323264; cv=none; b=rnEgzXxe2E9hg8deZwit1i/uE6XfX1AvP3iS3rcCu9RV04RXxkq0eGgfqF6obIqg+JLgCgCOXfLYT19bVsOmjyYbMWB0pZC7ol3pIXn3gDs1yPOVGgCKVI0d+vbzIoBrKlXhZB2PtDcVA+INnzS7IKc3I1BrWcwJldrGnm431Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783323264; c=relaxed/simple;
	bh=u8KWHRxWTkjK/J4zbGo9m7m63tq3R8/mZw6k/tPvy8o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CLXVhGzRpxkGQPoy6C0pLScC3DkdJ6FI5JZ3yYJsdustiv2Hq8OuiAKa9lprUZTUY9/QqcpZTlHpocqwaX+CsErSRgxZr7T8B63QPIOQo2Yz/d9r75iwjMXBH4rcc3e1Z112lQthO9v1vp7NBDeeUtoP4PcRnZRJhSJ7ZVlnSdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=xbOdLygW; arc=none smtp.client-ip=95.215.58.173
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1783323248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tt5w7FHENYGSmUnLysArHs7fpiW1RbH2kKIfrTPwZN0=;
	b=xbOdLygWLbvY+igbSWp7n3fp3UsfDs2b3F9HnUpn45E90k0zC1Uzi1Na4inpXzulBhPk7L
	+rla/XvyvEb9j7j5KUr3K2/9mJwb2qzGiX7QPXoBAp5vnsy/9tlCwnBIxMWB1sqU9X1Hpu
	Nop8smXRT3XPA9ktxWAHtE4h2nb4E6Y=
From: Junjie Cao <junjie.cao@linux.dev>
To: Lee Jones <lee@kernel.org>
Cc: junjie.cao@linux.dev,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: update my email address for the AW99706 backlight driver
Date: Mon,  6 Jul 2026 15:33:53 +0800
Message-ID: <20260706073358.1038452-1-junjie.cao@linux.dev>
In-Reply-To: <20260703080149.GF2108533@google.com>
References: <20260701133533.32585-1-junjie.cao@linux.dev> <20260703080149.GF2108533@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320894-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.dev,kernel.org,gmail.com,lists.freedesktop.org,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[junjie.cao@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:junjie.cao@linux.dev,m:danielt@kernel.org,m:jingoohan1@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[junjie.cao@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,linux.dev:from_mime,linux.dev:dkim,linux.dev:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1207270DADB

On Fri, 03 Jul 2026, Lee Jones wrote:
> Doesn't apply.  Please rebase onto -next or for-leds-next.

My apologies. V2 (rebased on latest linux-next) sent.

Junjie

