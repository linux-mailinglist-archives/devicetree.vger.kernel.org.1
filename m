Return-Path: <devicetree+bounces-31417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6E282B1EF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 16:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6B1F1F23822
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D794CB5E;
	Thu, 11 Jan 2024 15:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7I8+XcK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1F915ADE
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 15:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46CC4C433F1;
	Thu, 11 Jan 2024 15:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704987627;
	bh=zUUw91RjsXsTZYU7IzR/N1+v3essx1rs3BbSwsHr3oU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=j7I8+XcKYl48Q3tHezghtFOktVKpj6TFmWK7ccynETAiyfnOqsGnP/Q9Iu0BXadsd
	 iL/5U18CnjNqeOTFLMRcO7dyDu8wDpOhmcvxgYzfB7GgyW+urtq4aOjcup4eUXgMVe
	 4nQ55V5dJZApSrQVYGxecLnsmkBEpG+UJLBmiP+/TJ0Ah+yuKtoTLPowkW7Ivaj16c
	 0FdgLy2bMlt/p3KkpeIDTcWtOL4dDlgPkH4JDZPp/6n/kRDkIg9m28pqLnvAqC9k3S
	 swIKfT6e/KikHBROddxFbJagZW5VNq98IJfqTiTBVWAMVV/D0G+VPjt/KbuLL27zZs
	 c+jxI8XVr7bPA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2E270DFC698;
	Thu, 11 Jan 2024 15:40:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <170498762718.16494.12898852163164457210.git-patchwork-notify@kernel.org>
Date: Thu, 11 Jan 2024 15:40:27 +0000
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
In-Reply-To: <20231029123500.739409-1-dbarboza@ventanamicro.com>
To: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, apatel@ventanamicro.com,
 palmer@dabbelt.com, devicetree@vger.kernel.org, ajones@ventanamicro.com,
 robh@kernel.org, conor.dooley@microchip.com

Hello:

This patch was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Sun, 29 Oct 2023 09:35:00 -0300 you wrote:
> Following the examples of cbom-block-size and cboz-block-size,
> cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
> The most common case is to have all cache block sizes to be the same
> size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
> cache operations), but there's no specification requirement for that,
> and an implementation can have different cache sizes for each operation.
> 
> [...]

Here is the summary with links:
  - dt-bindings: riscv: Document cbop-block-size
    https://git.kernel.org/riscv/c/d3e591a38c98

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



