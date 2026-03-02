Return-Path: <devicetree+bounces-269952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALE2Oyd3pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:40:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 936E61D7A01
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1241B3018F36
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9523624AE;
	Mon,  2 Mar 2026 11:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="QEONd7Il"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2754A3624A5;
	Mon,  2 Mar 2026 11:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451615; cv=none; b=XqbiGHOdfeIrwAOdbP6OYMj7j8UOW/3Nkxp46qCytTkOXg4kpPD8rPA+WxZPx+8209OseG/nfg995SUekRwrHOsuiKQQKIaeRePL6y1QwAVelIIJBhL2RlKuw8sYB/T1MY2ycoxAREPmThBMeDzDFap2c1jNuTGoSAxswUhu9/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451615; c=relaxed/simple;
	bh=M3KIvmHKuQTc30+3eeyNRH/5To4Pnks0Sq28XTJ36Po=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EUEkIaaEU5sZkS/7de/+/rJoH3p1RhZMYBZb9MtBt1sLuRHYvosFhuvCxOBCWNrnkOdNwQGjG/7wVdDIe/WX2axDHzcolIZZ9gqN1V7sxReIseC7oK19RNsyUaxMmFUmAw6aZfOEBzTqEYky3vt26OdPB02DJA4MEmqvBB454Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QEONd7Il; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cNcvX7o0uACaqfGQIHmPD7RzV0GRL2BHct2k8eJvLpk=; b=QEONd7IlIdN7v6YzOiC7ar8qr6
	avGFh2Mu2OE+NFXZaph7AIUBosUCY0CzSyKAfAfrfk6Mf/2gCOzVvb2aT3QQWYmC1ZzYhPys33Zv2
	7gsrxn7GAEtFmLpNA2GPzWYeLj7LlZ3O7SE+FaE5Qzd/S7lvFhMisau4TrjtgKqX61VYjlbdMvo0Q
	tZMGf4lxIJ5iAkfNUBJSYw/KGxqJcgeGYPXM5RSz3tWILBViWr4fueqiRYdTCI6UIDQGOp5gtDyAN
	Nlm8GnX06LgCkOSoAMu+RVav60Pp43pwN5QlFqjkyoGtQlZLxHT6rVITa0esEhqAaFQWNL9rrSdfC
	b+QqR81Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix sdmmc pwren pinctrl for rk3576-evb2
Date: Mon,  2 Mar 2026 12:39:56 +0100
Message-ID: <177245158240.769695.7263646798737263068.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226102052.63-1-kernel@airkyi.com>
References: <20260226102052.63-1-kernel@airkyi.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269952-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,rock-chips.com,collabora.com,airkyi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:mid,sntech.de:dkim,sntech.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 936E61D7A01
X-Rspamd-Action: no action


On Thu, 26 Feb 2026 18:20:52 +0800, Chaoyi Chen wrote:
> In rk3576.dtsi, sdmmc0_pwren is configured as part of the sdmmc pinctrl.
> However, on the rk3576 evb2 board, sdmmc0_pwren is used as the regulator
> for vmmc-supply. Therefore, we need to reassign the sdmmc pinctrl and
> remove sdmmc0_pwren to avoid conflicts.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix sdmmc pwren pinctrl for rk3576-evb2
      commit: 7d939032bd7e203e1c907a8c35e3672eeee08246

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

