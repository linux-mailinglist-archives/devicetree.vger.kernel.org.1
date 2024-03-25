Return-Path: <devicetree+bounces-53086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC07D88AE2A
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72FD71FA0B88
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607CF6CDD4;
	Mon, 25 Mar 2024 17:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="M+2amJJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F056AFB5
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711389439; cv=none; b=rBwOUWmgfhFkYKyc4YhsIfJn7+6G43xpsFlVZyZbr+Z4RoCZDm6s/mT7/q56SGpqWjU4wjAqM9Yq62afvPifpnTFZJV5Mtj1AGtg0MHtWxorjUX/1msIJmlKpvWAVEcVhs2tNLQP87DsUlmHKwx549/H7uMlO/WLRUkNe4Ea7W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711389439; c=relaxed/simple;
	bh=xxjt6OUwumZDt9tkD3bvMOLUk6DD0+9R4grd0rguFdw=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lWMc2fRMiQxT0DoTmjDEP7huVeztaRT7iKkrGpidnyz4n6EbVqlSbloA8jgjyHeQNQkpME3dcCX+EoNC1VKX61FLl8SWpE+MQfZRTzXIQPqlpM3zTRq6o8Mj3LwmKA5WqCfW8hJ9gsQ1pLU2S6YAvtQ4wvI7paFiWm8SD4c50p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=M+2amJJy; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711389428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=waaJ45N0q1+yX+tLJelt959hvtyr4Lfyhzr93KV2zDE=;
	b=M+2amJJyWysc4f0raGcDCL8SHeCmJC80IfA3dE3SbyLKAcnGSK0IxSmJQmK/xgRzFOyhe0
	jFOldt6Y+kSsLUEqcg1JU1IqfX/kFQyU6A9TFC+b1cxAGAa2n7WRR8VRp33k1dArjxtSlv
	EIgtqGiQpzUENN0uYkpDWcm1nD7JCSxhiGr9RXofCs410dpipoPQNidsPZtSuN4VDKnf7r
	s+t2VXJJEtjxQ1eHyVc8nnykMjAQFFB98gluoFZOCznmJj1rOUqllTxCzLFDlsqObWJt0D
	2PZ0+FoapNgwIIjTN1UPQar6RjjmcQQ1DYuPHeHl8BwkSQhj7tiXBRDTkfdowQ==
Date: Mon, 25 Mar 2024 18:57:06 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Message-ID: <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Chris,

On 2024-03-25 18:51, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users have requested fixes for Powkiddy devices to help with some
> intermittent WiFi issues by adding additional properties to the
> SDMMC2 node. They have also requested that the model name be
> represented consistently with both the manufacturer name and model
> name. Lastly, there exists a second configuration of the RGB30 with
> a slightly different regulator layout we need to describe.
> 
> I have added the new/additional property of "chasis-type" as well.

Shouldn't this series be labeled as v2?

By the way, regarding renaming the mmcX aliases, maybe that would
actually be doable, but only if you have full control over software
that runs on these devices.

> Chris Morgan (4):
>   dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
>   arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
>   arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
>   arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
> 
>  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
>  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
>  .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
>  .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
>  4 files changed, 42 insertions(+), 2 deletions(-)

