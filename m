Return-Path: <devicetree+bounces-246629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2F0CBEA84
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C7BD3101763
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2AFF33BBDE;
	Mon, 15 Dec 2025 14:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="im2rH2CJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AA233BBAB
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765808206; cv=none; b=VGSZyV05ewUsFpIYLLigVtJ+26TfEMNXuZxYyfdGSziAehskVGEEKV0dKoGEzqLA/aDgIrGXugvB+s6GH9S2SEMZEF4eLngCVm48ROhHeQKT5FJaPMYu26zdt/0tfdAwn1TuwNJk4dY/blvaSRNZY+UZ9vTf/alzT0I1Iqn2bUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765808206; c=relaxed/simple;
	bh=JtFZo/uyQAWSjmMOB6k1d/9548yEmgKRfxSDFklyJp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BALmCxrVqg9E0O6V3osOCC3a485Wxs7Ru+EFgk8/O6Ql25Wr/omIosR6RPx+Yhj/YELG3p8dGp7rISufr+yGZPBLRl2zlJGuoL5CD47odzipnsqKSzOhySx2hJE0uShyxyTO0/lsn4EyBA3ARHvLy4ysglbJ7hjCfCyItNsLXdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=im2rH2CJ; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7b9215e55e6so2472044b3a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765808201; x=1766413001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7/TuzCGlQTRhxK78zbbN56sGpgmiksawHrsvuWBiDTI=;
        b=im2rH2CJL4Svgrj2vpz4+2lj01/mtn21cXDnimM3EXByPnGxl0S6Cq4eFr67sH/FLM
         VOUJ6mesbF/q/eBKB7ICwtxHJdJbAiSuvSYjJSY81thTp4Kaf9aIM1HFR56MIIPiChDL
         pC8dAUB7vKbedsN0JwO05BeUUjG+FSpBx46yCZtEUa5XYPQXgPzQJ0sUfIG9MSOQMSnG
         JlZu7jITE0Ivdzx02qYvK92ZQFsKsP/8s/2AZpOST66K/jOgY5RrV4u7AmCtdHRapjk3
         ltec1OxzLtDaREZfBGyPrNRvpBtRWJuzNUjzZ6RqYB/ZDc1AzqCahv58REeQNiSGrHxB
         OBNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765808201; x=1766413001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7/TuzCGlQTRhxK78zbbN56sGpgmiksawHrsvuWBiDTI=;
        b=D6X16M0WBekqz/JfBQoKDLmArwR9jtZrBi4el7NEclZU2s824+0pDpVjkRRQA0NVJM
         3DwUgS0eIVRLP2yAx00ce1kVDXCYqbX4wehWWEgEPSqtA+M7FjpSn4xIG9rvDqD9jhaW
         jGeBz/cjCAZZ1FjY19FQH6P8ksVacngCEOVm6U2fcSfuXdMj2BAMB0buO/Ng1vzfPJCm
         dhYzkF6GO3oiZr15+dQsgE1eCXiSP2D6nBBQOKQWeDQbcuJs3nFs8smiWP1Ef85hK6Cd
         09t4Ir6M4mXdklLrsRXrCuHLreA30mOZpN4JiGrWqUs1hzb5uspZq808Fzb/AHVQYMp1
         KiMg==
X-Forwarded-Encrypted: i=1; AJvYcCW07NYSseB9x4BuVtDmpbwvL1Q3fO+biXfkoLycNDtGsApyYIH6EFHiE3xxVk/TxYiHwamXeDDZiXTE@vger.kernel.org
X-Gm-Message-State: AOJu0YzxHnYjFvDXgcSodWQHCXR7Mq0NcF25p0BXdIlReM+XfA5PmvAA
	HVW6WwEYPQ53pnji7yQ5IXgaXkatjnBxbLl22tMdx6nZVpYAnMb3GTELgKxhSw==
X-Gm-Gg: AY/fxX7MVvLUU9jneQYx0RR0GlisrvRBYD/AZ5bKoBNguiMTga4JltyaFy90TMaC2xr
	ihdYvSX/wADEOfXDNwSvHmJ4AkMOdyHriQsDgi0Fn5v1Vh6aqvD80wF9/Ybih8nBx7sXBIEezoQ
	jf3kVRekeM1m0oapzhDLYp3AmkcjFMgMvJOxok587WhAemNq2EFeqKFQrghisCF3lkd8j6FRh5m
	BaG4P75e+zwdf4k/2qTssfj3AO4/GndMBjGTxi8uyo8t3WZNeZbgaoYKNMx19kkmOgkM0NjCWdE
	5UxG2grWD+wKWb7BsJcoycUikV7jPdoHiR7zjrw7Q3asgnHb0EsAH6ME9n/kPitndVvBh9BAbJu
	xSocmNvHlPnHJ8ynkPWveYQO0nQLNDCJ9WABjxyrgvDW7nI3ErpD6PKKBRph4qfRD2VKQBMHhkS
	ddvg6lTA==
X-Google-Smtp-Source: AGHT+IHofev4tgipZDGPnuJ3GMiH1rsQTbZ29334XG9Ue8yjcy1ZxYa5orNEikBSTFF67OplRvrkjw==
X-Received: by 2002:a05:6a00:450d:b0:7bf:1a4b:1670 with SMTP id d2e1a72fcca58-7f66763cda0mr9290540b3a.6.1765808200740;
        Mon, 15 Dec 2025 06:16:40 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c2772a51sm12938189b3a.17.2025.12.15.06.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:16:40 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-pci@vger.kernel.org (open list:PCI SUBSYSTEM),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-tegra@vger.kernel.org (open list:TEGRA ARCHITECTURE SUPPORT),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Subject: [PATCH v2 3/4] PCI: tegra: Use readl_poll_timeout() for link status polling
Date: Mon, 15 Dec 2025 19:45:36 +0530
Message-ID: <20251215141603.6749-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251215141603.6749-1-linux.amoon@gmail.com>
References: <20251215141603.6749-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the manual `do-while` polling loops with the readl_poll_timeout()
helper when checking the link DL_UP and DL_LINK_ACTIVE status bits
during link bring-up. This simplifies the code by removing the open-coded
timeout logic in favor of the standard, more robust iopoll framework.
The change improves readability and reduces code duplication.

Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: None
v1: dropped the include  <linux/iopoll.h> header file.
---
 drivers/pci/controller/pci-tegra.c | 37 +++++++++++-------------------
 1 file changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 275d9295789a..336d2cf4d828 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -2156,37 +2156,28 @@ static bool tegra_pcie_port_check_link(struct tegra_pcie_port *port)
 	value |= RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT;
 	writel(value, port->base + RP_PRIV_MISC);
 
-	do {
-		unsigned int timeout = TEGRA_PCIE_LINKUP_TIMEOUT;
+	while (retries--) {
+		int err;
 
-		do {
-			value = readl(port->base + RP_VEND_XP);
-
-			if (value & RP_VEND_XP_DL_UP)
-				break;
-
-			usleep_range(1000, 2000);
-		} while (--timeout);
-
-		if (!timeout) {
+		err = readl_poll_timeout(port->base + RP_VEND_XP, value,
+					 value & RP_VEND_XP_DL_UP,
+					 1000,
+					 TEGRA_PCIE_LINKUP_TIMEOUT * 1000);
+		if (err) {
 			dev_dbg(dev, "link %u down, retrying\n", port->index);
 			goto retry;
 		}
 
-		timeout = TEGRA_PCIE_LINKUP_TIMEOUT;
-
-		do {
-			value = readl(port->base + RP_LINK_CONTROL_STATUS);
-
-			if (value & RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE)
-				return true;
-
-			usleep_range(1000, 2000);
-		} while (--timeout);
+		err = readl_poll_timeout(port->base + RP_LINK_CONTROL_STATUS,
+					 value,
+					 value & RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE,
+					 1000, TEGRA_PCIE_LINKUP_TIMEOUT * 1000);
+		if (!err)
+			return true;
 
 retry:
 		tegra_pcie_port_reset(port);
-	} while (--retries);
+	}
 
 	return false;
 }
-- 
2.50.1


