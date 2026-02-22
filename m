Return-Path: <devicetree+bounces-267205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MbVdFJqGm2kD1QMAu9opvQ
	(envelope-from <devicetree+bounces-267205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:43:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB55170A16
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC9343008457
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9369935C1BD;
	Sun, 22 Feb 2026 22:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Wb8YeXYC"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFBD19539F;
	Sun, 22 Feb 2026 22:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771800211; cv=none; b=tV8FNuQgd2JvXYonB0gy3loNoqd/2KKTzNLDG+MVsQH1dF0O3AyIdQLZ+s1cYn+hhTF7eX3lur33JI/AM6Zpj+d695ZNpHAYsQ6Ok1qD5CL9xic26B/onTyKwYYgpimp3mktK0TQ/AGbP5J6XWWVrFB4WaoPA04hvcI5ltQ84T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771800211; c=relaxed/simple;
	bh=+jHmtUNvqdyzbbsdqwtplX7ZGJoykz8alHAxfuZ2VY8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jvlt9ZJWkNDJ6rXBIDQFGqJVrbxsCIeO3c6LYv/G7x1aKQ7mIhnmWzmkq7gzAVqJY/PDGKERxHkIlmAZzINCYAuxL/5LQshqwJZS/ndNk4Ini91N012/CceSML2M7Sg/WOTkn40YoTkEs060ommfjQzJpOhq3Rd28c5Yr3HhUMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Wb8YeXYC; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lV75AXXuEOzZgqYdCfcJqh0AHXFWizhyarQU0FSzido=; b=Wb8YeXYCQ7gpTtg7p9QO2yusXv
	1TwrcVRqUSTsuHCYRG4vCT5+Am66uHTs10EirNcFuqJVf37zgAIWRh0bXNNsaMui+oad3QiQEAIBG
	bFUJxnD3a8bmFfEiCtmwWaL7KYZrBw4Qzhqh0eBPVxd914sGt/u5f0+IAJ+Mih5hkJ6zm/ZOx7KM2
	NGnIBZYLRdxO+kZse8cGQhu7mv8kLRKvZqZhxclq8sn4oqiYmrIEaFhKTX4YQl271pbU4JCjRDwLJ
	ZOTDbWiA6z+cAoAJWnJhr4jeJWc5mcks0Vo2t3K2zMRUWEIht2Gp4RuoJA3oDz4UT3mBRM7pHtERI
	QUV5PVeA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
Date: Sun, 22 Feb 2026 23:39:14 +0100
Message-ID: <177179992306.1861430.10419331869777090303.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260125181228.25145-1-sigmaris@gmail.com>
References: <20260125181228.25145-1-sigmaris@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267205-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_CC(0.00)[sntech.de,manjaro.org,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 6DB55170A16
X-Rspamd-Action: no action


On Sun, 25 Jan 2026 18:10:14 +0000, Hugh Cole-Baker wrote:
> FriendlyELEC offers an optional heatsink and fan addon [1] for the
> NanoPC-T6 and T6 LTS, which plugs in to the fan connector on the board
> driven by pwm1. Add the fan as an active cooling device for the SoC package.
> The PWM duty cycle values are taken from the vendor's source [2].
> 
> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
      commit: 0c02a103908b8c55633013deb9c76843db879bd6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

