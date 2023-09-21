Return-Path: <devicetree+bounces-2082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B99817A99C7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73ED8282165
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E98A45F57;
	Thu, 21 Sep 2023 17:23:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE7D45F48
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:50 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65DE049D7;
	Thu, 21 Sep 2023 10:23:14 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C194366072E0;
	Thu, 21 Sep 2023 08:55:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695282924;
	bh=UTUCsGCHXv7lHkH0YxbJh4wFHSzf3govSJtRhJkJ4i0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oIqhwiP/FxM4BSY9QC2j4qMKeDZQY+sAzkVmipX2oA0lRP3n7UK5XNXzFd+/bGfPC
	 tIBm3izSADw1ImIQYIpwGQJm5WEssrGxSbgU1i/EXnUOhpfHn56lUWBhNPjNNdHs4k
	 vKk59lgzHlErrbDrmXPP56vS3b91reNXFV3pcMWS6AMmnLL7YJgkimqG5yrLCLRDcX
	 mvw3K3GRcSD6M8j9toGzPtrHnSYg7U+SJQGVgyngSk9yrceU9lIpcfpv012HrwpPRL
	 wzR6F+wfvje8mvlVScZg8dih1P6Mze3JcoyNUPUZ7jYXHcZCIBzdBpJowgEbyB405e
	 2vOxbngwyz4KQ==
Message-ID: <78e8860a-07e6-60cc-52d3-d5ef762f7ee2@collabora.com>
Date: Thu, 21 Sep 2023 09:55:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/4] dt-bindings: thermal: mediatek: add mt7988 lvts
 compatible
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
 <20230920175001.47563-2-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230920175001.47563-2-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 20/09/23 19:49, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible string for mt7988 lvts application processor.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
> v2:
> - change mt7988-lvts to mt7988-lvts-ap (Application Processor)
> - not added Ack from Rob because of this change
> ---
>   .../devicetree/bindings/thermal/mediatek,lvts-thermal.yaml       | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml b/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml
> index fe9ae4c425c0..e6665af52ee6 100644
> --- a/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml
> @@ -18,6 +18,7 @@ description: |
>   properties:
>     compatible:
>       enum:
> +      - mediatek,mt7988-lvts-ap
>         - mediatek,mt8192-lvts-ap
>         - mediatek,mt8192-lvts-mcu
>         - mediatek,mt8195-lvts-ap



