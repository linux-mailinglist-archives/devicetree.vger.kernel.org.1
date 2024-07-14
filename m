Return-Path: <devicetree+bounces-85617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF6E930B9E
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 22:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B8FA1C212C6
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 20:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4100813C9B8;
	Sun, 14 Jul 2024 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9eqaL9p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D50E13AD33
	for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720989034; cv=none; b=ftYM8LddPfB862zDUJ7mESukURYZUk+UfzBadORXva7lcYsXbvdJ9PWpATnNHD1IGCDdOxnosfr9cjDlM7Au0Ewx9wAuP1i3gz9u3J2guHuEEelfGzHn6F06fQyRjzk483pAt9JD7nSiWcwwa5PXFQtfMsCHpGCnaFdErbfujEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720989034; c=relaxed/simple;
	bh=7Led/oHRXD3s7j73IFMTG9wReZsOlmEHlJdPHk/opJg=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=f2DQN6UqLQTzeAoJ8JV22cRd5It/vb4LcTkeFk+dQpk4nWPcbIT+GsihmgNTWAgkJRzefxqSD2GbgENbcTNDXwluSN2xgPPs+RkeQ9c4l0+S3aHKObtZZe8HPMExkOVZkEeuQuJwq0brrhuQwrDg/AzNnCamJk9nsGdyk+Y66zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9eqaL9p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCA4C4AF0D;
	Sun, 14 Jul 2024 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720989033;
	bh=7Led/oHRXD3s7j73IFMTG9wReZsOlmEHlJdPHk/opJg=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=W9eqaL9pvfM77uEhVwmfz8T6x6kZc1JGseTizsphX3p+MjLtBtEq/RUE9qR4INtym
	 a7w1KdCnav6UBnBlcYVp7k5xqVEGxujhn0PSOJGZJV4Iv8P6Wm3MqxfBPtrTKfdgyH
	 Ha1H9YPgKpguqGpzP2sE8gCplRiHFfZaPhQvtLvhOls0sCBpzBiS3edj7LeULEXdOV
	 px/V35jeZxqiKLOIlcTSBZ5CLyJG673gzdngpd9QTMiO2BIXJ7I2x2gVPyaudLqNgL
	 lc4/yo6NvUSMi2hOIoAUKtCFXdb26Tp0fQ1eL2n48jpFu7DYDJcVZC7ehJe6u4joT5
	 mONmPoCn53N3Q==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 999F4C43153;
	Sun, 14 Jul 2024 20:30:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v3 0/6] riscv: Apply Zawrs when available
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <172098903362.7439.8760600001594796975.git-patchwork-notify@kernel.org>
Date: Sun, 14 Jul 2024 20:30:33 +0000
References: <20240426100820.14762-8-ajones@ventanamicro.com>
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org,
 atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de,
 charlie@rivosinc.com, David.Laight@ACULAB.COM, parri.andrea@gmail.com,
 luxu.kernel@bytedance.com

Hello:

This series was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Fri, 26 Apr 2024 12:08:20 +0200 you wrote:
> Zawrs provides two instructions (wrs.nto and wrs.sto), where both are
> meant to allow the hart to enter a low-power state while waiting on a
> store to a memory location. The instructions also both wait an
> implementation-defined "short" duration (unless the implementation
> terminates the stall for another reason). The difference is that while
> wrs.sto will terminate when the duration elapses, wrs.nto, depending on
> configuration, will either just keep waiting or an ILL exception will be
> raised. Linux will use wrs.nto, so if platforms have an implementation
> which falls in the "just keep waiting" category (which is not expected),
> then it should _not_ advertise Zawrs in the hardware description.
> 
> [...]

Here is the summary with links:
  - [v3,1/6] riscv: Provide a definition for 'pause'
    https://git.kernel.org/riscv/c/6da111574baf
  - [v3,2/6] dt-bindings: riscv: Add Zawrs ISA extension description
    https://git.kernel.org/riscv/c/6d5852811600
  - [v3,3/6] riscv: Add Zawrs support for spinlocks
    https://git.kernel.org/riscv/c/b8ddb0df30f9
  - [v3,4/6] riscv: hwprobe: export Zawrs ISA extension
    https://git.kernel.org/riscv/c/244c18fbf64a
  - [v3,5/6] KVM: riscv: Support guest wrs.nto
    https://git.kernel.org/riscv/c/86d6a86e59e3
  - [v3,6/6] KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
    https://git.kernel.org/riscv/c/f2c43c61160e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



