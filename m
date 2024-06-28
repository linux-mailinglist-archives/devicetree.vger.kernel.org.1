Return-Path: <devicetree+bounces-81388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A540991C1D4
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:56:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D73EE1C20F75
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4301C230A;
	Fri, 28 Jun 2024 14:56:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C61211C0053
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 14:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586583; cv=none; b=Vj9X73ypEhD8MX0sUdwUbDyiL/MpWZoy2GqTaMKscN3uE8HqiJlKlpzLetWx3spbeyw9Kaqns5imAGq5UZBXX9ZPLjL1BTsbM91wGhLhdD+vo33qdEKsxfjJrZAsIXNY9xcxcMbBOecLlRbeye3AfEll10R4OwfFC80tbN+hBNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586583; c=relaxed/simple;
	bh=kujC052SBJoAxZ48+o64s+ETsVLveAcrngYNSN9f2ns=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RmiI572Owz314233PRvA6+Lu6le19pPy5u60qFS/mIxB82kOV4NgrjuEohcMyTHOvhtGNZ1HBCv8vsTE1+R/yPwf5Zjlxh1O/DrUPjSsYmirkZNLIHM7KZmhS8rvg2dZrjUnHSdtGx5fRPlQP/kzGuYC8iyXjQMmiMMssm/rCdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBC1911FB;
	Fri, 28 Jun 2024 07:56:45 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9616B3F73B;
	Fri, 28 Jun 2024 07:56:19 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jun Wu <Jun.Wu@arm.com>
Subject: [PATCH 1/2] dt-bindings: arm: pmu: Add new Cortex and Neoverse cores
Date: Fri, 28 Jun 2024 15:56:11 +0100
Message-Id: <20240628145612.1291329-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240628145612.1291329-1-andre.przywara@arm.com>
References: <20240628145612.1291329-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible strings for the PMUs in the Arm Cortex-A725, Cortex-X925,
Neoverse N3, Neoverse V2, Neoverse V3 and Neoverse V3AE cores.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/pmu.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index 99b5e95307074..528544d0a1614 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -53,14 +53,20 @@ properties:
           - arm,cortex-a710-pmu
           - arm,cortex-a715-pmu
           - arm,cortex-a720-pmu
+          - arm,cortex-a725-pmu
           - arm,cortex-x1-pmu
           - arm,cortex-x2-pmu
           - arm,cortex-x3-pmu
           - arm,cortex-x4-pmu
+          - arm,cortex-x925-pmu
           - arm,neoverse-e1-pmu
           - arm,neoverse-n1-pmu
           - arm,neoverse-n2-pmu
+          - arm,neoverse-n3-pmu
           - arm,neoverse-v1-pmu
+          - arm,neoverse-v2-pmu
+          - arm,neoverse-v3-pmu
+          - arm,neoverse-v3ae-pmu
           - brcm,vulcan-pmu
           - cavium,thunder-pmu
           - nvidia,denver-pmu
-- 
2.25.1


