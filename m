Return-Path: <devicetree+bounces-258611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP8yDeJwcmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:48:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFBA6CA8C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7DC8030237F7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C126D36D4E4;
	Thu, 22 Jan 2026 18:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hOtsgD7d"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6693A1B5;
	Thu, 22 Jan 2026 18:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769106784; cv=none; b=dgnZ9IBRilX2UDXLg5IdbT3OPE2bLxSP4CyvBBSpivxkTk0dbiTWLz+XtM2KAPxzBCh+fezS1wnvR7tTi3bNYStufoWwJyxCROCnx3l4eB4V8Wypz1ln0BeJfiPuAFox3tFqNs+AM4Okes9QjqdJTFotynHr8v6pkymmIPMsePI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769106784; c=relaxed/simple;
	bh=CNRctFMbrlw7oTzGWZWaNnIg+DdBM51gxNEhtLAvm5E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Bq4e++MhMkBRjU1xzRBPvHDMUQ74IBxjqkftjrectO5Pk6yogbOWdzOVCmSt9tCp2qXiEgdFHKlqbdiGDK7ScJzqziLbEv/Ww2q5n+lp8HeNjaW2iKLY14XJ8oGP2kS5kdYU212CZi1ojsQKqBGvZqhojtIt1I1huywq0mfo5rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hOtsgD7d; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ymzZcSSK6dkQBPt+JcVq3udGXDM52ShgdC0k32t+/KE=; b=hOtsgD7daI87a/1P+kx7D2GSMW
	lYRgI5G1vpINZZUcxy6g4X0OIbIu4kk/yIdGez5pGs/rF31kkufsxEybfk1BFSOP/ccxNlxPdDCTg
	GSYE5XUPPpdze4cK0488GlCDvEZqDpXdexLuNreS6I+zK0A/zduWeT3yx9qA4RLA6rZW+oz/EWLdl
	9l2OeGGyS5iP1ktlMkw2RSgxy4s7+2MiEvwJZMWBELtq8+YmMuU8p8sz1HlZfF/F8SfNSrg8OgczJ
	nUwdyleAGlZ+ZO0u/Mh/wC4aYWQ5WgU8RqtkEIymRkkUyudbVSJHOGIO016nEaVb/Rnf4EOdpWwzU
	lq+PkOfQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vizU2-003rA9-0g; Thu, 22 Jan 2026 19:32:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andreas Kemnade <andreas@kemnade.info>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add TPS65185 for PineNote
Date: Thu, 22 Jan 2026 19:32:38 +0100
Message-ID: <176910675432.726233.11039063781241426145.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260121-rk-tps-v1-1-bc867e1dd200@kemnade.info>
References: <20260121-rk-tps-v1-1-bc867e1dd200@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258611-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sntech.de:dkim,sntech.de:mid,ayakael.net:url]
X-Rspamd-Queue-Id: 4DFBA6CA8C
X-Rspamd-Action: no action


On Wed, 21 Jan 2026 11:22:37 +0100, Andreas Kemnade wrote:
> As the TPS65185 driver is now upsteram, add it to the PineNote devietrees.
> This is based on https://ayakael.net/forge/linux-pinenote but modified to
> the binding requirements.
> Without any other out-of-tree materials applied, this enables the
> hwmon temperature reporting and the interrupt counter increments
> by one per reading.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add TPS65185 for PineNote
      commit: f1ebfaeee3200b0d12f5f2079c429f0eb1512a79

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

