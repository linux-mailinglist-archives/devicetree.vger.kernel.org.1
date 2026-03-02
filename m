Return-Path: <devicetree+bounces-270006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Kg+OuOKpWk4DgYAu9opvQ
	(envelope-from <devicetree+bounces-270006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:04:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5AA1D96DD
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7B0630752F7
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B123BA237;
	Mon,  2 Mar 2026 12:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="mioHnMNL"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7A73B9616;
	Mon,  2 Mar 2026 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772456298; cv=none; b=f+YLRZFh9fOmFztbZ6O8wWf+BBoOvPzYvEzJWC9BTyvIcTkShJOnaNBPb43bWzRED+NRpqPtZENBqbIz91eXRo/mwFrKU5gdCRy11FVcOMvUSBMco0bmbuevveu6e1GIzsX5Fbsw86CdiEjwEB49XVappeSQEAbOuTJZ7nJvb9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772456298; c=relaxed/simple;
	bh=G8vWaGjScZtELiPBS98AlbFAA8C39bevGCGWuR9semI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JhCDkF1UFYAmV/8eithcOFWaKM20H3oRcFjzEw3MSgZPRCCds+U5TtHfMygPUfJnatjRNmL8MKqvp9VpoXiCCZfVrjsmEwAoPFzUYgCr+kmIYBIk/5xTvWoYzfQgzsMQLvgbvJBecoeEjmuTxgjBrgMfKpP6f0Aa/rEvwgihEfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=mioHnMNL; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lT5NQqsicG6ABoJmYL6EdmPvEbABWHfZTIa8jFOUPog=; b=mioHnMNL8r+Wzc4SO/igJI0iSX
	TiKjeLeYK+8HVZtos1BFDoS/n/6NoYWw550vlBh5ScksgMThdmzUxMOq2c93Bu3r0wfPdwY9eoofx
	fZlXd3GWHwFfufYaBQB+ZgtCnT9ysYE/rQ5T0J4T+AYqbAvG45raojij2vPGBfr3iotGVoIa7iujQ
	zqOycyv46mVGuDGJJzaTtcH8Sc9A9idKvC94T+kXm4/aW9GLEVWqvnPoFO7l1r4RQUE3T4k2cLFuI
	5msKbDpKAfpGUXqMWEhTkjYtkfr3X2D4fH/FEyxQ2/An/ac/EZlnxXJmym0ZlMe3MlnNuEKlfdk5n
	h34bD57A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Samuel Holland <samuel@sholland.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	Andreas Kemnade <andreas@kemnade.info>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>
Subject: Re: [PATCH] arm64: dts: rockchip: Add battery and charger on rk3566-pinenote
Date: Mon,  2 Mar 2026 13:58:04 +0100
Message-ID: <177245624810.813665.10426528140221538980.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260224170531.516392-1-diederik@cknow-tech.com>
References: <20260224170531.516392-1-diederik@cknow-tech.com>
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
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270006-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 2B5AA1D96DD
X-Rspamd-Action: no action


On Tue, 24 Feb 2026 18:04:51 +0100, Diederik de Haas wrote:
> The PineNote has a single cell 4000mAh battery which can be charged via
> the rk817 PMIC.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add battery and charger on rk3566-pinenote
      commit: 1d608a269e24285eb399e08f0b47c2020b8c719a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

