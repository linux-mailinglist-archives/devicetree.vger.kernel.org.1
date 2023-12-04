Return-Path: <devicetree+bounces-21374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 396D480369A
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9884B20A99
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD5328DBB;
	Mon,  4 Dec 2023 14:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hir36Kpx"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B95385D;
	Mon,  4 Dec 2023 06:27:49 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DCDF16602F41;
	Mon,  4 Dec 2023 14:27:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700067;
	bh=V9x5XsnAYvTRabg/WvQRDL3w7N8rufl/OG+QWOqronQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hir36KpxRDGhkVeELLiLNB9qCCq2/X7ZoUG6lyCWRfccnF6rhMDrBYZH2QQAXgV/J
	 79sw1Slt214xnYDOGqS/AOLHx3+Nf9ZYZ+er3XX01IUWqczOp7ASEaOxASa9lBhyqh
	 EUDo2Tcl+O/uxc04HqwDYK5Adehm76h6zw3Yczm95VVhKlU6geoDku+tJLh/Pk+gyF
	 VDlBXJGGwhZ7PXnGH8OjZgp1GUF3j+7MtLspBjDff6nOLPPiRHGK+P14HpcYopxtej
	 3FCeKN0L9fUoGh1LRaGhbU4PIw/DM5OPSCY8eBGg0nz5PTiM0fidwWNA26nWGGiHHI
	 tGmL71pD8OWIg==
Message-ID: <e68dddc4-7175-4457-9882-6403b09a1e8b@collabora.com>
Date: Mon, 4 Dec 2023 15:27:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 9/9] arm64: dts: mediatek: Add MT8186 Magneton
 Chromebooks
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-10-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204084012.2281292-10-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 09:40, Chen-Yu Tsai ha scritto:
> Add entries for the MT8186 based Chromebooks, also collectively known
> as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
> the "Steelix" design. Being a laptop instead of a convertible device,
> there is no stylus, which is similar to Rusty. However Magneton does
> not have ports on the right side of the device.
> 
> Three variants are listed separately. These use different touchscreen
> controllers, or lack a touchscreen altogether.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


