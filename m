Return-Path: <devicetree+bounces-326942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id en8yHBJ6V2qFOwEAu9opvQ
	(envelope-from <devicetree+bounces-326942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:16:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB47275DFC9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:16:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Icg54jm7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326942-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326942-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60AB6302A070
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0AB434E55;
	Wed, 15 Jul 2026 12:12:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6DA438030
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:12:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117542; cv=none; b=pjIewnhSnfz7aktVDGGkSKBPfBGS1rnOF1OK6QokAmQQtHVhHXq7bZcQvfLKl1hK+4b2/ob62zFAKOwlMXt4gHpzBDbesbcfwnnokmt/IdL+WVjMWiIQ/u3o6JC6OjSp7/A3vgO13qbsZCfohDpEDB7Ka7dyGaUDO5jeGj6S3I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117542; c=relaxed/simple;
	bh=/Utrn0FuhDu7FxctadkjGTJJOKFpnXSBb/4fpl/qJGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xo1yVa0aeL4NAdG0VGaAy8gnqHHmpmB9ywz9endZziG1PNF0Nq/7nJpHbIdrQBlPK8AOFYfBZ/PvAE5TCgsuTUDbaH/Uqc2T3kAe/yOpoV0LtuCQ6Tu7sk1mh6nfujQPagk4R7yZZY41pwmqyEUqKLulY6tZ8gc5/G96Rv3YidY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Icg54jm7; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784117538;
	bh=/Utrn0FuhDu7FxctadkjGTJJOKFpnXSBb/4fpl/qJGM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Icg54jm7Zc0WfgDc7fKmejc8NuNqnYfhKrimnkYXGgtr9ffyQo1it6U5olV0HqMXV
	 Vnaz5gI2j9QpoDUXv+69Pb+SNq38IqtETysII4yJEQDqnNLjzPbY3hsgkjdwX2xjnm
	 dPRYYo5qaTizsQpiLbx3LB1LYVFkZ1HWpjw5mKVPhNA5XZR8Fhks6ZcLTr3GlbemTK
	 m7DEL+fAkBmZrnD7aOsj79K3WgFUWhE8j6nETPmyMG51ECuKB2JK6QkTcCSMyodHYz
	 lBgzT4+kMKr+LAqJLc1CSZfLnvbfkprPmA9C5y1nsX//UVwEekmr4zbVT73dmPFkus
	 2p8m6MixpSWGw==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8451317E07AA;
	Wed, 15 Jul 2026 14:12:18 +0200 (CEST)
Message-ID: <baec7dc4-cc0b-4655-9d17-190c0a4d9a8c@collabora.com>
Date: Wed, 15 Jul 2026 14:12:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/11] drm/mediatek: mtk_dsi: Add support for MT8189
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-8-angelogioacchino.delregno@collabora.com>
 <20260715120718.807D91F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260715120718.807D91F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326942-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB47275DFC9

On 7/15/26 14:07, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> 
> New issues:
> - [High] Bandwidth check and PHY clock calculations do not account for DSC compression, incorrectly rejecting high-resolution modes and over-clocking the PHY.
> 

No, because the width or height will be half for each slice.


> Pre-existing issues:
> - [High] Error path in `mtk_dsi_poweron` fails to decrement `refcount`, permanently leaving the DSI driver in a corrupted state.

This is real, never happened and will not happen for now, but has to be fixed.

Will do that after this series, because I really-really-really ran out of time now.

> - [High] Signal interruptions during IRQ waits are incorrectly treated as successful operations.

This has to be carefully checked, because this may be a situation in which two
wrongs are making one right.

As said, I am out of time and will look at this in the future, definitely not in
this merge cycle.


