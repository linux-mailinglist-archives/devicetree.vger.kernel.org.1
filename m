Return-Path: <devicetree+bounces-256713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB75D3A19B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C0D430988C5
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EC233D4E1;
	Mon, 19 Jan 2026 08:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="VZzSwM/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15566.qiye.163.com (mail-m15566.qiye.163.com [101.71.155.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F55F33B97B;
	Mon, 19 Jan 2026 08:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768811088; cv=none; b=diEt71usGgg58IlxQbGuGVdWYmiTwAxflDBoCMqlG/pyNJVxVV5txNJVjtfpw/xMuDvXkglnVaqtO+DSRVbO69u9lMsbEcV494AORAoiinnWALCAVHoLTqMd7VQEIfWL1MZDtXyTUnoT/K9ItHKAPl32HTp+GTN/peKf1owT2MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768811088; c=relaxed/simple;
	bh=m1D3juBmDzW7Xgr9QleniqkLmGR2tPF5kR45FcB8DfM=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=KbybtpzDnNaGEsKFKtkPsyPeqweRKIkrw8fyMNBY95QadfGkBy4lS5rsV4Vs6SYPHZbntfoNWfgGQ3/ehR19B+tzHG3W7vd5D87QjFsqmrgK7HX5flicsYneMfyyqCYuID3hoo5AJ5xWfG6jLinZC9YpiACuW+9KIFTrBX0dZ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=VZzSwM/5; arc=none smtp.client-ip=101.71.155.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 311f4d8f4;
	Mon, 19 Jan 2026 15:08:57 +0800 (GMT+08:00)
Message-ID: <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
Date: Mon, 19 Jan 2026 15:08:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: Johan Jonker <jbx6244@gmail.com>
References: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bd515d81509cckunmaf6f77109404f8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9CQlZOSh8ZGkIfGE4fGEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VZzSwM/5kKzi1RZ/Zqt2LYEt8GQ3mWzthhHNV+B100czzDfBwEdOpLu3cHiiNHhSXQrIMbHEI5+Olbuj7OSAShZCiLQEZ/DaQTkYYtyGDm0SUsl5JDYdVgJEGr1fwW38iSrAYqT14q2uF7HazulWXXrvd9IoFDWdCX5PFeru7LQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=UiQ+cxmVNau4z+karizH0FDcMDsn/Cs3rk+K8ty0T4w=;
	h=date:mime-version:subject:message-id:from;

Hi Johan,

在 2026/01/17 星期六 5:05, Johan Jonker 写道:
> The use of mshc aliases is deprecated for some while,
> so remove them from the rk3036.dtsi file.
> 

I noticed that the alias property is still listed in the
documentation[1]. Could you please share where it has been formally
marked as deprecated? I may have missed the update.

[1] Documentation/devicetree/bindings/mmc/mmc-controller.yaml

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm/boot/dts/rockchip/rk3036.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index fca21ebb224b..78afae42f8b2 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -23,9 +23,6 @@ aliases {
>   		i2c0 = &i2c0;
>   		i2c1 = &i2c1;
>   		i2c2 = &i2c2;
> -		mshc0 = &emmc;
> -		mshc1 = &sdmmc;
> -		mshc2 = &sdio;
>   		serial0 = &uart0;
>   		serial1 = &uart1;
>   		serial2 = &uart2;
> --
> 2.39.5
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 


