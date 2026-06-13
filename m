Return-Path: <devicetree+bounces-311374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iIkIF62hLWo/iAQAu9opvQ
	(envelope-from <devicetree+bounces-311374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:30:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 548DD67F4E2
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:30:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SxYmAgzI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311374-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311374-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 77877300184D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57021313E24;
	Sat, 13 Jun 2026 18:30:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAFF3090F5;
	Sat, 13 Jun 2026 18:29:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781375400; cv=none; b=ahi6LDxfgRPiKLRqCNFS5NqGO+/XckWWNUvl+brDK7Kj1YQaSSQxs4qtXIedhgzjXTibQg0DdK0Dk4R4slKEs7FyZUZwVKpn5TnptevyCOCnmd3ZY/wCPiGTUbTnNvV+szI5geWmsQwjVVKfXu88Y1C8lvws2SiA29ss71cBjyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781375400; c=relaxed/simple;
	bh=AN0ZpA9iHlqEDGOP2hVl8hG9GkDDp1wZTgjgrMNqxxg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MwR86+5z72cQCWedeYual/Wb8lTR8CKXdTvhjm90S9RfV6QG91KnDfCDprzys8w4tdT2bqY/zPjJRnA5EzDAdbw4FFtzIPpAC2kNem/y7eemuwTbSKvdlXkFaBqNys0hkuCd4SiA+l7geMyjHAAmv4XeE9xBMSJ2o5tn4RU2kso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxYmAgzI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AD001F000E9;
	Sat, 13 Jun 2026 18:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781375399;
	bh=33Syhvsm5sZiiNLVJUS2RBNw63oGJetk1j5qZL/2MiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SxYmAgzIh9DscHcdrhGxGBo/5V60YWApEi+m/R6/XKqhQpada+bVWx36Cwy/hJ8zT
	 /t/sQdvOfQgAimhpLXCT+QrCsS+eieMQFvUXLEb/FqV8NpomYYexoW3aY0dwFRu87N
	 +LvVH1DXQB1WndVI5u9koNvgX/rYNNf8BiAQ3gTTEhpW1MEYktH1hiXyjBkLhhW8bT
	 kOk1G4c2yLfO7kftEP+lZJYJ0vUkNW24mNlj6z31pHfvVFYAc5a4l8lQwV/ycLXEEp
	 eE0qhrLquf8LArl+ukokd52mSH2yeQ7mYmLvNPRH6el5EV5EO54gpNZAk0RGfFqqwa
	 wr0vLKKk2rZEg==
Date: Sat, 13 Jun 2026 20:29:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geetha sowjanya <gakula@marvell.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, mark.rutland@arm.com, 
	will@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: perf: marvell: add CN20K TAD PMU
 support
Message-ID: <20260613-crystal-chihuahua-of-opportunity-deed7e@quoll>
References: <20260612095746.19679-1-gakula@marvell.com>
 <20260612095746.19679-4-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260612095746.19679-4-gakula@marvell.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311374-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gakula@marvell.com,m:linux-perf-users@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:mark.rutland@arm.com,m:will@kernel.org,m:krzk+dt@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 548DD67F4E2

On Fri, Jun 12, 2026 at 03:27:46PM +0530, Geetha sowjanya wrote:
> Marvell CN20K SoCs integrate a Performance Monitoring Unit (PMU)
> associated with the LLC Tag-and-Data (TAD) blocks. The PMU provides
> hardware counters to monitor cache traffic and performance events
> via a dedicated MMIO region.
> 
> The CN20K LLC-TAD PMU is largely similar to CN10K, but differs in the
> layout of PFC/PRF register offsets relative to each TAD base. These
> offsets are derived from the compatible string in the driver and are
> not described through Devicetree properties.
> 
> Because of this, using "marvell,cn10k-tad-pmu" as a fallback for CN20K
> would result in incorrect register programming. Therefore, add a
> separate compatible string:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


