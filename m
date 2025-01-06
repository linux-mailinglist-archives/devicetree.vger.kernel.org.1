Return-Path: <devicetree+bounces-135727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B10DDA01F6A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 07:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0CEDA7A18D3
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 06:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B220A194A64;
	Mon,  6 Jan 2025 06:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ZyCJMtVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12784.qiye.163.com (mail-m12784.qiye.163.com [115.236.127.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137F017C;
	Mon,  6 Jan 2025 06:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736146535; cv=none; b=lFk7RIkkcRpuOcjFWOQDypqmkHYWYgqSU91u1jW7OHkEhSFcWpxRo3a6g33+U4jkNhS7PjRsJWWzpfKQSREbw7UmKMeeNhggtnNrSHvQE/3qODS07Q/1wyvO76lafWH5aaZ8i/w3ntfQ1j5nzv1QlG4DYJuxbwrogBHG/FTOAQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736146535; c=relaxed/simple;
	bh=Y5F4KYno/2RN/NeEN33Vbv6Ckx69nMk1pnd/1U6yjwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XVRS9b3VNa8fEHCRVdA4fXPjbYjVTT4fJLjcj4VRvLTh8UMsf59Dqsa3RGmKEomae2ysK23jWdu+ZbqdICfAkUsM3zGaCPd74HWwhSTwmBzfyHvbm8ZI41GuVjk7GSj0T1WTXObKB0/yqniNgUvfg5PzsO3kS2gTNkTXdl1UlcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ZyCJMtVl; arc=none smtp.client-ip=115.236.127.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7cf4282a;
	Mon, 6 Jan 2025 14:50:14 +0800 (GMT+08:00)
Message-ID: <ca29c6a5-8a9f-4a1f-8a14-bf7b616f4cb5@rock-chips.com>
Date: Mon, 6 Jan 2025 14:50:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/17] dt-bindings: display: rockchip: analogix-dp: Add
 support to get panel from the DP AUX bus
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-11-damon.ding@rock-chips.com>
 <uwzrv4jgqqx6ge3lh3if37qvb6w7ubkusohunbn7ukmq5tt6du@e5fwoik4tex2>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <uwzrv4jgqqx6ge3lh3if37qvb6w7ubkusohunbn7ukmq5tt6du@e5fwoik4tex2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4dSVZNQktOSR1JH0tDTx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943a60defd03a3kunm7cf4282a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PSI6Qgw5KTIQTBgyHQssLhNJ
	KjZPCSNVSlVKTEhNSk9NSUpNSE9IVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCS003Bg++
DKIM-Signature:a=rsa-sha256;
	b=ZyCJMtVlZB9Q7i8XqHl0UHJInDef0l+BnirMPajG7a1HWOhuK+MkTaFhHOEGFgVWRdnS4utJvJPuPajqGYWUwfwKmbNwEqVzE2njnuvLBxHPiFbVTmDUFKhpZxu48vs7P5VQ6EzM7j+Oa3aeh8UY0za8edyrIP0eM/dVCtBDWNA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=4SFMXBZq9vYc3ofpJpCPeqvivyBEabL0OOJJZkXDUg8=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof,

On 2024/12/27 15:53, Krzysztof Kozlowski wrote:
> On Thu, Dec 26, 2024 at 02:33:06PM +0800, Damon Ding wrote:
>> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
>> it is a good way to get panel through the DP AUX bus.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> Changes in v4:
>> - Move the dt-bindings commit before related driver commits
> 
> 
> Changelog does not go to commit msg.
> 
> Please run scripts/checkpatch.pl and fix reported warnings. After that,
> run also and (probably) fix more warnings. Some warnings can be
> ignored, especially from --strict run, but the code here looks like it
> needs a fix. Feel free to get in touch if the warning is not clear.
> 

Indeed, the commit msg will be fixed in next version.

Best regards
Damon



