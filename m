Return-Path: <devicetree+bounces-326951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +8rfER58V2pgPAEAu9opvQ
	(envelope-from <devicetree+bounces-326951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:25:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AF075E0EE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:25:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=O85N4H+5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326951-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326951-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 218BF3057748
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38CF4508F8;
	Wed, 15 Jul 2026 12:21:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7278D44C67C
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:21:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118073; cv=none; b=K7+5fZJ+6WxOzzHbTsc8eZXq6NW7PBnE1EU67Rc5NbDpFyz3D9KOcT0CALRrvNjFuBhH/mVq6cLDQhK0aKxGdfkEap4IgEjBb/YkaKFS4bD4ZdewT0Zfn0gr90J8iDFjdXvw6L+URenjKcM3L5yAbdVbAERv6Ds+D1zf0k+PXQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118073; c=relaxed/simple;
	bh=P5Lr5a8lnxJ2NwysU8T3ytLeFd87MlRNnosplKhhFvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HtOJpZ1+AKL0KjUvkhuxk5dnlD1F6nkk56VKi0aAe20b9P4zS/Q5v1wmayivwRxzcfOq1WyH5VsYdmNMXoyG8klToJy0bEpH2KBbaXryAnCty1Ntms5OcnwuOOEUV0qkG4tLl2Kcs7GwsU2dJH/6WA2GUPM+rflFoSuQwMWa0zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=O85N4H+5; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784118070;
	bh=P5Lr5a8lnxJ2NwysU8T3ytLeFd87MlRNnosplKhhFvA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=O85N4H+5j2DsMB+X6luVDzDfu7UiPw4R8Kr6JfIZuQBpa4gYq9HUi9x2LNSf+fNDU
	 xJosArBmUa8DvGjU0KdmDXn/4HFu+t439/HuiK4jjENKOVn1OtXxo9B7QVAj2CPLPC
	 UL4cVpM+1q0+8jodlAZ6NCW0ce7Jnr4mGFRe8H7htAr983qBHhfdUyBEiCyRk6ow1g
	 esuWYBdGK9Ya/046SnecIZ8IkF6VaSoPwpSKjXvqip6BIbEZBmZiml51aScCV3qJGW
	 u92LIJ646Qyy/PkKxk77gGjK0crWrhLuMh/FoejcsrBAWt/2Fpc4mrNtWJBw+YDhZQ
	 5eP9xcHZnKOjg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A8D8617E023C;
	Wed, 15 Jul 2026 14:21:10 +0200 (CEST)
Message-ID: <e21d768e-36e1-40c0-8058-92acefe7cc95@collabora.com>
Date: Wed, 15 Jul 2026 14:21:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/11] drm/mediatek: mtk_dsi: Enable PM Runtime on
 probe
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 robh@kernel.org, conor+dt@kernel.org
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-10-angelogioacchino.delregno@collabora.com>
 <20260715121611.420601F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260715121611.420601F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326951-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:dkim,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76AF075E0EE

On 7/15/26 14:16, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Critical] Enabling PM runtime causes a kernel panic because the DSI device is never resumed, leaving its power domain off during register access.
> --

Same comments as v4 apply.

In short: This is not true and, even if it was, the HW won't crash and writes will
simply be ignored; that's how MTK SoCs work in the vast majority of cases.

