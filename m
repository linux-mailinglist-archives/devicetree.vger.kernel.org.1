Return-Path: <devicetree+bounces-12334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9E07D8FF0
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D3B41C20961
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8921BE5B;
	Fri, 27 Oct 2023 07:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ChUL4J3G"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9308CBE50
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:35:41 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D74891AD;
	Fri, 27 Oct 2023 00:35:37 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F1DB566071F1;
	Fri, 27 Oct 2023 08:35:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698392136;
	bh=xEpYiK0xVyTMBqOzwCeP5X9IsjLo0irTTedERKnouYY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ChUL4J3GS/pemysY8XC4YUYZuFod0r27a1ChKWKer+wPyr3TuR+AYU+dq7j3MylKg
	 FbREfXUA2L3gTz0UOXcOYtcK+7j680gh2eSluw0p48KiRQzOK6b/svolYVNxuaxXQs
	 1Ip1eDmvfbTlK7gM2hnwdl37bdYOdvR0WGt+eYVLES87Zns91OWW4Jz+hQFruYtcaZ
	 3Usn3bzZTyZXnGkTr7acCkXtkvWLG4/VOhYOWjc4ele4HI5N0Eb3ARCoTID9SRnadK
	 Qvk5qVe5o2EL5MI0OR/EwwiHUEDLATW4FUCW0L57HC8/WXyrsUsy8oXAl4Phz1nh1U
	 I5YJoWzYC7unQ==
Message-ID: <9e446cfc-c99c-4e26-8315-357d5ee160ab@collabora.com>
Date: Fri, 27 Oct 2023 09:35:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/7] arm64: dts: mt8183: Add kukui katsu board
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
 <20231026191343.3345279-4-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20231026191343.3345279-4-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/10/23 21:09, Hsin-Yi Wang ha scritto:
> katsu is also known as ASUS Chromebook Detachable CZ1.
> 
> Let katsu and kakadu set its own touchscreen and panel compatible. Remove
> these setting from the common dtsi for readability.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


