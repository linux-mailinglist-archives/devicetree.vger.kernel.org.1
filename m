Return-Path: <devicetree+bounces-15206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 899397E8DC0
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 01:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42681280DDB
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 00:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB731842;
	Sun, 12 Nov 2023 00:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMQ/QzTs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C53417ED
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:55:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC71C433B8;
	Sun, 12 Nov 2023 00:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699750546;
	bh=ECwHfXafrdIwVU+4vTjRoTfaOIHL/jM2cbtKPhWIDRw=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=XMQ/QzTsm/2p5sHNY8XVoVRUi/j61I8rkkz7DG0sgmog4v688RP7n7E268SHwB4Hi
	 kM0oj63eLQex67boZza/xlq/NXQhQarerk1DiZ0A9cI+O4hKRcQL6zCxr+Be8MFqLq
	 LmG1qw7E31WmN336Chx4XSLZrIrWEAsnnhfwbG4G297droNnZZ+MWBK8twkUXq2W6X
	 g6fd+XEsK/RQshV/QOYDIvyOhyVZKmkHTIn1ZMho9R5YVmektddYquRBbZrjGIT60B
	 DG5Z/HG204onRvLGN6PKGOdgeJeaVKp2kuuocKEYjxdKFgotC+WUwkDBTvfVxKWGly
	 QxG7lgKBhxmYA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5D992E0008C;
	Sun, 12 Nov 2023 00:55:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <169975054638.11360.7816717973824399061.git-patchwork-notify@kernel.org>
Date: Sun, 12 Nov 2023 00:55:46 +0000
References: <20230912072232.2455-1-jszhang@kernel.org>
In-Reply-To: <20230912072232.2455-1-jszhang@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: linux-riscv@lists.infradead.org, guoren@kernel.org, wefu@redhat.com,
 conor@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dfustini@baylibre.com

Hello:

This patch was applied to riscv/linux.git (fixes)
by Arnd Bergmann <arnd@arndb.de>:

On Tue, 12 Sep 2023 15:22:32 +0800 you wrote:
> riscv select ARCH_DMA_DEFAULT_COHERENT by default, and th1520 isn't
> dma coherent, so set dma-noncoherent to reflect this fact.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> Tested-by: Drew Fustini <dfustini@baylibre.com>
> ---
> 
> [...]

Here is the summary with links:
  - [v2] riscv: dts: thead: set dma-noncoherent to soc bus
    https://git.kernel.org/riscv/c/759426c758c7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



