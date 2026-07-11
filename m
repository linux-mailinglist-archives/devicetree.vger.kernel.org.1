Return-Path: <devicetree+bounces-324830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V6BnEmFjUmrKPAMAu9opvQ
	(envelope-from <devicetree+bounces-324830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:38:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC37742023
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:38:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=klt0HVcv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324830-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324830-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5A5E30086DE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCDBA3C0601;
	Sat, 11 Jul 2026 15:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5EA2EC0B0;
	Sat, 11 Jul 2026 15:37:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783784262; cv=none; b=IPdJ6rM+94E1SP9fvbxITC6vzjvAAzAMaTljl3OnuzRKZBjJXQXPdxs/J+ncBjtzrsTrG/BTvHJiC6jBhfr6TUqMZmvvPUxp0ygHkO8iF+jb2G3D1CYies8dpNEuHoKphZ66TRZess9CqGDXO2rnsvB2VjhcIeiC3jrrnBJ8RH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783784262; c=relaxed/simple;
	bh=Gwk4MqOiZuno8RVKDGCnAiwzmgO4alI+1vadXh3OQ9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aRnOctQvvkdh+PT55Ct2mJTfZmmUpbw4fWx1mHoO03OzScpCq7V6xTK3S4xl1gkxCnYafhOK20oHkSgaHiCN1vpH03p1pPAMeBzHj/wIORsMldPW0z+6tzd/AzQW/db3tDi4O4EoRRxoLtYNhanUDsPXbTsOYqtS7jUBL4BVZwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klt0HVcv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D483B1F00A3A;
	Sat, 11 Jul 2026 15:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783784261;
	bh=GezeGbZCPMTOh06fDLpr9vil2pYkSBZnWAH/WAcU7HU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=klt0HVcvdBp7QMBY+ohSExuKjhTiBL52q9OJNLgOmkikXYbhPI7JlPwf97sb4S8Za
	 1Y9S97cSYX3swhEf0GwmtHWbvdzuEIJtIv3H2zj4e0oy0Ee4Vkd93mHwd1h4r6kBkN
	 oqk8BhwmK6NoV8wOHktOv18xNGOmgJuvQ+zxnUtWp2JBLcr9X+FvcYffjn7cfmBcGo
	 IrvH+o/PUm2CNreHTU9RPQb0gpN9N0vmotQ4sr+I1bh+KMY+QXliZUIyx2PtO3VUW1
	 8Ecs1qjnQBcKhwq4JDVzM+8pOZRsv5JRntHPZ9n/9cKRQ7gDU5I0sCQhT3+GysW5mf
	 acZMqJZPna9ew==
Date: Sat, 11 Jul 2026 17:37:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] ASoC: dt-bindings: sound: nvidia,tegra30-ahub:
 Convert to DT schema
Message-ID: <20260711-ecstatic-industrious-manticore-f35bb4@quoll>
References: <20260705-nvidia-ahub-v3-1-bacb7e05bf68@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260705-nvidia-ahub-v3-1-bacb7e05bf68@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:charanpedumuru@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324830-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nvidia.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAC37742023

On Sun, Jul 05, 2026 at 06:32:32AM +0000, Charan Pedumuru wrote:
> +  resets:
> +    minItems: 11
> +    maxItems: 21
> +
> +  reset-names:
> +    minItems: 11
> +    maxItems: 21
> +
> +  dmas:
> +    minItems: 8
> +    maxItems: 20
> +
> +  dma-names:
> +    minItems: 8
> +    items:
> +      - const: rx0
> +      - const: tx0
> +      - const: rx1
> +      - const: tx1
> +      - const: rx2
> +      - const: tx2
> +      - const: rx3
> +      - const: tx3
> +      - const: rx4
> +      - const: tx4
> +      - const: rx5
> +      - const: tx5
> +      - const: rx6
> +      - const: tx6
> +      - const: rx7
> +      - const: tx7
> +      - const: rx8
> +      - const: tx8
> +      - const: rx9
> +      - const: tx9
> +
> +  "#address-cells":
> +    enum: [1, 2]

That's a change - old binding was specific and set 1. You need to
explain that in commit msg with reason why.

Value of 2 suggests children need or want 64-bit addressing, which feels
wrong. DTS might not be accurate here.

Best regards,
Krzysztof


