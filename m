Return-Path: <devicetree+bounces-20646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2398F800681
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D27D1C20C25
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0481CA94;
	Fri,  1 Dec 2023 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZHyFuCVn"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B1DA194;
	Fri,  1 Dec 2023 01:04:18 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 525386607355;
	Fri,  1 Dec 2023 09:04:16 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701421457;
	bh=0kTgGEFrtxmALDxuSPD6o0PLxYETkKdh7nPJkhHPcNs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZHyFuCVnw5FXu3RVfPY4oOVdtFuk2vNmxRgw3PQ9Ro7TVV4A3jhGNTY6DwbzIoYnr
	 co/Bv0eEApPWkxTkZyCsawZ4ZWADLUeck2FtkVbIL5AuED1SsWZWe5Y2EE9/Cof1RE
	 eVQqB5uayS5FmyvznPNMFmxOvX4UcUuJ8MHM4V7ODN/wVUgEc4USt0FKmav7QS+dmg
	 A2gzIytwhIWiPUt3osopudPbEuspmmpVXUhAOX26rNl/C8Vwi5LjXTLWVXDRC8gwF5
	 rwVoEDwlm62VS5d3GBo5X0u6AvuykwyU5WV7733S40aquizZIZGDE/by8dCsRfUBHN
	 EHIpX/0GVyniA==
Message-ID: <6a8b3f78-a7f0-47f1-af9b-671ca900ab8e@collabora.com>
Date: Fri, 1 Dec 2023 10:04:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: mt8186: Fix alias prefix for
 ovl_2l0
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20231130074032.913511-1-wenst@chromium.org>
 <20231130074032.913511-4-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231130074032.913511-4-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 30/11/23 08:40, Chen-Yu Tsai ha scritto:
> The alias prefix for ovl_2l (2 layer overlay) is "ovl-2l", not "ovl_2l".
> 
> Fix this.
> 
> Fixes: 7e07d3322de2 ("arm64: dts: mediatek: mt8186: Add display nodes")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



