Return-Path: <devicetree+bounces-198279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 721DEB0C3E5
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:13:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AC921AA3CB3
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 12:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD79F2BEC5A;
	Mon, 21 Jul 2025 12:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="p2m3sLSR"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A377B2D3206
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 12:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753100021; cv=none; b=PT2GcFytwrBnpCsw7xMFr58NbS+b6zwfHftzfRxJKtvepp0ezkgmypyg9Z8Q76IRLRdfEePelfW+yDP+4gLwpgvnnpGxrYRcEyNSnTsrXUbus4XZKLm0Hp8KGusUFaZhYh3WFW4keG8TQywuBsYTohqXcqg8sB6biIE7jhhskgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753100021; c=relaxed/simple;
	bh=89si7M0WjZ1kR/Rl/+DZDesVyoQF4BNz1KXqMbCzo4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cQW0SdO2KGkFMiSJiw+F0GY5cRq6WzPXchK4vRjijsgJy++h0LzKABZTIQjt80+ghEzNJyLd048UtHhXeMD2X6k+cjhFtAuH5yDukFEXGFehH1xHaPWIWZ4ayA8JwaoBWQ4giaKHqcviCrfcATw75tYYNNIS6bvsYy68sGEA8BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=p2m3sLSR; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753100017;
	bh=89si7M0WjZ1kR/Rl/+DZDesVyoQF4BNz1KXqMbCzo4Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=p2m3sLSRllogqBs79NyF8DpM0mdySNUVj4lyfqlTzxqVc7TQCb9Sw54jwx8lGMc7O
	 HAeoUofH3fXwXuh8D0Q+qveJKsy6D/7JxCOthcP3CZTHo4jUM1zcU4vkAvan2LlQBH
	 pNYj1SBIoauhQT/dd1N6SLT05P5ITtDUGEQ7CMlpWFEQsmfpsVua8BaYptZsvI50lm
	 s5aIW9bFV6YKpjMo1S2pXO1dIWN0blw9tfZIVtiaRPiJX7pc1p85O1INHV22vY1QV2
	 Ug2qfL9b7X6GGZjAs4e9qUZIRFqXyq960GO/ZtSdosJhmyRpg3YfHNmAbU3qZ7V757
	 mVncr6rK7EPhA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E9D0E17E0CE6;
	Mon, 21 Jul 2025 14:13:36 +0200 (CEST)
Message-ID: <e2a58394-356f-4c23-bb98-198439cfbce1@collabora.com>
Date: Mon, 21 Jul 2025 14:13:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie0
To: Guoqing Jiang <guoqing.jiang@canonical.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 jianjun.wang@mediatek.com, tinghan.shen@mediatek.com
Cc: macpaul.lin@mediatek.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250721095959.57703-1-guoqing.jiang@canonical.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250721095959.57703-1-guoqing.jiang@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 21/07/25 11:59, Guoqing Jiang ha scritto:
> When test suspend resume with 6.8 based kernel, system can't resume
> and I got below error which can be also reproduced with 6.16 rc6+
> kernel.
> 
> mtk-pcie-gen3 112f0000.pcie: PCIe link down, current LTSSM state: detect.quiet (0x0)
> mtk-pcie-gen3 112f0000.pcie: PM: dpm_run_callback(): genpd_resume_noirq returns -110
> mtk-pcie-gen3 112f0000.pcie: PM: failed to resume noirq: error -110
> 
> After investigation, looks pcie0 has the same problem as pcie1 as
> decribed in commit 3d7fdd8e38aa ("arm64: dts: mediatek: mt8195:
> Remove suspend-breaking reset from pcie1").
> 
> Fixes: ecc0af6a3fe6 ("arm64: dts: mt8195: Add pcie and pcie phy nodes")
> Signed-off-by: Guoqing Jiang <guoqing.jiang@canonical.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



