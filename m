Return-Path: <devicetree+bounces-12090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 746FB7D7E25
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:13:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 091C1B211A5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 08:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C131864F;
	Thu, 26 Oct 2023 08:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Nv1dpivh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F91256C
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 08:13:39 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D290B8;
	Thu, 26 Oct 2023 01:13:38 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0CCB06607331;
	Thu, 26 Oct 2023 09:13:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698308016;
	bh=b4sv+Fx9di5WoipS7karC4btrWmed47jb0eGgVLSPHE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Nv1dpivhq9t0r8s27I1+mf0LG047q5JakBxxDuYEGbpJY0xlOVusLF3pMoU7xvZkl
	 8V2RbRKwXdve1jUYvq1AzNDr14d+5IV7IbjTyVFyKRE3yxE4vOxq9xiGGLuQBffjZE
	 0Zo/cWs+114VOfhIVrIHCsCz5T0VybZuCRza3fz0Vkg7MlHCfVI4o3XXGFLFguKhCb
	 jbdhSaBEvPOLMyonGaDRQUzJhyh8mhRNnACTA/ygELPzJltPuAb+G8BX3rQFGGYASE
	 01WG/GZKXMVlOQPHT1RYShYDkULFkQZwLhdorvqgd5gpZs8jRK2QOOqJ03S/pYmDu1
	 BCJd3Ox0193pA==
Message-ID: <5f2f0bad-5a9f-4ae7-86ae-45bbe12ca9b4@collabora.com>
Date: Thu, 26 Oct 2023 10:13:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] arm64: dts: mt8183: kukui: Fix underscores in node
 names
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
References: <20231025215517.1388735-1-hsinyi@chromium.org>
 <20231025215517.1388735-2-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231025215517.1388735-2-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 25/10/23 23:48, Hsin-Yi Wang ha scritto:
> Replace underscores with hyphens in pinctrl node names both for consistency
> and to adhere to the bindings.
> 
> Fixes: cd894e274b74 ("arm64: dts: mt8183: Add krane-sku176 board")
> Fixes: 1652dbf7363a ("arm64: dts: mt8183: add scp node")
> Fixes: 27eaf34df364 ("arm64: dts: mt8183: config dsi node")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



