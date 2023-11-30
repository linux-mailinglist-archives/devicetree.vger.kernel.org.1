Return-Path: <devicetree+bounces-20258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B3E7FE9D7
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D823281B17
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 07:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09AD2030B;
	Thu, 30 Nov 2023 07:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fZ9efIe7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAD81D6C
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:43 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6cb74a527ceso558648b3a.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701330043; x=1701934843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xzMcm/4giFrxMClkYwrYltTytmsL0thmxiAZbeFwHOg=;
        b=fZ9efIe7fP13ZrygS8ejUl+76g6aLDUIABVn9B1Xp1VQE2NQAXVdAxZcw82RbHKvBY
         b3SiWqUlCofl89yB6puRuvsTwCOOtbKaQzIppKGakD9SDLR+Kg50hc7mzkCkWXnqdWxi
         3eeHjPG7jHbmvZJPk1/7ZpLpcnfMFm1Lrqn2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701330043; x=1701934843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xzMcm/4giFrxMClkYwrYltTytmsL0thmxiAZbeFwHOg=;
        b=ZJ3AZ4g6Y8JwLCfzF9bR9hCxoQt2zyIsExmCDG801MrIwgmx0Jl0MAc/qexv7bcyKY
         izSIWpCJ5ihA+HC6cZJq/Vz0akRbuv/hrA6caEfcYI6RhPCxQP12uF2KxkznI/JzCQjz
         PpaUY6XRngxHa8QWRLU9BrS33LPykVccar/YrPU2AoF4ZMxWJ7ckhJiMIOVqTXJv73cq
         8IsrI0RKlv7XtFNYeaw8lWPiAqyqeNtMZgiIiaSbXkabsm6I1LBzmn0BENlw0I6rFq29
         nWGCrJ5rrJ1ReKuXAtIz51RxknRoriUmaD3SXWtVo3wbVBq2KVlRfMhzg4pydZFK2LRx
         QqHQ==
X-Gm-Message-State: AOJu0Yxsuvc/dB6wTKDt6+yOkllDZfa6pLow2T8e22J6QYMhFCFK69DJ
	gqeg5U1boouNZuMmc/pceQjlDA==
X-Google-Smtp-Source: AGHT+IH4Vyiy69Wx5dpcW6tYy2rej0U+Buxiro8U+QktBGOAg6tGBdr4/KhwXWHc9RHdnAT00fhu9A==
X-Received: by 2002:a05:6a00:3a09:b0:6be:acc:8973 with SMTP id fj9-20020a056a003a0900b006be0acc8973mr20577904pfb.20.1701330043351;
        Wed, 29 Nov 2023 23:40:43 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7c8f:dafd:65c3:2bcf])
        by smtp.gmail.com with ESMTPSA id p35-20020a634f63000000b005bd3f34b10dsm612870pgl.24.2023.11.29.23.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 23:40:42 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: mediatek: Random DT cleanups
Date: Thu, 30 Nov 2023 15:40:28 +0800
Message-ID: <20231130074032.913511-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Here are some random DT cleanups that I've accumulated. This should get
rid of some warnings.

Please have a look.


ChenYu

Chen-Yu Tsai (3):
  arm64: dts: mt8183: kukui-jacuzzi: Drop bogus anx7625 panel_flag
    property
  arm64: dts: mt6358: Drop bogus "regulator-fixed" compatible properties
  arm64: dts: mediatek: mt8186: Fix alias prefix for ovl_2l0

 arch/arm64/boot/dts/mediatek/mt6358.dtsi            | 13 -------------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi     |  1 -
 arch/arm64/boot/dts/mediatek/mt8186.dtsi            |  2 +-
 3 files changed, 1 insertion(+), 15 deletions(-)

-- 
2.43.0.rc2.451.g8631bc7472-goog


