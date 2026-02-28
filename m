Return-Path: <devicetree+bounces-269542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPCzJ/XZoml06AQAu9opvQ
	(envelope-from <devicetree+bounces-269542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:05:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E2B1C2C70
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0C723061753
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07A66428845;
	Sat, 28 Feb 2026 12:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AuRSjze0"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DD63254BB;
	Sat, 28 Feb 2026 12:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772280252; cv=none; b=iuUdSmJekoWWGW5yEL8UtVPqYN8HvkNKnDmbqIotJg5NNcsZ9CxkiNdTyhZC3UucJ2X/pp6MxidKmXuFn+LWPx9cqJotpqP3wFlZVFHT/4DgnmGthsTGOaL9mJsCJWxB2Dyrl9aDOIl+mGARxHDos8xAADuXHuBXccEsikQ99wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772280252; c=relaxed/simple;
	bh=HOnzmrfzu48qrT8lDtmHmn7g8Nanp/fcPFCKl/0zdfc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IgjmE0zaoYUoAmjucZZeAomX/jZyM89HP4t1mOhgKEU1QfBDxZEDHUV3fI9VJAd7pJQOOcMcQtZO0ElGPjBOdU3PIsot+wLsY6h41uZ5DJkfcFoPcaVcNqmFeme08795CE++EGR3xEoF6EFx6RcMOe3081RquJ+DnzVEu6ogA3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AuRSjze0; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JdN2s79i3ifvPHFkRof15X6OWKPE6JLNcjWGTuMMrns=; b=AuRSjze0Jo37Np2PrzQvaVwhbJ
	l6VJV0by/ttwspIwjKnSQsuOO7F6delYcpwF0mhON+A7SJTHV0UW1Dvl7YCVghDO/BBYpz8kMLWjL
	oidjivO5DBtkQnOcyNzA+LiKAPTeObPhZSS50NYiIVDGp4J9XAiVUEoIewRXwHs/kJmIPjkrasMPP
	4Wd3a195gKqM2EWZtgq188YVvu4sVtC27yqByGGPhxWzCja2gTeZYO0048rCgD9WF2XGQ9kuRBge6
	I65Pljq1PFBq0WY7JXDfl4MvdwgXLAOyPCfQfb/7tjcUYW39pvwr9exb+wrQFllR2f9NCu1Hbu6Ve
	yqVhOxNA==;
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
Date: Sat, 28 Feb 2026 13:04:00 +0100
Message-ID: <177228022478.407079.13274912571171700882.b4-ty@sntech.de>
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
	TAGGED_FROM(0.00)[bounces-269542-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 17E2B1C2C70
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

[2/2] ARM: dts: rockchip: rk3288: Remove rockchip,grf from tsadc
      commit: e2919e4299f132823712ecd44c08c8e8fd0a2e3c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

