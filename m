Return-Path: <devicetree+bounces-291751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B2LBCXO8mnOuQEAu9opvQ
	(envelope-from <devicetree+bounces-291751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 05:36:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8657949CFC7
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 05:36:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9617A302978F
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 03:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716B9382381;
	Thu, 30 Apr 2026 03:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOBHLUvj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E976382371;
	Thu, 30 Apr 2026 03:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777519580; cv=none; b=rGdPONEYYQNKgijLesHJBRyFsFkyJ1xZuhRTiRIqcLM9E+tL+OJ90wvcCg2oMgFfvUvMY/xd0RKdSJinad79dKquAeHZOjUjCKFxHBXA/KeL6nPvlMTNI2Qgw6jtujS6OmNXt+blEs/FLIvMB5YOlvh9HUe9uOaF1tWFsAR5HcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777519580; c=relaxed/simple;
	bh=fymdwygTMdsitrih17N18ZeBUCi7Zz4qY74EMXzQlv4=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=VYOGuGiI5eyC6IS8a2u5eHl6ET4NWFNqJJTp0I+F/1DCO72n/c2ugaOpNQF/poCWBQVIm27CNaHUVUp4wBEgLPataTCIo4IgX0hW8o/d8MjNASUE+Cdmnmwmw6AIQ+yPNhUKji1nwDozdszRNxAI8PFNsvglv/Hk/ueBV8EIfmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOBHLUvj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB7EEC2BCC4;
	Thu, 30 Apr 2026 03:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777519579;
	bh=fymdwygTMdsitrih17N18ZeBUCi7Zz4qY74EMXzQlv4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=NOBHLUvjXYpURKCkD/52HuRaCdJzvvWyR5BCjodwjgyqi2GKoL9IM9/hG75i3bsZZ
	 IeE0c6E9RXlOedlxD+dwpXGawEspBt0a5bCqs/xzFHAV757Z7cinfmVaMYfHK9i/tL
	 MQAy1wXY57nWVdrF3nIVL+WoeyPlLJJPIT3lbEsxa4H8fLkiyZsUr3SQvn/Z2oMSbe
	 qPshx2b20Daw/9g0rY7nlczfNrJvA1SZ7LCc2CkENy2tHflmw+wKP13JbaV/qtkKg2
	 AB8UPOE9JhC/VzZxqHIPIMFvQU+ulP0SB/7q6NTGFEfPh8aWURDhMqSJqsTUOO1fGs
	 aTcMed5IU7S8w==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FD793809A07;
	Thu, 30 Apr 2026 03:25:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v2 0/3] riscv: cpufeature: Add Supm extension id and
 validation
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <177751953479.2274119.7433375067666827705.git-patchwork-notify@kernel.org>
Date: Thu, 30 Apr 2026 03:25:34 +0000
References: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
In-Reply-To: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
To: Guodong Xu <guodong@riscstar.com>
Cc: linux-riscv@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, samuel.holland@sifive.com,
 heinrich.schuchardt@canonical.com, pjw@kernel.org, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, evan@rivosinc.com,
 ajones@ventanamicro.com, conor.dooley@microchip.com,
 paul.walmsley@sifive.com, conor@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Rspamd-Queue-Id: 8657949CFC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291751-lists,devicetree=lfdr.de,linux-riscv];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

Hello:

This series was applied to riscv/linux.git (fixes)
by Conor Dooley <conor.dooley@microchip.com>:

On Sun, 25 Jan 2026 09:36:05 +0800 you wrote:
> Supm as an extension indicates pointer-masking support for user mode
> (U-mode). It relies on Ssnpm or Smnpm for the underlying hardware
> implementation.
> 
> Major change in v2 is added dependency check for Supm in bindings.
> 
> As a ratified feature, define a dedicated RISCV_ISA_EXT_ id for Supm.
> However, since Supm is targeting U-mode, it should not be added into
> devicetrees that describe hardware running privileged system softwares.
> 
> [...]

Here is the summary with links:
  - [v2,1/3] dt-bindings: riscv: Add Supm extension description
    https://git.kernel.org/riscv/c/feb5dba31a36
  - [v2,2/3] riscv: cpufeature: Add ISA extension parsing for Supm
    (no matching commit)
  - [v2,3/3] riscv: cpufeature: Clarify ISA spec version for canonical order
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



