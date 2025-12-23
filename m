Return-Path: <devicetree+bounces-249254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24039CDA2B8
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:48:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC4F93044090
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D047F34E273;
	Tue, 23 Dec 2025 17:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOVibKWi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8DF26ED45;
	Tue, 23 Dec 2025 17:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766511926; cv=none; b=tkgCMuC6bMHurR+3wRXklyEBlpl93VGrs+dh9UVK7Hv4ZRqqd6lU1fx74LvFqWojk8OxScvvAsLMXmN4sq1bq+4WPnFz6DL/lxrYuvrWwWfmKwBNWiSeHGx8Hf7VO5X0NDYem6D2qjtCepNamzypHb82xFv+rcZY4p0HKnwKx8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766511926; c=relaxed/simple;
	bh=8UvcbaMFBmgqDoEZ2WexuxMmy2IO+bxASIEngueuopk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Sd2iP1xXqtIpIPQflPU6BZtScFxmEP9evvz/Suf0a1VlnNuLMDgCoKbXT5m395xrkYbANShzMmxgcpuMTh/7DvRFoVrTuOaJGEHR/BL3awgM72Q0l5Tm/kUCAZV6nYT4l642l3JQkjQdTOxbzEp8h+vbCrQtS/4laqpmh5xwNJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOVibKWi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27597C116B1;
	Tue, 23 Dec 2025 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511926;
	bh=8UvcbaMFBmgqDoEZ2WexuxMmy2IO+bxASIEngueuopk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IOVibKWi304v5idcNYAWDQMkuEG29LxRmGj/GGqzEpEgrDJEOHtG9HBmAvqmTv7ia
	 VJeZ+Kpb90JWGTVT0yRVJjO/87dkUOzc9XJiWU2IvHqrV/Mxp9yaan2J6fyK+v0kV1
	 swXIhRDWjbx/a36rWbBei3QQAj26uVomxzh9ke6n3okx7JmeaD8x7IBIgOiSk0NpDJ
	 9BlYA7QxF5D+3xEwhIJJg4eW9gH6paaolDo1HEZsGry69VLxdYKppwuC0b7ceLVVnR
	 lyJSVsLHR4+RytHDWJB6SFXCOwnPPIbSUsxsGUlkpTEWsq1D2afhI8nT3AD4BdWdml
	 SNgTQn90Cobiw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH v5 phy 00/15] Lynx 28G improvements part 1
Message-Id: <176651192278.759340.10484878366738732561.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:15:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 25 Nov 2025 13:48:32 +0200, Vladimir Oltean wrote:
> This is the first part in upstreaming a set of around 100 patches that
> were developed in NXP's vendor Linux Factory kernel over the course of
> several years.
> 
> This part is mainly concerned with correcting some historical mistakes
> which make extending the driver more difficult:
> - The 3 instances of this SerDes block, as seen on NXP LX2160A, need to
>   be differentiated in order to reject configurations unsupported by
>   hardware. The proposal is to do that based on compatible string.
> - Lanes cannot have electrical parameters described in the device tree,
>   because they are not described in the device tree.
> - The register naming scheme forces us to modify a single register field
>   per lynx_28g_lane_rmw() call - leads to inefficient code
> - lynx_28g_lane_set_sgmii(), lynx_28g_lane_set_10gbaser() are unfit for
>   their required roles when the current SerDes protocol is 25GBase-R.
>   They are replaced with a better structured approach.
> - USXGMII and 10GBase-R have different protocol converters, and should
>   be treated separately by the SerDes driver.
> 
> [...]

Applied, thanks!

[01/15] dt-bindings: phy: lynx-28g: permit lane OF PHY providers
        commit: bd2f0117c2a1310dc6ea4eed8087eb2c6c03fe78
[02/15] phy: lynx-28g: refactor lane probing to lynx_28g_probe_lane()
        commit: a125feee0774e13914601dd6b39c73a27265f7d4
[03/15] phy: lynx-28g: support individual lanes as OF PHY providers
        commit: 7df7d58abbd60902751381dcd891a55c8228c523
[04/15] phy: lynx-28g: avoid memsetting lane already allocated with kzalloc()
        commit: 2da0b2214f511744a967d370447bb9d511bf1348
[05/15] phy: lynx-28g: remove LYNX_28G_ prefix from register names
        commit: 13a5f7e3fd6dbc49adb950592ba7d76f1211105d
[06/15] phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg" with "val" and "mask"
        commit: 6e3d3e8783ae41a7a678093591a2d93044b94ac0
[07/15] phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
        commit: 3b84377c2a31cf35d33da55c6868281aa3aff71a
[08/15] phy: lynx-28g: convert iowrite32() calls with magic values to macros
        commit: 90d985a0eb33c92aa83a086bd934d885e2f4fd5b
[09/15] phy: lynx-28g: restructure protocol configuration register accesses
        commit: 6af3b6d365579a0b62d24e687f6d55d17f118172
[10/15] phy: lynx-28g: make lynx_28g_set_lane_mode() more systematic
        commit: 444bb9a7b3ef07ecb96ca7ae30a6c9daaf865de8
[11/15] phy: lynx-28g: refactor lane->interface to lane->mode
        commit: 6a1ae51896284de1a2387aaf2281ac01015277b5
[12/15] phy: lynx-28g: distinguish between 10GBASE-R and USXGMII
        commit: 55ce1d64aa51baecdd26d56e3efb250c9671e988
[13/15] phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
        commit: 055d08beea2c1a1d0f4eccabbcf570009969e3ce
[14/15] phy: lynx-28g: use "dev" argument more in lynx_28g_probe()
        commit: 04dceaa3c97d3cdc51e1d78dce32ed7388872d07
[15/15] phy: lynx-28g: improve lynx_28g_probe() sequence
        commit: aecea96492f52364f852248055921c1b3aacbc91

Best regards,
-- 
~Vinod



