Return-Path: <devicetree+bounces-183979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 466EAAD294A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 00:17:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE26D1701A0
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 22:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B481F22539F;
	Mon,  9 Jun 2025 22:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KQHk3kPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3919B224AFE
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 22:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749507442; cv=none; b=Nx/jhGRYdZK2uaeONfENl3wGGRSzcmtAGkjw7oVzogd0/aJREAtpjFBH9D/zOKBVmPH0UrbVBJjf3tZX77v/PdTIMwDuPMOG1wsVeP5DvDRfcxgLvqhsLExjDaO0H1CzN3R5E+u14R5QnG/VA8Dex8EZNIzSKY6IQpxeMAgf48Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749507442; c=relaxed/simple;
	bh=PTJgwmboDh3zwtCWo3X0HdMzg1bjCtzlOP89sJZk87U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uHv0QzK2BT7ZOauTUXG+X3pvMVkaG2wiJaMYHZzslCxdR30e9jeESSBkp3nj62MMpdUtBHkTyzLW8rf08Ft9Z9UlyR71VSEHg1VjKj6n/XEMV44kXBlSiEMubd8nwY85+RKUl9CkXIUpjiV582PJ4Aa0RdV3K7+5+tkctRh9RIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KQHk3kPX; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-af6a315b491so4009820a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 15:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1749507440; x=1750112240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vh/JtGXJq1ScSanttjAc4pgnb9sqVVMcQN566gVE5Cg=;
        b=KQHk3kPX6AbRGseD7ZJk+RehSdnU2Hvit0xwGXTOxGe+7lmS3bZ6GzNYVOlogzoGE4
         2NagoQhiP/eKPNTFR3TaIp2WKpK92mBKNlnQP7lXCNFJptocyaHvoaI2+T31Q1z692Jn
         fMiUzdowM+d9pfN/w63PPa39YQRly1eUNw0Oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749507440; x=1750112240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vh/JtGXJq1ScSanttjAc4pgnb9sqVVMcQN566gVE5Cg=;
        b=oxafRk7xREbIBIh7527J2vlJNJETU6Fs2RBKhqv/8esJb6QHQ1kHpdEUI5Jg9delxK
         db65e6450aJRaiMyLfOLrBw1TFSGJFlQbsi3Mk6E0IGb93DyYOeuPPKuGQNllQ0IQeHZ
         y57CjRqlPe3eNZ50k6eZvzaM0dDJ7boRHzh/cjvukH/2iyJGXiiit9eqwW4NRG8iGWYC
         YilYfpux8BQQhM6YPUgfFIWGX/5paqtgspH8/ff3U9c5BAgoj1TJqBitAY3EOkAorKxR
         J7URgA4ReU+Ngj1sH/JGnKhU9oFOLQd2HOYwqmLY3FNqg6MmtHHTwmHlEUloWU38BjEu
         NDrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLWyEytvun8sfhdDHbdASVm0PPewwOLwOD4QfpNGAikhYhHeVygbhNwvPB+sv985sGiPme3yqnD+Eq@vger.kernel.org
X-Gm-Message-State: AOJu0YwLa91rDuKxZGx4DvY430JaFkf4WuQHQpcl0A/T+NjEqqlRZMq/
	mamgHnO5Ii1eYdErGCu/570cWtD/wSyU85bzsy8JiARmRhYvof4HdVnsqcAGS1ciZA==
X-Gm-Gg: ASbGncvVSGK0YG1bz33dVECQa5jZphKaL291l0hrKwuFsKPUOiA9uoDHRgckhAf8txm
	Hx9BPLwQ6vEDCb2sJjJhBaHevkvGSooMF/ZNyJhBFCk/aiSgckzyGDKNFHIteWNX1KvUIyuQ+Xd
	SoKhTCrOjakqmRmBjsJUBG7joFsW6BLkZYJCDD9SSWrX2vSIAREpdXqWw6Z5L4gLosL7K7ohtI9
	uACE1t85t6kGSEluheGelvolWVBw9Kd8FAmtveBxEqedMfFFRY6VZ9k0o/68YOKBEL7dohoE6N0
	aPUeM6eg/nKG4EOXayNN0bt2Vs6mS4MOJWV3jNbDHipEfB+/xxY1BnXUk5E8RsiMIHhwDBscZNj
	Oa0xPMaL5CDwHfjeA5njGnkER9XCoQ77a+ZPJxNccQQ==
X-Google-Smtp-Source: AGHT+IGu+nDuRxQ9N/1g/F5ZQ5bigX27pmvAno5gKj+c/t7BgQSFCAow3ysCS4pqkXEmCzwSGjxbww==
X-Received: by 2002:a17:90b:3c8b:b0:311:f99e:7f4a with SMTP id 98e67ed59e1d1-313476822a8mr16779583a91.26.1749507440399;
        Mon, 09 Jun 2025 15:17:20 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603078d65sm59290415ad.5.2025.06.09.15.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 15:17:19 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/3] dt bindings: PCI: brcmstb: Include cable-modem SoCs
Date: Mon,  9 Jun 2025 18:17:04 -0400
Message-ID: <20250609221710.10315-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250609221710.10315-1-james.quinlan@broadcom.com>
References: <20250609221710.10315-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add four Broadcom Cable Modem SoCs to the compatibility list.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index c4f9674e8695..5a7b0ed9464d 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -15,6 +15,9 @@ properties:
       - enum:
           - brcm,bcm2711-pcie # The Raspberry Pi 4
           - brcm,bcm2712-pcie # Raspberry Pi 5
+          - brcm,bcm3162-pcie # Broadcom DOCSIS 4.0 CMTS w/ 64b ARM
+          - brcm,bcm3390-pcie # Broadcom DOCSIS 3.1 CM w/ 32b ARM
+          - brcm,bcm3392-pcie # Broadcom DOCSIS 3.1 CM w/ 64b ARM
           - brcm,bcm4908-pcie
           - brcm,bcm7211-pcie # Broadcom STB version of RPi4
           - brcm,bcm7216-pcie # Broadcom 7216 Arm
@@ -23,6 +26,7 @@ properties:
           - brcm,bcm7435-pcie # Broadcom 7435 MIPs
           - brcm,bcm7445-pcie # Broadcom 7445 Arm
           - brcm,bcm7712-pcie # Broadcom STB sibling of Rpi 5
+          - brcm,bcm33940-pcie # Broadcom DOCSIS 4.0 CM w/ 64b ARM
 
   reg:
     maxItems: 1
-- 
2.43.0


