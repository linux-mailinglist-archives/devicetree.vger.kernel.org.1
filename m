Return-Path: <devicetree+bounces-322340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qvDTGZlXTWp/ygEAu9opvQ
	(envelope-from <devicetree+bounces-322340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:46:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C94E571F5A3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:46:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=QlaTUEzW;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322340-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322340-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D7AD307C246
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 19:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACD33C76A2;
	Tue,  7 Jul 2026 19:44:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085A33B71BE;
	Tue,  7 Jul 2026 19:44:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783453489; cv=none; b=BIpShylHjOph8b3CkLTkg7PpnDIPAkGxgvWxiMYJ6WpDBhVZJiya2Iz3x685SrE55S3Kxi/sPl3THV2tbNzQ1/0aCCpwjBFbpU5esV9itgMnWTQ0da+PxWcO+mq6yordNbHXfze8KpjFQg8qK1bdF8TvtW6dI/yqDuudH+aNfJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783453489; c=relaxed/simple;
	bh=w68QtZ4yOpk8U2rpdz0LpLoO0QDEIMkMVU3WmdCU0to=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=t3HZ3HmVCTQVJjUwMv5MjmoxzGadOz9Pvc5fm+LqE7Gv9XC/ZvTCy4nJWQLfa7EklX51IgS/KUA0XTNqJ2f98d3fjzRgjTtE26nJ3Xqnc894t9H0CXA/+w4dCInkuHgWSeOIKB8LDPXgc9e0BqmJVMD2y8nBcarteF9C2ZOsCD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QlaTUEzW; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9ij1iSA9fklslnNcgneWEKunccclcxZxRrXNrqVXuxo=; b=QlaTUEzWqoph4tNYXOWo/S/OP4
	huKUpcksH82KeEOGVOr5gtkikchYjdGQSuuoJgJqm768E/zH390u5xJF7rQrhC2Eeocmp1ZNOy+gB
	um5IukqbyaskBRC2xcnxE1jC2fcIdqApAeiR9wgWXtIKoU+Iibl1/ddQEtC7U6z6Tv9TobFAYU9Ao
	UAXJYiAs6gPWabnOQctuHkXOn2GmxWgwDWLvWUMUW3xvcAYd5BoV5x4rO8BKka5EpgBHildVcXm4d
	ChG2A0QJbNNWEhZAH7T63hqesyzkDuQHiaUGP2SBVVz7LKIpkYZvPTXLH4fFXmmP+hsDOElD7vsl6
	H3o+Gbrw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Petry <petry103@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Vsevolod Kozlov <zaba@mm.st>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fan speed control for FriendlyELEC CM3588 NAS
Date: Tue,  7 Jul 2026 21:44:34 +0200
Message-ID: <178345345844.664858.3572226528191999006.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <akkAvJap-MtbKp8B@Vsevolods-MacBook-Pro.local>
References: <akkAvJap-MtbKp8B@Vsevolods-MacBook-Pro.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322340-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:petry103@gmail.com,m:cristian.ciocaltea@collabora.com,m:zaba@mm.st,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mm.st];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sntech.de:from_mime,sntech.de:email,sntech.de:mid,sntech.de:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C94E571F5A3


On Sat, 04 Jul 2026 15:46:52 +0300, Vsevolod Kozlov wrote:
> The FriendlyELEC CM3588 NAS kit is often supplied with a case and a fan.
> Enable control of the speed of the fan using the trip points and cooling
> maps from rk3588-nanopc-t6.dtsi as a reference.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fan speed control for FriendlyELEC CM3588 NAS
      commit: 2035369f672fed6ec8430e8876de38b2f5d3f7c1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

