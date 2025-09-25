Return-Path: <devicetree+bounces-221520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC2ABA0940
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 078674E84D4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9465C305E19;
	Thu, 25 Sep 2025 16:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QRgbaoiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5EE33054CE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758817428; cv=none; b=M55NfwNYvX7awW0Yq6B/GfxvZZX0SvcRO93Qh80YKdWaTR/ij6Y9B8WJwtDHd/Btk1IoXGPaAJ231MY9o1plibHQZsLwiGXuU0ymzT2EN/d99ipoXzGEguzW6DRrsZKJXCVNKWtR4F43su0NLfDpx9kIB6QnCoPS45aDlyXP+Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758817428; c=relaxed/simple;
	bh=gOo1rVsZR6VdqU5z395vlT+SO32oa08uQ/tUj6wgFd4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=TDi1O7/DWy7ExtzZF2075kPs7VYdJ+YyMHn0Eq+s3uaJvA5+NkMYU6LYSGrgznsoiY1/QqMMoilVWqchGxGLKT/KGD3U/OIS+m8M4HfA7SFoROCsWDNGLni+KEP16Tr1SHQS95Uy05UJgap+2NLsyEIFZlmSNKOiWd9quZM3Kps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QRgbaoiE; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ee13baf2e1so1041874f8f.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758817425; x=1759422225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MTyvmotOb0/PgMOHsXh4gvDuOiENNfX5B0XL/LoNWUk=;
        b=QRgbaoiEXx7xp7ZNWhKTDtac8hbujoKZUQ2SfmHyvK19p/gId2x095Eyjh9baRHkWR
         44Xli413yV5yhmVER/RqnMGDb4RQ8EwxqUGrVq1sIWQ0WMFYAVDonhrCKenFS97Wq5k8
         lwH2Ss46HmdcdxmTooGgvJVZYMH8XO2nFmFRr8V6DozhaD2po4XhWGPvFGpK0gFYaHNN
         BrMhdXO88rRbnbEXOfKLzB5snUpUER38cQr4Q0zeyA81+uAsCBr35wIL0MUAoBserXlA
         c/TutBxD3gNAMvj1Uq7FeZEwc6eJ2N1i51DNY5nIcy7POL2uxAhOekqGf11V6yBeaSPv
         g3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758817425; x=1759422225;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MTyvmotOb0/PgMOHsXh4gvDuOiENNfX5B0XL/LoNWUk=;
        b=ozZAhdOvL+uTER4WF8EqKE1ala1iQfjbJPMSTC4L9EBfqXUcA6hevMx2jxIR3HGhxu
         UdpJq3nzFu16zPs+khzXNcbt50odaPb2SirHx+wIPQwnsijRGV8n3G4f7DWW0V6Jw7RB
         rQhSQkqZ5x9kJilBc6+8sSf8E3yQpk4A3qT0D96P1QK0BhCbdL4lrqerYvNouOCfBGhO
         OI/iuDLIkG9MWAuAAl9yQlT11FBM3CMLTcW3wNWJOI1UlAJ8fclsqpztUr8jAAGCRpuq
         g1eCr6hHPSqPeSh0WF511FE+PCSO+VgaMMbXYY9e1TMBoPfZ61gTCyIcejUN3PslGjRE
         T/Qw==
X-Forwarded-Encrypted: i=1; AJvYcCXn7MFlVoZBAswQHZpswW/XIlB/2lnA2pUaVNQQEElowOwsmCrXmkzoLOLKGt3kyqHzGsmnKF16sOs4@vger.kernel.org
X-Gm-Message-State: AOJu0YwBiCPpnECP7sp6sVAtuysDVMb381UA6JXf1Jmp2jTZw8k8+RqL
	OWiDbsBxT2q9Et3SkZ1WVf1tLGxxe8M2AKj1gMG0mZBcTygBYmPlxAK6
X-Gm-Gg: ASbGncsqrW0FdlAw/hceAxQy2FoDL5jvckfvPUhmSajRDnhKeWLBMZQF8LfmSvP2kgo
	SalFypwaOoHq2+SOh8J/tsm09waaBRb8SN+0QNbjPQj7szF2UShqj1saiSSCcu7zkGVbvnCb6aH
	ldZvlOly0FyT+SG0mAYuwSGCjP2rpp9N3qjTLzICf3dkLC3ypMDEZLvUl6aclSfuoXtViTTJZS3
	e2tREUIe3c1ezhsSwkKTgsXWijpHRlajm4wLGF2YJS3FTCGBhCBEEmAbc7wRMJ3A1sbTChEanrs
	OTobLngdXknLNOOfZf7tn/X6+tXc1UXdqfIFwfr0nVi15rUFMj8Py8qRI1ck+BS9CSsLNKo7stV
	yYozLdtL1LaQ082Z3RfBFR7EaAmkWmxnNhY/oyu77VT98/3nXnQrfCeT7ElY6ruFb5FUFj2E=
X-Google-Smtp-Source: AGHT+IG8wt7D2RVybhrtsXF08OvAI7r2C+qCPryu+R0Ya0aCRRAJKGzbWS2JdRSo8S3uobYjXYxcdw==
X-Received: by 2002:a05:6000:655:b0:40f:288e:996f with SMTP id ffacd0b85a97d-40f288e9f05mr2728379f8f.63.1758817425041;
        Thu, 25 Sep 2025 09:23:45 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fb985e080sm3534819f8f.24.2025.09.25.09.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:23:44 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Subject: [PATCH v3 0/4] PCI: mediatek: add support AN7583 + YAML rework
Date: Thu, 25 Sep 2025 18:23:14 +0200
Message-ID: <20250925162332.9794-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This little series convert the PCIe GEN2 Documentation to YAML schema
and adds support for Airoha AN7583 GEN2 PCIe Controller.

Changes v3:
- Rework patch 1 to drop syscon compatible
Changes v2:
- Add cover letter
- Describe skip_pcie_rstb variable
- Fix hifsys schema (missing syscon)
- Address comments on the YAML schema for PCIe GEN2
- Keep alphabetical order for AN7583

Christian Marangi (4):
  ARM: dts: mediatek: drop wrong syscon hifsys compatible for
    MT2701/7623
  dt-bindings: PCI: mediatek: Convert to YAML schema
  dt-bindings: PCI: mediatek: Add support for Airoha AN7583
  PCI: mediatek: add support for Airoha AN7583 SoC

 .../bindings/pci/mediatek-pcie-mt7623.yaml    | 173 ++++++
 .../devicetree/bindings/pci/mediatek-pcie.txt | 289 ----------
 .../bindings/pci/mediatek-pcie.yaml           | 514 ++++++++++++++++++
 arch/arm/boot/dts/mediatek/mt2701.dtsi        |   2 +-
 arch/arm/boot/dts/mediatek/mt7623.dtsi        |   3 +-
 drivers/pci/controller/pcie-mediatek.c        |  85 ++-
 6 files changed, 752 insertions(+), 314 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-mt7623.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.yaml

-- 
2.51.0


