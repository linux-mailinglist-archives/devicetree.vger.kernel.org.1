Return-Path: <devicetree+bounces-266792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECFGM4ffl2ne9gIAu9opvQ
	(envelope-from <devicetree+bounces-266792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 05:13:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB4916497F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 05:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A049307386C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 04:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6FA314A74;
	Fri, 20 Feb 2026 04:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibVtTQMq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA373148BF;
	Fri, 20 Feb 2026 04:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771560642; cv=none; b=EBoa9Kt+jsQyLhLNZ5Jpv10wq3dkFVFvTsEcmd0kKz97RFHLtoJXgxhpEOWODKp3s1av3EHT4w0VcXDNTHQPqbvKDAObUzUoGK6mV181vLJzQ/OAU0bn/koI318VU/lF+TgD8HqTMzxc/JESAS2fBAKRiTDZAK7FzqB0NxvUUUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771560642; c=relaxed/simple;
	bh=vY3RNXjFg5jE/lRwJrLxbPR1SDUOknv1RwuQChIByMA=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=uPCj0wfgqycMDzRo8YzzKk4AknOlx3AZIHPaHgr0pTqo5Lna6S5Fw8hMowYdNOapjXGc+IMVYVt6KzY5lU1ExnQ0/F7+eWQWxejXRsRaI2vhhAJokvAurBvyVJ38yJWtgMwJOcCjx5Qa8tAIqkKcyVvQ06XzGmNzk6dO3S18iD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibVtTQMq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B32FC116D0;
	Fri, 20 Feb 2026 04:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771560642;
	bh=vY3RNXjFg5jE/lRwJrLxbPR1SDUOknv1RwuQChIByMA=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=ibVtTQMqgNkDai+LkCqmzmqiemxWToTM02koymKY8eaha8BdQ93O8uV4DTA0YIXHn
	 Yu9q274SIY/8RzECnMV2tA9xaFQhKKNyCEo/keISiyWCbn7hcPJ4piIrhOLW3WlcmE
	 aypdlfN0YeV+WaNKmSNlriwjWq4uu9xgrVVwcJhL/4CicmsKWqV1fxiA2JqgQT7o4f
	 Xa+wncnZlXxR9gELWoslXYZ9JtTTmtmm2yeKBtnZ7a+iiiK64ww3mxdeg1AKLg6MGV
	 Y+tXzOGZzlwCl4ENNcnoLsKQQoBv/HCQQvtGycBBhRCAoX+SVud5btd3he6EEBBGz5
	 vs9wUNmodP6/Q==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FF503809A88;
	Fri, 20 Feb 2026 04:10:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v3 0/2] irqchip/sifive-plic: Fix wrong nr_irqs handling
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <177156065079.189817.10993105171560022947.git-patchwork-notify@kernel.org>
Date: Fri, 20 Feb 2026 04:10:50 +0000
References: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
In-Reply-To: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
To: Yangyu Chen <cyy@cyyself.name>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 anup.patel@oss.qualcomm.com, samuel.holland@sifive.com, cmirabil@redhat.com,
 lzampier@redhat.com, tglx@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
 mason.huo@starfivetech.com, zhangxincheng@ultrarisc.com,
 charlie@rivosinc.com, maz@kernel.org, jeeheng.sia@starfivetech.com,
 leyfoon.tan@starfivetech.com, krzk+dt@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, alex@ghiti.fr, devicetree@vger.kernel.org,
 yash.shah@sifive.com, wangjia@ultrarisc.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266792-lists,devicetree=lfdr.de,linux-riscv];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7AB4916497F
X-Rspamd-Action: no action

Hello:

This series was applied to riscv/linux.git (fixes)
by Thomas Gleixner <tglx@kernel.org>:

On Wed,  4 Feb 2026 01:17:07 +0800 you wrote:
> This patch series fixes long standing bugs in sifive-plic driver regarding
> the handling of nr_irqs. Some code assumes the first irq source is 0 while
> some assumes it is 1. Since the first irq source is actually 1, this causes
> various issues including memory corruption when the number of irqs is
> multiple of 32. Also, some code assumes nr_irqs is the maximum irq source
> ID while some assumes it is the total number of irq sources including the
> reserved source 0. This patch series standardizes the handling of nr_irqs
> to be the maximum irq source ID, and the first irq source is 1.
> 
> [...]

Here is the summary with links:
  - [v3,1/2] irqchip/sifive-plic: Fix wrong nr_irqs handling
    (no matching commit)
  - [v3,2/2] dt-binding: riscv: Clarify the riscv,ndev meaning in PLIC
    https://git.kernel.org/riscv/c/889588d75050

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



