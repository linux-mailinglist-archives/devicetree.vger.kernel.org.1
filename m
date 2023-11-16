Return-Path: <devicetree+bounces-16164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC537EDD3B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 10:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 917CD280FE4
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 09:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E409E14F75;
	Thu, 16 Nov 2023 09:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="k+RpmIC6"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA0821B5;
	Thu, 16 Nov 2023 01:01:22 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 882A466071EF;
	Thu, 16 Nov 2023 09:01:20 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700125281;
	bh=MzwcOLZt6ojmNlxmFUAbnTlthwox7Z0tKERvrVGUWEk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k+RpmIC6I2wMZqvYfmUuTq2UsQ47eVOvlqNveTsIMU/jfNmZgqs66sk6LFbEqwVi3
	 zDsQ6vlO3cFltj5w53d7NWirGNLwhtvDswUTftVHmBZ4mr8OaMSoQY0wtKGGWEggq5
	 d/xAJxKU/nHcsI7yI26CMSNuz38XEc52ptbSXiXR2ab4sI7edjxjco/o+CdNYce8xp
	 F4FJhpuXRxatXKB00UJNXA9reZeJkKstIJ3mfhrIaIbLFQ4mKm5MDj9cjXelgKNUiC
	 7kI0daSDvvfa68rWldLAJgYLvNpQRXqD6IMNB5rlAlI3RTmm72RQnL9flRe/eqVDZJ
	 1sHsyXJI6dezQ==
Message-ID: <74018232-d406-4a6d-8d43-4e82e6d4cb40@collabora.com>
Date: Thu, 16 Nov 2023 10:01:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] soc: mediatek: svs: Add support for MT8195 SoC
Content-Language: en-US
To: Mark Tseng <chun-jen.tseng@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Roger Lu <roger.lu@mediatek.com>,
 Kevin Hilman <khilman@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20231011034307.24641-1-chun-jen.tseng@mediatek.com>
 <20231011034307.24641-2-chun-jen.tseng@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231011034307.24641-2-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 11/10/23 05:43, Mark Tseng ha scritto:
> MT8195 svs gpu uses 2-line high bank and low bank to optimize the
> voltage of opp table for higher and lower frequency respectively.
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


