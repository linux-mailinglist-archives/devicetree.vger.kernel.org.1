Return-Path: <devicetree+bounces-29449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C0903822EF9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D05CA1C235AE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4299919BDE;
	Wed,  3 Jan 2024 13:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OATbLWaH"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55BA19BC3
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704290101;
	bh=B6eYnU3Nqp4N3yMzp3xM9ijrgxdpkgZDHDam8dtPe+w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OATbLWaHpjeFnCjaGtRjarh2HelTBqmI3ULVZ8+rcWWlYZYbiy86WKvz0lXpjcmaG
	 A49hljaqe/4g8XiLX6WqdhpBV56b11Y/VjQqvK6aLRc182ZIQSHmfAaIXUQl5by4UJ
	 rnEU2CyjA8yyjsXMlfWAN5zNxmo49kk3TFX0iIl474q7aRJHm3aRYLYW15Uut2i4FR
	 Epex2aOxuMth4nuKWwrxa6SmbewEv0PEyb6Ptsslvyu5cPPxqXbWFM3atSvVPrx8A6
	 p3oHTnWfs1FLKPA1S1agGgpIms7KVucAdAFQKkGz6rGEfKj0z0fleUVzI+lCv0TCNr
	 x4xZgPlEHxYOQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6C11437813CB;
	Wed,  3 Jan 2024 13:55:00 +0000 (UTC)
Message-ID: <9f616344-fc2c-4129-9138-73fabaf1dcfe@collabora.com>
Date: Wed, 3 Jan 2024 14:55:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width
 properties
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Sam Shih <sam.shih@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116130952.5099-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231116130952.5099-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 16/11/23 14:09, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes SPI setup and resolves following validation errors:
> arch/arm64/boot/dts/mediatek/mt7986a-rfb.dtb: spi_nand@0: Unevaluated properties are not allowed ('spi-rx-buswidth', 'spi-tx-buswidth' were unexpected)
>          from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
> arch/arm64/boot/dts/mediatek/mt7986b-rfb.dtb: spi_nand@0: Unevaluated properties are not allowed ('spi-rx-buswidth', 'spi-tx-buswidth' were unexpected)
>          from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
> 
> Fixes: 885e153ed7c1 ("arm64: dts: mt7986: add spi related device nodes")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



