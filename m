Return-Path: <devicetree+bounces-2842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9AA7ACB81
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 061512816CA
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9002EDDD7;
	Sun, 24 Sep 2023 19:02:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B1BD293
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:18 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2966FB
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:15 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-401187f8071so35133685e9.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582134; x=1696186934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADa9CTc7Mm0plkUbp7+s7MaEsuDZ1Hcc8R6xm7NWcuc=;
        b=lrGuLcau78dp5RrGwYfY6MvRX3YaXO9MZZ/Dzs29m60UKHG1o91FDIJIza3krYpGmm
         zbPrgzCka4+NbePGr/B0vMY6jdF7YHZy7/xKO22zNqSxCiOGYc/+YXf62hCRY4mnJKOs
         c1qXjnDRuKZSP/pwkQzoSPZDsGc1Zll+ZNcrWxJdza+NQLgACRbnntLXHTVNwyqBLdUg
         xEWfHFBpLlDHuDe/B00Yb6s7Y0z1YY7hBW5bbnD7dZzWT+13K5PVxN684e7lPezzjcFJ
         GqhpjEEUAXtpMT6K9fxDHFI8kfnLotGbwjEnFYmYwaRYYqy4wPUS+YwyUCz6lUnchxc3
         eAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582134; x=1696186934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ADa9CTc7Mm0plkUbp7+s7MaEsuDZ1Hcc8R6xm7NWcuc=;
        b=BlwEPahzKJtkfC1igosaskH9pVyReWl9VNBsHHk3iaJNhVg2GKoGRXJUbnt90TWTKl
         ZpclvQz/MCuVOosFZ46dFeBEt3/PkCMWtnqCEUBkml21ppd+LPPwS6x7v1L3TVqC1Gp6
         8lWiWRu+nvoBWm7l3C58M/4DGGYuuP+uCdfAaEu954gvH5sbzJ1dTxu9LzQKT9qFmorT
         bdWObgFxLuL7Rdkdc+nI3KHhdYyKx5+L4EklmYWb9OsATEbvCB/clBw5i2diHqSWYycP
         pCloSfgfSqeib4UUquBXNXApcgHnNndSiji7i1+O7GTZ3H23hF41CAFwegg9ivcFhqZZ
         Y56g==
X-Gm-Message-State: AOJu0YxUT8a1MWK8vp1Px7cP0FZmOzzdpEaJeL2HV9zalENYhhzeIZJR
	p4FlWVqXITmCIwY2n/bgRn1biQ==
X-Google-Smtp-Source: AGHT+IHnH8FwuVSfP4cEIj4663STrnMRTMgkALP6Q2CmPnysXrCog9SKo46U9k2ZhHyKdGLPvbOn0g==
X-Received: by 2002:a05:600c:22c9:b0:3fe:da37:d59 with SMTP id 9-20020a05600c22c900b003feda370d59mr3543430wmg.4.1695582134179;
        Sun, 24 Sep 2023 12:02:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] ARM: dts: mediatek: add missing space before {
Date: Sun, 24 Sep 2023 21:02:01 +0200
Message-Id: <169558197844.54884.9059102157573367426.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705150006.293690-1-krzysztof.kozlowski@linaro.org>
References: <20230705150006.293690-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Wed, 05 Jul 2023 17:00:05 +0200, Krzysztof Kozlowski wrote:
> Add missing whitespace between node name/label and opening {.
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/2] ARM: dts: mediatek: add missing space before {
      https://git.kernel.org/krzk/linux-dt/c/f673ab0ceb8dc8ccd291db9bbc200dbd8cd399f4
[2/2] arm64: dts: mediatek: add missing space before {
      https://git.kernel.org/krzk/linux-dt/c/a9c740c57f977deb41bc53c02d0dae3d0e2f191a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

