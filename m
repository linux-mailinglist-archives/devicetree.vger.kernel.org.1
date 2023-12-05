Return-Path: <devicetree+bounces-21932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECFF805A71
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 17:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 901CB1C211A9
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6D75F1DA;
	Tue,  5 Dec 2023 16:52:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 137DD1997
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 08:52:05 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E01271474;
	Tue,  5 Dec 2023 08:52:50 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2D7F93F5A1;
	Tue,  5 Dec 2023 08:52:03 -0800 (PST)
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
Subject: [PATCH 0/5] perf/arm_cspmu: Add devicetree support
Date: Tue,  5 Dec 2023 16:51:53 +0000
Message-Id: <cover.1701793996.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This series does a bit more cleanup and adds devicetree support for
CoreSight PMUs. The thing for which I originally wrote this has turned
out not to warrant upstream support, but others have also expressed an
interest so here it is.

Thanks,
Robin.


Robin Murphy (5):
  perf/arm_cspmu: Simplify initialisation
  perf/arm_cspmu: Simplify attribute groups
  perf/arm_cspmu: Simplify counter reset
  dt-bindings/perf: Add Arm CoreSight PMU
  perf/arm_cspmu: Add devicetree support

 .../bindings/perf/arm,coresight-pmu.yaml      |  39 +++++
 drivers/perf/arm_cspmu/arm_cspmu.c            | 155 ++++++++++--------
 drivers/perf/arm_cspmu/arm_cspmu.h            |   1 +
 drivers/perf/arm_cspmu/nvidia_cspmu.c         |   6 -
 4 files changed, 126 insertions(+), 75 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml

-- 
2.39.2.101.g768bb238c484.dirty


