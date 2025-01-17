Return-Path: <devicetree+bounces-139306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BD1A1504A
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12D8D1883A7D
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3EFB201013;
	Fri, 17 Jan 2025 13:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArSSsMdM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA38E201010;
	Fri, 17 Jan 2025 13:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119301; cv=none; b=DM4uRnw107RaY+0z+nbC3enOJGzTe8mg89EmwcoCVwPPsx294jxdcFDeUWPveOlqVOSnGSxrTLDbQIU/ZWfQeTMd4J2xoX9iOlSb3XP2odqPwgr59lDgfLamqY6mHPQYCApd57NNX0gKaSpNqXsSIDT3nX9e8xZ0bWUlXAExunI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119301; c=relaxed/simple;
	bh=/kk8bIeoOoF50IA37ReTObbO23keBjpVXrnfW1WhScE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AnIUTpltvRtuRF6RyhckLGY47viyQfQp3vgDD1DRRfwuf37ipu2T/bIZlz/PBrxMnlMY29r9i4UC13GocU/1nphYPnmsUuJo3scMOjtlqjbbXYOpWtNB38SGaFEv4U3tu1QFNQI/pnIIKClcxP0LKIYPIRIljgtDSFiZDUROe5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArSSsMdM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9C6FC4CEDD;
	Fri, 17 Jan 2025 13:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737119301;
	bh=/kk8bIeoOoF50IA37ReTObbO23keBjpVXrnfW1WhScE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ArSSsMdMGrKvpMUgYcQ5C5cT8SjvXZh4xU7bKU38XbtIr+deczFTG71Qw7VNtvp+z
	 Jqo3CFIVE6CxRpDgzSNGla7yie1mb2aeso59Kt0IvKzZvBN4rGlhy6iNr84A4Xomci
	 FDJktPq77s74T9sn98BK/avlpveVh5vEo5MczOqwdk/pNkf+5V33Rl3fvm9mUN3EkS
	 ZL8Sv+sWCMHJNRq/p8Hdknqc+YktPac951GU/Bys/+zVnaoqVtTK7CKUNNkjjIrBpY
	 W5pToys8AMFesQ8IRwAZ+6fCs1K8Lry4zkphlWmBfyJ1CEl5IMxL6ubjg27p08+y6X
	 IDlykEU9i8p0Q==
Date: Fri, 17 Jan 2025 14:08:16 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: add overlay tests for Rock
 5B PCIe overlays
Message-ID: <Z4pWQKRjgEkFAi3W@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>

On Thu, Jan 16, 2025 at 03:47:11PM +0100, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> According to commit 40658534756f ("arm64: dts: rockchip: Add rock5b
> overlays for PCIe endpoint mode"), Rock 5B can operate in PCIe endpoint
> mode. For that to work, the rk3588-rock-5b-pcie-ep.dtbo overlay needs to
> be applied on Rock 5B base Device Tree. If that Rock 5B is connected to
> another Rock 5B, the latter needs to apply the
> rk3588-rock-5b-pcie-srns.dtbo overlay.
> 
> In order to make sure the overlays are still valid in the future, let's
> add a validation test by applying the overlays on top of the main base
> at build time.
> 
> Fixes: 40658534756f ("arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode")
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

