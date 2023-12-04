Return-Path: <devicetree+bounces-21373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB74803697
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8AD2280FAF
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D317B28DB3;
	Mon,  4 Dec 2023 14:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kUue6Bc7"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C344A385E;
	Mon,  4 Dec 2023 06:27:49 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9E628660715D;
	Mon,  4 Dec 2023 14:27:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700068;
	bh=d8f+uHH0ZzAQlhfNlUmTKSsNaY4TuqeSn7iPVuJ/3vU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kUue6Bc7WklHVY8YY7v+bkCUfMNyactF5IFHJoM2yPgLS1AOSEh2LtEqHrkZB3dgs
	 fgSaVUWjqec3N28dStowXIVtBv/d8/BbtVFoPxvXIhxI2+HANpW5XUw/YdIYKofFkv
	 4VmQgJfU5NF/bd7Ree89VkFEeETXDuzczlMKMxCpVr+GzcupKZ32TXvXsi8Gqh9Utp
	 fwOnYykeee303AroVheubGGqWq28DS33EhLUz8uXicuznhPmJI1vBtj3+LuGac7FxY
	 TtStjTm87zwJfuWwKoFvZxsDtp/PpqBBUXJCCY8mCkJH2akhDoumVRkNcXRcNacJBt
	 z+CphlB+ykH3A==
Message-ID: <ec4b992d-5761-44fb-bce5-91b1a8813f82@collabora.com>
Date: Mon, 4 Dec 2023 15:27:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/9] arm64: dts: mediatek: Add MT8186 Steelix platform
 based Rusty
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-9-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204084012.2281292-9-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 09:40, Chen-Yu Tsai ha scritto:
> MT8186 Rusty, otherwise known as the Lenovo 100e Chromebook Gen 4, is an
> MT8186 based laptop. It is based on the "Steelix" design. Being a laptop
> instead of a convertible device, there is no touchscreen or stylus.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


