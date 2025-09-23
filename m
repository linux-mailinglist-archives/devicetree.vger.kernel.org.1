Return-Path: <devicetree+bounces-220541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B15B97492
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 21:07:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8447319C5BF9
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 19:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17935302CDB;
	Tue, 23 Sep 2025 19:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dI8sVTq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C5D15853B
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 19:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758654444; cv=none; b=FT19kELEGO/Aw0+Y+df6GuZblD1dPOS7UdX2+c4ehkGQjmEHAAe0Inmq0IQTRg0hE9lvtTbliPJpuVsk0CRs6sIy7hs8IGf1uxaqXFUr4ucWcWk7xqfX6N2802bkXl6caNlueUjeFp1tKWINd+dagW3K6ualcWRQ7cUt/15E8GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758654444; c=relaxed/simple;
	bh=zdGNgePx0iG5TdC4PLAwgN6HlxLRLnRyX/Uw1iUB1ZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L6FQZ0cFfU/a0ST8a1bIDwUTmtk6QC01PU8Fv/rCiCr9zOxKDVcoIwL6jSGzOTgBbYnHJnZTqxaMzDD9t9DiYP1HJh0jE4m71CDGABf4e3lTkzLqlPB4A6Yb16cdEn7PO/vv9z2Gzqa0YlFcIUv7LOUEA9rS26Md+BEd+HLaHfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dI8sVTq8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46e23a6617dso8425525e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 12:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758654441; x=1759259241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rlIfyIuKUfu0Giv/t2LPO4IvsJ2XIyV5+eVLug5OMo8=;
        b=dI8sVTq8eldQu5ZiKhybJdHZq+g7GVV1+DnBjxOp3GuLo654huGMp5DGVsXCu4kszp
         UOhCZjFErqE1W3pS92GTPmBhZjVkLslKwtJB7qgHn41Tn3ccsSDn0e8MAnkGte18F+n8
         cHZwku61Wu2og1kMqqynYdC9hln1PAJ5262pagCWIsRE0Pa8uRTGxMGNqPjY/fxqZpAl
         gOivuSrjT2Cf6PgLeXeP1Sv6an5g6T2fVdYPinKsxZpynZ8J7Dcm/HbvUWqpPX94qsAR
         P8xTIxLX0ezaP/ut6jFvNPtxijx2COVxNuJh6LSWOh9FVjd0/nrLZiZGaw94K7MKM680
         g6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758654441; x=1759259241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rlIfyIuKUfu0Giv/t2LPO4IvsJ2XIyV5+eVLug5OMo8=;
        b=I7t2n3EwcUaVKL8189A7UAEHYuBHSo51OvTM3tnnzkBHPJKb3bZJ+VDTb66OC/GFtO
         I3RVAWZx7RKntLy4U6NwZsXcDM9fM4GwcnjD9S5K9zSedGpFdrC06OO0tiBDtFlUh2zW
         ygq1txKh1SAW43MitkTeJwZqYLWqtK9KFAmurRihfAaZ8AGu0p2A4PPDjOZ+/lfQI/Oj
         sr6oUXYbgR6kmyxcXPhsnkxKBRRQd7pve9GuniEj2e6vUN3zYB2Rzmamgdsk+LAcFPmG
         h/tK6gD2WThzx4RPlyOsBUAnRweauac/DolXHHl1VOwmmRRcCulE7hIZ7ck4ZRPUjIaH
         BCXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjdRw3udbIiRsWk5TKoN7R/vDoN9/DAs+yiM0F7LjTe6TxvjawO7ewM1koBqy+D/xEyue1mg/6iCpx@vger.kernel.org
X-Gm-Message-State: AOJu0YwVELNxaL6VBPY90Sl1EANyO/Px1plhcaccpjsascu6Ea4Dmy0u
	nwbRIEgEgK9LHckUzCEq7syPKN3UutIQZqQx2tm5vxKOLjDOs4yqrc+a
X-Gm-Gg: ASbGnctzEJXEbFf1M2KhAlzydVwgmUmlXU7Y2F1aag4mtK9k2l0K6gqwhiXl9FVbCLz
	WzVW9EFXTl8S83nMtkApR2vzsYCUxgb39YS8tKedJ8H+dyFUQPnYettcp1aIpN5ELFZoCS64pwA
	Nc322HiE8uV9tu+hzvFPvzw9ub0gGaNrutliS47OEurHIHeB8R5fsMQrvjKjl0VZKirb3el+pa8
	eWpzyvWSVW4JL7g/HqBuk+FfZuOHttLs2qmV+b8zqyT3W8tlRte+8sYwjgKqVu55GCWf32K3UxF
	7OhcY1HPLTV8YElcO4UUOy8oneyUBRkU05wTsEPNS2t3bmqQKZLN55O3aLqNksHt/HXrWeNNt4v
	vqr6blln5EdyS/JD9dwR0CispUmQFY4/Ufg8RrhEjPg5VTFRFhrRBktT2B85yxZ0u5sBtR5M=
X-Google-Smtp-Source: AGHT+IFoxRtCJp+VI5Tw8FmClZ4lUAsWofpK0fvdL3jcvd8nDXAM5pqPxbH7pHIHEhBDKvkDPaydXg==
X-Received: by 2002:a05:600c:45d4:b0:46e:1b89:77f1 with SMTP id 5b1f17b1804b1-46e1d98004emr43610015e9.9.1758654440543;
        Tue, 23 Sep 2025 12:07:20 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-464f0d8a2bfsm265240915e9.2.2025.09.23.12.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 12:07:20 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v2 2/2] PCI: mediatek-gen3: add support for Airoha AN7583 SoC
Date: Tue, 23 Sep 2025 21:07:00 +0200
Message-ID: <20250923190711.23304-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250923190711.23304-1-ansuelsmth@gmail.com>
References: <20250923190711.23304-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Airoha AN7583 SoC that implement the same logic of
Airoha EN7581 with the only difference that only 1 PCIe line is
supported (for GEN3).

A dedicated compatible is defined with the pdata struct with the 1 reset
line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v2:
- Fix alphabetical order

 drivers/pci/controller/pcie-mediatek-gen3.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index 75ddb8bee168..6e68ed75b564 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -1360,7 +1360,17 @@ static const struct mtk_gen3_pcie_pdata mtk_pcie_soc_en7581 = {
 	.flags = SKIP_PCIE_RSTB,
 };
 
+static const struct mtk_gen3_pcie_pdata mtk_pcie_soc_an7583 = {
+	.power_up = mtk_pcie_en7581_power_up,
+	.phy_resets = {
+		.id[0] = "phy-lane0",
+		.num_resets = 1,
+	},
+	.flags = SKIP_PCIE_RSTB,
+};
+
 static const struct of_device_id mtk_pcie_of_match[] = {
+	{ .compatible = "airoha,an7583-pcie-gen3", .data = &mtk_pcie_soc_an7583 },
 	{ .compatible = "airoha,en7581-pcie", .data = &mtk_pcie_soc_en7581 },
 	{ .compatible = "mediatek,mt8192-pcie", .data = &mtk_pcie_soc_mt8192 },
 	{ .compatible = "mediatek,mt8196-pcie", .data = &mtk_pcie_soc_mt8196 },
-- 
2.51.0


