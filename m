Return-Path: <devicetree+bounces-224806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB7BBC81BD
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7490B3A3633
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DB72D0C7A;
	Thu,  9 Oct 2025 08:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gf62WloO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0BF2116E0
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999548; cv=none; b=do2AStsqtUnACyCLijh9WADBxLxkOfTq8rYtdTOcVmndRsY68f3R8Z6Iu9Vwrmb3f0lMplvHjWSeHJlChskmwJ3qUX1JbPNfyc2znWCj2y5YTHKKnnNvPKAsCILLoOECXFmCBbexmQk5VolgAsINi1rois6vsRbamPe3z4bgSOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999548; c=relaxed/simple;
	bh=d2vQOMGTX0vpO0tM8PhhjLHne5Jkj28uJLGWrKm8x8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tRROSNPVC9RxlPX0upQeyJ4iaOMs4tPMsfz51WbZjE8dn893alH23yqbErG8jPW6W8s8LVwT7iWhUzjW5nVZ1v+33qgFa8RC2NQJ2+zn4kzn9G/iKynlzXOqxuAIZKtGwNFK6NjGqDxtaixAY3Hy29ZRAwFYCqz7uOGn1nkRXUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gf62WloO; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-782023ca359so713423b3a.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999546; x=1760604346; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UFxKPtmjjPmsPSDnSGoXW+doirX8MuPaFEG2TG4+iXU=;
        b=Gf62WloOtlL41N0qDrhyum+HVBqQKX+NAHVDPyR4AkmH297k2ZtMx2eM9e0s2TAhhh
         2mrPhVpTxUWc3kzIbXjueq0V6K3+MMDQokjmWBSVtetFVsVVWBJ2be0WABJE1M9cvkcL
         VQ9vRI5PYkauWpbdyfVcMjGRKpvFIuHkLQKtI/uTGhZtbUEMR6UnLQeT0uyNmN7NEtxs
         04tAxKiuu0jfak1yMG48terA1Z1kK8bU88mLsLF67Yrj+KlqippstxBdl6i9GxzQUytA
         keQQpY51vQOG4yG30eh8WeVYDdMDRZiKrHPAQWH3Z0tFPMngxVO09nSaLgNNZHl//H4Z
         +UgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999546; x=1760604346;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UFxKPtmjjPmsPSDnSGoXW+doirX8MuPaFEG2TG4+iXU=;
        b=ieq4uqsrCzulrM0a3gZjvJijBBJ7pPbpROghLVAWorzzrywp8vzmPLjDmCjIGh8nA6
         cvR2+xqZnfvhE1iOXlErnXuPrT7uEAdwRfhY9WGF+O75fgRvdVOrrlUBU5RT97vBiSPR
         M/78h6EL1LUSbgcHkLg8WTXRAKnigJ452VSPZEUnJRbutO1ueeBOdbveKDHITgIxG7A0
         VIbjIwWHkbWSeAAmH0Y6JMeC3iIg6FcaaM3BWYh5bTK/jlrmq8CQ0PHmBPNYGZ0F3sQ7
         bG19+lGwOf1sP7WBEe4UsL89IPVDLrZUxAuY/2g1mWFZM31IUHHfkNB8ekM8eVqN4i7C
         OVMA==
X-Gm-Message-State: AOJu0Yysffg3Q6mSsrLRgPWfT8SJ0ZuWEaWNtOA+dxvoTvJnoAkO0Iyn
	s8N/MoZcUx657ul8mdNmMZY1Wrmt98DReopTjc430O/JqNTfLV2UrDwT
X-Gm-Gg: ASbGncsTRhPTYmcJBXzswN3NdUXS/BrBCPW5SCFhOE3/MVZoqoeTFrGisE3yxkPGSrH
	MpTjsPpkrByyz8lxK6UEP3BoB21Lw/YiC0gP+QFLRL8tabEz/fwx04k0EWbFftKH+gDEy3fe8sh
	EcDKyCAfWKkNchfz1mDL0RLetpHP3II06cY19eyLHrcTodnaPit8fzzNfwgyOatJGTv4ODzRGVL
	8I2kt7rBj3YlQnHNnngL06GoxvZogQS0OydBmAafpU/rZ2bXhOGUgjjLDwUebzq4dpfZL8NmJLn
	R5lqKIoym/eCz2lfqFhz4ZKztevk1vpZQ7rr4Oa9t2gx7lTVXyQCvICUt3qcYUiYlTBFSEjC2BS
	aExQtHFKILodTeDQIsGdZbiNqslpke5OMbJWiXDni8lt6EYHIrTNNGAQky1iCXbVDyw==
X-Google-Smtp-Source: AGHT+IEVp0sgA10BvrRwBHxoUMhCzRyjJK1eNd6qK3tx+tcCEvpD74MNSsa4zglDlT5r0XodRH8KuQ==
X-Received: by 2002:a05:6a00:2443:b0:781:4f6:a409 with SMTP id d2e1a72fcca58-793858fb715mr7279720b3a.11.1759999545797;
        Thu, 09 Oct 2025 01:45:45 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e1bf7604sm2130924b3a.55.2025.10.09.01.45.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 09 Oct 2025 01:45:45 -0700 (PDT)
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
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Thu,  9 Oct 2025 16:44:13 +0800
Message-ID: <20251009084416.45542-1-jjm2473@gmail.com>
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

Changes in v4:
- Fix missing "Acked-by" message in patch 1/3 and 2/3
- Link to v3: https://lore.kernel.org/r/20250929065714.27741-1-jjm2473@gmail.com/

Changes in v5:
- Change gmac phy-mode to 'rgmii-id' and remove {tx|rx}_delay as suggested by Andrew Lunn <andrew@lunn.ch>
- Fix comments ('not mounted' -> 'not populated') for unpopulated devices as suggested by Andrew Lunn <andrew@lunn.ch>
- Link to v4: https://lore.kernel.org/r/20250930055017.67610-1-jjm2473@gmail.com/

---

Liangbin Lian (3):
  dt-bindings: vendor-prefixes: Document LinkEase
  dt-bindings: arm: rockchip: Add LinkEase EasePi R1
  arm64: dts: rockchip: add LinkEase EasePi R1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 686 ++++++++++++++++++
 4 files changed, 694 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts


base-commit: 30d4efb2f5a515a60fe6b0ca85362cbebea21e2f
-- 
2.51.0


