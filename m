Return-Path: <devicetree+bounces-31396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBC582B0F3
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 771F61C23CFC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 826A74CDFD;
	Thu, 11 Jan 2024 14:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyfmibMm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E084BA8C;
	Thu, 11 Jan 2024 14:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2CEC4166B;
	Thu, 11 Jan 2024 14:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704984638;
	bh=QWatFqK+FZtSrigvY3VYuU2+QMxyML/XXXBrhQ7Moh8=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=IyfmibMmfWFE9VNHB3wbJEXlRYEUBGsWAjvujFbU0flIiCwiSO4o85MURxgEF7iUC
	 8umdxZWRYV/Tn5pdwiaPK6hlrvseibDY6nHq93ewD9LoLMQcIXah6zThpSZmJITNVa
	 CV6GZlrUKjvLtu+9+4dJSYCChQMiApeSj1yVFYpCLj3KUSEgECJUjfLf/LgIuGPpo7
	 NPQ0ss/LL3+9EqP2vzf4tXKiHs/Qvz8RyxivJy98NauVnrvx+Jm4W28o0Z9Pwqnm7O
	 aFE0OdtKOlUOmo97KGDLsOb6ODc2g63/XhwK4T2U2dNxKUlHT3WpMVWu1vNsiGOdD5
	 zqag26HoHLv7w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D84CDD8C96D;
	Thu, 11 Jan 2024 14:50:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v1] dt-bindings: riscv: permit numbers in "riscv,isa"
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <170498463788.20080.14469126182221973580.git-patchwork-notify@kernel.org>
Date: Thu, 11 Jan 2024 14:50:37 +0000
References: <20231208-uncolored-oxidant-5ab37dd3ab84@spud>
In-Reply-To: <20231208-uncolored-oxidant-5ab37dd3ab84@spud>
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 conor.dooley@microchip.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, paul.walmsley@sifive.com,
 aou@eecs.berkeley.edu, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org

Hello:

This patch was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Fri,  8 Dec 2023 16:06:51 +0000 you wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> There are some extensions that contain numbers, such as Zve32f, which
> are enabled by the "max" cpu type in QEMU.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> 
> [...]

Here is the summary with links:
  - [v1] dt-bindings: riscv: permit numbers in "riscv,isa"
    https://git.kernel.org/riscv/c/baa04909d100

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



