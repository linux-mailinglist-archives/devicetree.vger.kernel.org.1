Return-Path: <devicetree+bounces-11661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD367D64F3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33BEC281265
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7151CA92;
	Wed, 25 Oct 2023 08:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TMFGAD8v"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3EE1BDC4
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:25:37 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCFA12F;
	Wed, 25 Oct 2023 01:25:35 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9D3FA660733F;
	Wed, 25 Oct 2023 09:25:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698222333;
	bh=1lSLOD1SNY62x2kvty7CxHvQhFKkLJODoGmO9QGF/io=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TMFGAD8vGD1PMKqywCxbp6nFDvBack73i11WS9XPAnMg6zvEtJEr58Rj2bYmPbK+l
	 xNAxPLq9DGk/gYMWCTPYwIxSO7Q0mceqSbdbY/WioXa+6OCbjpVWitNyCAERe21Nqr
	 m8RnJ+3pPU+KW7nSZcFZbOkCNjh8uuBS6UhhhG413t/J86Pf95yd6neIzQi+6Q3Gwp
	 U4G1b8Z5QubHtC7tIkAa2AFXr7u1550vTao8rf7CCVdriR5tBwvrU/h9csBm6iq9T5
	 fnp9hnqhy15oNR1K3QmU/ys32HUrfaAVpsOrLe5XXddlhLAhKm5+xOCXGg7Y3UyICF
	 9v7FWPX5TYsQA==
Message-ID: <1239aa95-aa4d-4465-ab91-c239e4c1eff8@collabora.com>
Date: Wed, 25 Oct 2023 10:25:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] arm64: dts: mt8183: kukui: Fix underscores in node
 names
To: Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Macpaul Lin <macpaul.lin@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20231024212618.1079676-1-hsinyi@chromium.org>
 <20231024212618.1079676-2-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20231024212618.1079676-2-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 24/10/23 23:22, Hsin-Yi Wang ha scritto:
> Remove the underscores in node names.
> 

You're not removing the underscores, but replacing with hyphens...

The commit description should therefore say something like

"Replace underscores with hyphens in pinctrl node names both for consistency
and to adhere to the bindings."

... reword that to your liking, of course.

P.S.: This is a fix, but has no Fixes tag?! :-)

Regards,
Angelo


