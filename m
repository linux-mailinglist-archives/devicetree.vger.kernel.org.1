Return-Path: <devicetree+bounces-274797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Cn1LvYbs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:03:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 729C02786E1
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D575A301D30B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90257401A28;
	Thu, 12 Mar 2026 20:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="dfWdfblX"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A80C33A9CF
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773345746; cv=none; b=F+Yr1QzYBRRAMMnj3xkUiBXgvrorrnxs1jugwix8ztFmZFLGWhccuHaGlghdwJ5k9L0ihgArf9a/JKi1GKqlPsEgyP1jHxCRsRpWxb1z1kqwkuK/sdCfiukUUrWVWe9dOsqRf/35fQ9yl5jiyyJ+MedhTY1W3MBwfV/2jWPV7EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773345746; c=relaxed/simple;
	bh=OqJaRlT6GSH9TNVDf4ITj8sE/Mu/1m3T9y0uphqH6xU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pPBZkMKJsN02lAFZqsx50ID797YcleSJX+GosYFRWap5J4O2sxnQkkKRJmgzd4aEqA2vrupO07oT+qHhTNywqFaZYjDy2FN7j+CMSLTA2l5B/TdsDEGAAG0AzzYl2fzMmJGJm0c3fvgt5TAxgVhzg3+mcQsKAiwjVJ+ssoQJOqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=dfWdfblX; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=i7B7eudNmSYdWeQ3qtAwOPCgi7p1d24fESkZ0Xs12bw=; b=dfWdfblXRiDcjRAW1ToGXsDdrV
	KprkgEIlrIMT5UOSVq0WgOknBjXQjqqJDsPDlz50Mi17FiPT6MSgCAWuTaHyolrX+J0jmHC274R2H
	eL0/NVNTzy239jBYfGMz0iiybX1J5eoUjTBbVE6cya9Q2AOe0wFAzzYtl+0Zk/DFUeHW7soxonqbV
	PrwsAEgzDkNr1Y4EvUpYJzHWNcbc2H89WShj8To327UhNSrGmb0clwoJZCRO8HOWcxXzfgm8KooVs
	0mgLUT9pdAXCsy2EtdoKtL/0WcgY7OFgDFZGP4U50+J0m0HuxG3SPv4HPima0/LZDjgEfx5U+3QNA
	lT0MU99Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	sydarn <sydarn@proton.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct Joystick Axes on Gameforce Ace
Date: Thu, 12 Mar 2026 21:00:59 +0100
Message-ID: <177334565389.2520391.7051459534443371659.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310134919.550023-1-macroalpha82@gmail.com>
References: <20260310134919.550023-1-macroalpha82@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274797-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	FREEMAIL_CC(0.00)[sntech.de,lists.infradead.org,kernel.org,hotmail.com,proton.me];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sntech.de:email,sntech.de:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 729C02786E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 10 Mar 2026 08:49:19 -0500, Chris Morgan wrote:
> The Gameforce Ace's joystick axes were set incorrectly initially,
> getting the X/Y and RX/RY axes backwards. Additionally, correct the
> RY axis so that it is inverted.
> 
> All axes tested with evtest and outputting correct values.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct Joystick Axes on Gameforce Ace
      commit: 2ed11ad1c2b4c191cb2ed6741be127eb99f8634f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

