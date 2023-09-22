Return-Path: <devicetree+bounces-2437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B397AAC9D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 811282837B6
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 860AC1DDEC;
	Fri, 22 Sep 2023 08:29:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAB71DDE4
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:29:42 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458D81AC;
	Fri, 22 Sep 2023 01:29:41 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8E5C066071F1;
	Fri, 22 Sep 2023 09:29:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695371380;
	bh=vTUoTNsUa8plce4ZbB7dv+A/sBuZjeEuE9SHlr92eUQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XRIegUlz87ygvplzkHPyr2QBNrDZ7bxFA3fdLff1RuEmu9zv7pbyKyrtzsGo5jeco
	 NFDJL3h2bUajx2ogb1URIm90kzcWDoOdwrXcSqFE/z2xF5ApRZFDyOflFfmqzWLzHV
	 RncnRPGMU89bUCfCprQugeieiwvJDMFkVdKa1bQ0wfkIRfk9ia3+pXB/+cA6EKrfSx
	 CPRVDwpeU8ZjR6IneQMiAZZ/+y+ufEG7O9TV94vya7ipXMUplVcNUBc+kX2vw5Hrul
	 ZXpIZY+So9oHq9cx+dhYIHeAyDJq1wOVxtxUuD3zugKyQ+Ktusc/+2QeakoQVpLs35
	 HMWz9FVSO1psw==
Message-ID: <5b743459-1866-3f51-f3eb-8af335035800@collabora.com>
Date: Fri, 22 Sep 2023 10:29:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v6 1/2] arm64: dts: mediatek: mt8183: correct MDP3
 DMA-related nodes
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20230922065017.10357-1-moudy.ho@mediatek.com>
 <20230922065017.10357-2-moudy.ho@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230922065017.10357-2-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 22/09/23 08:50, Moudy Ho ha scritto:
> In order to generalize the node names, the DMA-related nodes
> corresponding to MT8183 MDP3 need to be corrected.
> 
> Fixes: 60a2fb8d202a ("arm64: dts: mt8183: add MediaTek MDP3 nodes")
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



