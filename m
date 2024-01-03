Return-Path: <devicetree+bounces-29448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F20CD822EF6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:55:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F33CC1C2179C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9DD41A27D;
	Wed,  3 Jan 2024 13:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qXpr3a5s"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6D719BB0
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704290089;
	bh=sQ66QyW+xMaePGko6IiEu9l38fnfyRbQ6WKJNcgwFQk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qXpr3a5sFLiv9Sz8oAdpRKAHWrXlFschvWY2+bAJR1jwqUGm1+pkRKDwGedEsVZ5o
	 DwYtE+4OnTOzVcU26AjIIy4BKvV+aZYeWWAnpaEYLKfync8UM8VBR/1D9+hXSAfWvE
	 /C4EyQ4yN1pt4tudl72fK5MDAB0XwXSRJ6XyMEChK+TJi9Sb1XJAGVyZ8vDHyTGKo9
	 rHJYU9ZximEoXLgjs6EYvTDak2iDxuuihHERyAbHUF+G/xeJPxBUL+XVrpjtQGue+U
	 hQeT7itI3GtqHua8zrNxTTLTo/B/ARv7we5g4RxyiYEIMNArKVrOmKvuManeuWQ4jJ
	 rL+vYBTMspZ0A==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B845737813CB;
	Wed,  3 Jan 2024 13:54:48 +0000 (UTC)
Message-ID: <6b3ac221-ada5-4ff5-9a65-97ddfff59495@collabora.com>
Date: Wed, 3 Jan 2024 14:54:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
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
 <20231116130952.5099-2-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231116130952.5099-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 16/11/23 14:09, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes following validation errors:
> arch/arm64/boot/dts/mediatek/mt7986a-rfb.dtb: spi_nand@0: $nodename:0: 'spi_nand@0' does not match '^(flash|.*sram|nand)(@.*)?$'
>          from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
> arch/arm64/boot/dts/mediatek/mt7986b-rfb.dtb: spi_nand@0: $nodename:0: 'spi_nand@0' does not match '^(flash|.*sram|nand)(@.*)?$'
>          from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
> 
> Fixes: 885e153ed7c1 ("arm64: dts: mt7986: add spi related device nodes")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



