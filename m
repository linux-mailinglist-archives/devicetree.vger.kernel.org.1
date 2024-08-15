Return-Path: <devicetree+bounces-94071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C41953DA5
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 00:58:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CAB81C239CE
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 22:58:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE3A156997;
	Thu, 15 Aug 2024 22:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="IOGfVlHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82291155A43
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 22:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723762666; cv=none; b=tS2NIUALBFslKJRwu7qb+q3MoV0qFJ056NvWdpoB9Oq6szihivJ+ZynRxM4zTqdQuJwDjpNP+uHYv3zkhvmZRoyDR6TAuRKnbYc0BO1ywBj24OV6GKfY6T0tPApOUDZVdakL8zXM/LDZsHuqPwnUu2K5qcnnlTWUOtgdPAcSjRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723762666; c=relaxed/simple;
	bh=pq/QmBERYfjLGdavM4Te4UmlwSg/DAfwT+HgNBz7FRs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=BamvuxOGTFX3KLMYQHaYu/3omEjNb3K3RBvHFZzc+13XeLKc8VSJ7fHHCJ7UKIZNKDSCTyOvNTkSHzKJvMKNYLqUJm1riVPKtw9jw+U5RStuHxmNrgsOsde+wyzjr01JMyIFXVudMU3dNcRRA1dWiAwsQyG1WM+y/zu+QQIbIEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=IOGfVlHi; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2cd5d6b2581so1061282a91.2
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 15:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723762664; x=1724367464; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CRQkGsiqV7c3oa7/BSip4AQK8e/kbD1gffw1TrJCVrE=;
        b=IOGfVlHiYipCVMQCTsIIrli9BeYmeROJ1qRCeXkkUwbCiLsujE4rikP8VmKuY/RPy3
         Nrfb0xt3EIEN2WLbhW2JgO5RiAy5oeD/UoWN3OUB1JSIAyiFhKOPTDvtHR5SjuMazcJE
         wUM7s6Mmfj3dQNVUF4j5ePIDXkXjWAoR0shnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723762664; x=1724367464;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CRQkGsiqV7c3oa7/BSip4AQK8e/kbD1gffw1TrJCVrE=;
        b=hIiV1gIdFnhEoZcyJKv6vFCBMwK2hLhb9Fv+6njdtoZi9KBXoaLkgIPpbjQNao9WXN
         CKwENrOMwYYF34dWIT4jkpwc+UGECA8bxjfCfNAzNgtY6jRu7NIfSOAE72bI3NKPlq/9
         m17qc0fyMAZX4WLjkoKM0cog+a5WfZfHlVbRYIzXQc8SosNuvmaTXkCJRwsx7lTiOm9l
         V4h3ycNTQtRxSRMNBT/axM7m/X3nQnnaK2VIsnpgwNgnTfEUV9EzksSbgGTY9caLNOJZ
         wZDU7yHfDXualPpnZ4jReW5Dr426tGkBcVbRmKEeZqnivn5TzCmOh1/HipoYtiXGmiiQ
         rWtg==
X-Forwarded-Encrypted: i=1; AJvYcCXYGjlWLxGglkLIT8GuOjmnfkie/ZHnBXB87FzvmUccUTFioavbjxRoGjutAXEqRwixyV+IFIcptDCteR7Khciwe6gxzl8FeqcsUw==
X-Gm-Message-State: AOJu0YxtYHWwkvQ8PjdqeySVhsIR7Vu4aBp08ALJ5c5/qLjKeVbrD3ci
	Ah0vHQyZb1nbflrvHwRFEpRTQzTH2i6Lmt1WhN6iXq5xju0VUtixIi/TSeERqQ==
X-Google-Smtp-Source: AGHT+IGsU40PJngMIcYStf9Y9iTSE0jy+3YSJCHPXuJiJMQETsILw9S6JXDYzZrXRLDatiqnRms03g==
X-Received: by 2002:a17:90b:950:b0:2cf:c9ab:e727 with SMTP id 98e67ed59e1d1-2d3e00ef66emr1270794a91.31.1723762663566;
        Thu, 15 Aug 2024 15:57:43 -0700 (PDT)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e2e6b2d1sm373997a91.18.2024.08.15.15.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 15:57:43 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Stanimir Varbanov <svarbanov@suse.de>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v6 01/13] dt-bindings: PCI: Change brcmstb maintainer and cleanup
Date: Thu, 15 Aug 2024 18:57:14 -0400
Message-Id: <20240815225731.40276-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240815225731.40276-1-james.quinlan@broadcom.com>
References: <20240815225731.40276-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Change maintainer: Nicolas has not been active for a while.
It also makes sense for a Broadcom employee to be the
maintainer as many of the details are privy to Broadcom.

Also, alphabetize the compatible strings.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 11f8ea33240c..a95760357335 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Brcmstb PCIe Host Controller
 
 maintainers:
-  - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+  - Jim Quinlan <james.quinlan@broadcom.com>
 
 properties:
   compatible:
@@ -16,11 +16,11 @@ properties:
           - brcm,bcm2711-pcie # The Raspberry Pi 4
           - brcm,bcm4908-pcie
           - brcm,bcm7211-pcie # Broadcom STB version of RPi4
-          - brcm,bcm7278-pcie # Broadcom 7278 Arm
           - brcm,bcm7216-pcie # Broadcom 7216 Arm
-          - brcm,bcm7445-pcie # Broadcom 7445 Arm
+          - brcm,bcm7278-pcie # Broadcom 7278 Arm
           - brcm,bcm7425-pcie # Broadcom 7425 MIPs
           - brcm,bcm7435-pcie # Broadcom 7435 MIPs
+          - brcm,bcm7445-pcie # Broadcom 7445 Arm
 
   reg:
     maxItems: 1
-- 
2.17.1


