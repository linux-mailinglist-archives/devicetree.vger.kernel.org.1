Return-Path: <devicetree+bounces-12246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D517D88C2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBDF22820C3
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B20E3B287;
	Thu, 26 Oct 2023 19:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="n7qqe6gZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7583AC17
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:13:49 +0000 (UTC)
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61A211AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:48 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-27d0e3d823fso1024813a91.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698347628; x=1698952428; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ch2xr7WSfAQsekJPDJjz2RgxrfMVUniFSWo5hCYQcEI=;
        b=n7qqe6gZzYCPyI195Espv7qbePfOww7A/cLc7rG09RJfNZRMuy9olQ6JAaIq826TH8
         p6iiMZKban+NjzK3t/zMQpPjNmmZwwGnTSVGo8irDbKdio7lVJTYOMWNxlGkRja5nXlI
         Sqj+nR2IRV7acB5ubVRXkdf2Lwas0yU8WD6JU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347628; x=1698952428;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ch2xr7WSfAQsekJPDJjz2RgxrfMVUniFSWo5hCYQcEI=;
        b=iqxjekiQ3YTI6xSC23JUNDaRsy01XNf76GssuSIINn/ZNZ0XZTN7zpRc9OdFz1WKzz
         RxS7k6D8MbGVAnYn7iqVMT9/SUMzT2XIbhAJScEXMMAF+CXxeo7u14U7vyx/NvWk0+dr
         9qmmkWc2wOCBdMN1ZBS3ddWsQvFHZ+/y60HoOizoF+udHdMncM7WpekMkMmdaYADbHPV
         Xx/vP7GkvCTTqMZzpN/koBSL95CzNnrHvxvkFCtWFL05H9KeZ+Ec5lbExWIX5kyFcVwL
         JPylm4DkCNCRVyhL7MnX6EmO83uld2AJv6NpB+VdHBApRawhRGzmnW3Nf3DEBDGrbDNi
         Ll9g==
X-Gm-Message-State: AOJu0YwsOVTmIyvps3+FCHSY2UeILHIMx42C/Q7lWXcQS+3/E+TWzriv
	nVJi0U7CfjIWU7Wqw6cUprKU3A==
X-Google-Smtp-Source: AGHT+IHUqjqOZtBWong8vFEikEVD8olSnLJyI2zsl2FBwBwf0Fg0LjpZS1EX2gbS3zNjBHJCDytTbg==
X-Received: by 2002:a17:90a:1957:b0:280:205:9ba2 with SMTP id 23-20020a17090a195700b0028002059ba2mr448867pjh.5.1698347627814;
        Thu, 26 Oct 2023 12:13:47 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id 22-20020a17090a031600b0027476c68cc3sm2183639pje.22.2023.10.26.12.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:13:47 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 0/7] Add a few mt8183 follower boards.
Date: Thu, 26 Oct 2023 12:09:09 -0700
Message-ID: <20231026191343.3345279-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add makomo, pico, and katsu which are mt8183 followers.

v4: based on https://lore.kernel.org/all/20231025093816.44327-1-angelogioacchino.delregno@collabora.com/

Hsin-Yi Wang (7):
  arm64: dts: mt8183: kukui: Fix underscores in node names
  dt-bindings: arm64: mediatek: Add mt8183-kukui-katsu
  arm64: dts: mt8183: Add kukui katsu board
  dt-bindings: arm64: mediatek: Add mt8183-kukui-jacuzzi-makomo
  arm64: dts: mt8183: Add jacuzzi makomo board
  dt-bindings: arm64: mediatek: Add mt8183-kukui-jacuzzi-pico
  arm64: dts: mt8183: Add jacuzzi pico/pico6 board

 .../devicetree/bindings/arm/mediatek.yaml     |  21 ++++
 arch/arm64/boot/dts/mediatek/Makefile         |   6 +
 .../mt8183-kukui-jacuzzi-makomo-sku0.dts      |  24 ++++
 .../mt8183-kukui-jacuzzi-makomo-sku1.dts      |  24 ++++
 .../mediatek/mt8183-kukui-jacuzzi-pico.dts    |  36 ++++++
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   | 110 ++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |   6 +-
 .../mediatek/mt8183-kukui-kakadu-sku22.dts    |  18 +++
 .../boot/dts/mediatek/mt8183-kukui-kakadu.dts |  18 +++
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     |  14 +--
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts |  36 ++++++
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts |  40 +++++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  94 +++++++--------
 13 files changed, 384 insertions(+), 63 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts

-- 
2.42.0.820.g83a721a137-goog


