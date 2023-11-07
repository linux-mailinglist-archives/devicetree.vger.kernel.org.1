Return-Path: <devicetree+bounces-14291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EACFB7E36A7
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D53C8B20B83
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F731947B;
	Tue,  7 Nov 2023 08:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="JgrbOsq9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B951C12E55
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:30:59 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D043FD;
	Tue,  7 Nov 2023 00:30:58 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1F74D66074BA;
	Tue,  7 Nov 2023 08:30:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699345856;
	bh=ZMrrFLvLdqin6a1tq6YFP6vBhnFIzClUM0C0/GpzRCA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JgrbOsq9foxIZ+xviHYv/2qRAcRyjEel94au6B9XpJenVvERZbFVeEU3czhV3QSJa
	 AGzHDWBS5T3DBsK7fT73N5oTgssoQP12SORYOtxNKWGYh41AioBVxiTqMT2WROPQG0
	 dNw7Yser3cGFrb10UEflVyTEMVT3qrDW6cygsoB5OOzcvC1xVx2X1/RYzcNoeS2SBu
	 6y2L1MSIxsjR5PA1wA6rzFYqsmtuzcrLQ17q6+DoffhdNhpzvWM5tTzWsfJyiXlvJ/
	 NrEpqDWsTd28NSix6vgvUeuhV+y1akXoomDLoAHdDI3tXvZZbUbrflBaz+0R4yrFTm
	 Ygf22Z1g0bUww==
Message-ID: <c64bced1-36da-4b31-b06b-c4313e893cd7@collabora.com>
Date: Tue, 7 Nov 2023 09:30:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v1 1/3] ASoC: dt-bindings: mt8188-mt6359: add es8326 support
Content-Language: en-US
To: Rui Zhou <zhourui@huaqin.corp-partner.google.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, perex@perex.cz,
 allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20231107031442.2768765-1-zhourui@huaqin.corp-partner.google.com>
 <20231107031442.2768765-2-zhourui@huaqin.corp-partner.google.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231107031442.2768765-2-zhourui@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 07/11/23 04:14, Rui Zhou ha scritto:
> Add compatible string "mediatek,mt8188-es8326" to support new board
> with es8326 codec.
> 
> Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


