Return-Path: <devicetree+bounces-14512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 100367E5355
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9AA54B20D77
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B3DA111B1;
	Wed,  8 Nov 2023 10:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OWOcC1Bh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79251119C
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:28:46 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3632F1BEE;
	Wed,  8 Nov 2023 02:28:46 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 47BFC66074ED;
	Wed,  8 Nov 2023 10:28:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699439325;
	bh=GcdHSJgeWmGJHtZ0x7dgpKg31f7UCRSoxm5HSXeUxRo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OWOcC1BhTdlJM3ym30ZgZXQjJCqmdW2mFzl+wEdTSILf40dl1hzI9LgQjOxv0elap
	 8NsGvetL9Yh1Yx6shGwMW3lKKMwd2kPfskgU2NTgkuhJk8jnTqb2KBzgTFU/lKYLgz
	 vTGbNUSxgHb1lYK5ZUQ7g8RBj/soMmxG9Si/4oimWQ7E2VxwfXvp/p4aLr0ZdhOHBF
	 TA2DkvLt1aXxIiwHDsvjV3+ba0rxQEZFfVxpBHnPSG7zQGXWWuxS9htJIoyrwl6di4
	 rmzxDp4qZh5SjdIVZb664dRHGrNH/YrfWPHVliYc5WxsadqetM8YbWrGpJD2Co5H+Q
	 HAwFCrAQFy3Dg==
Message-ID: <f45ab1e1-8c42-4923-9fa4-fc93cea8cfe0@collabora.com>
Date: Wed, 8 Nov 2023 11:28:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8192: Add SVS node
Content-Language: en-US
To: Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20230710025834.20513-1-allen-kh.cheng@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230710025834.20513-1-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 10/07/23 04:58, Allen-KH Cheng ha scritto:
> Add MediaTek Smart Voltage Scaling (SVS) node for MT8192 SoC.
> 
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



