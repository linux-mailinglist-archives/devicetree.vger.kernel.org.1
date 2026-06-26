Return-Path: <devicetree+bounces-315994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q+5+K/E2PmpCBgkAu9opvQ
	(envelope-from <devicetree+bounces-315994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:23:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BEF6CB4CA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:23:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="aA/AaODJ";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315994-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315994-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C0D430C3194
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ECC13E5A25;
	Fri, 26 Jun 2026 08:21:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E5A3E3D89;
	Fri, 26 Jun 2026 08:21:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782462087; cv=none; b=QmMk8zranDV9QIvzJxtdYyMLWWFKXrvxT5oThh+vQUjHNO4RBMtVD4aB70krTN0f3dfwnRYvEOFbdhKD4xxje8FUy/7WhLkz2z/FPqKq7+fP+yQEmMHpvW52SFn/7OwiiXgaswHqjMgYSeO86L91G7j5MMy8z1tbOhMWI4L8Wzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782462087; c=relaxed/simple;
	bh=hRPd+g9ODFZEheZ9pUuMMOA161rtDcsucEGKN32Gs9w=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=sgRXPJAtTN2JSKyA3cz5j9cb26bd+1BAEzJkSSKyVbtAYqyJsPinLBAThoaH52QlUe5BHCwdnlAx+1tgMOa0hYjarGMQkrhYYllxYSC+hmwCSeAAfR4Bfnt1XFY4448lFfDXflr87HNQjqBT/soRL63npZYFcPUO13UYQyvpgz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA/AaODJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B0AC1F00A3D;
	Fri, 26 Jun 2026 08:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782462080;
	bh=Xf3kAwe5ywIQY//rN3h6sBdlm1lF9rusVsWktLYdFkk=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=aA/AaODJC9hNx87l7DWmFqF1ycvUQDGXM6GzZfkNDnaN83wpqMr7NjTKa3W749koe
	 hwI7hQleW1NVEl2PH70tTqE+TBtvDm8AwRL2dm6Hcj+k9PQxhyaItrC9HsLeyyIqR0
	 zndpM5dfZUZ+rxd7ac/2X/rhEe3gGN3uSkL1j5ZvFuZKkz4qiMsVS0UdRBcW255bmd
	 B7KThCYiQMxkacYR+Lx1CIiiqfC6QKOcMNcIWeEeOhqYwGxKSKPiOIfXmLesV17yR2
	 Odx/7NmU+bJ7ZzRHg/3Xun0PK3w6/xBip2pDM77MGz/xkgB+IWxpgu7gJukMW3wPcN
	 lLNjFjZn/RKUw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5695239389E8;
	Fri, 26 Jun 2026 08:21:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v9 0/4] Introduce ASPEED AST27xx BMC SoC
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <178246206701.3816447.15009741745882675380.git-patchwork-notify@kernel.org>
Date: Fri, 26 Jun 2026 08:21:07 +0000
References: <20260609-upstream_ast2700-v9-0-f631752f0cb1@aspeedtech.com>
In-Reply-To: <20260609-upstream_ast2700-v9-0-f631752f0cb1@aspeedtech.com>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: linux-riscv@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, krzk@kernel.org,
 alexandre.belloni@bootlin.com, linusw@kernel.org, fustini@kernel.org,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 soc@lists.linux.dev, conor.dooley@microchip.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315994-lists,devicetree=lfdr.de,linux-riscv];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_RECIPIENTS(0.00)[m:ryan_chen@aspeedtech.com,m:linux-riscv@lists.infradead.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:catalin.marinas@arm.com,m:will@kernel.org,m:arnd@arndb.de,m:krzk@kernel.org,m:alexandre.belloni@bootlin.com,m:linusw@kernel.org,m:fustini@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:soc@lists.linux.dev,m:conor.dooley@microchip.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,aspeedtech.com:url,arndb.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29BEF6CB4CA

Hello:

This series was applied to riscv/linux.git (fixes)
by Arnd Bergmann <arnd@arndb.de>:

On Tue, 9 Jun 2026 10:47:17 +0800 you wrote:
> This introduces initial support for the Aspeed AST27xx SoC and the AST2700
> Evaluation Board (EVB) to the Linux kernel. The AST27xx is the 8th
> generation Baseboard Management Controller (BMC) SoC from Aspeed,
> featuring improved performance, enhanced security, and expanded I/O
> capabilities compared to previous generations.
> 
> AST27xx SOC Family
>  - https://www.aspeedtech.com/server_ast2700/
>  - https://www.aspeedtech.com/server_ast2720/
>  - https://www.aspeedtech.com/server_ast2750/
> 
> [...]

Here is the summary with links:
  - [v9,1/4] dt-bindings: arm: aspeed: Add AST2700 board compatible
    https://git.kernel.org/riscv/c/34efd73379ff
  - [v9,2/4] arm64: Kconfig: Add ASPEED SoC family Kconfig support
    https://git.kernel.org/riscv/c/df6f379eb4ac
  - [v9,3/4] arm64: dts: aspeed: Add initial AST27xx SoC device tree
    https://git.kernel.org/riscv/c/e77bb5dc5759
  - [v9,4/4] arm64: configs: Update defconfig for AST2700 platform support
    https://git.kernel.org/riscv/c/512cef2af615

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



