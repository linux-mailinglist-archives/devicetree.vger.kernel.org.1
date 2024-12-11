Return-Path: <devicetree+bounces-129606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D329EC4E0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96EC02804E4
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BACCF1C548D;
	Wed, 11 Dec 2024 06:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="fyHDANet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE531C3314
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733898982; cv=none; b=kR/qit5D3FhZSSXSfRkoGRlx1DmJBdLn0eOcqAkSQWSUXi36RI5sAq2HfG+UP1HXDGhQgx9yOP1/tLq2SBzKNW2wCXxlrjv57oL57CX6R3mxRcjZIUHJQb+XotryM+tGtZzSBgzsn2FujMkiPVMBGsrefPBQ82kEU1laQGSOLdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733898982; c=relaxed/simple;
	bh=HXv8FkQueGYYUTBMeFuL/YkuV874MLi2Fm2UDL9YUJc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=kW80ypBlhLXeiw4PVnZfiwWjEtC5YGobM61v52zUfoEqo9TdnRVS++mqCdFKip0XzDU8OMEJDF10QDKARNZRLo/zqbK1u0Cy67jGgkxD33BvKKAIsYDpKfc33NGxFP22RH3aK0CFaWZL6GKGXMSxchbizqEzXd3xFx4xoqeM3Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=fyHDANet; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733898978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SkeHZEHerKUy7SfjGrFicI3v3b2ZvIM2KlYMKJUfd9M=;
	b=fyHDANetvgLxHcE55DANh5X3oFCmsH7M8nWFx4+F+qDrXeGj5lXzXBn6HAtZ5CLn/rPMrO
	T4H3dHALtSc/8n0aDCJTKmXuofgzPM/EupkWHpn/CkJF8cKJh51eYCfTNVWlXWHcH+0GzT
	Y7TzPuzvsWMrPO8HaOAajOpJ1ZLbKLHAUjFhrHTZKUjDJzSenSHHNJx0srsZCpgJey04Xb
	ToJSIyB7zixUtbkl3xEkdclTdeHVhtID5YRGE501TXb2ctidvFmvT/YENFKh0T7bQ8rBbB
	EGCh1z0ti77uCSABmL/fIEdl2LiOa8nd8rDS+VNIsRnwza6eldOa0cgJAqb7ZA==
Date: Wed, 11 Dec 2024 07:36:17 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
In-Reply-To: <20241211060936.57452-1-naoki@radxa.com>
References: <20241211060936.57452-1-naoki@radxa.com>
Message-ID: <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-11 07:09, FUKAUMI Naoki wrote:
> The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
> Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
> perspective.
> 
> Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 753199a12923..2254ee079094 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -895,7 +895,7 @@ properties:
>            - const: radxa,rock-5b
>            - const: rockchip,rk3588
> 
> -      - description: Radxa ROCK 5C
> +      - description: Radxa ROCK 5C/5C Lite
>          items:
>            - const: radxa,rock-5c
>            - const: rockchip,rk3588s

I think it would be better to use "rockchip,rk3582" here, to allow
us to possibly use that information later.  For example, we might
want to be able to recognize RK3582-based boards in U-Boot without
the need to look into the e-fuses at some point, for which purpose
having a clear designator in the DT would fit perfectly.

As a reminder, using "rockchip,rk3582" would also require a small
addition to drivers/irqchip/irq-gic-v3-its.c.

