Return-Path: <devicetree+bounces-175659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 857F3AB1715
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 16:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DB321C43C33
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD02221930B;
	Fri,  9 May 2025 14:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZoqE8Gv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0BB212FB0
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 14:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800218; cv=none; b=PzcvaT0jp4D9tgf+jeAXLUDHKG9hyKXgCQ8gO/KLzf51oasaHzV3m9YBPWcBc69vGkW7PiLImn3CE2qV3F+Ww8SWzMA/C7r3RLKPrDX8bQua5zsgAu89Q2os/qk9z7/krLXW19xoBj6UcM+q3zc7g8Ywa03s+s/u8ecYRbfTl9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800218; c=relaxed/simple;
	bh=U+eIzfvbDzC+peDIexb8/J/VSJleddT2WMz6l2+u9Ao=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=O/MJZmT15n1Amzfpy2mI1G+VLTujsksaj6opJeFhNBhWCXe31wBSUhn1OqAfGQ+FC5q74XyQfmuzYE/trokdUozI3lW4NM46nMFRKchaSAW+FDcbPR2JZ/YCYXIMx6XDM7WkyHShCEatUZNIqJ/D22mxJfEBikfXsNkYt4bwd0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZoqE8Gv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE4B0C4CEE4;
	Fri,  9 May 2025 14:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746800218;
	bh=U+eIzfvbDzC+peDIexb8/J/VSJleddT2WMz6l2+u9Ao=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=MZoqE8GvExAd9uHeApXsM+CZVl7myYnzo8tKwSkcsY5XpLZOA3cwU2enpOPQGvWAI
	 +iPFvYQq4k0crGCaMMUHJ0pRY7XBBhW85dC+n920KVYiNpm34RX+t/HuqmzZtGdxhO
	 l0U3dgopbDBm6kohHVmsYiMolHbMVZKhCLksa8B2tyCU4COaaB75EZ68fWww5Ujnzu
	 ua6fEDAMazplVp8o0MPHZiW9mIYyHGe8F0nos9qVNAYl3LR028/nH6ruZcptriNwCV
	 YosgCn5rY4F7B+GvFsUz+OdI+vXB0ONNgGRxkgeg6At239Vjqsh3jsSysdV2ZzvDlV
	 n+49iyJMpNfyQ==
Date: Fri, 09 May 2025 09:16:54 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Leo Yan <leo.yan@arm.com>, 
 linux-arm-kernel@lists.infradead.org, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Liviu Dudau <liviu.dudau@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
In-Reply-To: <20250508103225.354925-1-sudeep.holla@arm.com>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
Message-Id: <174679984875.3368325.1365758165371282064.robh@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C
 model


On Thu, 08 May 2025 11:32:23 +0100, Sudeep Holla wrote:
> Add CPU idle state definitions to the FVP Rev C device tree to enable
> support for CPU lower power modes. This allows the system to properly
> enter low power states during idle. It is disabled by default as it is
> know to impact performance on the models.
> 
> Note that the power_state parameter(arm,psci-suspend-param) doesn't use
> the Extended StateID format for compatibility reasons on FVP.
> 
> Tested on the FVP Rev C model with PSCI support enabled firmware.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 32 +++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/v6.15-rc1-1-g59529bbe642d (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/arm/' for 20250508103225.354925-1-sudeep.holla@arm.com:

arch/arm64/boot/dts/arm/fvp-base-revc.dtb: idle-states: entry-method:0: 'psci' was expected
	from schema $id: http://devicetree.org/schemas/cpu/idle-states.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: timer@2a810000 (arm,armv7-timer-mem): #size-cells: 1 was expected
	from schema $id: http://devicetree.org/schemas/timer/arm,arch_timer_mmio.yaml#






