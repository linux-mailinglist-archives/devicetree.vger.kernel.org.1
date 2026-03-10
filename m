Return-Path: <devicetree+bounces-273409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE+eCaLmr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:38:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F952489EB
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91A5932120E2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0DA43DA56;
	Tue, 10 Mar 2026 09:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zLaS+svA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0C743DA55;
	Tue, 10 Mar 2026 09:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135013; cv=none; b=PZ9Z803WNb6nMVIr8RKKj2CbDCrnmmwYPBvHyOTwWkuxzVdB6DyUOamlTHhrsL8oHtBKv+gMrRTo7Gg2LJu/p2BJ//0Tj9SuFxBRsPMQp2hrexTfsDaNRJZViCEPChaU1KtinYz79CtaA+g92HQqjhDw2OZoXr0pqdP2MIyH+Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135013; c=relaxed/simple;
	bh=llS3QH1ahyQtBNNqGOYXPhwFt+7z22u2nwa1TZg1e/c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qim05iO9rqUv1wJBrxysuA+7JTXGT99hUOwM/wp+NsTSjnJvtSQPhYz9JOy8U+XIiVc302fqH1OJ/4QbudOg/6j4uqlsnHbJauS6hXFoeNJf0sA3AzJ+KFC8jZjqYxteNeYidtY3LO5KjZ9UcS3d+6l33TmuIDXCIqPV1qbIQNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zLaS+svA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=295Eju0p2WbkYSgU8MIR85cU967byrAnLTlZcHA3YXk=; b=zLaS+svAn7jCcZqIleOnjVYEMO
	rHAQEgFUR3vm8bRgUDFWbdf4gPawnQWLoppSFax09jr36egDvBoEwQJv9m4xke/sef2srokqSl8Bf
	fHuUDCvbA00MG3/BXE301Jqb4sWf9vCy6SgH+hlCnoAyyQLSHcbdz0h+Z4DkARdCz63pmGmMLnp9w
	Mr1DNyOAYt697MbhIkophblOK3do1RrCx/LN3H7vSGi96KFzxcMffzeGSfWQ24SPYkDNk/X0irOlA
	UrZ7p7GOP3c8GEzTiqnMuXIUZFyMD4cc+4lITUbK5B3unMIUqS4fm3fnQrnZTvZTj7BP3rHAsnAXC
	gR9v0Qfg==;
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
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: Describe the touchscreen interrupt on rk3288-phycore-rdk
Date: Tue, 10 Mar 2026 10:29:53 +0100
Message-ID: <177313498975.2340533.15820241073630283765.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260303193855.828892-1-festevam@gmail.com>
References: <20260303193855.828892-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 78F952489EB
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
	TAGGED_FROM(0.00)[bounces-273409-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sntech.de:dkim,sntech.de:email,sntech.de:mid,phytec.eu:url]
X-Rspamd-Action: no action


On Tue, 03 Mar 2026 16:38:53 -0300, Fabio Estevam wrote:
> According to the phyCORE - RK3288 Hardware Manual, GPIO5_B4 corresponds to
> the touchscreen interrupt line:
> 
> https://www.phytec.eu/fileadmin/legacy/downloads/Manuals/L-826e_1.pdf
> 
> Describe it to improve the devicetree representation.
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: rockchip: Describe the touchscreen interrupt on rk3288-phycore-rdk
      commit: adf54d9282e8071da6c8774ac104dc00f78451c8
[2/3] ARM: dts: rockchip: Improve the RTC description on rk3288-firefly-reload
      commit: 30b0084d438012083024feffa40ca1af8e1c096a
[3/3] ARM: dts: rockchip: Improve GMAC description n RK3288 boards
      commit: bd60d32070916c471ba5a212261746ad69a292eb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

