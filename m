Return-Path: <devicetree+bounces-39011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC0984B27B
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8DC1B26047
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B4212D761;
	Tue,  6 Feb 2024 10:28:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C0912EBC2
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215292; cv=none; b=s7hmkp/s9vJQmHNym7gMbLzYXliU7tmdIxQkvWNNQjYRddeanB0Cvp/5AWnygMLUli1Ye5TUpPzGFvKjDAqlMj5eKst2MxjnJo/PWLTWBKfNHUCjhKFN1/o9dgU9guwx+aWgUq+3cJkt48VDyPxiIxp/Q+OJ7qGbqbvpxtVit2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215292; c=relaxed/simple;
	bh=KDjKnRgCbMR7V1KIGXqF6X2j+9g35bvToC7zYCbEKqo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ssByMMGLKPuJVEP4YbMtwhLgijo59RbYg6uFiI/fvEl+EHQOKeUEqWHeDh//zUNZbcDsS6sxFPJYBFoKK3ZUnOKgiPTTuxwuepQ9DR8MEBttuJS8KJE6pGRYjrr6WuAsLiti2a6MCy226XTJeDYupjIES7fPS3MlQr8AUzQkM7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEAFA1FB;
	Tue,  6 Feb 2024 02:28:45 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 24DC53F641;
	Tue,  6 Feb 2024 02:28:02 -0800 (PST)
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
Subject: [PATCH v3 0/5] perf/arm_cspmu: Add devicetree support
Date: Tue,  6 Feb 2024 10:27:53 +0000
Message-Id: <cover.1706718007.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v2: https://lore.kernel.org/linux-arm-kernel/cover.1702571292.git.robin.murphy@arm.com/

Hi all,

Third time lucky... here's a hopefully-final spin to address the
functional issues Besar pointed out, and give a little final polish to
the binding (although I stand firm on teh point of a trivial example
not being valuable :))

Cheers,
Robin.


Robin Murphy (5):
  perf/arm_cspmu: Simplify initialisation
  perf/arm_cspmu: Simplify attribute groups
  perf/arm_cspmu: Simplify counter reset
  dt-bindings/perf: Add Arm CoreSight PMU
  perf/arm_cspmu: Add devicetree support

 .../bindings/perf/arm,coresight-pmu.yaml      |  39 +++++
 drivers/perf/arm_cspmu/arm_cspmu.c            | 153 ++++++++++--------
 drivers/perf/arm_cspmu/arm_cspmu.h            |   1 +
 drivers/perf/arm_cspmu/nvidia_cspmu.c         |   6 -
 4 files changed, 126 insertions(+), 73 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml

-- 
2.39.2.101.g768bb238c484.dirty


