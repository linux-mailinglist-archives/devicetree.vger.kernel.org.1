Return-Path: <devicetree+bounces-274796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKXLLvQbs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:03:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF0D2786DA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C4FA6307198A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D294402429;
	Thu, 12 Mar 2026 20:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EpszRhWy"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B10401A1F
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773345739; cv=none; b=kM+kXy+/sb+RGDzgFxJ3wmLBUd9lY1jOqdNBZALO2PHbOXx7ve7bA8ZjR/MJQ7BbB2x7uAFZQEB9P9oz6AXm0LXsmoSZsEtvxe/5Vr3r4kaoX1iKVmijSmcsH6TRS7gTdspGm2TpLYNmNFJqJJ8/TXvUl9RX/CFbpdSme6MeVfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773345739; c=relaxed/simple;
	bh=Dq9eDoHzeUlV6tniTAkMtUlnZU01tdRkgWlGmrcLoAQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Bj1WvcIltsgvfeMHyyE5x7B9jvwv+VCMIt9fzrso0yA9ACBiks+zlH2OcnIb/YdKAWhCZZoVgB7xxwk5lm/ttk0kii2M029Q4r7OOr0i05wpFVLUGxt/tpU6UH0ckZSTnKBC5VEJHRceV6vcMYve5siro1A8ijVaEL0M6ULkbPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EpszRhWy; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xm0P/ms1Jd/s/4uaMaEbhok052vUZSHlfFiirTn6RwI=; b=EpszRhWytKItDKfj0vQLAP/vh7
	8saiRJPec/UTJVr1PjyahuPYSz1hOvCBWl//LPWnecK8MXoFWnKs8f4PG4fW9GXX/W3K4uGKJpeRZ
	jBWfwLRuMvrVPOer38dXL2K0h+FND8Id+mi22taJesRfBT1VbcAIoAD9iIvCilGer3wYsuCtHwyio
	DH3DQmvHmpdQwKHC3yzxIOxRCZiBK2za8W/ccC1OueDPa3AXvqzaqdJ14Dqxqfzi61TI0ZZ6Xp5Y7
	MxQNVtsAxWJBW+3LFBtNrEua3edjKB2pF4BtW5XW+G34PFoUy5j5/37tGqZe5VMwYNgIM6THwsrqA
	rPCGL4eg==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct Fan Supply for Gameforce Ace
Date: Thu, 12 Mar 2026 21:00:58 +0100
Message-ID: <177334565394.2520391.6625227879888773579.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310134648.550006-1-macroalpha82@gmail.com>
References: <20260310134648.550006-1-macroalpha82@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-274796-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	FREEMAIL_CC(0.00)[sntech.de,lists.infradead.org,kernel.org,hotmail.com];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sntech.de:email,sntech.de:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3EF0D2786DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 10 Mar 2026 08:46:48 -0500, Chris Morgan wrote:
> Correct the regulator providing power to the PWM controlled fan.
> Without this fix the fan only runs when the audio path is playing
> audio (because the speaker amplifier and PWM fan share the same
> regulator).
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct Fan Supply for Gameforce Ace
      commit: 98291ce632466c3de7f29b37a1f7b89a6dee2910

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

