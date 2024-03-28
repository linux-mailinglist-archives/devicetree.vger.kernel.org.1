Return-Path: <devicetree+bounces-54329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7E5890880
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 19:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 888952937FC
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 18:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA7212F38B;
	Thu, 28 Mar 2024 18:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="iiBvDFW7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAE6131E59
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 18:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711651628; cv=none; b=ezU6oZx/qOKEJJrgMU45Wc6i2NLS7QVnDqClp9PXjjcRBeau59dv44S1RHHVGmO05CJW8mN8cR4iuhIbEtOg7Ds4NoNrYCQBSJYz75rqtIanmmSXWDJkzmaYO0N4LNzzHjYfgL7WEn2MRKCsjfCkOekNjbCFniHOxF1S4gAr9uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711651628; c=relaxed/simple;
	bh=3wAbjSX4gI12GIM0sF/0pFowiqfzf6hHIw5V82h8tzA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=qWwJSIKtFBN323kw/w7lv6NEX0h1tXefJzuQbB+j57q5R9Rgs13vLYshmhloSw2OZ71K+KU/8zMIKo0uCbSWB6/2i/k0MTiyMpRaw9B1omsw1zr5dQqMjZ6+BQFW2WdUq1gUIRE4eFhibzQOGAkXBmEIuzDtSMmeBbrGNdynfWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=iiBvDFW7; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711651623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=04gC6M2/0Frg2J9tfUX7YFGcmkAM74zOf2GeQerrMBk=;
	b=iiBvDFW7WH2Ry+jnvZYF4HkPmGtZNDYzO58jJ50XUsCq6SkKD3QSeL1ff88tce90naaXe5
	pwO0iVYRi2WLjDOJL3BAESOKfUM4Uw4DhOsmLBGWWNxuwbzU52FbxpH83Kn+IMiF9zperi
	p5VXvPgBr2vGa1FL7U6rOcmq5I4gw5hUF3svzpfaN6OOeXpOT1vOfC4tf8BDoKeUcZVnIv
	0+EYtj90kXZ4eTYJBOtl0M7qLXSBc51zsg7VYIYSzaNU4d6vnf7hi5vo6tgfMwAECf2TfX
	7PDEEGvJhsss4HTxhmh9pdgC7/J52qcPuQKtO+4hII12KGZwOYxZGtlURXiz/w==
Date: Thu, 28 Mar 2024 19:47:03 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 jagan@edgeble.ai, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 sebastian.reichel@collabora.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable device-tree overlay support
 for select devices
In-Reply-To: <20240328180551.361381-1-macroalpha82@gmail.com>
References: <20240328180551.361381-1-macroalpha82@gmail.com>
Message-ID: <f948555d4a283a8c77a35090b4319433@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Chris,

On 2024-03-28 19:05, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the '-@' DTC option for the Rock 5B and Indiedroid Nova devices.
> These two devices are relatively new both with external GPIO headers
> for expansion. This does impact the filesize of the DTB substantially.

I think that enabling this should be either left to Linux distributions,
to be enabled for all the dtbs they ship, which they already do, or be
enabled by us for all Rockchip DTs, instead of for enabling it just for
some boards.  However, I think that leaving it to Linux distributions is
the preferred way.

> rk3588-rock-5b.dtb		75352 -> 150094 bytes
> rk3588s-indiedroid-nova.dtb	69507 -> 136739 bytes
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index f906a868b71a..26f306db0aea 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -1,4 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0
> +
> +# Enable support for external device-tree overlays
> +DTC_FLAGS_rk3588-rock-5b			:= -@
> +DTC_FLAGS_rk3588s-indiedroid-nova		:= -@
> +
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb

