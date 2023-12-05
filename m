Return-Path: <devicetree+bounces-21847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A288055B0
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C15851F213D0
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528255CD0F;
	Tue,  5 Dec 2023 13:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Avy5RDzv"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA1681A1
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 05:17:19 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C133F66072B4;
	Tue,  5 Dec 2023 13:17:17 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701782238;
	bh=LvoshTz5j4twB2nV0awiqsR0ckNUSJGr88T74wiUcu0=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=Avy5RDzv0HF6Xg83nS8DHcmyGHrrl50Od7RllZy385do+ItkFtic9DT5X5Kzieaaj
	 a3N5myRuCXa1Jz1sgo95uLsskwgT5x8iah0z4nZpBPyJihFX7PiifxzsIY1aQgukPr
	 G8RE+XxHWGKUtXTnrCrdXVGrbnRx+M/HVXaRmVVTgN4FN+Rgxh0JAWtKJDlHOR77KQ
	 65rJ7/zi36S9BN4/cg25RZjjI4oAxPrpWbFsDUq7hyZARxfCKYnNhB/rCFw8TAZdcu
	 P7Rl7+PAP2Az8jYHQvabxOmpGsFS83Wz4P0b4JIyUzwEGAedxf7lB+lkiVL2YOl+gn
	 GwGQhDY8fvtmw==
Message-ID: <4e3c38b0-c366-46e6-a0ce-6b1ff25c5452@collabora.com>
Date: Tue, 5 Dec 2023 14:17:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
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
Content-Language: en-US
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



