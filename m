Return-Path: <devicetree+bounces-92125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 224A794BEAC
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 15:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEE9E1F25148
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 13:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F69618DF71;
	Thu,  8 Aug 2024 13:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="A9sr1DFu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED6335A5
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723124591; cv=none; b=o6HuqHjLgDC4Kl86SVCuifXwBfZ0BFP80v7i9HL4WTIedTrPnVhw0peb66lacEyUVZgGBcOBUcQoThUkuSc3xFIhU2YOaipPU+F9r103gdFeyK6xbDNhMJkmF4IdQjFktn91h3saoRPAJJz20vlURdsqDGX29wx1E/2EcE/fRWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723124591; c=relaxed/simple;
	bh=GObiREnbkryujWbs+uLEWsFH6aEuxSQCfarqGJzd2jg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=b8wm+XAqFe/+ydGSkAHWAUIba/BiUpP0aTtnD2KytHCrThVGobl4IrVnBfkQwqWqMXRS3UWqXWB/xvWOtx1dMtX8Raa/UjLV8bQf0/uc2Z466DYDYH5kvzjjvK2iuA1uNRzm/mVP2/GOR7G0DGMzXqEQH8Pch2rc16K49KYRaBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=A9sr1DFu; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723124585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x17N2h6ck4rUNThXwsBQqdhkPZ89u9BH3S0N0MpEjj0=;
	b=A9sr1DFuCiMsNBszkSYauksgsofe2RoFVEksl+bIxX3Bg/c+/JoswKu2NC+J6yTLDiURiz
	1lo93MdveDEjEdUprWZkBDW0AbPvgBbLHmO01EW1Grok7fa0i+Bfscw+PsYcnEuhfowvc3
	6Mxt5h5UtwoEtobDNlVx0JYNCRvgkJ2FL38umkXMgPAAxtq1Sb3/DiOXZSK8jLx4wfnX4I
	0nG9NNVM/hL8/Ffobde4dco5ISCuQ9CPdPz0sUEUyLN4TYRhnLXypc2htzDCrRyFxUZ8EX
	jaTr2dHHvuwuCGPYtrShw57SNGdeNMGfY7gXzUCmree76+MkP2g2YHZblHAdJQ==
Date: Thu, 08 Aug 2024 15:43:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [RFC v2 1/2] dt-bindings: arm: rockchip: add Radxa E52C
In-Reply-To: <291b87b0-4701-4743-aed9-adbef7cf3b77@kernel.org>
References: <20240808090405.738-1-naoki@radxa.com>
 <291b87b0-4701-4743-aed9-adbef7cf3b77@kernel.org>
Message-ID: <28dec8ac1cb3f8495fd9ef5e6008a066@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Krzysztof,

(I'm adding Jonas to the Cc list.)

On 2024-08-08 12:57, Krzysztof Kozlowski wrote:
> On 08/08/2024 11:04, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa E52C.
>> 
>> Radxa E52C is a compact network computer using the Rockchip RK3582
>> chip.
>> 
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v2:
>> - none
> 
> Why this is not ready for review? Why this is RFC?

AFAIK, there's still no official downstream kernel code from Rockchip
that we can use to add support for the new Rockchip RK3582 (and RK3583)
SoC variants.  These new variants seem to be like the RK3588(s), but
with some IP cores (i.e. CPU and GPU cores) disabled in software, due
to them being marked as defunct in efuses, as part of the manufacturing
and testing processes.  Using the efuses, defunct IP cores get disabled
in U-Boot by patching the DT.

Thus, we still need to figure out precisely how to do that in U-Boot
first, before we can move on to adding the new bindings for the new SoC
variants.  Jonas is already working on the U-Boot patches.

