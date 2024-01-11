Return-Path: <devicetree+bounces-31397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 824D682B0F4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:51:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E22FE2856EB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFAC4CE0A;
	Thu, 11 Jan 2024 14:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnyAb9IZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705594CB5D;
	Thu, 11 Jan 2024 14:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02A90C41674;
	Thu, 11 Jan 2024 14:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704984638;
	bh=mHkFOeHTyojA11QtG6B355HuG+5pcJdp5fAe56XIogE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=FnyAb9IZQY3WpAp8wuQ/asvFicejEPMDKlcADCmkdSP4cT5s21xswPgPcOcXFPuhZ
	 C2NaK+C0xlRdzlRfD17ghA++TjxLoQPi1Opq/jpZHharguWhpbPXCZ73dvdJI6F2G5
	 kdn6tgBPTyPvCfO9po5l/9ZveQfRoo7n9HNdtfftavfYlM+tZhFxeWj5/InJbRIlVF
	 jjUvoNkHqN0IVk4lSCHakjTTMRYX+tiJhXy6WkfHQUqltdhJB5ZMFQwwqEkC7fhoIr
	 k5VoL/fi3Dmrm7Soj+OgfkRsAMrV8lFGvVl9X8wnqJErs0rvRUqIdzerERwbMrA3y/
	 XRsnTAJPxTUGw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E38DDD8C974;
	Thu, 11 Jan 2024 14:50:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH] dt-bindings: riscv: cpus: Clarify mmu-type interpretation
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <170498463792.20080.16092078813919262282.git-patchwork-notify@kernel.org>
Date: Thu, 11 Jan 2024 14:50:37 +0000
References: <20231227175739.1453782-1-samuel.holland@sifive.com>
In-Reply-To: <20231227175739.1453782-1-samuel.holland@sifive.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, conor@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org

Hello:

This patch was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Wed, 27 Dec 2023 09:57:38 -0800 you wrote:
> The current description implies that only a single address translation
> mode is available to the operating system. However, some implementations
> support multiple address translation modes, and the operating system is
> free to choose between them.
> 
> Per the RISC-V privileged specification, Sv48 implementations must also
> implement Sv39, and likewise Sv57 implies support for Sv48. This means
> it is possible to describe all supported address translation modes using
> a single value, by naming the largest supported mode. This appears to
> have been the intended usage of the property, so note it explicitly.
> 
> [...]

Here is the summary with links:
  - dt-bindings: riscv: cpus: Clarify mmu-type interpretation
    https://git.kernel.org/riscv/c/b4070c2a242e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



