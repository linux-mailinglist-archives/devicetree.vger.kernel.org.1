Return-Path: <devicetree+bounces-82047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E8A91E43D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 17:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 274211C21EE9
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C2A16C86D;
	Mon,  1 Jul 2024 15:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhzJ8MBX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E2528F4
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 15:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719848148; cv=none; b=o60g+9p7lA+7vsPd6lY0seJtUkhTcISetSqdm6ZT7UFYurFWGb24pfjQ5ciw1BY0G4jRGiKip0OZWWvvJJKPuAkGaoTqT+O/AnyUzgZVioh7XVu9mCSAQd4ZRk41vD5haPYWfAFojlBvStt/uRg+7RjSbjQ9NItXAp1gvHkPnTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719848148; c=relaxed/simple;
	bh=lisezb6JJCRk82ha3ip6EwROc03myP2TuX2YVNftM5Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=asDzxY5J7Vjda0H1QsslUl5wfTte8KVOv0dNAkvJ6hcBqsoYVwnZ0qrCGUOcqgGxzWF55GoWj3+qCag7wTbIGMX941W+8YReHPjaT/NbDarvstSPuQjLAuHPu+jgfa24Kj/1uB1HP8SiRMF68VC28bxzMR4/LlIkzn2CKoYFL60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhzJ8MBX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43645C116B1;
	Mon,  1 Jul 2024 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719848148;
	bh=lisezb6JJCRk82ha3ip6EwROc03myP2TuX2YVNftM5Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PhzJ8MBXSid9Ww2syujuWmqoLhJe0b9eML3fzkm3fW5ENmDRMMR0yJNiVMw5IQ1oN
	 Oh/Ts5QIfMsuNgOI7GdeULoktbn+P35DY2n8aT58UkErXreStxvTJeM/NMmYiYFWRE
	 ZewKz/HUut7whYnOqvEfusy60zfTTpaezFV91IxUB2VTxScOts5mWExnLfuxfXhSu5
	 ZHxKEpyVabGTCbCI6VBOomDR8fO9gDke9WGoLa7w7dcJMGnIEuk/XaDOgRNOkEBJKl
	 Cr2np7sEGysz5clsCrAiYkAp5zA1AyILTl3HLD/V1qq5pXCC5ARMG5vsDEQP8VmFgn
	 IW3eFLccIPhrw==
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jun Wu <Jun.Wu@arm.com>
Subject: Re: [PATCH 0/2] arm64: perf: add new CPU core names
Date: Mon,  1 Jul 2024 16:35:41 +0100
Message-Id: <171984240520.916538.18262459828732414082.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20240628145612.1291329-1-andre.przywara@arm.com>
References: <20240628145612.1291329-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 28 Jun 2024 15:56:10 +0100, Andre Przywara wrote:
> This adds the names for new Arm Ltd. CPU cores to the list of supported
> CPU PMUs.
> Patch 1 adds the names to the DT schema bindings documents, patch 2 adds
> the name and compatible string pair to the PMUv3 driver, mostly to provide
> the right PMU name to userland.
> 
> Cheers,
> Andre
> 
> [...]

Applied to will (for-next/perf), thanks!

[1/2] dt-bindings: arm: pmu: Add new Cortex and Neoverse cores
      https://git.kernel.org/will/c/695b1fd08510
[2/2] perf: pmuv3: Add new Cortex and Neoverse PMUs
      https://git.kernel.org/will/c/c99d00ef9e73

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

