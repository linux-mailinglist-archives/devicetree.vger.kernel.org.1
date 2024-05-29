Return-Path: <devicetree+bounces-70241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6908D2EEA
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B01C91F2B74F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE145167DB9;
	Wed, 29 May 2024 07:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="N+8cJ9w+"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522141667C1
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969012; cv=none; b=JkE+AqyayfNbIL92sTCcwu2uTFy5qD1GPg4kbYnIhYC2b39ZRZp6QRRkbHdLLRDqZoWPc1hssN65s6vWeUYJrZbNweylesMu9xjol+RUC6Mj72kUewIST6dzK/8suVZr2YqFv9voxTHi51NO3clMWiVjDK7DpDg3YUKvKAGwgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969012; c=relaxed/simple;
	bh=5Y1TzX8BdqtX9D1aqB/WNbF9QfUgTWYv6OKhdD2AjcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=phmi6Wg0KqfJoN17QMY77L96Iq/YNC4pWchULAUCaoc3AOndKzoYHG9CPNMbIhQ/E9IC0auVjMgnsWEUkxx5eTPztfvMgxVU9Pt9Xx42uyipyGt61h6zddLFiNrQSom6e0g9tvVB6L4kPsOhIFaVgclFd0mIj+uvEwjIl0dpHks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=N+8cJ9w+; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716969009;
	bh=5Y1TzX8BdqtX9D1aqB/WNbF9QfUgTWYv6OKhdD2AjcI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=N+8cJ9w+z0a9R14vo09cAFx8BclLGFjF1SMWb9sOXRw5XgLrZ/tlQrQRwf8ONiywY
	 2bbBaMcvxUgw0loXnYmugaJmEg6f3KqWnc9uRFkCk01lk5qryow4cA2hKg0D6OCNRF
	 Pp9jKd2uftTe9J06eF3Q54T3SY/TGxWMqMpDA/IfUgou6DYvit9Sv1DJ4PX3K8BgaJ
	 7xcNUe7+PJ6OpSOe89JwQimgjqr8e9dh/hi1CX0jNubNv9tG7mefiJGm9XUro7pEoV
	 9ZK5gE6Zuk0q7sEzWezk/Gbvyv66ChzWB7a5G4vA82IvBgX12t90944bY8E3jPJoaN
	 EHsIknjNsruoA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 563133782162;
	Wed, 29 May 2024 07:50:08 +0000 (UTC)
Message-ID: <773385d8-d523-4d17-ad4b-46decca617ad@collabora.com>
Date: Wed, 29 May 2024 09:50:07 +0200
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

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



