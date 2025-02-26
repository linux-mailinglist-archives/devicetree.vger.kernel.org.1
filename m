Return-Path: <devicetree+bounces-151763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D56A46E81
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 23:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3ED216D357
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 22:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAE825D90C;
	Wed, 26 Feb 2025 22:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbuFegJu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A1125D8E6;
	Wed, 26 Feb 2025 22:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740608854; cv=none; b=opN+lPyl6VeRoo8npSW9EOCa+nKAKg7XACo0SWlQWj4rbf1vgoWuOFHHDR25WhDo0FmvvWJ7qKfKJBiZ29SfPJRk7a7XBr2vpa9YbShKfkKPDBaayhuJnI78E0CLryUyY5RRAuV7ndjwTrZDgkDRLxjUpbjOxiqiudVlkr/bsCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740608854; c=relaxed/simple;
	bh=AMx61XALp2FEuAdeMecmgRnxgBFCljzPkNPpDr86dSY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=LrPwPW5NwhkfCEJwLIpZh+EPsH9aKX4RT8QrPUbMJxJVYdGY0tRlwBDGodgS2nJ+AoL0GNeYMoQmlndejjGpsxvyE0wB82u+/CVHbw5zjuD/rNV1YVjoGJiHkdYcPHa5DOlGhtEiu5cPDJzIJKlKs53kaOzDfxpPerkLl2aZItw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbuFegJu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1805C4CEE8;
	Wed, 26 Feb 2025 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740608853;
	bh=AMx61XALp2FEuAdeMecmgRnxgBFCljzPkNPpDr86dSY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ZbuFegJumpqOvGH2jx67wwB3Wfh7G2SlGqP1HRwp59P8fEjY3ZBwOg2trBPtaHFwt
	 1IBDa/ggIr3A7hFw4yCfR10XtjrtTo30i8zORcJsXnDggtM2LDG3Y4LAxbiKYbnm9Z
	 VFdZIXcaYIZH1Gtzbm9cjtYy9zAwj1cC3SuV3q9Z1K2fYh94uNEnczm84mKR8N6nPL
	 CrbRVsz8A/VIpbv0I+XuPpQHbIdJsq34l90ZxraA7ghHbNGxebocn2OvrUxMOzLNV4
	 c60gN+TT+JewJ862zNsa9do5TVTSxSdLeV+Ezp505jVI5PjKXByjHwfATn2ZeoL+wH
	 jqo81rsFhH6Xw==
Date: Wed, 26 Feb 2025 16:27:32 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dse@thaumatec.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 quentin.schulz@cherry.de
To: Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20250226140942.3825223-1-heiko@sntech.de>
References: <20250226140942.3825223-1-heiko@sntech.de>
Message-Id: <174060863425.3856982.10076124904973654575.robh@kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: add and enable DSI2 on
 rk3588


On Wed, 26 Feb 2025 15:09:39 +0100, Heiko Stuebner wrote:
> This adds the dcphy and dsi2 controller nodes and adds an overlay
> for the Tiger-Haikou Video-Demo adapter that provides a DSI display.
> 
> changes in v3:
> - rebase on newly added overlay-test-infrastructure
> - add reset-gpio to gpio expander
> 
> changes in v2:
> - adapt to changed dcphy binding (phy-cells = 1)
> - tiger-overlay changes (Quentin):
>   - drop forgotten hdmi-connector node
>   - improve description
>   - fix node sorting
>   - drop unnecessary pwm-pinctrl (set in tiger.dtsi)
> 
> Heiko Stuebner (3):
>   arm64: dts: rockchip: add mipi dcphy nodes to rk3588
>   arm64: dts: rockchip: add dsi controller nodes on rk3588
>   arm64: dts: rockchip: add overlay for tiger-haikou video-demo adapter
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   5 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  99 ++++++++++++
>  .../rk3588-tiger-haikou-video-demo.dtso       | 153 ++++++++++++++++++
>  3 files changed, 257 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-video-demo.dtso
> 
> --
> 2.47.2
> 
> 
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250226140942.3825223-1-heiko@sntech.de:

arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: /phy@feda0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: /phy@fedb0000: failed to match any schema with compatible: ['rockchip,rk3588-mipi-dcphy']






