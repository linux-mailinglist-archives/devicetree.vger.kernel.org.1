Return-Path: <devicetree+bounces-9537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E02E77CD5EE
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D9551C20DFA
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC4ED134BE;
	Wed, 18 Oct 2023 08:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NE+Dui5a"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4028614A9A
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:03:08 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C6F7F7;
	Wed, 18 Oct 2023 01:03:07 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1FC1B66072F4;
	Wed, 18 Oct 2023 09:03:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697616185;
	bh=BzCeLcDnyVpGNQ25QSxsx2zwulo4lGI2Vka4ybY5HjA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NE+Dui5a6xhmhcondJxHHYw+UhK723wueVo/00NuAro4Oepei8lsvl6fVuZFnOoQk
	 LcPbBnYIomG9s6riHWfNHl5HyC6niRV68J/8LdrXHjzgmCBN5Fni80qvvER4t4/pHD
	 zJTsNYui4MBRXVDyrf6q5xRUA3IuoZnocvB1g2q9zIlibHdYgkqjVaSqE9CEE7rv+4
	 +qyVT9n2B1A/RwPq2xXoaGdIzxgCxtOUzBGxGVQAsf1Ia7Ux1IFI2+iAxe9SZMPlql
	 YtVACzVw80+8GZtrNeqg1+J2IUVGN7eG+wg+SEO3+GPtF3/qy3K1+oPZq8JbEjMB6b
	 WdOmAlm169YUQ==
Message-ID: <0130480d-aebf-44fd-9334-e288ac2ddc32@collabora.com>
Date: Wed, 18 Oct 2023 10:03:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] arm64: dts: mediatek: mt8192: Add thermal nodes
 and thermal zones
Content-Language: en-US
To: =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org,
 rui.zhang@intel.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, dunlap@infradead.org,
 e.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, wenst@chromium.org, ames.lo@mediatek.com,
 rex-bc.chen@mediatek.com, nfraprado@collabora.com, abailon@baylibre.com,
 amergnat@baylibre.com, khilman@baylibre.com
References: <20231017190545.157282-1-bero@baylibre.com>
 <20231017190545.157282-5-bero@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231017190545.157282-5-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 17/10/23 21:05, Bernhard Rosenkränzer ha scritto:
> From: Balsam CHIHI <bchihi@baylibre.com>
> 
> Add thermal nodes and thermal zones for the mt8192.
> 
> The mt8192 SoC has several hotspots around the CPUs.
> Specify the targeted temperature threshold to apply the mitigation
> and define the associated cooling devices.
> 
> Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
> Reviewed-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> [bero@baylibre.com: cosmetic changes, reduce lvts_ap size]
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


