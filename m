Return-Path: <devicetree+bounces-21377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CAF80369D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:28:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 513D4B20B45
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9BD28DB7;
	Mon,  4 Dec 2023 14:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cUkU5srA"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 295401FF5;
	Mon,  4 Dec 2023 06:27:55 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4F4196602F41;
	Mon,  4 Dec 2023 14:27:53 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700074;
	bh=QSxpW+IBJsuxHY0HRVh4ksH35/aOjnups19/pSTeQHw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cUkU5srAiLj8fi3hHPR/57FxJIkfuah9JE/V/6opHDsNKGPZigvjcH/2f6SUUaI3+
	 nOr3DSYX6UyVFMVa4MxRRldu95K8hjcuzCVXq5CLihtvJd3YIo+F9UzzDnF4G9O/cQ
	 N3jaHtcK/lu0UW9FPvDNlzO2LLkncxhqIL/OeHXSpNw8TgwT3el/opohWAhoW7Opo8
	 Yrn8RwXoNZ0GBMzizo9ppj6lhwi9ttDXLcYMwvOr9OIVVEyOOrW4tZbAMqG+E0dVag
	 aLPXfUbyB3rTzWuxnopfCfE9dELy/U7y614b0fdY3twyxKZWdaxTU5pxFGukhNsgsN
	 Yj0QFNLNvpAew==
Message-ID: <6261c914-fc03-42d7-8237-75f3b59deb5d@collabora.com>
Date: Mon, 4 Dec 2023 15:27:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/9] dt-bindings: arm: mediatek: Add MT8186 Magneton
 Chromebooks
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-6-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204084012.2281292-6-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 09:40, Chen-Yu Tsai ha scritto:
> Add entries for the MT8186 based Chromebooks, also collectively known
> as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
> the "Steelix" design. Being a laptop instead of a convertible device,
> there is no touchscreen or stylus, which is similar to Rusty. However
> Magneton does not have ports on the right side of the device.
> 
> Three variants are listed separately. These use different touchscreen
> controllers, or lack a touchscreen altogether.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


