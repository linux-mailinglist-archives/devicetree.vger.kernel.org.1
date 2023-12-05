Return-Path: <devicetree+bounces-21846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 198768055AC
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4DF81F2129D
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFFB5CD0C;
	Tue,  5 Dec 2023 13:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NE8Xm/PS"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5A298
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 05:16:26 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5511E66072C1;
	Tue,  5 Dec 2023 13:16:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701782184;
	bh=LvoshTz5j4twB2nV0awiqsR0ckNUSJGr88T74wiUcu0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NE8Xm/PSsBZc/9Aqs5m+atujg8ibHAGr+MhimUjMURtvhcjFSmd6k1YCIMN8FV5nR
	 tgoy/YGKU87suoeDUM0G5C4Sm+hEq7NHjRkGqbNJE3GZ5Hp0Dyr9Y4frLT5Rzw4OWo
	 3bjUztb5u38K/QRWwmDDmQhV2Qf0QcoFxaTKqi1Ak2Rk3aLVY/viGrg1Cc/G5jigW5
	 J4sL/ADNChXlfhE0zSO2NnBA4KPk9Stkz+haT0Q6lR7vWTYRtzsPTUtR4LxmUvoZkD
	 S9hdDJk6pX7h/k4uWj30rZjMCfH1vzMBBcRNdrcMm5L8WARkHcSptOxGPu/T9Sk7Qw
	 aPh2gG4c+bb7w==
Message-ID: <b1b4da61-6c35-4f8d-b3f3-efa50548e0d5@collabora.com>
Date: Tue, 5 Dec 2023 14:16:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?=
 <nfraprado@collabora.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231204200907.5687-1-zajec5@gmail.com>
 <20231204200907.5687-3-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204200907.5687-3-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 04/12/23 21:09, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.
> It has 512 MiB of RAM, one 2.5 Gbps PoE (802.3at) Ethernet port and
> on-SoC Wi-Fi.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



