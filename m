Return-Path: <devicetree+bounces-13666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 544AB7DFB65
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 21:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E3F628123F
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 20:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA8021A07;
	Thu,  2 Nov 2023 20:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLq/02a7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFE1219FB
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 20:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2432C433CA;
	Thu,  2 Nov 2023 20:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698956430;
	bh=6/aiuKDvOrf/kc54SvicUmukJxjwhrkThS2b09C6F3I=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=CLq/02a7+B7VxIfJ0B2pXUva2EYqrkG5RXD69vQTaXSd24nQtECzDn2cihGGuNHB0
	 /lEh7Fno6P/5dGUtR9RZYAiPp4ZUIYvT1nSQoO9+6Lw4BlWgAiMjRr2MtB8RuBfp1g
	 +9yjm/1REIVZBOELkN9M+4x4fEWaq4u0Kehd19TGg5AhV/u/ZwKtKfgavsSAmCb7Mh
	 V3/+OIfmapsFXgyNlZiQqSkxCjkDKSegIJCePzQt3LMIWVRVJLkJivjciltOjngmuw
	 TBaxrYWvtni3ksecZ609BpMovh7VDVM0+NSawza9naTzVlsSLBVHTk4e9N39lhvzZz
	 yPZbtcyzvFZcA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7DBDEE00084;
	Thu,  2 Nov 2023 20:20:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH 0/5] Enable peripherals on RZ/Five SMARC EVK
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <169895643051.22248.10364642768194481579.git-patchwork-notify@kernel.org>
Date: Thu, 02 Nov 2023 20:20:30 +0000
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Lad@codeaurora.org, Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-riscv@lists.infradead.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, conor+dt@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 biju.das.jz@bp.renesas.com, prabhakar.mahadev-lad.rj@bp.renesas.com

Hello:

This series was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Fri, 29 Sep 2023 01:06:59 +0100 you wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Hi All,
> 
> This patch series does the following:
> * Adds L2 cache node and marks the SoC as noncoherent
> * Enables IP blocks which were explicitly disabled and for
>   which support is present
> * Enables the configs required for RZ/Five SoC
> 
> [...]

Here is the summary with links:
  - [1/5] riscv: dts: renesas: r9a07g043f: Add L2 cache node
    (no matching commit)
  - [2/5] riscv: dts: renesas: r9a07g043f: Add dma-noncoherent property
    (no matching commit)
  - [3/5] riscv: dts: renesas: rzfive-smarc: Enable the blocks which were explicitly disabled
    (no matching commit)
  - [4/5] riscv: dts: renesas: rzfive-smarc: Drop dma properties from SSI1 node
    (no matching commit)
  - [5/5] riscv: configs: defconfig: Enable configs required for RZ/Five SoC
    https://git.kernel.org/riscv/c/db38228c03d6

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



