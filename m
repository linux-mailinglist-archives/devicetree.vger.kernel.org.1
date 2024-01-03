Return-Path: <devicetree+bounces-29450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E65DA822EFA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70612B22926
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A0A1A27E;
	Wed,  3 Jan 2024 13:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OEbrY+he"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCC119BD3
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704290116;
	bh=Y6SN+zcURs1UQAKNCimkS1H11ol49Zpgfxhql3MJ7i4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OEbrY+he1zb30qR2uQrvQ7dcOwSYSQT8qymnjLa+upsc7Ez7ryen9zJPWA7Vi7Du2
	 /f3Hv1g7ttdlDMUx5KjYcfDWy4PoqXPh6KFTfjiuyNiyJmA3K5ynqX0fn/jujtmPnd
	 2qvDB7kqHEG27Mh72zuXfdZHwPrrEarrjEHQCm4uS9U2LG1G7H9b61HFiGucA2JqXR
	 R3C8ZUEOrF51z8WD763tPE7Fp8Hd84FgregzilTRwqZ8ib05L8/4YMjiIJEFnwFYS7
	 w5vEBCoGzRk2e9cHaUxfvLn+S/NNYj5HQaykQMIkeSNB5Ej9FHN7kWInPbQL03iSXO
	 FgKZVkWi7x3Ww==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0687C37813CB;
	Wed,  3 Jan 2024 13:55:15 +0000 (UTC)
Message-ID: <796f2535-9b19-48f9-933a-00d181564c1f@collabora.com>
Date: Wed, 3 Jan 2024 14:55:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan
 node
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116130816.4932-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231116130816.4932-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 16/11/23 14:08, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes typo and resolves following validation error:
> arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pwm-fan: pwms: [[54, 0, 10000], [0]] is too long
>          from schema $id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#
> 
> Fixes: c26f779a2295 ("arm64: dts: mt7986: add pwm-fan and cooling-maps to BPI-R3 dts")
> Cc: Daniel Golle <daniel@makrotopia.org>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



