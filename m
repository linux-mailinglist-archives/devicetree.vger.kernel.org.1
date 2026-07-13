Return-Path: <devicetree+bounces-325221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /AODEmKUVGolnwMAu9opvQ
	(envelope-from <devicetree+bounces-325221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:31:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B140A7482AB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:31:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G3ton2aG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325221-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325221-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03C9D303DD73
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4691369D55;
	Mon, 13 Jul 2026 07:27:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CFA3546C6;
	Mon, 13 Jul 2026 07:27:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783927622; cv=none; b=c1QeNZ3e9jnAybEPCUa4BDbaYyv+iv35XvcfOzQQ8Jw60sRElt7UN/k6EgstMZEkDPJAMeoVTdcQD+ZXe1o1tqZvpbGg1bN82lp1q5wBVcv9DRxWLlKTdOpBe9fKpq8ufxZbC72bLXXO3nF5wegnF3JGRVWBneWRqTKeMlEzJaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783927622; c=relaxed/simple;
	bh=uSZcqEKbqPyot+IKzNnU7hzmxT0JoaBbII4zxAy3kFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lMkR1XuuR4BgVlrm0KnpNT+0HrG4dVM5eDIoebfg43Lacj3Pd1M7TunGRpQMxeUbcwA9xuiYNuhFy46NTLZcOc5wI8oTDhEGXnjCXsoKqRlTL1mbKmFivaqZDJSW47DvZfsnt3IOGtjJIQRqLvjsb/LxOfZmbRSeYa6ZRbGuq1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3ton2aG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A87721F000E9;
	Mon, 13 Jul 2026 07:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783927621;
	bh=E372M33xfbBlxY96rpMILM58r6QIxHS+6Mzjsgps5Wc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G3ton2aGo8UP6tslQcS7Wf1uzCZLPkA0gMMsOPLTIrantiXEqm7TMCVKLhylRDPlF
	 XJfjADxNpgBP3y0bRogsdCoS1aoD9VBOtm0zg8lVtmLpv/vH9q59VDNz4hR99HyQMe
	 JViYlBji3/YRYS5N/J97KblnwHUoOYTwt3x9Qv00UjNBCUzj4kMBJdLQ2ER8PEmGps
	 bYZq53qWEY2SCfh59r91BH3bhYBys53GqJ5pEj1eVK6cx7GlfxYe2d1OctOxygo7py
	 2KGWTCPkHGfB0PZCaGaTCLyt/z8kNT3BT4rpFs9KxOjP/Oz60lP7gAIcssJkd3kycD
	 OCCy4Om8Thsxw==
Date: Mon, 13 Jul 2026 09:26:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: will@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, 
	linux-perf-users@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: perf: Add Arm Bus Monitor Unit
Message-ID: <20260713-noble-jade-wapiti-20ba9d@quoll>
References: <cover.1783439341.git.robin.murphy@arm.com>
 <1cd17d9c07e9695e1dffdeaa5409f0a1db8ccb81.1783439341.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1cd17d9c07e9695e1dffdeaa5409f0a1db8ccb81.1783439341.git.robin.murphy@arm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robin.murphy@arm.com,m:will@kernel.org,m:mark.rutland@arm.com,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325221-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B140A7482AB

On Thu, Jul 09, 2026 at 08:22:07PM +0100, Robin Murphy wrote:
> +required:
> +  - compatible
> +  - reg
> +  - label
> +
> +additionalProperties: false

You need an example DTS, unless this is a subdevice and part of other device as
subschema.

Best regards,
Krzysztof


