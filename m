Return-Path: <devicetree+bounces-9336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7147CCBB9
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F08DB20C67
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C1EAEBE;
	Tue, 17 Oct 2023 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xIpa2yRG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818DA2EAE2
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:05:51 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C5F3F7
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 12:05:48 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53ed4688b9fso4037777a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 12:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697569547; x=1698174347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5T8pyCBsKAygZpdsiydX+RlsNqoe0a3HYugW6rTPXAk=;
        b=xIpa2yRGehksghAk/xwcexb+wQYmPO4IRYVTxy/ehJXOMJsgXGM+0meRv5QwolwYUw
         CTNDzcfHwJuOjV5JNH7ofaixDVxbdqQQ8S2xPW3YR1I73VD17bcFNuPL2d2nz6BSq2+0
         PJojsfe1n0OlNJBs4IsM2DHy8/uIiSkvhK1VKxzSWCQyiJWNW/+LpAUvcxJOutNF/+5d
         yCayjgQQQ456+4djDU9bnoEQKqWxXCJNE9lTp00mAAu4l2fH+1MAHj40gIOm8jk4sE/e
         yHui/c/EilT7MmRXVV2XBiB7/uhhfh1yNYOaoDDN0/k3prlaRNwTDbN3jdPdSE1syiXK
         6T3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697569547; x=1698174347;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5T8pyCBsKAygZpdsiydX+RlsNqoe0a3HYugW6rTPXAk=;
        b=OexWuIBH7ZYWvCVLHOPdAnzujDrZUSA5ekX0vzPuJxMbC0WE7pJadqRA2OinJcQhK+
         gH2zUgbU+WKtNQjk/AYSy2XNF2NYGZLU1Ps+/0vHyS8ucM8itwEhyWoa944qcnqBxHwJ
         YYcIW81Jm9jKF1JujX55+DLZejRzkxrVLFM4GUrcl+CSHN/5In+xsBJQahR1E6PZ7o5R
         m0KL4jdKWymj7z2sMBlnOAendFZZ37yqfzjVCwe4huf1hLydjifJCL7k5pMYN++fdgq2
         usKaQYnjDAAJioVO+j0tEE3MRw2Du8JZwEkyz/DTg5Iq4vo2l9lG9A+aSKmMnpqD/z2L
         rbSg==
X-Gm-Message-State: AOJu0Yx4Nrq8BEvBMIvbMHhLj2o7YgN2/eoIu8bOcsYVxky8IK0IQPOa
	ZiUlXt0EFBBSueEnPX13rt4dpw==
X-Google-Smtp-Source: AGHT+IHIS2pmlJT58sIePf55BkdjnJMp56dc57XPsYb/UA7y89bQ2UAlMws2Jd/KFo1tOI+tOPXEwQ==
X-Received: by 2002:a50:ab55:0:b0:52e:1d58:a6ff with SMTP id t21-20020a50ab55000000b0052e1d58a6ffmr2012654edc.35.1697569546785;
        Tue, 17 Oct 2023 12:05:46 -0700 (PDT)
Received: from ryzen9.fritz.box ([2a01:2a8:8f03:b001:fe65:a70:2777:ab31])
        by smtp.gmail.com with ESMTPSA id bq14-20020a056402214e00b00537963f692esm1637990edb.0.2023.10.17.12.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:05:46 -0700 (PDT)
From: =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To: daniel.lezcano@linaro.org,
	angelogioacchino.delregno@collabora.com,
	rafael@kernel.org,
	amitk@kernel.org,
	rui.zhang@intel.com,
	matthias.bgg@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dunlap@infradead.org,
	e.xingchen@zte.com.cn,
	p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	wenst@chromium.org,
	ames.lo@mediatek.com,
	rex-bc.chen@mediatek.com,
	nfraprado@collabora.com,
	abailon@baylibre.com,
	amergnat@baylibre.com,
	khilman@baylibre.com
Subject: [PATCH v5 0/5] Add LVTS support for mt8192
Date: Tue, 17 Oct 2023 21:05:40 +0200
Message-ID: <20231017190545.157282-1-bero@baylibre.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add full LVTS support (MCU thermal domain + AP thermal domain) to MediaTek MT8192 SoC.
Also, add Suspend and Resume support to LVTS Driver (all SoCs),
and update the documentation that describes the Calibration Data Offsets.

v5 changes are a lot smaller than originally assumed -- commit
185673ca71d3f7e9c7d62ee5084348e084352e56 fixed the issue I
was originally planning to work around in this patchset,
so what remains for v5 is noirq and cosmetics.

Changelog:
   v5 :
        - Suspend/Resume in noirq stage
	- Reorder chipset specific functions
        - Rebased :
            base-commit: 4d5ab2376ec576af173e5eac3887ed0b51bd8566

   v4 :
        - Shrink the lvts_ap thermal sensor I/O range to 0xc00 to make
          room for SVS support, pointed out by
          AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

    v3 :
        - Rebased :
            base-commit: 6a3d37b4d885129561e1cef361216f00472f7d2e
        - Fix issues in v2 pointed out by Nícolas F. R. A. Prado <nfraprado@collabora.com>:
          Use filtered mode to make sure threshold interrupts are triggered,
          protocol documentation, cosmetics
        - I (bero@baylibre.com) will be taking care of this patchset
          from now on, since Balsam has left BayLibre. Thanks for
          getting it almost ready, Balsam!

    v2 :
        - Based on top of thermal/linux-next :
            base-commit: 7ac82227ee046f8234471de4c12a40b8c2d3ddcc
        - Squash "add thermal zones and thermal nodes" and
            "add temperature mitigation threshold" commits together to form
            "arm64: dts: mediatek: mt8192: Add thermal nodes and thermal zones" commit.
        - Add Suspend and Resume support to LVTS Driver.
        - Update Calibration Data documentation.
        - Fix calibration data offsets for mt8192
            (Thanks to "Chen-Yu Tsai" and "Nícolas F. R. A. Prado").
        https://lore.kernel.org/all/20230425133052.199767-1-bchihi@baylibre.com/
        Tested-by: Chen-Yu Tsai <wenst@chromium.org>

    v1 :
        - The initial series "Add LVTS support for mt8192" :
            "https://lore.kernel.org/all/20230307163413.143334-1-bchihi@baylibre.com/".

Balsam CHIHI (5):
  dt-bindings: thermal: mediatek: Add LVTS thermal controller definition
    for mt8192
  thermal/drivers/mediatek/lvts_thermal: Add suspend and resume
  thermal/drivers/mediatek/lvts_thermal: Add mt8192 support
  arm64: dts: mediatek: mt8192: Add thermal nodes and thermal zones
  thermal/drivers/mediatek/lvts_thermal: Update calibration data
    documentation

 arch/arm64/boot/dts/mediatek/mt8192.dtsi      | 454 ++++++++++++++++++
 drivers/thermal/mediatek/lvts_thermal.c       | 163 ++++++-
 .../thermal/mediatek,lvts-thermal.h           |  19 +
 3 files changed, 634 insertions(+), 2 deletions(-)

-- 
2.42.0

