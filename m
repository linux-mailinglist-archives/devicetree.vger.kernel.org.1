Return-Path: <devicetree+bounces-17149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D487F158E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:19:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39CD01F24B88
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E911C2BB;
	Mon, 20 Nov 2023 14:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="l5SIbpnW"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA38DA0;
	Mon, 20 Nov 2023 06:19:06 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 91E596601A72;
	Mon, 20 Nov 2023 14:19:04 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700489945;
	bh=T+qrTMuHrMRvawTrd49xgKdO8TQz2pga+1olo5Ug+d0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=l5SIbpnWFFpe7m4zp7bUc4ZGpQnE/gvSXdpkF2IWW3lipEq7+/BREXuAc0JwoCntI
	 CFeo8b8oZBbJ3dSOEpxvytJkhqw8fZkqYNcz83INp+n2mde5hmy+NgzFcfJ+0XHDQD
	 bVI+0wKt/sG06Hfjy1vYT/0WgNIpROWj0xZA+EUvD9GwIy0nBt9b36R3OnXaVVG0+y
	 Q/rOQ9NxGKaS4cWI7TiuIfmdQJAFMjiYcW8Iu+bRC6Tolh/L+knk6hdFZVVj96+fHB
	 fAsM55BRrtfAMZ9c+DC7tfptCmPoe3TQBGq4YnztMK2bTiUQb+8v4Wov/O/LhRBmNW
	 4GyxmbMAiv98g==
Message-ID: <0136f1d1-22a3-4929-81ca-a1ed35ba8546@collabora.com>
Date: Mon, 20 Nov 2023 15:19:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3] dt-bindings: thermal: convert Mediatek Thermal to the
 json-schema
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20231117052214.24554-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231117052214.24554-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 17/11/23 06:22, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files. Introduced changes:
> 1. Improved title
> 2. Simplified description (dropped "This describes the device tree...")
> 3. Dropped undocumented "reset-names" from example
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



