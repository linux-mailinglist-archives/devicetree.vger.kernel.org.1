Return-Path: <devicetree+bounces-12342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7AC7D9009
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB76C1C21014
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C863FC8ED;
	Fri, 27 Oct 2023 07:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Gth3Q9Y7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C42C148
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:39:04 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5B01B0;
	Fri, 27 Oct 2023 00:39:02 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B43F566071F1;
	Fri, 27 Oct 2023 08:39:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698392341;
	bh=+BcPgHf1G8FIBhqLU4HwJQyAJtnw/+2yV5G/DzMXp2Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Gth3Q9Y7J7kbGb/GzWpjsyV/6FPr4C5aTbBdwnWzCVUfdNZ+vY1ujUqHhUOT68lFY
	 nIRR8t/w0hoOHAior7+oaO8QXMfnDie4OrGv8USLIUi17Crum3oNJEiMrgk7+I4k4G
	 DkUFOe0Vc7XUTiNKvqUQaxdFghgMCwkUGLtVWyhlKwp6GuKAtV0SQ38TUAFgGzEfeT
	 WwtkSnuA4FihRmFWkRiqHm7q53xq+Pmwju0MgvZ3/StPzrJ3y6uQzh1J0FMBf31wac
	 RINKZjYAMjlJOejg/XUQqSsjUdcuxS2wyotwqYNB0mCCFKJl+JvsxDfopR1qUKrN8l
	 LxFWVKgmJmsqQ==
Message-ID: <f89f3e14-dbda-41bf-9797-2571be53029f@collabora.com>
Date: Fri, 27 Oct 2023 09:39:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] dt-bindings: arm64: mediatek: Add
 mt8183-kukui-jacuzzi-makomo
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
 <20231026191343.3345279-5-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231026191343.3345279-5-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/10/23 21:09, Hsin-Yi Wang ha scritto:
> Add makomo sku0 and sku1 which uses different audio codec.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


