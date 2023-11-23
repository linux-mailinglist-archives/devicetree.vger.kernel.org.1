Return-Path: <devicetree+bounces-18231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDAA7F5C1A
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A67C28138C
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04DA2233A;
	Thu, 23 Nov 2023 10:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="B6zDkjcn"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65D00D56;
	Thu, 23 Nov 2023 02:18:03 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9AB0C66003AF;
	Thu, 23 Nov 2023 10:18:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700734682;
	bh=i7pSyJcAGPN+KpJvho68vV3Hb3HZCvrZdQzWPqZsuxE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=B6zDkjcnoXa/+4M9wox/yHwHX4/3zkY5ULaNyWhdFy+RimY9BMFUNa19gZDjLtDye
	 xI9oFRKj5ISNFU8JxFMx5kBtzTL7xL9CPYv8eNFD+r3TGe27XOyCIHfTMSmEgjpkRo
	 Lsj8236AQXkrJQVtjnaaNyNe6DOf5NI2ksIng3Jmzjk+aaXq88dVRLWh2LzetalohR
	 BZFacD/4yM+HFx9jABuFKKeOrhUZDBZf1fGaDqeNBbrKcKSmsH4jFPaE530Ek7NmD1
	 6tl0vWMcPXML3K+FS5EMAvFkWeCS7cut0YzdAB0/dUdrk4ImNHGMQQmxVtP8WDFBLn
	 xW82u8e7EegQg==
Message-ID: <4b48564c-245b-4562-943e-a7455b214825@collabora.com>
Date: Thu, 23 Nov 2023 11:17:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/3] arm64: dts: mediatek: mt8195: add MDP3 nodes
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: "Nancy . Lin" <nancy.lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20231030094840.2479-1-moudy.ho@mediatek.com>
 <20231030094840.2479-4-moudy.ho@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231030094840.2479-4-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 30/10/23 10:48, Moudy Ho ha scritto:
> Add device nodes for Media Data Path 3 (MDP3) modules.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



