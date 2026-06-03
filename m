Return-Path: <devicetree+bounces-306491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kqgNEcOTIGo+5QAAu9opvQ
	(envelope-from <devicetree+bounces-306491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 22:51:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D80EB63B3D2
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 22:51:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306491-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306491-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=collabora.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDE883046347
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 20:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988473FBEDF;
	Wed,  3 Jun 2026 20:47:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E963D1CA4;
	Wed,  3 Jun 2026 20:47:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780519623; cv=none; b=IW4wW7/mShbUEPW/H8a9gqO7n7NhmuisCKEdYSq/g2xEJtPcUM2Wjm5qwHcOkpPU20zIVTAh4tZOJfTxd3P4AozSbfGUoCZ+dI1vRbMupZpe/CMEF+o63zkpzm5MRj1+MuJXs0StwdM1Ydxjm5g4guAm5hjkP5/g/ARqOvNOSWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780519623; c=relaxed/simple;
	bh=OI+w5Ft3+926c7D6aVZt9En7bIFGC53cNQ802v7Pjuo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VrzJBR/ob8p3qBWfn3e2zA5HymzzMbuvzLSdXtxdvJoD2d0vtGhSm6FAB+CWKn576CqJ2dOXRUIr2k/CUCuvFlMRA/E3gaGho0IWO3+6MYkXlpIcC7VSBu2LHYAKKIWzm3/UT4Jz4gZF3trRbfljtRAbguPpGoaHrxVKEA3SEy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FF541F0089B;
	Wed,  3 Jun 2026 20:47:02 +0000 (UTC)
Received: by venus (Postfix, from userid 1000)
	id CB50C181D83; Wed, 03 Jun 2026 22:46:59 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org
In-Reply-To: <20260528-sc27xx-mfd-cells-v3-0-25cd685d2743@abscue.de>
References: <20260528-sc27xx-mfd-cells-v3-0-25cd685d2743@abscue.de>
Subject: Re: (subset) [PATCH PARTIAL-RESEND v3 0/3] mfd: sc27xx: Use MFD
 cells and devm_mfd_add_devices()
Message-Id: <178051961981.2666348.665108516921227224.b4-ty@collabora.com>
Date: Wed, 03 Jun 2026 22:46:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306491-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linux.alibaba.com,abscue.de];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:sre@kernel.org,m:otto.pflueger@abscue.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:mid,collabora.com:from_mime,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D80EB63B3D2


On Thu, 28 May 2026 18:18:22 +0200, Otto Pflüger wrote:
> This is a resend of the remaining patches in a partially applied series
> switching the SC27xx series of PMICs to use MFD cells instead of purely
> OF-based device probing. There are no dependencies between the patches
> in this series, but they are part of a single logical change.
> 
> Link to original series (v3): https://lore.kernel.org/r/20260329-sc27xx-mfd-cells-v3-0-9158dee41f74@abscue.de
> 
> [...]

Applied, thanks!

[2/3] power: reset: sc27xx: Add platform_device_id table
      commit: b6c7feeb604262f31a4279bd66aa300ad0903255

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


