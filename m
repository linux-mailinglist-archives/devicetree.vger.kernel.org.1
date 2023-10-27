Return-Path: <devicetree+bounces-12340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3607D9001
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:38:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 894662822F1
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BF7C2E3;
	Fri, 27 Oct 2023 07:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="QTgbXtJt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D353FDC
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:38:21 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D71731BC;
	Fri, 27 Oct 2023 00:38:18 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D2B4766072FC;
	Fri, 27 Oct 2023 08:38:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698392297;
	bh=KInA2GojPxsiZ4s+CEBXwv6jTlgW0TQ/Kg4fkVV8b0I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QTgbXtJtUZux2/ebE8We0IPL+OqFw1byOMJOFr86Jh2w1HKHxwENobFRZmOjovRHq
	 8HCB7p9wyY5S24miDWzn+Mql6ijQd5Op8WHl8FWGpVFsneUSXzDWsFflb63BL0Y+KT
	 oQnpu88AuIO1wfsEpOOWYj+pqMhRtlIUn6WUeRNm/9QkSOF9iIqagsEDHUl4b9bprR
	 Du/PAKqf9srzLG4KR8mTdmdMLEW5zcMZkB1k9Z8KYQ+kDlyYKRTNT1+j4pSh8Z1O1q
	 69lGcwPyDiRVyojX9ZOOd9Jw+Fc0p1VvrUs/CGX5tWR5szytRsZ4FelB8v1o4TOLuP
	 4pWoAGiX0e8jw==
Message-ID: <1932ea16-8cb9-423c-9ea7-6b2f4bfe1505@collabora.com>
Date: Fri, 27 Oct 2023 09:38:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] arm64: dts: mt8183: Add jacuzzi pico/pico6 board
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
 <20231026191343.3345279-8-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231026191343.3345279-8-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/10/23 21:09, Hsin-Yi Wang ha scritto:
> pico is also known as Acer Chromebook Spin 311.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


