Return-Path: <devicetree+bounces-142710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8700A26364
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 20:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E30D1885BB1
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 19:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B5A20AF96;
	Mon,  3 Feb 2025 19:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErK7o7xO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9050D1DB377;
	Mon,  3 Feb 2025 19:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738610109; cv=none; b=XwFL1xL2wqnAVdQL66eRWsKOcIHj5LqJXieGIp9Qy3STR+F6WXgtAZCq5135QmY8l2UW1OEY1M73P/X7JdbDLa6irZ5m9b+/TtHjfFQEdKHmCgC2cXWK6rJfHwVTw3VX00FM/HSs4H+vhMEgHOwfBrYrmw0WfT8UhNc6grxCGXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738610109; c=relaxed/simple;
	bh=CbxsuWIv8VDWrnmls2vfuqVQB78ke4z+CYI65G16m2s=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=uRbw3Jx82difO7LGoFgvUlwDnOvbUSSRc2b6VUlvqDzn3zRu1W40IZqizIitfrsZkbGAA09+BCqKrElk9gaOTxtSZD/vlblqxtY7ONbkgmxkHpYbMDihh7Jp0N8Ohs0E8ZQq9kwWSIPYZM+vZc4QkR2rBOmoqgTU7Eubra/A0Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErK7o7xO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFDDEC4CED2;
	Mon,  3 Feb 2025 19:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738610108;
	bh=CbxsuWIv8VDWrnmls2vfuqVQB78ke4z+CYI65G16m2s=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=ErK7o7xObNb9MWkMXICLbCujWlewHxytKj49aMyDvOiDTHB+hH/lMulpTdFf/OWid
	 XeJuHRoSzzcNVTeLkaJyZJH3oKLDsc9OXUmc+Yvnuvi6fd68awZo5JwGh1hxoXoXmD
	 ZqfR3f7odxlyI02lIRG8HsqFm78f8VWRnusRPhm0KX/GRQ0daYRKHWCSanq0uj3DQy
	 k+T/SyQ0+r6UxdZJsDwo1asgeM8VZMB1z5ECsBwJCNEPhdUpnBjteMDEk4i7bnfxbl
	 AvdwvdD0flje15IGuCF4aRBBVQukQO7HiH6Gw/kQVQaoDypBEWXUF8Azq6AHdL1aBe
	 CTyzC/UHBRWuw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33ECA380AA67;
	Mon,  3 Feb 2025 19:15:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v5 00/10] riscv: add initial support for SpacemiT K1
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <173861013603.3409359.4773072632762735715.git-patchwork-notify@kernel.org>
Date: Mon, 03 Feb 2025 19:15:36 +0000
References: <20240730-k1-01-basic-dt-v5-0-98263aae83be@gentoo.org>
In-Reply-To: <20240730-k1-01-basic-dt-v5-0-98263aae83be@gentoo.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: linux-riscv@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, cyy@cyyself.name, daniel.lezcano@linaro.org,
 tglx@linutronix.de, samuel.holland@sifive.com, anup@brainfault.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, lkundrak@v3.sk,
 devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org, jesse@rivosinc.com, conor.dooley@microchip.com,
 inochiama@outlook.com, zhangmeng.kevin@spacemit.com, jszhang@kernel.org,
 matthias.bgg@kernel.org, kevin.z.m@hotmail.com

Hello:

This series was applied to riscv/linux.git (fixes)
by Yixun Lan <dlan@gentoo.org>:

On Tue, 30 Jul 2024 00:28:03 +0000 you wrote:
> SpacemiT K1 is an ideal chip for some new extension such as RISC-V Vector
> 1.0 and Zicond evaluation now. Add initial support for it to allow more
> people to participate in building drivers to mainline for it.
> 
> This kernel has been tested upon Banana Pi BPI-F3 board on vendor U-Boot
> bootflow generated by Armbian SDK[1] and patched OpenSBI[2] to enable
> Zicboz, which does not in the vendor dts on its U-Boot. Then successfully
> booted to busybox on initrd with this log[3].
> 
> [...]

Here is the summary with links:
  - [v5,01/10] dt-bindings: vendor-prefixes: add spacemit
    (no matching commit)
  - [v5,02/10] dt-bindings: riscv: Add SpacemiT X60 compatibles
    https://git.kernel.org/riscv/c/16c9147e6a6c
  - [v5,03/10] dt-bindings: riscv: add SpacemiT K1 bindings
    https://git.kernel.org/riscv/c/244fe889b950
  - [v5,04/10] dt-bindings: timer: Add SpacemiT K1 CLINT
    https://git.kernel.org/riscv/c/e5164af2a2fe
  - [v5,05/10] dt-bindings: interrupt-controller: Add SpacemiT K1 PLIC
    https://git.kernel.org/riscv/c/562272a287d5
  - [v5,06/10] dt-bindings: serial: 8250: Add SpacemiT K1 uart compatible
    https://git.kernel.org/riscv/c/dfe6d083edff
  - [v5,07/10] riscv: add SpacemiT SoC family Kconfig support
    https://git.kernel.org/riscv/c/8814aa123adb
  - [v5,08/10] riscv: dts: add initial SpacemiT K1 SoC device tree
    https://git.kernel.org/riscv/c/d8fe64691955
  - [v5,09/10] riscv: dts: spacemit: add Banana Pi BPI-F3 board device tree
    https://git.kernel.org/riscv/c/d60d57ab6b2a
  - [v5,10/10] riscv: defconfig: enable SpacemiT SoC
    https://git.kernel.org/riscv/c/21bef40ad121

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



