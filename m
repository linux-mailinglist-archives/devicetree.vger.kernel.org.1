Return-Path: <devicetree+bounces-18854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3507F8D92
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 735C72811F3
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B854F2DF87;
	Sat, 25 Nov 2023 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="0r3dYAob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3EDF1
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:30 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6b1d1099a84so2773001b3a.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939130; x=1701543930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jj/HfiSQ6d5t/5HhjyjbiYVeNAO8Z0nCxri2/wDLCdk=;
        b=0r3dYAobPducBu/qEKGDw8HXPhSxI8wrTh4oEGDjW33lbLkb7J1dLt6QCKOjkMiYff
         LXNYaIgWowWYZGzTJBYZoeevU61mMxrJBR8pzqfgKCqM/XQG+VEAZR5IrDPBo0rklHKe
         Xav4Plejy+RRCPfs+bVqG2/7voIB0E8vVxZwkub40n9/6lVedMKvmvIzxOjB+wFi3AJT
         +skzhxcfk6KE7ZCXhCHuc98NXdVLyB6XA8V1Kan/vM9RCFtgUip8+dubhok2Kc7xCg9o
         UlTQAmLH0Wx+1GummDw2Cej5B/u9exC0DwRO1IiWXfU1FtW1hwPd/awLTUxbS6Hvn3B9
         1pBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939130; x=1701543930;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jj/HfiSQ6d5t/5HhjyjbiYVeNAO8Z0nCxri2/wDLCdk=;
        b=ij1zV2yoLZ6oOhDk45gvjXCdfsv9kE39xwqUzYIkDSm58uAVjc5dC3c8yIaRDUD8KD
         ZE/2MuPpckebAI3ahZCx0QIoB4ulc77Iclwd771wX+czegjYTqug7NmBqUKpDPfIjptc
         ImstbkYYepLD8GCtSjcP0tc6viJsSqaFmcPnAXSB4FrQ/6JFKxuvI55NKdhXZq4amCYX
         Dq+vlvKDiij4I+X4XLkFUjDtcGA7Cm4f5BNQZl646R9ir+3KBp63W4tyHlhSJ+altuMv
         dp0RGKF3h2NGy1MxW8ba9CXEfEeywQYGpF3DxUCgojx+cTL+Tr0+X1YwFWq4hsCyw/eT
         9oPQ==
X-Gm-Message-State: AOJu0YzvOgOgiy64EPgZX2ls96+dBzzMeAkyrrw9rfN2kxGXA1R9k28M
	nJYLLr5jyhLtHsLBpmVU2FiRPg==
X-Google-Smtp-Source: AGHT+IEw91bDj1TnnkxWJC1pJvmcbECDm3e9xvHLhKcRyTP7ujds3WHlaiCTdfVnc2m0w/V5TvD+uQ==
X-Received: by 2002:a05:6a20:8f1d:b0:18c:3b26:13c with SMTP id b29-20020a056a208f1d00b0018c3b26013cmr4498156pzk.12.1700939130020;
        Sat, 25 Nov 2023 11:05:30 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:29 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
Date: Sun, 26 Nov 2023 00:35:12 +0530
Message-Id: <20231125190522.87607-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.

Changes for v2:
- suffix -regulator in node names
- fix node lables
- update commit message

Any inputs?
Jagan.

Jagan Teki (10):
  arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
  arm64: dts: rockchip: Add edgeble-neu6a-common DT
  arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
  arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
  arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
  arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
  arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 466 ++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  14 +-
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 236 +++++++++
 .../rockchip/rk3588-edgeble-neu6a-wifi.dtso   |  56 +++
 .../dts/rockchip/rk3588-edgeble-neu6a.dtsi    |  25 +-
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  80 +--
 .../dts/rockchip/rk3588-edgeble-neu6b.dtsi    | 383 +-------------
 8 files changed, 765 insertions(+), 496 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

-- 
2.25.1


