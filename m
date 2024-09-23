Return-Path: <devicetree+bounces-104462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C4D97E7BE
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 10:39:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFA0A1C21343
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8482D194122;
	Mon, 23 Sep 2024 08:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aNo4VSZj"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E1C2F2D;
	Mon, 23 Sep 2024 08:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727080789; cv=none; b=BPng8R0ZLTN0ItNf/xVcCSJLNrIMLwGmPlPKeazY5heyp1pbEnI62t6VoWN3trLhXziztQb4hSehcxLzUTWq22L5fzOogxE6LRAxTkrTxc4+xXDZJCCDtF8ohZGGKEItiS8c5gJUnS6tJ/7vr7OpFW2X/2c3fKJ3jNc5YwcwxEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727080789; c=relaxed/simple;
	bh=eXHgjinyCeQRm93WuvKLpdJCSQuczMdbgMoD2VyF1Mw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S+tXl7UvVgA8V3mKL/ABiy1KEIOs9dYN+xqMtm962Fji0fA2XDNAlLoYcdfu744jX43qheKbCxXjgT900JhaL+6K5vrM0VLj7UiC84OE33a9P7tPnvZr9LauLQFBW6sjb47F8FGkuiu6Juq4mkChzAIuzejc5d7+j7sZ+G3qJ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aNo4VSZj; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727080786;
	bh=eXHgjinyCeQRm93WuvKLpdJCSQuczMdbgMoD2VyF1Mw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aNo4VSZjtXkADpQH2SdZisiji+GTyx6iXeB/92p2iuxxvyCQ6F7vY0lbJ+MUtDDem
	 UX2n2dJ8mm7KyRgohB6W3tu1FEqyVmU0NVvsd1HkGwcNTYcdmNs24InXngTCfpvZXC
	 SUHqiQ2wfATucwaNn1r+lDf2Uz4d+ZkUoJhE+Kc+v8t9jXFg0M+kmnrcB8VEv+xK2O
	 wiA0+Q/3Q2pK1LYjEqXo9Dq9lqBdNLegZ7BRkqIArrKSGFQ1UcB03qyqFT7YRDO6n0
	 iePDNzb18cjMpTyQRns3QwjIqebowbhlY4PG9vxfNRFkoR3NlTbTXhRYUqGw/v8V1o
	 LI0Su5Eg4pn/A==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8E78C17E1067;
	Mon, 23 Sep 2024 10:39:45 +0200 (CEST)
Message-ID: <57460379-f227-4032-b353-c0400e582dff@collabora.com>
Date: Mon, 23 Sep 2024 10:39:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: mediatek: mt8188: Fix wrong clock
 provider in MFG1 power domain
To: Pablo Sun <pablo.sun@mediatek.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240920134111.19744-1-pablo.sun@mediatek.com>
 <20240920134111.19744-2-pablo.sun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240920134111.19744-2-pablo.sun@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 20/09/24 15:41, Pablo Sun ha scritto:
> The clock index "CLK_APMIXED_MFGPLL" belongs to the "apmixedsys" provider,
> so fix the index.
> 
> In addition, add a "mfg1" label so following commits could set
> domain-supply for MFG1 power domain.
> 
> Fixes: b8369604050b ("UPSTREAM: arm64: dts: mediatek: mt8188: Add support for SoC power domains")
> Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



