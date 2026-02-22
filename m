Return-Path: <devicetree+bounces-267202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AABxAraFm2mj1AMAu9opvQ
	(envelope-from <devicetree+bounces-267202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:39:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 620721709D5
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86A8F3018283
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26DC235CB93;
	Sun, 22 Feb 2026 22:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="W8zRrquE"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A92DFA25;
	Sun, 22 Feb 2026 22:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799974; cv=none; b=gqSodGAZkdktmthaiC+GZImSjcbjgb6lJfYHCIezzk0BxEHB2oMW1j5U5zVJPGce4x6FBsfABA0m/LcXhQ3+ljztZ9SHGXdacwIDn3tht9cIERBvr3pqOEunefhU+27bjhXmvl4n94BZLAJo7o/g8DkRlmtoGeYrLb6gEAnlNso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799974; c=relaxed/simple;
	bh=AoZr/RUCwq/uk5X6YmLhkb7fiW16ZH6zsSisoRZBf/I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u9Da4xmBOnouUSsK9aEQPaai4a94fGK0PPHM2fNJKZwt1TSZ7U25DHwB7eHTehX16R5YPpup9Y00iLAVjbnZc7OfUdwIt6SFKVQYKx8vaIdBHtkqIAWgUooogATLy1JS6rNnGWA+Q8NEKqVhMrKDWhb2OdlecExl9mE+uXdsrbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=W8zRrquE; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=74ZaTUP5qG6W8OUdgQl8AgO5Ccb+9y+KTgRijaITDSo=; b=W8zRrquEL2DojQAOFuf/txJDh1
	vazxPlRWJLJ5r/58xCnWP2mxm2Tm2vTHn7VSx/WuThpa5CBpRrWJGwKSJ1mLxySD+NJ4fIDBCfuQA
	P68XMUIjTeAOqaKFsp3zyUs99XlrU/jCxFYvJUGiFmPzItt0DQHqZ5OXUFQVNpyeM5rbgsclwX9nr
	4HGK5NgmJohKO0yyAYunfMVo/YDd5+5cwxZ1j5YprcQ15xB1GMwOs1IYPMlr1MSenFPuLU8sSQmxR
	RjQiefbU4+W37/V4PfY7Qinp8BcurjbcsdL8s7cWp6BEFqJ7Uv636UwkVumduwgIkZHNzxTdBfiIY
	LdRXtHzA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-sound@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH V2 0/3] Anbernic RG-DS AW87391 Speaker Amps
Date: Sun, 22 Feb 2026 23:39:07 +0100
Message-ID: <177179992300.1861430.15901525661724129930.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267202-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[sntech.de,vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,lists.infradead.org,hotmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 620721709D5
X-Rspamd-Action: no action


On Wed, 28 Jan 2026 11:46:05 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS Speaker Amplifiers. The Anbernic
> RG-DS uses two AW87391 ICs at 0x58 and 0x5B on i2c2. However, the
> manufacturer did not provide a firmware file, only a sequence of
> register writes to each device to enable and disable them.
> 
> Add support for this *specific* configuration in the AW87390 driver.
> Since we are relying on a device specific sequence I am using a
> device specific compatible string. This driver does not currently
> support the aw87391 for any other device as I have none to test
> with valid firmware. Attempts to create firmware with the AwinicSCPv4
> have not been successful.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: add Awinic aw87391 for Anbernic RG-DS
      commit: 1ee69b9cdcd1b838e514520fb4103ca77acd068a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

