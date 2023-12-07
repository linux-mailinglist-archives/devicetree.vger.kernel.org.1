Return-Path: <devicetree+bounces-22781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C63808BA0
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAB681C20B18
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB2344C7E;
	Thu,  7 Dec 2023 15:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIDEJZVO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FFB44C7C
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0153C433C8;
	Thu,  7 Dec 2023 15:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701962425;
	bh=l+nqUZpx5MSEtlnNymJ2grukWqOvETfYjh5w8j/NmbQ=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=WIDEJZVOm6GaF2aIYSP7VoMwcBFEErYcScKO105R7M8obxajx0ZHDhHaJdl/6i6m9
	 mzZO8m3P/6k0QZZF8Pg28LGV/pEOletUrOemgk7JJo2aXVaQoh/jsUvgZJFQ2o/oxz
	 nw0IupvaJMBHuA3zxDqnW8uyr7wCr7ar7PvKeFSty7nhgoi6Q40pq73SsfggtMc1hn
	 t+kyfO18UOkWW1x5MR9Nr8lV8U+06DG8x9tYgYu8dUW9wtYKM78KCs34FGNtJH4h6p
	 4czk1G7S33QY+6KD5OhdVVM53/O7WxGXbvb630e+y/B43EKs8w84OylhMFQy4BKREw
	 GxXBA+epn4Paw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A583AC43170;
	Thu,  7 Dec 2023 15:20:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH] dt-bindings: perf: riscv,pmu: drop unneeded quotes
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <170196242567.12999.16480109529336505793.git-patchwork-notify@kernel.org>
Date: Thu, 07 Dec 2023 15:20:25 +0000
References: <20231122224414.2809184-1-robh@kernel.org>
In-Reply-To: <20231122224414.2809184-1-robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-riscv@lists.infradead.org, will@kernel.org, mark.rutland@arm.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org

Hello:

This patch was applied to riscv/linux.git (fixes)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Wed, 22 Nov 2023 15:44:14 -0700 you wrote:
> Drop unneeded quotes over simple string values to fix a soon to be
> enabled yamllint warning:
> 
>   [error] string value is redundantly quoted with any quotes (quoted-strings)
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> 
> [...]

Here is the summary with links:
  - dt-bindings: perf: riscv,pmu: drop unneeded quotes
    https://git.kernel.org/riscv/c/96ba4a47d147

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



