Return-Path: <devicetree+bounces-40247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D53384FBDE
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 19:32:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8B411F2A758
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 18:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CABB557318;
	Fri,  9 Feb 2024 18:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPOs8I59"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A791184A5D
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 18:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707503491; cv=none; b=ueifRvbea4I8ngrlVAYRI/po5sKbZnbk7Eb573wRko6R0VvJn4fEGrUte/ZM4dFoH03uCbLgAbecbE/zVsfb2kwrkMoFTksingaxPSskaO9CqEfiwIJQfGSsVMuFvDMihtlROUAbGrqZuOJyNyO2o00y/JfybziIPKMEAdfdEDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707503491; c=relaxed/simple;
	bh=hMXSNUXv3X4z3TJ0yag7hhZOHMDXuQNmusaCMWZDdNw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DnpczaIrJh7/5N8JyaMezRtZxojx+9crNuMaZuu0cu5J8yAkUpbKsh3/tDs+P9B5e2eS6UqhFJi3ffsvFbnrmCy01nxl01+zPO6/+K3jQnoa6V76zSiwC16pMQfwE9FFXx/AfaMJY+tm/pL4+4pWsruRu9J/QilWl0lydYbheio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPOs8I59; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAD52C433F1;
	Fri,  9 Feb 2024 18:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707503491;
	bh=hMXSNUXv3X4z3TJ0yag7hhZOHMDXuQNmusaCMWZDdNw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vPOs8I59KimSVRoJSCKnV7SCiizanzK+EjISVKN7gYrM8UMoGZPryPf6R4l7dsJaX
	 ioY9LfGtG8mlbyPV3iKfmsXony17VKQ2pHVPBG9elvWD0Z9RF9CMT8XZsbDMCww2Rb
	 a5lzepAfQNdbqBvvbdWGyUiCIpjoRAOm/HCjJU66TxeJz/weIwevbrq/ZtBJNyO2zO
	 8vroRvhsPKYc9MXLqzF31KrWQpUlkXdMzCmYB+E1qs4sszXdZJKMWFn/mmjWPFnEaC
	 VNOEZJoYkIu5iDiiWDUEnsZjlJHOAOzn34geYA+WV2qA+p0rCIxFoUgPbnoKixltxS
	 +FXyM9L5bl/9w==
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	suzuki.poulose@arm.com,
	linux-arm-kernel@lists.infradead.org,
	rwiley@nvidia.com,
	ilkka@os.amperecomputing.com,
	mark.rutland@arm.com,
	devicetree@vger.kernel.org,
	bwicaksono@nvidia.com,
	YWan@nvidia.com
Subject: Re: [PATCH v3 0/5] perf/arm_cspmu: Add devicetree support
Date: Fri,  9 Feb 2024 18:31:11 +0000
Message-Id: <170750007716.86336.8541411340118542148.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1706718007.git.robin.murphy@arm.com>
References: <cover.1706718007.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 6 Feb 2024 10:27:53 +0000, Robin Murphy wrote:
> v2: https://lore.kernel.org/linux-arm-kernel/cover.1702571292.git.robin.murphy@arm.com/
> 
> Hi all,
> 
> Third time lucky... here's a hopefully-final spin to address the
> functional issues Besar pointed out, and give a little final polish to
> the binding (although I stand firm on teh point of a trivial example
> not being valuable :))
> 
> [...]

Applied to will (for-next/perf), thanks!

[1/5] perf/arm_cspmu: Simplify initialisation
      https://git.kernel.org/will/c/df2675ad7748
[2/5] perf/arm_cspmu: Simplify attribute groups
      https://git.kernel.org/will/c/7e6a3c3f8588
[3/5] perf/arm_cspmu: Simplify counter reset
      https://git.kernel.org/will/c/e7e8fa8e82af
[4/5] dt-bindings/perf: Add Arm CoreSight PMU
      https://git.kernel.org/will/c/7255cfb19941
[5/5] perf/arm_cspmu: Add devicetree support
      https://git.kernel.org/will/c/fd185a245155

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

