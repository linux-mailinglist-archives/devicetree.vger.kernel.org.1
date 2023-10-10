Return-Path: <devicetree+bounces-7206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A82C57BFB10
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D81FA1C20B35
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF82619479;
	Tue, 10 Oct 2023 12:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GgBkm326"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD1719464
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:17:45 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A09B4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:17:43 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99bdcade7fbso952647166b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696940261; x=1697545061; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2hRT2SJvh76ItidEme0pVqcc7N97rm2ZUS1fSYhtaag=;
        b=GgBkm3265EX9yPKqAqSEGJFE+G7Aj7OXtsBgCvCvj/eB37A2YuJa2WsXzg/FbVfFCE
         MQotqCWFuvdhpDzPhdopM2OQ1SU9G123pEB41pTLl2Eb1bwXpjMDtqgeQJvnHf/Ho2H7
         3YwytHZYPQt3h9JOTq9r6wMY9bsHVT2WD/j7n9KJmLlR1GdvndxRevJI6NP/SX6B4QMj
         adQA+lRgvl8kF3jrejF4clbu2OaS7qH0nZ5IIQc4/aiYcui/X8ebpFGwazE8pvKlvccd
         xZYVE9aCg9CzZKV7h67dH4CjS6xN5FusaxzMUll0KjYPcZMWP0AjhSpOb38p9RkoaPPC
         mwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696940261; x=1697545061;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2hRT2SJvh76ItidEme0pVqcc7N97rm2ZUS1fSYhtaag=;
        b=JhuW0fVxRiHmFzFrgvNvBIsci1flZ9yYok5PTiL+zfinVyjMZGcSiN59G60f2bAlA1
         6XVGX7UClj32s0nvhjRpJhQlfXIFpl2/tUzxWVHZGFssXS9YiD8iMThx8L4CRsNfxPoy
         6QB9DE29uhVGO06YMDb9ClXNq0/hNFg3vT9WTvPcrnAbxvjuIEez9+vyPIDXkCiSD/Kt
         ENJ1ViOV8iBSzDy/6JjKOGGo4fQVFh69Rji6rBEKtKAOKwOdwj6sGWp3uRYvI5gHlpG5
         yg0dv1VOJXKx5gAsQAz4Ayjq421NZK1V2CMfr4R+Y0kHx8bolmLG+Ll44xkESb2Qn9a7
         jH2g==
X-Gm-Message-State: AOJu0YwKruE3h4HUdNUCroVBUkX0hV9C92c87uW+eSQjRP3docWYjycN
	8Ag8Nyvx4XZAFVpT4hl9e2kN4Q==
X-Google-Smtp-Source: AGHT+IE+V2cLrQpGWVua2yJmj70qAuFvQv3wkupweNiqkbOavf527f0ImxH5CbIZPFmvrxP11OS20A==
X-Received: by 2002:a17:906:5193:b0:9ae:5848:3f8e with SMTP id y19-20020a170906519300b009ae58483f8emr17053067ejk.49.1696940261458;
        Tue, 10 Oct 2023 05:17:41 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id k16-20020a1709062a5000b0099315454e76sm8293803eje.211.2023.10.10.05.17.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 05:17:41 -0700 (PDT)
Message-ID: <3500ad51-b220-41f7-926f-bb5b9d415698@baylibre.com>
Date: Tue, 10 Oct 2023 14:17:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: platform: mtk-mdp3: Use devicetree phandle
 to retrieve SCP
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 mchehab@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, moudy.ho@mediatek.com,
 hverkuil-cisco@xs4all.nl, sakari.ailus@linux.intel.com,
 u.kleine-koenig@pengutronix.de, linqiheng@huawei.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com, wenst@chromium.org
References: <20231005104905.120544-1-angelogioacchino.delregno@collabora.com>
 <20231005104905.120544-3-angelogioacchino.delregno@collabora.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231005104905.120544-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 05/10/2023 12:49, AngeloGioacchino Del Regno wrote:
> Instead of walking the entire parent node for something that has the 
> right compatible, use the scp_get() function provided by the MediaTek 
> SCP remoteproc driver to retrieve a handle to mtk_scp through the 
> devicetree "mediatek,scp" (phandle) property. In case of multi-core SCP, 
> this also allows to select a specific core.

-- 
Regards,
Alexandre

