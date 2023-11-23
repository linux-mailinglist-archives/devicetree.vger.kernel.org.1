Return-Path: <devicetree+bounces-18238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BF67F5C52
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 962CB2818CD
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1450F1C28C;
	Thu, 23 Nov 2023 10:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LYKDYOkD"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BCC6A2;
	Thu, 23 Nov 2023 02:31:49 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A24EB6607377;
	Thu, 23 Nov 2023 10:31:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700735508;
	bh=6hK8m7VIhmrU2OJGm7DqqR0J2A9CMw+Ic7fnXiQSnqM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LYKDYOkDauP1JSYgbl4YafxYdpJ870lv3Xs+zMWVmSRBND7/sSmsl6L3MPq7A32fv
	 g7zYQOcdij5icyna5gCARfz2BSqtuVoH9xNvRyaYJvfCXX/uR6g6JxlI1bAthCbUPQ
	 +l4VNw6mts1Dve+cIpUBpHVL7N72Hs2QcElCptL/xu7arF6U+iEhafiXnnGPQqvU4i
	 LywVjxC+k6EPu6I1Bb6Xy3zsI/o+Ff9aBRnlT6pZS/tJ5P0BVc4zGhxG6U9m/tkCi2
	 /lFLTtqIriQv4vqmbXdY9uWapWu1cBI8ygQKR91AHOVH7Dvz273ZnpDfBy1VeYxYBH
	 grvObbhwTJXqg==
Message-ID: <5560ba13-e09c-4751-87f7-845d82199b45@collabora.com>
Date: Thu, 23 Nov 2023 11:31:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183-kukui-jacuzzi: fix dsi
 unnecessary cells properties
Content-Language: en-US
To: Eugen Hristev <eugen.hristev@collabora.com>,
 linux-mediatek@lists.infradead.org
Cc: krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 matthias.bgg@gmail.com, kernel@collabora.com, hsinyi@chromium.org
References: <20230814071053.5459-1-eugen.hristev@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230814071053.5459-1-eugen.hristev@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 14/08/23 09:10, Eugen Hristev ha scritto:
> dtbs_check throws a warning at the dsi node:
> Warning (avoid_unnecessary_addr_size): /soc/dsi@14014000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> 
> Other DTS have a panel child node with a reg, so the parent dtsi
> must have the address-cells and size-cells, however this specific DT
> has the panel removed, but not the cells, hence the warning above.
> 
> If panel is deleted then the cells must also be deleted since they are
> tied together, as the child node in this DT does not have a reg.
> 
> Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


