Return-Path: <devicetree+bounces-247890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AD04ECCC692
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:12:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32FEA302D5B2
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1013934B414;
	Thu, 18 Dec 2025 15:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ZlPBSC/W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8FA34B1B7
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070763; cv=none; b=ELdQd3BhIhz6fyJiVOUJ/A+6RCsZpV/zdF8OQYtQQTIUERA9ELWp8PpUofAxHUuPNOY0xhwfyRyTtj7CAnBbf9/Og/VpptSXfXIcVsP6SDhp5kjrjRzNTY33+u8VdTjfLGrtH9gb36hdHbU3u9BXq17OmkUahxq6ks3ogHaBgvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070763; c=relaxed/simple;
	bh=lxVvGBsXGYN3n2uwLz0zt9lASjy8gictqN1aufF7Lq4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gAZ/bNpASAlLLgB/5yMoQ4cv2P2LP/5uTpxs549i2XlcxkxR+IePdSdfuCprCsT8K/o0m9REizS1Dpv4nFdCxMsPzzy132poVmRPIx3c+EJBAv2z5oXw0pNSrfvE1LXkjW4fXoeR8UebAtG7qhox3/FI21V50eX/C7OkZbF1iFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ZlPBSC/W; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8b2ea2b9631so69560085a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766070760; x=1766675560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4hIaGiL80zj7kXcIMdv66SIiq2tbAwa49JkVUuORHZU=;
        b=ZlPBSC/W6vKmsg9MdrBHjT3d77GuS3HetgdubbWVYOhLfCxr9rNMl91RpLywxnb0Se
         Jxhal0Co2CEizv5V5v6bH/OKKZInh5r6yuLR2yRLr01L6FIIAcrNoYaQ2uqI80QiNJUK
         fI1NbbJGtvBcYjPfuOO+FK4E4KMb+U8EmZGB6tiZKIhA4Ht2akCZoatuFV6xNqQ3CX0i
         SG6UsbFXvtNUMXd8fpbACbVJMdSgUB2FjKcuoHpsRificvesRj5d3cn7p3NJBDI9coPV
         9CbgqaQj9d4BrFYZ9TFdV5EFWDfRAHgSzdMvby3SywrcKm8oaKo3pXx6xsepsrHGpDvx
         RbQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766070760; x=1766675560;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4hIaGiL80zj7kXcIMdv66SIiq2tbAwa49JkVUuORHZU=;
        b=CAPH4QVt1f3hF3MmvtPXSbOVdLkYsLSq7NFxflnldvH/Aw+KJBjdRgpxuuJOY0rqDd
         wPGuynnBf95KyoBIEy1l8efjPB4XF919Va6WViKq0UpnkrbmzY/NYaTtT9zhitpCqcD/
         3tBVdSlHBTl6JqIxpCVde/QJQZ1yBsViDoCAZJMmtcgY98WmrLzk90ZLFXZk1XsNtthM
         x52Tsvw0pk2tmMpiSWOkOeSqJaS0mvnzUYUPKGrHLSCWzjST32kw6P5I5qkYUV1SqZ0Y
         r7N+GsUayC3y7At4l7tv3bORxXWctfRE0hHjGwyycGlO5ytCoqC4RdXl4Tvxl79NnPOu
         ysTw==
X-Forwarded-Encrypted: i=1; AJvYcCXX+Rruj1tv4GbG+PmQmdQ+7QR9AXN0TBBVJMUoFUW8pZm4EX38Pn/I+6ep20MGR7N8o7zav+rb2OLY@vger.kernel.org
X-Gm-Message-State: AOJu0YzEMXgeLjfPBj6faRmrMYMOibyOtTJdK5r4iRWI9JvLBJgxpidQ
	I50mYT6IxCtB1An6l1ebxBA0M8UwGFXMbWN6igIVhTCM1PsD9Yv5Qe6Rimjn6EiM/9E=
X-Gm-Gg: AY/fxX4qMv48QEF6oukNP/CUnaRbl9cDQnsERp46C0vZTyj7TfukS0qukk1dF324Ny0
	XU2h5jbO3fEqsO8c4+6S/FSJo3xUFeb+P8K4cBJlxZ6EYDqxAXWweRXUz5lCtBCrFpSSW8sbbuc
	snzkZ3UeUkirLgbvLcl1B/3+vq4lzNgdM4lVSFMLE9ro8KezZFVBgtMIOYcbJPf1g5keUpj6xkf
	uqO5JL/V6J4E1ZpLAUxuNNbi7Zk08kQB0CjsUxOyRg43v6hTJr0Rn7ZNsB1zvBpkGpTZ3nVcMxj
	dU31aydT//5IjaSsgkJulFaPPehXuD/HyZOXvXxJsX9XVyv/+OYIE4kBsys1vSAyULX7rM0uiIb
	Ax+K6EqgcPSIL6XD3F0kz9AM3AalTDE/VMliYoWv8VDmcf19uKhEFmLi0k1gm4YagPUtp2qQzp/
	JiyIBPrP/7Udc7i4mpdgC+dLnfMuFbbzjY7Ae4xoEJCjYZvETR+mlrPQ==
X-Google-Smtp-Source: AGHT+IHmVmM+H9+67oq6BOeGEFhlTWftMxnr3gXZbeufLi7tT0T4NovnVfrEP3C8OYAsipwfxkDfaw==
X-Received: by 2002:a05:620a:1a26:b0:8ba:5255:107 with SMTP id af79cd13be357-8bb397db52bmr3259102085a.18.1766070760006;
        Thu, 18 Dec 2025 07:12:40 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8beeb5d6952sm186866985a.3.2025.12.18.07.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:12:39 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: ziyao@disroot.org,
	aurelien@aurel32.net,
	johannes@erdfelt.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/5] Introduce SpacemiT K1 PCIe phy support
Date: Thu, 18 Dec 2025 09:12:26 -0600
Message-ID: <20251218151235.454997-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series introduces a PHY driver to support PCIe on the SpacemiT K1
SoC.  The PCIe controller implementation is derived from a Synopsys
DesignWare PCIe IP.  The PHY driver supports one combination PCIe/USB
PHY as well as two PCIe-only PHYs.  The combo PHY port uses one PCIe
lane, and the other two ports each have two lanes.  All PCIe ports
operate at 5 GT/second.

The PCIe PHYs must be configured using a value that can only be
determined using the combo PHY, operating in PCIe mode.  To allow
that PHY to be used for USB, the needed calibration step is performed
by the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

The PCIe controller driver that was included in earlier versions of
this series has already been accepted upstream:
  a812b09a6b599 ("dt-bindings: pci: spacemit: Introduce PCIe host
		  controller")
  ff64e078e45fa ("PCI: spacemit: Add SpacemiT PCIe host driver")
However this series still includes devicetree patches to enable the
PCIe controller (along with the PHYs).

The patches that remain in version 7 of this series are unchanged;
they are simply rebased on top of Linux v6.19-rc1.  The first two
patches are the DT bindings for the PCIe and combo PCIe/USB PHY.
The third is the PHY driver, and the last two are devicetree updates
to enable the PCIe controller and PHYs.

					-Alex

Alex Elder (5):
  dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: Introduce PCIe PHY
  phy: spacemit: Introduce PCIe/combo PHY
  riscv: dts: spacemit: Add a PCIe regulator
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 8 files changed, 1120 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
-- 
2.48.1


