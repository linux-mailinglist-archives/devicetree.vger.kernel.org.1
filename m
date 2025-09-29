Return-Path: <devicetree+bounces-222341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 911D9BA8332
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49CCD3B85EA
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0E92BEFF0;
	Mon, 29 Sep 2025 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jALHRIyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D8A2BEFE8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759129053; cv=none; b=UjOF+Pe3lv0/rM0CPfg5VFkpVrojJyTXWY4ZO1yvRetUdvXUGqxOxDA+f9FcMTcozDWC7eYkES3qkgL5+cbeQ34bY2k0HxCUdQVvHUYpJnughyWMX50QnlXSzrzz8Yobiy7MPtrcske0OxctHw8xq3AaO8//kZsnAQRhmAfiD+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759129053; c=relaxed/simple;
	bh=oIKmGNauTYw2nxDParCUyfjyCURcTyHm+9W4WVCAPio=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h07Gn8/UOMh2hO39i6cPwgG6Q/7m0iRv75qXw5b3a/kYHKL79BMAwThSGWoDyKOFjgCPejUWMQpe78qEh3nFa3JPEpyx/Q0wIINz10s83sxUOxknKgleBTlhZ7Iq/IkIvHDhFRqKTZ4X8u8dKrcNP3lkMXVH67fyM1ecafwRklU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jALHRIyJ; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-781206cce18so2321709b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129051; x=1759733851; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uRlIBTJbS5dsUVU9BT5fMMctePqeQfAjKve/Q3RtfIA=;
        b=jALHRIyJJr36kY17XPi2QB+HmKiCcLYua9jIWHMmGP4hjecOetub/ktkIX5tPqVHCd
         RIWbuKtI+dBNyXs8lBTW5LAbJQZHgbKjYSIz+PCHpCgsH3pFC317DI9y2qqJSXwnaSO2
         oKQDjgVxNUBUppNnpklSwUhBweGmlHBLyHuFgn+JOLryGSKnA2X5SOs4wQ5/h3sf5mY5
         H1NyFFmogMlnf5IgLczkARhCfc6jvY5/WQu3vKY2+TH7QC4xj+gUqbvmzXi6QZcAbWq6
         GZeJ2ffdW7ZKCdRHOxPrZvpseiv3rkdaBYmwByHdPIod43NEyy3n2+qTwbnTArUexXqR
         n1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129051; x=1759733851;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uRlIBTJbS5dsUVU9BT5fMMctePqeQfAjKve/Q3RtfIA=;
        b=eAT5QAuWgV/+xEX1t/yaW5avZMwrU/M1dPzxSS/ifHy0+D1EET9vc9o9yKbdMUrUo8
         1DVjnhlomhta/X7gBE4zshPDYFReB4kCcq859uS4u9oNASd7hEPPRBbeknszVIXdmKxW
         5GfUpyu/CE9JB1MUie+PFDpgcyXwxpylAGaB0UaV4ohiBUBe090XsV7LlqLye6v1ptcd
         NFNxtD37Ot6UEogXl7HadT0ecuSrmEc2iscmr4oxI2zdcqS6lsPt3Oppf/mpZbniLpbR
         ibNkGmTRDFnQ3W88CG/bhiw/9hmLVYUIFVsaUXHdP49CUUJHcMexrclQfmtAUAbYa984
         jXww==
X-Gm-Message-State: AOJu0YzwD21U0WpnUQjwVAo8L+oL65Ruz6xIyIAy+G8H/JKQ2h0kFNUO
	55E7VvPf9HA+bu3NvbgrHf4tyB9hU6hMZf3jKghVwRC8vY3QkPCB5xSt
X-Gm-Gg: ASbGnctx5MKC0TUeWX8Ia2kfagm+1vdRkkapV1GiH9iyUJrpmNJhBM/694nFVm7kkO8
	b+ma8T5zxrBAaoe2gxfESEeERbEf5PxWFXZmAtKH8sYypI0l2gVlMIXX440PJFyNDiqJIAzB8ca
	MxLyD+/IuiA6jjwImSdp36tJKsirKVW1KEBukNqb0E3xRPVxOARCh6QorKjnSrG9DDZsnyimWsv
	gmI2kPy07qJBMMNsUfL6nx24LcZgBRXHWAtST6U0m/fZGmXppLTmk1WsgeePX9mkjGa5oQNj11e
	YTBd4EQ6jBYEjTZbnGNOFOJFYw4KwVaVbuUS3PasiV05EC5GceovmCMDCjXxC/7TPYgFJPgA09c
	tDXA2iVBCirK2zHCXTqDwBKqFMEPnbUdyfJKq7/rY4Ow=
X-Google-Smtp-Source: AGHT+IHnOzVUSxV0rdJYyHdNFITwaxFEqSFhQIoUc3A0a+0YDe6RiTgSYuqOECxHlGbYNdZCP3ruxQ==
X-Received: by 2002:a05:6a20:7486:b0:2c4:5793:3419 with SMTP id adf61e73a8af0-2fda3a10507mr8690061637.27.1759129050776;
        Sun, 28 Sep 2025 23:57:30 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.25
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:30 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Mon, 29 Sep 2025 14:57:11 +0800
Message-ID: <20250929065714.27741-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---

Changes in v2:
- Change deprecated "rockchip,system-power-controller" to "system-power-controller"
- Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gmail.com/

Changes in v3:
- Fix typo ('status = "disable"' -> 'status = "disabled"') found by kernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@intel.com/
- Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@gmail.com/

---

Liangbin Lian (3):
  dt-bindings: vendor-prefixes: Document LinkEase
  dt-bindings: arm: rockchip: Add LinkEase EasePi R1
  arm64: dts: rockchip: add LinkEase EasePi R1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
 4 files changed, 700 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts


base-commit: d0ca0df179c4b21e2a6c4a4fb637aa8fa14575cb
-- 
2.51.0


