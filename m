Return-Path: <devicetree+bounces-2159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B61987A9C98
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0E6DB22F3B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E5E43A81;
	Thu, 21 Sep 2023 18:11:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747424B23B
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:13 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A07A4A9A;
	Thu, 21 Sep 2023 10:58:14 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 61E406607298;
	Thu, 21 Sep 2023 08:19:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695280762;
	bh=NCoS11TMBletQQuR/cD/4ifg4uBFUuYSpa3EvBEYdzU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i4+tGfrj8stBs2bJPHoKS3fkXMx674udFF6nMweSkbQZAM1oRcUGMmgsrC0ANk/IM
	 p5WZyhVu7imzLd5ljB5qAdGdwor+nPpE6HgTcUT4l11c7aJix2qEZORBozafr/6biK
	 fpcFZ/SbW7kHwdWvd0toRpIyekypbiPYWWxl/kNcI8ZyFjbw1pd4zWkG+5u/psAhxn
	 b6TSBP8e2qeHclUEaOUT9shuGM6ZCu2SuC+NxFifjUwkfwFt2BKj4JuaUMLo/8tCAk
	 lfT0cWxdKmYqr+6lMMVdhaw+KgOXJWPWK7uvRNC4aAInjpSyAhYNPTHvDeoN4hSwKe
	 HiWgx14suzSOw==
Message-ID: <c5d331a6-b5af-f5b4-ea9d-059d3c3c78db@collabora.com>
Date: Thu, 21 Sep 2023 09:19:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 2/3] soc: mediatek: svs: Add support for MT8188 SoC
Content-Language: en-US
To: Mark Tseng <chun-jen.tseng@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Roger Lu <roger.lu@mediatek.com>,
 Kevin Hilman <khilman@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230921052637.30444-1-chun-jen.tseng@mediatek.com>
 <20230921052637.30444-3-chun-jen.tseng@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230921052637.30444-3-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 21/09/23 07:26, Mark Tseng ha scritto:
> MT8188 svs gpu uses 2-line high bank and low bank to optimize the
> voltage of opp table for higher and lower frequency respectively.
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



