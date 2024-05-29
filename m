Return-Path: <devicetree+bounces-70240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9178D2EE9
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9568282F4D
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89033167DAA;
	Wed, 29 May 2024 07:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="288nz7lV"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1130415B12D
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969011; cv=none; b=ntHAM6k/sDff7gb9c+utTUElJs+7GD0eihJDNzp7POiOwoczQTsU4KERTawtmo3AJBW23jnVEMpFxyqP6LJz88n7VoFVztMekaQayA5WfL14xqd3ZGDlypozUjPMNLs9AI2o0cj4fmFVKM8fe2Q6PAdcpjSRaBYOd71UhUDuFPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969011; c=relaxed/simple;
	bh=QvmjPuQtPKrMG7G1fVqtkkPz0Z4S4QAs9oH3e9Q5kHM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R423gZ1aVdsKZ0wCMk8NwUfMwmBdZkyxWqOwBcjL/Dusgya3MyGB1OqHa6EVDqElzBYLQyG96uBsSW3peAV+VQppCaUHduWYmCzi8CVyQmXNktcPnu9++uwLn/0ldyIkC22JhWxQFBHf0SH4DL7OsYp5q2mMP4C/Vf/yd9Gt6IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=288nz7lV; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716969008;
	bh=QvmjPuQtPKrMG7G1fVqtkkPz0Z4S4QAs9oH3e9Q5kHM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=288nz7lVfH5TDnNLWstJR68tIHVdDN0ENkAYZhzlrI1uuLu2+xCTXMhYKV5cPvySr
	 FbZW1wLaAAT4bDTLNa+l3TjYDBs2MGgfkoO++GrJ4H3xTy9eDybVVaq8+kPgv3Zu+T
	 ic02Rn4smYfD9y++Y41qnWfnzO9fplq0FdgJ2WrWVyDLm87Z1zsaTQxwERr+s4jl0R
	 ZtiTNBeTgCZpUDxTM4LPmDjO1/Veu6sTnhZdCL5EphLiE15WMldWJxKvKgxlnGdHB7
	 gJNA7VbBZCPYUVSez+qrb4pT4iyfg/3pxDt5bjMNRISXyl5IGlFEOlOCjwmaMTL7E+
	 9iRVt9DstvUpQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DF3013780627;
	Wed, 29 May 2024 07:50:06 +0000 (UTC)
Message-ID: <6576cdd0-d526-4b0a-9a74-7737fd75f06f@collabora.com>
Date: Wed, 29 May 2024 09:50:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: Add OpenWrt One
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
 <20240527115933.7396-4-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240527115933.7396-4-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 27/05/24 13:59, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> OpenWrt One is the first ever OpenWrt product. It's based on MT7981B
> (AKA Filogic 820) and has 1 GiB or DDR4 RAM. The rest of peripherals
> remains to be added later.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



