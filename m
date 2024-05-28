Return-Path: <devicetree+bounces-69792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B22F8D18A0
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:32:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7879289A53
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7855513AD3E;
	Tue, 28 May 2024 10:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="vjHWaF7V"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031D317C7F
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716892327; cv=none; b=Omc95QbX0+HpTWOVxMLxu4wLIEXy/+Q347dgXFlFhBVDY9QmyJhdCt93/o9G4gsIYX5RhAFHo/V5WcrH7M+0l9B30Wv5agiVZUc7Qo0JKJTT3Ey1wtY7F+5R97cdlqDTcNj1mUk2FlbYqpUBURBo3yp+ZphNMEZQLIMiaKor6A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716892327; c=relaxed/simple;
	bh=tx08ion0GtTUDJWV1B8DcE/k7Cf6d0BaHc8bECS4fXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DIjVvEPk770+UbSYZurUxZmenSooGcNFS6GxQvzuBWPb9pawlrSpFfBsOawucDxFsgaJQlbeUyGUGq/MwFOxl2tSIrYI/fXPN8xNX6WxFMX41Szr2CvMm4x+Ygs1GS6AvP1vrK5jlZoPHGEPF/oV6R3/xo3Ga+Eb4S/bjSYASmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=vjHWaF7V; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716892324;
	bh=tx08ion0GtTUDJWV1B8DcE/k7Cf6d0BaHc8bECS4fXU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vjHWaF7VoCcFlTKW8QjfWWIK4k6fslKfmM3sj8cXBhiZax/hkcCGStdS/ELcx1AmQ
	 4Q8UhJ6O4TFATbRURJRHPdczEa9iMmb7w5mAq5Jc5fVf4O0l7EUu5JQCTvhRHPwgHR
	 c5+ez1XvrbUz77N6+19TEnHWSmoG/hvK/Ssvo2tg/2XzLYoBc+0Bjbo1SuLf3nBPP3
	 5BszC9Sd46Zga6hzOx/2RoWNvSU64LvfdCQapfIvL4xY1E8czPFft4UyOwLQkmzUHj
	 02dJGL1blYFW9RdWoQUqfVNZsSijJ/qLClLZ/6LXKOYyPh9R6zv9qPum6R0/s9UHzv
	 pI9tfy1GV/0CQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D82083782113;
	Tue, 28 May 2024 10:32:02 +0000 (UTC)
Message-ID: <f3930034-0cc1-4bb5-894a-72c809211233@collabora.com>
Date: Tue, 28 May 2024 12:32:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add OpenWrt One
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel <sre@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20240527115933.7396-1-zajec5@gmail.com>
 <20240527115933.7396-3-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240527115933.7396-3-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 27/05/24 13:59, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> OpenWrt One is the first ever OpenWrt product. It's based on MT7981B and
> has entered an early production stage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>   Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index eccc3f7cc4e6..c150acde1f90 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -86,6 +86,7 @@ properties:
>         - items:
>             - enum:
>                 - cudy,wr3000-v1
> +              - openwrt,one

Isn't the OpenWRT One made by BananaPi?
In that case this would be bananapi,openwrt-one I guess?

Is there any OpenWRT contact that can please help clarifying this?

Thanks,
Angelo

>                 - xiaomi,ax3000t
>             - const: mediatek,mt7981b
>         - items:


