Return-Path: <devicetree+bounces-315995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4/iGOQ44PmqcBgkAu9opvQ
	(envelope-from <devicetree+bounces-315995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:27:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 547D66CB55F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:27:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BJM5zP4G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315995-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315995-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E2523121003
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B788B3E00A3;
	Fri, 26 Jun 2026 08:21:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A451A3EB801;
	Fri, 26 Jun 2026 08:21:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782462099; cv=none; b=qMje8WhZJyiJJ3GYsgWEca2HjbyVjQVWzTWBkV4NhEBq7mFgC6ukBUMzW9cM5uE7+M5d5UhJOazutI6eG+F59lWDVuz4iMuNnD5YG1PA5EilTMakr50/cwZllknALDx+CcPeCSsEjAwksluKBhmW14EiftJ0EEZ8E5atD9UQhyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782462099; c=relaxed/simple;
	bh=KKfZwsNULbXMXuKQ4L/hsV/GzFEQX4IGUo/kQ+gXwew=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=Fkt/U7PqFeL6IEiY1SZucqob/TrCjA0ePzfR3XW9SgFHAOABPD16RI+fLOWWZ9Lt51brEVBkmr7iUFI1vJmV8T5osSbLDnt+GjlGA3Z541Kj1ifF4HOs0ANj5sIKp9uvH46owwEBUyhoc5GGGKI9YEoNbqzNg2B8hCYicsLtGts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJM5zP4G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57AA61F000E9;
	Fri, 26 Jun 2026 08:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782462098;
	bh=OcfJataYZCIIYP70MrY9Og+F3eHYjF96zIois1cHY+M=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=BJM5zP4GDATae9/zW4iR8aZvtylByM4rIKA7jgZg+y/9sRqYyzGZs08y0oIdoYlPN
	 PShzN3N+HxTOX6+SIIJmw115s8z3nZC66sBI//P9lakJTw4xt0FNP6KYT7PxX/VOLQ
	 0txPPdqzvOoxWmdhSnSlZ5tvaDAcOhUpRfKYXjTe49tJ/WDGrUH4H/X+NloN6tyteA
	 m0D7MD4OfvNqYnFvbwbuy8OSYy5rzdoxjOpLOnnnzDlW6C9vUVGyo7jT91qMLqjqNR
	 dx907T+7em6jm0UJQWZDoYTnU4hloDE3pYPx7DtxCXGjDtqvQHIrF9k4O5c+Fd3bfG
	 AygpfoSrMrQCQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9396539389E8;
	Fri, 26 Jun 2026 08:21:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v1] dt-bindings: soc: microchip: document irqmux on
 pic64gx
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <178246208525.3816447.14558154449045550945.git-patchwork-notify@kernel.org>
Date: Fri, 26 Jun 2026 08:21:25 +0000
References: <20260407-headache-reward-ae93bacdba0e@spud>
In-Reply-To: <20260407-headache-reward-ae93bacdba0e@spud>
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, conor.dooley@microchip.com,
 daire.mcnamara@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315995-lists,devicetree=lfdr.de,linux-riscv];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:linux-riscv@lists.infradead.org,m:conor.dooley@microchip.com,m:daire.mcnamara@microchip.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 547D66CB55F

Hello:

This patch was applied to riscv/linux.git (fixes)
by Conor Dooley <conor.dooley@microchip.com>:

On Tue,  7 Apr 2026 16:29:31 +0100 you wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Being practically identical to PolarFire SoC, pic64gx has a irqmux
> that's entirely compatible with that on mpfs.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> 
> [...]

Here is the summary with links:
  - [v1] dt-bindings: soc: microchip: document irqmux on pic64gx
    https://git.kernel.org/riscv/c/17d9064987ca

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



