Return-Path: <devicetree+bounces-25501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB7C813647
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:31:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16D6B281D4B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681FB5AB85;
	Thu, 14 Dec 2023 16:31:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 394A4132
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:31:13 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83391C15;
	Thu, 14 Dec 2023 08:31:58 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C1DEE3F5A1;
	Thu, 14 Dec 2023 08:31:11 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Cc: mark.rutland@arm.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	suzuki.poulose@arm.com,
	ilkka@os.amperecomputing.com,
	bwicaksono@nvidia.com,
	YWan@nvidia.com,
	rwiley@nvidia.com
Subject: [PATCH v2 0/5] perf/arm_cspmu: Add devicetree support
Date: Thu, 14 Dec 2023 16:31:03 +0000
Message-Id: <cover.1702571292.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v1: https://lore.kernel.org/linux-arm-kernel/cover.1701793996.git.robin.murphy@arm.com/

Hi all, here's v2, with tweaks to the binding per Rob's comments,
and fixing patch #5 to hopefully not break ACPI this time.

Thanks,
Robin.


Robin Murphy (5):
  perf/arm_cspmu: Simplify initialisation
  perf/arm_cspmu: Simplify attribute groups
  perf/arm_cspmu: Simplify counter reset
  dt-bindings/perf: Add Arm CoreSight PMU
  perf/arm_cspmu: Add devicetree support

 .../bindings/perf/arm,coresight-pmu.yaml      |  39 +++++
 drivers/perf/arm_cspmu/arm_cspmu.c            | 149 ++++++++++--------
 drivers/perf/arm_cspmu/arm_cspmu.h            |   1 +
 drivers/perf/arm_cspmu/nvidia_cspmu.c         |   6 -
 4 files changed, 123 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml

-- 
2.39.2.101.g768bb238c484.dirty


