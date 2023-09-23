Return-Path: <devicetree+bounces-2717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 217F97AC403
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:37:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7F8F81F23D3C
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A40D20B2E;
	Sat, 23 Sep 2023 17:36:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD331640F
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 17:36:56 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E95FAF
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 10:36:54 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4051fea48a8so44543015e9.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 10:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695490613; x=1696095413; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dn6phUldCWNuUnLwZIK8/YMmtjChSj8cWy1kooP65ek=;
        b=yI8ytZhcK16sAq00377W7OqEgIssUAOpDJkXXPe3l1XfZ4Bls077Ka4EoPSocXXXQm
         aGHLLNUuzSi5PDA7nLMi54ALm5h86LEO2UwYGECEHkVfyo2x6uxAu82z4xD8Cs2schYo
         Cr6ybE72CyE8vuOWT5mqMDj9GPtAqLEYvJgnyde+G73JcUXFdwdeXj1Ilfonz1z6niKZ
         pB8DdslSVjAuglUy352jG0fhOmWPeVgi7eZm64fsVocjyK6KTyF1g436hPGKWRmwP6CI
         vjhT/Xw37t9Ds1jA+99jCmRhIkCCpic7/02rjEZnvdFZsS8wk/uR5Q0556rKpO+jAIev
         AY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695490613; x=1696095413;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dn6phUldCWNuUnLwZIK8/YMmtjChSj8cWy1kooP65ek=;
        b=Ulxw8r2PbVXNaka2W53WNIYDi/CBdiWfaAqpjj1ROL/QiwvAt8rh0ICepPdxP3iTBn
         dSC3JO+P7f+7EIILy+ZshUDjt7xg/08p9N/wxlKV1BhKNN5XORoHU0OSxPOfys/PKjjc
         YPVaLFcNSA/tL1+cI6lyGNPMmICRBaNqNHpXzglwzdvP/VsE3dok+XfhjYDz8QXHilV5
         0OsDIOK1RrjpXzh8t7/iI4rptP3QMBEoiVF1nY3KUj5Z5fQT0Xd6fORArswvN5pYI8QX
         ZxmaZX6ikswtXOOcW3dKKAgweFZaRNoXFFIn8akEsTWEhiQCp+UBDJ3wo27Hk2lp36V+
         NOdg==
X-Gm-Message-State: AOJu0YxFFKJWwJAap/mPelWE/tkyJHAHGJk32EFXoq65cbdLweX+SzSg
	4Kc17TMqesiRuCK2P3UTUVI2Vw==
X-Google-Smtp-Source: AGHT+IEvo9mHZh26ly7OkIqoP9oOmRajb274z0zwHS+GCNlpI9LxxNC0Imkzhh9QWjYIELh+B5vy3A==
X-Received: by 2002:a05:600c:2101:b0:401:2ee0:754a with SMTP id u1-20020a05600c210100b004012ee0754amr2397634wml.13.1695490612950;
        Sat, 23 Sep 2023 10:36:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id k12-20020a7bc40c000000b003fc04d13242sm10682300wmi.0.2023.09.23.10.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 10:36:52 -0700 (PDT)
Message-ID: <4f15a450-4344-ed5a-0504-9a2f0a9daa0d@linaro.org>
Date: Sat, 23 Sep 2023 19:36:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 00/16] introduce more MDP3 components in MT8195
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230922072116.11009-1-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 09:21, Moudy Ho wrote:
> Changes since v5:
> - Rebase on v6.6-rc2.
> - Dependent dtsi files:
>   https://patchwork.kernel.org/project/linux-mediatek/list/?series=786511
> - Depends on:
>   Message ID = 20230911074233.31556-5-shawn.sung@mediatek.com
> - Split out common propertis for RDMA.
> - Split each component into independent patches.

And ignored previously given feedback. That's not the way you should
work with upstream community. It feels like a waste of my time and it is
not fair that Mediatek is doing it :(

Best regards,
Krzysztof


