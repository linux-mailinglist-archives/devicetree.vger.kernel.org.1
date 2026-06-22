Return-Path: <devicetree+bounces-314246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1J4xOxzlOGo2jwcAu9opvQ
	(envelope-from <devicetree+bounces-314246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:32:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A606AD449
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:32:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=icffYBxR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314246-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A560302DF51
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC682346777;
	Mon, 22 Jun 2026 07:30:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042141F09A8;
	Mon, 22 Jun 2026 07:30:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782113424; cv=none; b=G93LXqdRM2TgMnVMAH7ZNpbX8hTqSyIUUdIrxNZ41tM75lSlJt+EsQ6m7ASSltIR+758cq3MCACVz4fav8/PuFJ5f7u4X6jERmzGj68Z1Wj9U8MHhE27X2AekgjgDu75cIZzC/2AMUAXsMLJbMxGY+0hgI6xI3Af9+UxJSj5TzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782113424; c=relaxed/simple;
	bh=amMs8unfnbMWuuTRxncZgfRPSG/qOQiUdizy/qLk184=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GfsMYPfPjeJryWIFtrXYZx3V5AsDRekuXn5RQToppYYDzZGtpKatn9YKRsTv90MMnfjzhOVbYEgCrtLNhWmn+Vec66MBxr/ODpSNYL+M/kKl53IYMT6VZIAu1XKtdD1gcmr8nudnlK3oXPioUoit2lqxBVXDsdgOw2Ebk3fdD5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icffYBxR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 871B61F000E9;
	Mon, 22 Jun 2026 07:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782113423;
	bh=amMs8unfnbMWuuTRxncZgfRPSG/qOQiUdizy/qLk184=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=icffYBxRe4/iiss3wLiMGpi4iA8rhyqI4untuc7qIP/h1Wz8SiV56qNhqE57Wl6wE
	 fWyxR4NjmnEf4t/b/XnT/Ks5X0uFlZ5PKK3VequJEzsxxtglZMpFG3PdJMTOeSQ+NX
	 BjQ73ouH2aSiSq2b3GT6WYP2kxAd2cLPUcQuNA6yQASi82UnEH1ni8W9UWXFpWzGzr
	 SvjUuSbaBHyuAzaHN76zoZVHQiROwZHtGtXqNyaRe5UaXNugvdwLbadq2+i4Yb9OVu
	 6Cmjpg54pcuDTxZtb+kVonpF0B91Fy58Ti41rLUI9LpFLYjaSUJxMzvJ+mo4aS/SFM
	 xKCiU/7VmX7SA==
Date: Mon, 22 Jun 2026 09:30:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, robh@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/8] dt-bindings: clock: qcom: Move glymur TCSR to own
 binding
Message-ID: <20260622-polite-tireless-orangutan-29a8d4@quoll>
References: <20260621-tcsr_qref_0622-v6-0-c939c22ded0c@oss.qualcomm.com>
 <20260621-tcsr_qref_0622-v6-1-c939c22ded0c@oss.qualcomm.com>
 <20260622051811.D8B041F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260622051811.D8B041F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:qiang.yu@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314246-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 43A606AD449

On Mon, Jun 22, 2026 at 05:18:11AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The commit message claims to 'Mark the relevant supplies as required per compatible using allOf/if/then conditionals', but the implementation uses an unconditional global `required` list. The conditionals are actually introduced in the subsequent patch 'dt-bindings: clock: qcom,glymur-tcsr: Add mahua support', making the commit message for this patch inaccurate.

This is a valid comment.

Best regards,
Krzysztof


