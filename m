Return-Path: <devicetree+bounces-7202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA017BFAF7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13B1D1C20B33
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C132819467;
	Tue, 10 Oct 2023 12:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NZZcyXTG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B05DF44
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:16:29 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E44409D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:16:27 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9b9a494cc59so935124666b.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696940186; x=1697544986; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nndtjHuMt0cf145zyVj0vZGF/G3X++LPFZ51I696qiM=;
        b=NZZcyXTG6Zx9ltg87ezUNKF4wfdB3C4rTzl+1aA3PX8AprsYgjY/mqCcMaxhxQBvrS
         4K8LAIYFQywW9wdhVr80NkRmBx80CGvk8wCczvO/BepRBLBXt+ybRHQ9TbNyZZPu2U9Y
         iL3saGwWdSlIrP/Bx2NrVJUhe0tmdE0LnW2L+6InLWvSx/Pv5IGhER6ZrZnTzOqO0pHR
         Rb/otAayBVUmO2rhjv+8DgThDAwUQqCC0Pt3ZzgPWpDY3J4tsnedpaW1QuzIeTgrLruj
         zrJJe4suzD2AbT5JYQafYJP1UYFxRcDHXq8vI6jBs9dcnRDs9KO5nonyL35PBMFU7/zb
         kDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696940186; x=1697544986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nndtjHuMt0cf145zyVj0vZGF/G3X++LPFZ51I696qiM=;
        b=R++0W/Fgh05my7GFhFyyu6Fz6EeLnK8Ju3Wnafr1EVz0B+BeE/ayyodnP7MSYb5+dq
         IlxwUasp9CGY3D5E3NxQkcGs+Po3UrQIrqYDMTqZBjqHwupsXOqbo/scfjhNJxse7W9i
         Q9aZV+QGw0NIhXpX59laUwDhHgDF+87yBErV/oZuJu9pdyTLBY52HjJ3kQeEYRfNgTrU
         RG36nNFDUR686i7qL2wmeQZ43HQkZbAfIfm9Cdn7vdFooejVgSG4dzBoixGN7eQx4L8i
         C1JaPEdJ+dG764jaMLnYEcMM51u2AvPOdO4sxaOS/71pAtr51AOfqR6iGwYMEafbl465
         o3fA==
X-Gm-Message-State: AOJu0YzUxpzFbhpnTTtFFXuJ+Ni0/FzoZDXU2lEEyfrdg8rcPAsHdrse
	s95pFSSgDQ7Q2zZI2e+WJjkdzw==
X-Google-Smtp-Source: AGHT+IGvbaphCGmTo8kI0FKFqK44m2tAKrLMU9877yBSznrJMtpCLD2SsXe+zSRMlWY5bELacdHCPw==
X-Received: by 2002:a17:907:7711:b0:9b2:a96c:9290 with SMTP id kw17-20020a170907771100b009b2a96c9290mr15848525ejc.33.1696940186336;
        Tue, 10 Oct 2023 05:16:26 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id k16-20020a1709062a5000b0099315454e76sm8293803eje.211.2023.10.10.05.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 05:16:25 -0700 (PDT)
Message-ID: <50662394-0da1-49ce-a519-c0b963d19e54@baylibre.com>
Date: Tue, 10 Oct 2023 14:16:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] media: dt-bindings: mediatek: Add phandle to
 mediatek,scp on MDP3 RDMA
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
 <20231005104905.120544-2-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231005104905.120544-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 05/10/2023 12:49, AngeloGioacchino Del Regno wrote:
> The MDP3 RDMA needs to communicate with the SCP remote processor: allow 
> specifying a phandle to a SCP core.

-- 
Regards,
Alexandre

