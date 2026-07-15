Return-Path: <devicetree+bounces-326939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8dWeCD94V2oHOwEAu9opvQ
	(envelope-from <devicetree+bounces-326939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:08:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A33775DEC5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:08:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="T6Uu3n//";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326939-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326939-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B71D3006797
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3EF438474;
	Wed, 15 Jul 2026 12:08:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D6C3C76BE
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:08:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117298; cv=none; b=tDfuRjuwUYh6hn1j08TZSWBlleOYvD0m4UheziiTfePp5rEQzPf9xvMedNwxAdUtl7NvNB4H/rNCPVJtQ2z1tF5b+u1dnZhtVRcGjZ9uoYBikiG8GPnJ4MTqVDvV7a2u8NwhnZ6eGmkN0tkRJjF9r2i1aZwuB1ALDsw1EHlxyvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117298; c=relaxed/simple;
	bh=kZ8B6PqVpKRnm9lEDxPxgNuLZ8wfBWvlNO08Nmm7Ex8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PXt77iTTdQZaBc/tmx9q0UcMnP5OfYO/ksFfY69bNpmHJg+RD2HqBEug5kY1CrMBqTECAfnS4roBp+FbFmIngA1oXMnJNu6abKDyB87m++o6Fkx8Qdj1oXzX5lSZqb6FnsIJilzCbxve0kAG8EHk+AvtvSzsiWYbBaJRy84wB5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=T6Uu3n//; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784117293;
	bh=kZ8B6PqVpKRnm9lEDxPxgNuLZ8wfBWvlNO08Nmm7Ex8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T6Uu3n//rD8pkulKNPFoiFvcZ/NQpewYDcs1bjwXmZFtyP0kx9LBrxViHfvfFfcGb
	 AsLapHGpPWgEU3soGCwi6on+3r5E3o/LgGbZwrgO8T6lTLwhlu7bYAI+bADjjzMjtf
	 iZ8L57qkTlo+w1LE7BOvVERBPdNaAawBe7VxqfzgseI/mLvfqubLdwlQ46/BT8LdYi
	 hPJFN27QEebjbnW+loTRjE8UtaQ2X/rE6CyGO6WZ08UHobUrPwC/AEcMeVVRXAFenZ
	 Z5zy3ZIl9JawjQBu+xbhZrf24Mv82E9o+qD69sW9t6oj06ThPjLYLYMQxg5LNhQmtD
	 hOSunbO3wYcOA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CC1EA17E0A4E;
	Wed, 15 Jul 2026 14:08:12 +0200 (CEST)
Message-ID: <f54dd723-de91-4166-9645-9d8d8cc3aaad@collabora.com>
Date: Wed, 15 Jul 2026 14:08:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/11] drm/mediatek: mtk_dsi: Enable interrupt at
 component bind time
To: sashiko-reviews@lists.linux.dev
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-6-angelogioacchino.delregno@collabora.com>
 <20260715120436.A9AEC1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260715120436.A9AEC1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326939-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:dkim,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A33775DEC5

On 7/15/26 14:04, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Unsafe IRQ enablement before clocks are enabled leads to hard lockup or interrupt storm.
> - [High] Data race on `dsi->irq_data` can lead to lost wakeups and hardware reset.
> - [Medium] Unconditional return of IRQ_HANDLED defeats spurious interrupt detection.
> --
> 

Pre existing issues aren't even really much of an issue.

This shall not block this series.



