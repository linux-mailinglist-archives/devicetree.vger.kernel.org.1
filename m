Return-Path: <devicetree+bounces-275553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ+5E313tGlHogAAu9opvQ
	(envelope-from <devicetree+bounces-275553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:45:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 90620289E12
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 891063007962
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611D437DE93;
	Fri, 13 Mar 2026 20:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="p/y9TmOJ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29F371064;
	Fri, 13 Mar 2026 20:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773434746; cv=none; b=aPgxuBxmHr6I5N3TQtuM+1y84/FBOPACANukiMzkWMEnbeb3XghXFTmfy1ubF7rzkrR/AHAtgFzwOnbQ8Yvb5KMdXxWaOGkN/xBM2yfbsnjvaamvt302Qm5HRFOf0ah7rWbMR4G+bE3iEx00R3yTjd1CdVpTPn0J5dYnw0uzHDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773434746; c=relaxed/simple;
	bh=GxJxdMFAYHH659BhmzjOYGJJqHW/Xwn1gaupmFFVWXE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jIhqJquOqlJNisH2blFbC/ldObxzfQbBYBm7xD8jB8CcRSMvbncMR43eM6vaD6Q3oaGvEejoUiqLhclCNzciyGD8/SMc2QyMEo7z3/ejGIOw65jDJRhVzqkneFw8K68v/6zrgJwwjzWgyjTjZMdIy7dS4qhdaHQYKZucAHBIH1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=p/y9TmOJ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1zK/mBzPerZDG0DoNt9fcpBSJy47YwKe8HlQ+1FxntQ=; b=p/y9TmOJc28LeVce7hrNjR5G9K
	s4oXquqPVzjwwyuL/AeAddXkhy/Hnp5BcJUthbWgo5ybIXmm346CyFiWtDg0AposWIYCyc1ODdq9D
	bQEIbVfIcWPVP4TQ4lTvhgR28XIQK6btcrXgVgXAqhP3LjcIUXCMTgOVP1ZC0hPMJ/hD6QJsbJL1O
	pGyAHkkoErtnaoj3hAcHytppMVOZsndEhXVOrMH+xWS+vWGLobxWDXaq5diBLAAWTNtq9juG02ZCT
	N5aM/8MZVakKVZQiARzQZJv8A7wQSggxi+6C5Z+RheGYiC5tSESH3Zo3gNRfwLlSdSk6DOz+vgsqU
	xzYbmgkQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io expander
Date: Fri, 13 Mar 2026 21:45:14 +0100
Message-ID: <177343454660.206632.6377463081579115678.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
References: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275553-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:email,sntech.de:mid]
X-Rspamd-Queue-Id: 90620289E12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 13 Mar 2026 16:53:29 +0100, Michael Riesch wrote:
> The Digital Video Port (DVP, the 16-bit variant) of the RK3568 VICAP
> is broken out to the PF5 mainboard expansion header.
> Enable it in the device tree overlay for the WolfVision PF5 IO
> Expander board.
> 
> 

Applied, thanks!

After talking with Michael and both of us getting grey hair from
the whole mailmap thing, we agreed that I'll just adapt the author
myself.

I've applied the patch now as it's just a leaf-overlay of a single
leaf-board, so no real harm can happen here and I don't want to
have to remember all the address details in a day or two ;-) .

The git log will of course again show the @collabora.com, because
the mailmap translates the author-address again.


[1/1] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io expander
      commit: d7787a77cf8b129304f590233032556dec10dfc6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

