Return-Path: <devicetree+bounces-11099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D004B7D4398
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:07:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E14A2815CF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 00:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B276B386;
	Tue, 24 Oct 2023 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aO38YOWN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421B97E5
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:07:32 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8971310D
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:30 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1c8a1541232so33207185ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698106050; x=1698710850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8KIyXKnp9ik2LhvuJOfiqnewO+JX1rYsLQwadh3j9eo=;
        b=aO38YOWN2ssvEbu5vgiRdSVbuuUhJbvRiIjNikAtJROAWlK3PwZad7G+OiU9aRSrjW
         y91iprZOWNXNgUDdc37tw4vIkz/klBzrvrrn4O6OYZEaRGUOOcgwhF+7ayoeZWNAJgVe
         pcd9BQfJt0I5LKc3H0hAfw4LvbqS9Yctt3iIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698106050; x=1698710850;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8KIyXKnp9ik2LhvuJOfiqnewO+JX1rYsLQwadh3j9eo=;
        b=TdQIP2hw6+0TBqJsS879lpi31Zowbu7n3S5KdbuGQCYws+gocbOPAu0tf8/2junRZw
         Yrg6Y4iTSuhy0DvAlx8LTHVGRjGoIi9ouMtKFAkdQhGQ9xjrOqfehzYaNWql4kI966SN
         kksNGXql2Z6XajFsaPJQj4Sn0YEAGemIY7gNxi0c08ux6FD65ZnMRG5r5B5vk3oDGA6T
         HTtlg+Jy5JFC6G03g/3HoDsC+sJ43+bEzkTAYF6KWqvTYGQWOZWzkxwBZ9h4GhpQOeg1
         z09bFkPmvUl24nvlSXUPskqATSuhujNxBitQC7yLqQFQvuoSPNVsaklljigSdlhZGYNZ
         NkSw==
X-Gm-Message-State: AOJu0YxPAmVUNKnnmlzCAhSwQoKdlJYCIssQP+2W26TKJAH5UoACcnGA
	yjdAi6VRbdR5WQYxR1Ett5Lihg==
X-Google-Smtp-Source: AGHT+IHiQ5fMHyiReBzHBkMvPSaaCCS/bkotYyZaskZvzm6qK4GNEDtEwtoub82tMAHIemj7mRkj9Q==
X-Received: by 2002:a17:902:d484:b0:1c9:cf1e:f907 with SMTP id c4-20020a170902d48400b001c9cf1ef907mr14511451plg.57.1698106049960;
        Mon, 23 Oct 2023 17:07:29 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id a10-20020a170902ecca00b001c5dea67c26sm6505510plh.233.2023.10.23.17.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 17:07:29 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/6] Add a few mt8183 follower boards.
Date: Mon, 23 Oct 2023 17:02:23 -0700
Message-ID: <20231024000724.57714-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add makomo, pico, and katsu which are mt8183 followers.

Hsin-Yi Wang (6):
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
  arm64: dts: mt8183: Add kukui katsu board
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
  arm64: dts: mt8183: Add jacuzzi makomo board
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-pico
  arm64: dts: mt8183: Add jacuzzi pico/pico6 board

 .../devicetree/bindings/arm/mediatek.yaml     |  25 ++++
 .../mt8183-kukui-jacuzzi-makomo-sku0.dts      |  25 ++++
 .../mt8183-kukui-jacuzzi-makomo-sku1.dts      |  25 ++++
 .../mediatek/mt8183-kukui-jacuzzi-pico.dts    |  36 ++++++
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   | 110 ++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts |  44 +++++++
 .../boot/dts/mediatek/mt8183-kukui-katsu.dts  |  40 +++++++
 7 files changed, 305 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu.dts

-- 
2.42.0.758.gaed0368e0e-goog


