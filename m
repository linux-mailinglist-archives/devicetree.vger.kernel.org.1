Return-Path: <devicetree+bounces-12339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D1D7D9004
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87B30B212A9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCD1C13D;
	Fri, 27 Oct 2023 07:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZR2Nz6hA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2FB3FDC
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:38:18 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1C61B4;
	Fri, 27 Oct 2023 00:38:16 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 67CBB66071F1;
	Fri, 27 Oct 2023 08:38:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698392295;
	bh=DgGVTQwYOc05LF24B2QUXGjysUMWiF3TtI2Qs0YjFcM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZR2Nz6hAxxu5Uas63sbIOcAedRm15V5Ue5AhV/eMbTiZgYMuGl7uaoIKHGb3b+TyV
	 jwAfSU8Y+UMkC3//ul0nwDj8t4uvFVFM63yxlSJ4r4Zk5zfPgGhLD311HiW4LXHGSt
	 YHTQH8yP/7BxrjJt9Lfs/QcS1Gh76U/BhBJerMujrr+kIDciFmPanYCk22oIs63hgU
	 7R2wDoMabRKC8iakEvxaQxYndaJU2gxZO1koMNwaJiAZiFrHLlVIHUSUGiFkyQqO5A
	 OMTIm/mFTAkapGQ8W2V1/Xi5euAV4M3mXQ3hgcB4M8V0uxy+/vSIYB7H6QOIvIlxvp
	 GHwTX/1kRN6VA==
Message-ID: <6f3c15ae-49b8-4cf6-a4d4-601cf2e079ee@collabora.com>
Date: Fri, 27 Oct 2023 09:38:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] dt-bindings: arm64: mediatek: Add
 mt8183-kukui-jacuzzi-pico
Content-Language: en-US
To: Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20231026191343.3345279-1-hsinyi@chromium.org>
 <20231026191343.3345279-7-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231026191343.3345279-7-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/10/23 21:09, Hsin-Yi Wang ha scritto:
> Add pico (sku1) and pico6 (sku2).
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>


Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


