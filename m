Return-Path: <devicetree+bounces-11819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FCA7D6B7A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:28:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B3861F21717
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A37F27738;
	Wed, 25 Oct 2023 12:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="CF0u5Kr3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9152772E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:28:46 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE6EF9C;
	Wed, 25 Oct 2023 05:28:41 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E21C866057B6;
	Wed, 25 Oct 2023 13:28:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698236919;
	bh=gPu5UO/dDesJd0vNYgX/o5DUmSc+x9DabufbUTnvVmQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CF0u5Kr3b4aMruI4Jj65mOHt0c5Z+sjObOUfXD6Bx7L960gfSfMrnb1jqYbDVRZ1T
	 DwpfN9UWTZKZYzUhWKumxgPO2eKzc6uSTyl67mp73gdr7gSdpqyExUOq0zCWsh/pYq
	 nsPNrq44kXf0jv8+8RARtOyBEekB8dOSH3/4OPuxtbpLgHWh9E5QJJQNinutndWPuR
	 d3OtIR0ZUd6MeKjvB0qyzpttCzGx5P63NRgUpDGecKKZLN4VCNndoLbhe3/GJQkwNw
	 NnBtueWHL9UpYfNvEO4RZOCDfT6aAID6V04LWOHsrkwQ5AJaK6m901lLSLa1Ff7IK6
	 UemZ1pfRxwE+w==
Message-ID: <9dbcc12a-1729-43bb-88f3-c3d8b71acd94@collabora.com>
Date: Wed, 25 Oct 2023 14:28:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] arm64: dts: mt7986: define 3W max power to both
 SFP on BPI-R3
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Golle <daniel@makrotopia.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230820153135.42588-1-linux@fw-web.de>
 <20230820153135.42588-2-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230820153135.42588-2-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 20/08/23 17:31, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> All SFP power supplies are connected to the system VDD33 which is 3v3/8A.
> Set 3A per SFP slot to allow SFPs work which need more power than the
> default 1W.
> 
> Fixes: 8e01fb15b815 ("arm64: dts: mt7986: add Bananapi R3")
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



