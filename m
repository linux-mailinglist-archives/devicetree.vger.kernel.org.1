Return-Path: <devicetree+bounces-70242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F78C8D2EEC
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60B321C20B03
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478E2168C18;
	Wed, 29 May 2024 07:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="zHwV7YqK"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC20167DBB
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969014; cv=none; b=OGYwoBMF0Xog5YRSBodu+0zd3lWpWgY04kRhSeedcyIhHzJrK0YLiZvgkkQZUhHLHKIjlKxC190DcMYlUYAnzQZHF2ZeSNo/5rP9eG4wCy1wvkBA39J/8dU2zhvMwPu7uQcGSiaCYtslMfXcDGFmu9glYN9/CanbIQyPfjhoogE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969014; c=relaxed/simple;
	bh=YwrBrQBcvTpTydqwx/3BrbATRqTX/3arrlFSkJJkj0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K33vG8/xqgW3yNS0f+obmU2vLD7rU9SDt2ACjk+hYUdQwVMw5oTEttYCEp8ccWaRiAR9IUKPbwTQ+owoUW0Y1Y1dY8JDOXa/139MePCf15b0qXCv1YG2Fky8HJEeqkqLsm8ZLHi6EaXb5Bpf7O++JyCLclKgES5Mv69v6Q0Xpi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=zHwV7YqK; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716969011;
	bh=YwrBrQBcvTpTydqwx/3BrbATRqTX/3arrlFSkJJkj0o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=zHwV7YqKboVksBk1H/fFOxMLCR+eFI/6fhziE9xOl0mozz48T7pYwqUGEcBESQ4/o
	 neiz3WWCjnDLmTWvFpill/DYwOsn2yxJCpkAVNH2ZdqoeWRl/qhJiwN4WlJS43qypP
	 X8Gy5Jz/uQ+3MEoAj4BEUcziLDPKuiOwLfU6rqqD/uQ+2/aefsSjg5D9yr7udpEBcz
	 6IaKIvtPTgoma+80FqvUjzGIVzHjkmzrQWkqBhGA4NIOsP5tjf+ikNjnUJFhCwLjHc
	 X+nOQn7pgduCsJj+Ok0T9TrXh+2SHWaesUxMYNfptflfFkaGsl0vOsLGSYzbC+XyBr
	 1ItasfsljEMiA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C0C36378216B;
	Wed, 29 May 2024 07:50:09 +0000 (UTC)
Message-ID: <a621f422-d5b9-44ef-9001-ce6afe25eade@collabora.com>
Date: Wed, 29 May 2024 09:50:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add OpenWrt
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
 <20240527115933.7396-2-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240527115933.7396-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 27/05/24 13:59, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> OpenWrt project (with the help of MediaTek and Banana Pi) has produced
> its very first own hardware. It needs its own prefix.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



