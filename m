Return-Path: <devicetree+bounces-269948-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE16CMR3pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269948-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:43:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8B01D7B05
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDE8330743C6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E8536308A;
	Mon,  2 Mar 2026 11:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="i4pxbl/E"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ACF350D4F;
	Mon,  2 Mar 2026 11:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451606; cv=none; b=pH/Ekdzu5yuxdlTp8HeiYyarHlrAQ8rpUV+s+kM2ur8L3ZnkLHO6I07Na+q5XBoyxFi/0j8h9MNTO2ukQN19YlgeagZlj9PIqttRChczFbqMHMAI+O5UU3tzMtjfqUN6ITJ9ZzG9lI5jZ5VlB0tWpYiHaxLX/I1MUwf6pRnrV8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451606; c=relaxed/simple;
	bh=tBqER7TkkEWSyxlqxllvRX3AFT9ZJI4Jaur60a2WB1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ssOXntRxaVewaq6vNBCG3kSr1T9MNZ1o/yx6MGZOKIDFYBF06N8bGTsmWCDC0ubljW0BGrZsYhpIPFMKTYLOEtpIqFjjA3r5VtSNZk3nWxeMYaRJHUVekXVS8/YEeqGBm63/pFoF+rJA0vCzLpRIgje/WTYylghEsijV3SjMUWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=i4pxbl/E; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=X6SbFLc4f+0AUJqjR/btDT2FjgfxgT/jHR66a8XfvPI=; b=i4pxbl/EziIQJQ95nSQYiOuP0Y
	8J3wCX42+B7zdlERRorGAoeX4/7/12mb6stlJG5v8IadafTiVYDmdkVdUKdWKW3WElIVbofNupyY1
	pncxKs7tnlMKKUwHubUV1HxU00F8adyPqfuLrEpbskvRXymdU73fdwEg/dBPv7c++nhqLCAUphTjp
	Ea2qQ7eqIqlS/RcqAsdWv4NJIZRQQ+o2NqrdQluuBih6d2CozW6FMk5Xo4FI7otRWVEqatdOCfXPl
	c7TpAOKK2TZSXPALa1I62pbDhPhaEI+3lWoUaKP0ztwdvsvtKP/NDxO7DJUWS+wqL/CHjEBlBk0Me
	bGYbUceg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy node
Date: Mon,  2 Mar 2026 12:39:52 +0100
Message-ID: <177245158235.769695.1602082585848546152.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269948-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 7D8B01D7B05
X-Rspamd-Action: no action


On Fri, 27 Feb 2026 22:32:56 -0300, Fabio Estevam wrote:
> According to rockchip,emac.yaml, 'phy-reset-duration' and 'phy-reset-gpios'
> are not valid properties.
> 
> Use the valid 'reset-gpios' and 'reset-assert-us' properties under
> the etherne-phy node.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy node
      commit: 6b56706cde50f64382df90a244e9fd3c345c9917

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

