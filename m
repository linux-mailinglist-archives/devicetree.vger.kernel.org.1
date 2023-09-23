Return-Path: <devicetree+bounces-2714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F597AC3C2
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:43:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C6916281E0E
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E9C1D547;
	Sat, 23 Sep 2023 16:43:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A74328EC
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:43:02 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96848D3
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:43:00 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-31fa15f4cc6so3717379f8f.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695487379; x=1696092179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ehvNyN1e8AcFsIaExWpUQQDC3O+XNhpuGUxABDsT1k=;
        b=lALM0hrH6G8U0itn2oxf/5bl9yJrYy/mxuWfwwu4bThd/Y0W4jdFammsnQws6Tl9jE
         lbUOik+LiMhJBqAoMZxLGDWneqF5Z9IUSa3FuwkCpGCpClONvAdXQ2CQ+YaAt+ERZ6oF
         4gKixWuh1kXSD5gCn1h/SzTiu/PX6uAQ72RzZrMohFOzajmSaZPpR2PaqoTUoCr28T8y
         pBGc1uvl3U2n6PsyGYsFMz+DuasCytfQvFaxxV+hiHu3oeNBLS8KQ8ygER49JlGo4n/4
         /UZOew1zTG+XnLdbsgTc61uNSVHC4zmbGSxkDiWHL3ucvL+7xETcjWv+zcbLCuVj039s
         stbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695487379; x=1696092179;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ehvNyN1e8AcFsIaExWpUQQDC3O+XNhpuGUxABDsT1k=;
        b=cnTjNpsUN2LK103PQeBJ8YvkJylS3RyEjIf62TP1mjUg59cgqpWGIdnOLzEg2j9Yzx
         iJ0zGNQTVqgptF4FAhl+u2+81Fg/OwMJQqdtT8slsZUQ/JYXV72v7o7VNkEeOMRpPn7/
         HTk0teO7oYod1qyqdpBHNPz6VP7mkMgZXMLND9ArclW1KrfD9VP2FuKWMbAAnND57IMO
         YxvZQDqBhr20Hklird6kQ71RkhnrxIK+GCqAY6TQyinF+s2C0WBBQ5fanWF36xoWf5Do
         b1FpxB57zkFKrzzoZjTBIN/dk49fxMvBP7r5ZtpUx6N2jgXP1JPL/REFSrmPy5WC4s3m
         Qk1Q==
X-Gm-Message-State: AOJu0YysWnnHSaC8gmUb0DBKf8GIubUIbfe7OgCs0IdLPEalvO0iPAq8
	wvCcFoZgtUUXVUWaiVE+3742bA==
X-Google-Smtp-Source: AGHT+IHeYkcu/RtMUX5lf2uTUiwk5whv3Kim5HQRxv8v4Wkt6ThO4w/ApV1UJK2BVwSR7UZ8q2JpuQ==
X-Received: by 2002:adf:ea84:0:b0:319:6327:6adb with SMTP id s4-20020adfea84000000b0031963276adbmr2170369wrm.70.1695487378995;
        Sat, 23 Sep 2023 09:42:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id x10-20020a05600c21ca00b004051b994014sm10434968wmj.19.2023.09.23.09.42.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:42:58 -0700 (PDT)
Message-ID: <4fdfe29b-aea7-8180-d2e3-5caa1beb7232@linaro.org>
Date: Sat, 23 Sep 2023 18:42:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 02/16] dt-bindings: media: mediatek: mdp3: split out
 general properties
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-3-moudy.ho@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230922072116.11009-3-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 09:21, Moudy Ho wrote:
> In order to minimize duplication and standardize the document style,
> it is necessary to separate the general properties specific to
> MediaTek MDP3 RDMA.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../media/mediatek,mdp3-rdma-common.yaml      | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)

I don't understand why this is a separate patch. It's not used, not
effective and not visible for us how it extracts common parts.

Best regards,
Krzysztof


