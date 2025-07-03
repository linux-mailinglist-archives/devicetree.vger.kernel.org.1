Return-Path: <devicetree+bounces-192846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C8DAF82E2
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 23:53:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC22F1C81D09
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 21:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367032BEC3F;
	Thu,  3 Jul 2025 21:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="iO6YMO/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24B62BD5BB
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751579605; cv=none; b=thSeErF1U1Yiyp8qRlod1r46Yhs/GuiNBo86vdVRkksjOaBlAhvhBPzJrIcnsrtzdi2Cr5PmRVq2IynFJyrXXc7w5ShGH9rJmlQ+G4yL4OvRGf64aphdeCuPBHlJkYp/rjVRoaYIrFrhGvDSLl66xXB+rBML5uL3YCFYICjQRcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751579605; c=relaxed/simple;
	bh=7vPWxC3i0T1lMmsOVAXtGjJ/XmqPhC1ujaQsBuT5zmA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZDTshA7XuWu60W/7sATaM707jiG0Qe1I8phP+NxGGd+PduldrLP1bJgQ62v1N1vbVo00IcAjqz3bHphRscX1ACBTiEWCsO0UeZG/WmVU5a3bfbQeqtp71KtRcyx8mjXU7vM4mETN7nbqGJBdO7lEeBxj3NTnxj7G4mzkxtWf1CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=iO6YMO/V; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-236377f00a1so4203665ad.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 14:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1751579603; x=1752184403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wgwhd4uxfgsiFGznM9R+p5/1NcCXs+lUXw56p7CBPbs=;
        b=iO6YMO/VpXHtTIJQJKElUl5DZtymEdqWQADOU+DKNNaY22/RAe65NP4yVzvfKjtMPL
         3N7Y8dBMKTh+hOWn30hNWyclmtGnfbrPptDWzPAPTqao90BA6f6hqMT1SHvvWdmDGJQs
         iaMNEqYtPp6QkiG115T4GZ/qQDXwbNkqh4M58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751579603; x=1752184403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wgwhd4uxfgsiFGznM9R+p5/1NcCXs+lUXw56p7CBPbs=;
        b=gx8sm9nAIQuA6uCFUJJRPyBHoBLas4+kPl8993z+sE8eKm/1f3gFu51+y1z6uMhTlo
         6W4h/BEHF4g8nMw9m93Y0T+IGb+dWpGohWRaNoIvgaXcKo0UbNnmpyvs5dkiHYMd9Wzh
         wAPlqqlPEly4A3ZuHS3M/jM9OSVF9DZU7DPUFmTVk2u4/xqqPjfHb9Ks4/QvX3Q+hN0m
         Wzko+D7A4Lqw6QhYlsdSEB4U3S/GSR3DyQmSmpJlJXB88pC3htBmik2aGSnwOpvlJ5sT
         d6Vbv68QdkuMMiwXPT5UflMa6JghKZmi8++J2TbMlANLjbYe+ep3ivDo8MYbI7r1cvzr
         DRtA==
X-Forwarded-Encrypted: i=1; AJvYcCW6TR+J/aYYAKVF0yoOg+JU9zVSCMSWvCDCJTOfD+jp7BYg43BnZ1Y1N4t05liDSUZ/c5qKMFF8F6bS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6yc9IzaM3cMGB2aGLXk6a8i2/17fTC68UJuZ5LcLrGSFevAWm
	gWc0DP8S2rJhQw0Z8xca9ytY0jVoskrmgVoJTFg4fq898GeEh2HgVVuEMS0oNRhoag==
X-Gm-Gg: ASbGncu4uK5kg2M/phqxSIDKHxsqoIY/ChsbQxek4M0tqzCdTlmIZ9eW/tg341+4SbU
	8YqGudS4AcIyUOn2tIF7eVMe5Wrune8AGWO7C64kASYEAoX6blFH/W6eUVPISIFwF47gbgctrvg
	mhKXgcsUvO0z5XlM+WOpo/ORBhd/RHexVqx22mQ8ShB0hkmwm2Kb/ivvz3cxLPy48we9+D39m0+
	MVRFboOPHPRxUW40IXm0kIvkDDf8+inVtKaoe2MHORS/iB9icbKJZBHL2A6+nmCv6r9+VVc22xd
	UKzGoliC0HGAAEX5YVG4XOfH0O1HK97e1l7lY7HRvu+G/jT6lBI8f3KLrGc8WuFkMJXHr+nFT2J
	Xggxg3ZsLHxTJLPvoEeF0sR783ixIWBI2ap9XUFTwhA==
X-Google-Smtp-Source: AGHT+IHxUkT3T1XrdvXj6lsZasXIIR1QuejltuaVBvB0AUtVnJ6flgqLggHU2VFll3S8pZy4clu9dA==
X-Received: by 2002:a17:903:2d2:b0:235:2e0:ab8 with SMTP id d9443c01a7336-23c8606721cmr3661665ad.6.1751579603171;
        Thu, 03 Jul 2025 14:53:23 -0700 (PDT)
Received: from stband-bld-1.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c8459b3a0sm4249645ad.219.2025.07.03.14.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 14:53:22 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
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
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/3] dt-bindings: PCI: brcm,stb-pcie: Add 74110 SoC
Date: Thu,  3 Jul 2025 17:53:11 -0400
Message-Id: <20250703215314.3971473-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250703215314.3971473-1-james.quinlan@broadcom.com>
References: <20250703215314.3971473-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds BCM74110, a Broadcom SetTop box ARM64 based SoC.  Its
inbound window may be set to any size, unlike previous STB
SoCs whose inbound window size must be a power of two.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 5a7b0ed9464d..36bebc290b42 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -27,6 +27,7 @@ properties:
           - brcm,bcm7445-pcie # Broadcom 7445 Arm
           - brcm,bcm7712-pcie # Broadcom STB sibling of Rpi 5
           - brcm,bcm33940-pcie # Broadcom DOCSIS 4.0 CM w/ 64b ARM
+          - brcm,bcm74110-pcie # Broadcom STB, Arm64
 
   reg:
     maxItems: 1
-- 
2.34.1


