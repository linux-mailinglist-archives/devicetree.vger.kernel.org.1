Return-Path: <devicetree+bounces-20645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC11E800680
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2975C1C20AF6
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF771CA91;
	Fri,  1 Dec 2023 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XEVG0CeS"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1694D12A;
	Fri,  1 Dec 2023 01:04:20 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 20B256607394;
	Fri,  1 Dec 2023 09:04:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701421458;
	bh=nhnagN3QIK0LAGvvUn9dHDUJw+tv00vp1WX6wnM/hOA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XEVG0CeSaqmj/V7PPVVh4yxVBrmnGN3m+w6BT1A+DSca6cl1o97zAdvOTJ9gp46E0
	 cX+Y6jm4mBmgY+eq3q/cPVpqiEx35E6jEzhEr5KqlrU+jaZ+Tn1Sp5evm2jSq42N5R
	 E77xxnafw6hEGmWbqVjXBbb5QN5vPY1AGcOmIQZBz6euZvS3N3IKLo3S3MncP1qxYX
	 yaJEvVLJP3l2cEwgBCEihflRNzTrs46/v+wxNgfHNxD7uv/MOmv2QzwPAFq3UqGFoc
	 QMHPFLmRNlmgz3vfJ0DRi5awn3EA12AJPkE9xF+i1BJGff4XI/AfkJTwrfH9TQhpMC
	 fA0GNCKkLXSHA==
Message-ID: <22cc8650-a24e-43c6-bf7a-700becc93a1d@collabora.com>
Date: Fri, 1 Dec 2023 10:04:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: mt8183: kukui-jacuzzi: Drop bogus anx7625
 panel_flag property
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20231130074032.913511-1-wenst@chromium.org>
 <20231130074032.913511-2-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231130074032.913511-2-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 30/11/23 08:40, Chen-Yu Tsai ha scritto:
> The panel_flag property was used in ChromeOS's downstream kernel. It was
> used to signal whether the downstream device was a fixed panel or
> a connector for an external display.
> 
> This property was dropped in favor of standard OF graph descrptions of
> downstream display panels and bridges.
> 
> Drop the property from the device tree file.
> 
> Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



