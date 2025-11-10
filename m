Return-Path: <devicetree+bounces-236775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB73C473CD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7C9B04ED1D5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678B2315785;
	Mon, 10 Nov 2025 14:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRpoc/yX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433CC315769
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762785278; cv=none; b=UoWK4zEflZ0iS3DGr2WtrNi4r6OmEU1SVk7ZFfSxjDjKxci3oytAHCS1WfuFsniv56M4sy7GbmH498+MAPDmg01eIgI2m0DJTRxZ57fHLI8bzvSgkpJ5f17baEs2/x/ZjJ07VvU2WSJE3KBgB/nzqHeoHYEuJWUUp3hURjY9QBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762785278; c=relaxed/simple;
	bh=GSYmQ6+3w2F5Y2v3KL+tz1Yyiah/sIkt2T04Cg5nkCw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=ClADJkAGRCD1GnNQ5HD8atXtN/LqaJSQMitxGtwYZsw38cypPGZKDqUOwsYIBJE2vcgng9ARp0T5Wrzp+iC4cIv7NJR2TK7r3ULbBKlUHg2i6yw0vdqkwSMtjebAOzD4rnDNNPgKLzqnht1gzH3/9gu45/HSgfB3LEkDOO2YOSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRpoc/yX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87809C2BCB4;
	Mon, 10 Nov 2025 14:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762785277;
	bh=GSYmQ6+3w2F5Y2v3KL+tz1Yyiah/sIkt2T04Cg5nkCw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=FRpoc/yXSsihGYhZUJKMkEG0SUuM626YAHJaSt896xzpksLSZ2ZB25SAwRwAOVwXg
	 WY3cNYaRVo1AtSdXTJq0hbQozMOTa7Vhqg2sSXEYOJwObfKBljmBR9fUhyLeLgvp5u
	 dw+75HhUekHd2ozjYd/8kL70gkvxaw0+0V8QryxL8zTT0G5alUhFLKRF/EqAIEmCg7
	 vi0nhYAC5quPlgDBQ1scCQAKt3Dwq0KVcsOL2u7OLtEQMT9099qvhgzaHQUo/5aHGY
	 GoKWSys3ZcBM4fguajAFSIiM/zjW5FNmEJzdnRbr8duD/qFBY2ouwRzTOPMkXbu2Jt
	 dnyGd4exIAzqA==
Date: Mon, 10 Nov 2025 08:34:36 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, 
 heiko@sntech.de, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, conor+dt@kernel.org, 
 sebastian.reichel@collabora.com
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251110030036.825150-1-naoki@radxa.com>
References: <20251110030036.825150-1-naoki@radxa.com>
Message-Id: <176278493435.154671.16126556415107681599.robh@kernel.org>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for
 Radxa ROCK 5 ITX


On Mon, 10 Nov 2025 03:00:36 +0000, FUKAUMI Naoki wrote:
> Due to the discussion about cd-gpios and sdmmmc_det pin
> functionality[1], it would be better to use cd-gpios for now.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> 
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
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
 Base: tags/next-20251107 (exact match)
 Base: tags/next-20251107 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20251110030036.825150-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: mmc: sdmmc-det-gpio: {'rockchip,pins': [[0, 4, 0, 270]], 'phandle': 145} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml






