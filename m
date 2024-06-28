Return-Path: <devicetree+bounces-81387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6054C91C1D6
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:56:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C247DB209F1
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C1BD1C2308;
	Fri, 28 Jun 2024 14:56:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D650F1BE87D
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 14:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586583; cv=none; b=bHS2lg7XAv0ZBkqfgKj0U57K8txi7+dGZLhjczp9Pc7VGXaaUJk6KYwVsG1ap4GnZNfTFWk+fcHM4RSPdzB0iJAHPlHtkKhUyTk1he3Mz/RH6xBrSPFtdV0VORX/0c0X+nyjiOPoPzEz11SE7yaP3aXIhTWJgU0YdXWa2v75ATs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586583; c=relaxed/simple;
	bh=rVFDrd5+QpLJmRYNQpO0KWWG7Swyesx4yoDpIYKIFUA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=moRXOGbQA2y2LTMstHyMfM8fLe0WKkXpMteo+YovuUWvWe5Olm3VtkOnRGWlY01CTLSufJbqVBkDqpy+7YhJEsVK5meGR24IoV98+SynHA+k391KCIS1KSGNJjQcNI23ZI0F9ylMowRPsNs4BLbUpKaL3DOsd9lDyCf4jEsU68s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DF9D106F;
	Fri, 28 Jun 2024 07:56:44 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 151373F73B;
	Fri, 28 Jun 2024 07:56:17 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jun Wu <Jun.Wu@arm.com>
Subject: [PATCH 0/2] arm64: perf: add new CPU core names
Date: Fri, 28 Jun 2024 15:56:10 +0100
Message-Id: <20240628145612.1291329-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds the names for new Arm Ltd. CPU cores to the list of supported
CPU PMUs.
Patch 1 adds the names to the DT schema bindings documents, patch 2 adds
the name and compatible string pair to the PMUv3 driver, mostly to provide
the right PMU name to userland.

Cheers,
Andre

Andre Przywara (2):
  dt-bindings: arm: pmu: Add new Cortex and Neoverse cores
  perf: pmuv3: Add new Cortex and Neoverse PMUs

 Documentation/devicetree/bindings/arm/pmu.yaml |  6 ++++++
 drivers/perf/arm_pmuv3.c                       | 12 ++++++++++++
 2 files changed, 18 insertions(+)

-- 
2.25.1


