Return-Path: <devicetree+bounces-290527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKm+FklV72nJAQEAu9opvQ
	(envelope-from <devicetree+bounces-290527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:23:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D34726B9
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:23:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E4F253007BB1
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 12:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C47B3B8BC0;
	Mon, 27 Apr 2026 12:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zGl6EttV"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BB73B6C0A;
	Mon, 27 Apr 2026 12:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777292615; cv=none; b=rrAdEK3Kd/aIy1o7w/9vz/fhYurh4eueZVowsfKoR8Fyvmx+/mJ9ZqKK3486yA+covzM6rUiVRgPls3Gb4NBgirKaT6Bh7Ue4mTHdXkbvkA05rQQj2UD2eC7nVcn5HX9Jevw/DHUBkmLQeQd/qIDh+kIXkvDwDIS++4f6a1nOjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777292615; c=relaxed/simple;
	bh=VITAVfvq3dKWQuAAtKsUXprh7wavqu/q0c1XJJCDg4k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Kug0QnAKaHySIplsrs3uxsjeiPH5CxIspZiwFgXqGMyelGY5Ck1iSteC9vJlPRmVDtUwmSPzPq4X49dhGzPL1O/fmmH5Gxzz2pdnH1i5Xi2B6/gCq6M/bwIS40XTYGZSqDuS4F6omqM2qFOqbGRjCwOYpfH9nwY8UiNSs03PaT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zGl6EttV; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iREvix3JcsTfQWQTKWPlT4HwL/HpIqdr7S6OUO9s+6o=; b=zGl6EttV+9ZMroLhwiCaM58v4J
	KpJoVaGbRlLp6A2HR1Yy3GKSDmOuKUH87Jm4g3pbBhpVsnNI3OCTzbsabIxNlm+0eqcWHzXiGsEiL
	RrRl8T1JRNGGr+9qoW5jI+ogY4x7KfIJYOg73Ymu8iFM6Vxhj+o8ZzNhJG2PcdFMYQxMqPQUG9qpS
	jQaR0oHlua4tlbPhhZowwr4adxXrR0fICK7qGH9A43jn8xv/utjy8M5Fqcf1Swluma6KdlNrURhMB
	mvvi4C15FLT/I3Wy1tBkqtMkry0P0G7ZLVhsyqrEguF+7vnontteZcwyBYdbSNmFTzPnFiIDlf6Jq
	rJYuo0ZA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Remove invalid properies from rk3288-veyron-analog-audio
Date: Mon, 27 Apr 2026 14:23:18 +0200
Message-ID: <177729258232.1866089.9184760635267258389.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260404195008.1951910-1-festevam@gmail.com>
References: <20260404195008.1951910-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 022D34726B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290527-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sntech.de:email,sntech.de:dkim,sntech.de:mid]


On Sat, 04 Apr 2026 16:50:08 -0300, Fabio Estevam wrote:
> The 'rockchip,mic-det-gpios' property is not documented anywhere.
> 
> The 'rockchip,hp-det-gpios' property is not a valid property for the
> 'rockchip,rockchip-audio-max98090' compatible.
> 
> Remove both invalid properties.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Remove invalid properies from rk3288-veyron-analog-audio
      commit: 44a024778eeba377d7ac882d15e27ba784e0f647

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

