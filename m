Return-Path: <devicetree+bounces-2080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CD77A99C5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:22:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86B24B20E50
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4934C45F50;
	Thu, 21 Sep 2023 17:23:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECB245F47
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:44 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6B857DB3;
	Thu, 21 Sep 2023 10:23:15 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BDBA366072B6;
	Thu, 21 Sep 2023 08:54:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695282888;
	bh=XKfV63HWdKQ6s7HPBY3YhVeOhdzebvODVX7qw3XgXyM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jD9+CmGQSfz4ZX3d2CGSp6+EHhCrCCk4YGT3vBykBF3wqdTzGOXIZCz7QCGMCAUKF
	 yY9nfpT49e8hOI1gUgZME++aIhmRLRNoXiPOyREKIUygnK3mfFMj4/yqGQ79JBK/mr
	 2c6w7osgDp6Z1woUp6qf6pWKsJk8nqB7RtNZhooW/urn9l2MQMxso2S32xIGx4PVwi
	 CINeOwpiW8/6UskufZ3bdJ3kAYbq/ODd2ko3UGc+loP4zAp6OTqiN46HwjTw09C1+8
	 1dolr6haDdAjRiWHIrog91ziBrjkseUViVBdgUSUVaJ/e/VlGg/3b+yyLlvNE0fam4
	 4tT3XHFAZeA9g==
Message-ID: <7420791d-a424-2db9-eb68-9f583735d4d7@collabora.com>
Date: Thu, 21 Sep 2023 09:54:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 3/4] thermal/drivers/mediatek/lvts_thermal: make coeff
 configurable
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230920175001.47563-1-linux@fw-web.de>
 <20230920175001.47563-4-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230920175001.47563-4-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 20/09/23 19:50, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> The upcoming mt7988 has different temperature coefficients so we
> cannot use constants in the functions lvts_golden_temp_init,
> lvts_golden_temp_init and lvts_raw_to_temp anymore.
> 
> Add a field in the lvts_ctrl pointing to the lvts_data which now
> contains the soc-specific temperature coefficents.
> 
> To make the code better readable, rename static int coeff_b to
> golden_temp_offset, COEFF_A to temp_factor and COEFF_B to temp_offset.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 

Now, that's good!

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



