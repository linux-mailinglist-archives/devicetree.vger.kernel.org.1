Return-Path: <devicetree+bounces-9964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C387CF32B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:48:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ED25281F12
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED7315AE0;
	Thu, 19 Oct 2023 08:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="blxTpEVu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6E914F7D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:48:27 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D7C10F;
	Thu, 19 Oct 2023 01:48:26 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4D02C6607322;
	Thu, 19 Oct 2023 09:48:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697705304;
	bh=/BFGk10tJjdGi8ZC+k20TXUYuEY9bU4gZOhY1NmRH4M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=blxTpEVuBwBTp3VTVME8VhWvZxYN+1GFZOnX8n4Ckh3h4JAJHFOXIrnoGtsSwYQzD
	 +wP2btruyVVFmob5omYRTLDjOArySMB7uVoGiwWNlgPQbMN3rXo9HdJgsZtvRHTiim
	 UDhSewj75kIMePj/MDIKTR0zEVNIgU+Wq+4VI3/fK18sB+6ysUvwpcKlCRkvl6/727
	 22+4dt3Vq1wnNul1fbEgDqUjColnop/zNlccBfof0nLdsaIP/CrU4MOa7wyzMSSMFR
	 bD0pf5Vzs5lyWqnR71Uoa0aAoCzH/PPUM0nUgYKQq+wkxTsFC989IfawUPgu54Lqc4
	 lw4O/RJfB60Lw==
Message-ID: <8de0772b-3145-44e3-8174-702c7dc729bb@collabora.com>
Date: Thu, 19 Oct 2023 10:48:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v1 1/2] ASoC: dt-bindings: mt8186-mt6366-rt1019-rt5682s: add
 RT5650 support
Content-Language: en-US
To: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>,
 lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 matthias.bgg@gmail.com, perex@perex.cz, trevor.wu@mediatek.com,
 jiaxin.yu@mediatek.com
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231019021133.23855-1-xiazhengqiao@huaqin.corp-partner.google.com>
 <20231019021133.23855-2-xiazhengqiao@huaqin.corp-partner.google.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231019021133.23855-2-xiazhengqiao@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/10/23 04:11, xiazhengqiao ha scritto:
> Add new sound card "mt8186_rt5650". RT5650 comes with amp and
> earphone codec.
> 
> Signed-off-by: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



