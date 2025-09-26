Return-Path: <devicetree+bounces-221769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C14BA2C5E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 371653866EF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BB002874E0;
	Fri, 26 Sep 2025 07:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K60Oi0or"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D5928B4FD
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871757; cv=none; b=r5P8M+8crVVk9xekrUutpJ+Av+llhz9MFod1ARt99T48H4hyjIsgH4cG0KFlnM+lbGOpihq/6uVq7nvc4w4tf/L2zzd+SfIZ635etnKCKNwGUG1avSVac3Xhsy4wVvuUuKELz42bbtu4cx1KS0DJDYkZv2VV4y46HZsaR3EXZHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871757; c=relaxed/simple;
	bh=KKeLdXdxMAxZlR0cCMx0pVd79S7jNFLhBZQcQpx/FbI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z2UTxHSqH4R99xvROPjvnFME9LOCI/gb3jBxiZQnldm5GvYUPiKOnm9pMFrXdH/EOrxsIH/r/asGnQdKSawXH0Q80XpK869dCTrCASsb+p6KFRZoXNVe8P57RBSOrZpUSX9w1xH5kJJ4q7kigbijAvxIbO6W6ZuAOeBTmWlHh0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K60Oi0or; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b551350adfaso1748012a12.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758871755; x=1759476555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eYEa9oczgUXfiwew8zKgW7hYIrVnSKo3dCzTihagGEA=;
        b=K60Oi0or+zeuFSRcfSW8SlDcSOy8uPXFPwzMAf5qQoPB80pri9tfrIDwjbgkh8SYeq
         2BQTdXCSBywy8aZ3361KKcxu7n8NFqmhUahbEh77zDC526ZLO8h6UxOJonN7tgKOYjwy
         7r053WIPNTbitgzAgHW8cXp6ERniOzs0vKtitG8pnEnEB5MKyp4BSQ4m1jdZY1upwSUH
         yI6Oy5CfZ93IS8ADUnvKJTq6o1KyszSvB20/bBttcj12RVMAZ/whBZXBuwJADmpiV+j8
         Ud9vcH/uDaDBG2DQ+5YhxyuXXciYBiQPVX4L+TdeQ6UjZcPaglgF9sYysJL9JeO+DS/i
         lNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871755; x=1759476555;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eYEa9oczgUXfiwew8zKgW7hYIrVnSKo3dCzTihagGEA=;
        b=nVDVIvAT5cPRILjEF8E6vc4nEFQut4z7fvE4Ha6txHfI3nHPjS168ZX7Dlj5tZz/Xi
         Ta7fDiNMnHXJ5wNvbwHqVR874V9EFxi1x6Vh1CP1m7IMlENlO4VAVtm/RrrRAdEIh2Dr
         XBJ0JYyZ35x/YOX/pMRkNYgtptNuGN42Wj/TOH+d/8PMFd4c0dnyRQPBDZ1lX51wzXwd
         Lqhuw8AioBJeENQ8c2z0xHlmSygeloNLsQ/fKP/5Mcp6couDlU9wBpNyAr4C2LJNqnRT
         d9Vifa3JA4cHf5PXtrSuRMGV+jl75wwQUqJLs5+xARJFrxHpQdxippGa7Qz8WLlgkeGl
         dPJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ2qsqrcaO++PQN3Z1BXkoNpy7DmsjQsx/fw+SnKSNv80yYw4vFyWcq/zOBpNDaHgSkBa7S/Dz2Tgo@vger.kernel.org
X-Gm-Message-State: AOJu0YyGrtKPWEKoSqSwKJWcjdzvMGDkkdj3cRAV1dG9iWn795stxUS9
	gr0lBRuvfWq5EDa2iJ85Y3mtCrbEY+ZMsjcQ5/q261Nci5M6gt9ee9rP
X-Gm-Gg: ASbGncsm3WKZDgRnMUzwPgl2P1z/tw6z9gN9CN80BpEQiOOziMwDyCinPlh2449DvaC
	1aY8JABBy+kWD39KTLUG6JPopJmcSDmvlchAbpD1xFx8I1byxUDIE8y+9A1ADi2QseTfy9pystt
	KaHaGUGrKJc3syGyxhUyt8OuPdwctV7HMU8c9GgOp1+49mV78LW3C1cJszpDpaYZv/yNc9yQs47
	sMYJjGI8m0Rm/8q2KerhIGNGUsw5nAyhpsrPuqZ43mzS29CSZ1P+aXSYMywRLQnciCGidLDjt9V
	BajXnzikiEbZKB75vVIZ8aM2qZYnTIQMNVSWvQ9cVJ9jlNy9uKSmRb94TJ//BxHlE/n/2paBynW
	SEmH4mNpahA/grAn2ZmCB
X-Google-Smtp-Source: AGHT+IFnyJDdAuSLIa/C8964VsLcbnuC5hHMVE2YI+68PeLlsmcnEA8Npkepb0UD0ObLZTs0q3j5XQ==
X-Received: by 2002:a17:903:22c7:b0:26b:3aab:f6b8 with SMTP id d9443c01a7336-27ed4a603dcmr74120275ad.58.1758871754907;
        Fri, 26 Sep 2025 00:29:14 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.216])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69a98b9sm44083065ad.111.2025.09.26.00.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:29:14 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-pci@vger.kernel.org (open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-tegra@vger.kernel.org (open list:TEGRA ARCHITECTURE SUPPORT),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 0/5] PCI: tegra: A couple of cleanups
Date: Fri, 26 Sep 2025 12:57:41 +0530
Message-ID: <20250926072905.126737-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi All,

This small series provides two cleanup patches for the Tegra PCIe driver.
The overall goal is to replace custom, open-coded logic with standard
kernel helper functions.

These changes improve the driver's readability and maintainability by
everaging modern, well-tested APIs for clock management and register
polling.

v1 Added new devicetree binding nvidia,tegra-pcie.yaml file.
   Switch from devm_clk_bulk_get_all() -> devm_clk_bulk_get() api.
   Fixed checkpatch warnings.

Tested on Jetson Nano 4 GB ram.

RFC : https://lore.kernel.org/linux-tegra/20250831190055.7952-2-linux.amoon@gmail.com/

Thanks
-Anand

Anand Moon (5):
  dt-bindings: PCI: Convert the existing nvidia,tegra-pcie.txt bindings
    documentation into a YAML schema
  PCI: tegra: Simplify clock handling by using clk_bulk*() functions
  PCI: tegra: Use readl_poll_timeout() for link status polling
  PCI: tegra: Use BIT() and GENMASK() macros for register definitions
  PCI: tegra: Document map_lock and mask_lock usage

 .../bindings/pci/nvidia,tegra-pcie.yaml       | 651 +++++++++++++++++
 .../bindings/pci/nvidia,tegra20-pcie.txt      | 670 ------------------
 drivers/pci/controller/pci-tegra.c            | 268 ++++---
 3 files changed, 777 insertions(+), 812 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra20-pcie.txt


base-commit: 4ff71af020ae59ae2d83b174646fc2ad9fcd4dc4
-- 
2.50.1


