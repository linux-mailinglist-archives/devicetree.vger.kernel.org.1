Return-Path: <devicetree+bounces-324763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XfuvJYP0UWpPKwMAu9opvQ
	(envelope-from <devicetree+bounces-324763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 09:45:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 113C7740C8F
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 09:45:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ek28vN3I;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324763-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324763-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68FF430221C7
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 07:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CD137AA79;
	Sat, 11 Jul 2026 07:44:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8401D370AC1;
	Sat, 11 Jul 2026 07:44:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783755897; cv=none; b=sZcGBPu/xXgq21JWtfK5o15Wl8nXkF3euW2vZI/42qKCeLA2qXXqKTXqwLUGXiK9uBM3oLykA8S+MTzetavhUsDaDMAGJ1NvjiUVJksv1+UX6BePANigz3+Mpoj7wxcjJfmnG5t80AqF3YzTbJBQzvrUHyoHjtx4mQonGgSdSNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783755897; c=relaxed/simple;
	bh=d1wJBJqnREdRO7uXVxi9cJLsD9w8TM/w6IYXPOaXiVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X3oC6MjNGGsFPrcvKUxaf1VItLDksF94O110/nTLh0Dzcl/q8Hk0owRmUt0BWEiZQHA8f793j9K3eJk8V1xZxVJ30UPiEHUtckbpUqOFDXbbzqhLf+XJMxESRPv9xXrrgf9hdS5aTSUh5REA9c9nORUteCk/MEneTSriikphNmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ek28vN3I; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3ED61F000E9;
	Sat, 11 Jul 2026 07:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783755896;
	bh=b0CpmOWLm2vb+ALVgOzFuf2ikhKbi8vr3l51aLzsp4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ek28vN3IHp2WFK7uen+eCu8vrfSzkYl6XFS2Rgqux3Rwn3djoDjd+uFzkKG6FPo+7
	 PxeDmXVumlVj7ghYyfjp4i5Kq+n+Qg/rcRq0pd3YQ1tXUl25x87uvRgfGnd5yJ5v9t
	 Vk0uGNFeFlRKtN8PaFNCykAhv1Hq3XL3AvGdeH3cdr/dyXnAqTVbA6ZViyStlTsCE6
	 0IsWM2TSev3ruqOuFIpihZTiBT7edbqkdhpPN6gPjsYAA2sStd5CfR2r2RjWa6PG/7
	 TK8T37e1P1aRUF/KQxyirmS0smYjrftZEBJG5/FB+U1uXMp6D5Hh+aQlrjXoeYeMI5
	 b+/eeiBJCKGcg==
Date: Sat, 11 Jul 2026 07:44:52 +0000
From: Yixun Lan <dlan@kernel.org>
To: Shuwei Wu <shuwei.wu@mailbox.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/2] riscv: dts: spacemit: Add cpu scaling for K1 SoC
Message-ID: <20260711074452-GKB36656@kernel.org>
References: <20260626-shadow-deps-v4-0-bba9831f2f1d@mailbox.org>
 <20260626-shadow-deps-v4-2-bba9831f2f1d@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260626-shadow-deps-v4-2-bba9831f2f1d@mailbox.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324763-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shuwei.wu@mailbox.org,m:rafael@kernel.org,m:viresh.kumar@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mailbox.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 113C7740C8F

Hi Shuwei,

On 16:10 Fri 26 Jun     , Shuwei Wu wrote:
> Add CPU clock properties and OPP tables for the two CPU clusters in the
> SpacemiT K1 SoC. The OPP entries use voltage ranges because the CPU
> supply is shared by both clusters.
> 
> Enable CPU DVFS on Banana Pi BPI-F3 by including the OPP tables and
> wiring the CPU nodes to the CPU regulator supply.
> 
> Signed-off-by: Shuwei Wu <shuwei.wu@mailbox.org>

Looks good, thanks for working on this

Reviewed-by: Yixun Lan <dlan@kernel.org>

-- 
Yixun Lan (dlan)

