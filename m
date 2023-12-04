Return-Path: <devicetree+bounces-21378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E5F80369B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 800191F211D5
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FDE28DBD;
	Mon,  4 Dec 2023 14:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WH7y/WFY"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA3FD387C;
	Mon,  4 Dec 2023 06:27:56 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E1073660711D;
	Mon,  4 Dec 2023 14:27:54 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700075;
	bh=9to/erUr86/0U8KBTbXriRV2fA+VN9gcEsoV5rt/ZGQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WH7y/WFYqXrHBjzr9l9xgLJaoxz6QCDVNdpWirpn+Xmnz09D//y/YpwK+Q84W1dpc
	 dsH2qGS9B5gNMAhVBL5Ui4DwHlwcGTpyQuXhKtHsI1UKvt5ZM9D6O9QhoVhvLozJQG
	 m+mYXyQnoY5/Cyu4GmvYPGfLyPvi0kznOD/fX+R/IR3zl4sAWSG9wQH6Da1YlAAqZN
	 A0ltDN3NDvFi0FxCAcPkigzViWghkO1eCSMk8SCvEduIXUiMCVNrEj2b4x0U9u62IM
	 9jkcKvIY5GG2PDkVHhl4KK0mINPemJmFgnfGW611a2p3sQiOvspfQjOpxqPRVVnr0Y
	 aBaAqX0b7RDKA==
Message-ID: <ce1bd340-cfc5-47ba-849b-1ee429b75c1a@collabora.com>
Date: Mon, 4 Dec 2023 15:27:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/9] dt-bindings: arm: mediatek: Add MT8186 Rusty
 Chromebook
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-5-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204084012.2281292-5-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 09:40, Chen-Yu Tsai ha scritto:
> Add an entry for the MT8186 based Rusty Chromebook, also known as the
> Lenovo 100e Chromebook Gen 4.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


