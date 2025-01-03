Return-Path: <devicetree+bounces-135397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB6CA00D7C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 19:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8822E188488C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAF11FC10A;
	Fri,  3 Jan 2025 18:16:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA311FC100;
	Fri,  3 Jan 2025 18:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735928205; cv=none; b=tPuI+q/J24/hteOY7t2mZaQGfr8tnMJeLlOEGW9+AKvzLBuH1YsGCL5756p9TLzteuLeLsLveCqVFxbbzjjV8A6Id5Yg+q9VnuNo9AEAV3t4ZEybxcuyJnV0G0/Un9OezwrPBaJH8RTtocyxOWY+MoGARY5E3Sgs61yszGC0Uis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735928205; c=relaxed/simple;
	bh=LhMnQp19a+KkYjB4DpGwM7Mt3GJSvGuA0K1Ga8HcOpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IBxLWbpcvjB/lDLZjCAkqSbQAtaxQQH29dwm68ztoWPeP/e8OYgCSHW+YNuM6q+ldOXvoQWIUk7PTb3egddhDqQC8+qo5yiplaYFfVBeBJKc2Xtem7oFP6a917x8L7BTAz72HUqWWOb3w/pOtbITSeLSguK8FRHOtkzkmeQ1vUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBC971480;
	Fri,  3 Jan 2025 10:17:10 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EEEF3F673;
	Fri,  3 Jan 2025 10:16:40 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v4 0/4] arm64: dts: Add Arm Morello support
Date: Fri,  3 Jan 2025 18:16:19 +0000
Message-ID: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Morello architecture is an experimental extension to Armv8.2-A,
which extends the AArch64 state with the principles proposed in
version 7 of the Capability Hardware Enhanced RISC Instructions
(CHERI) ISA [1].

This series adds dts support for the Arm Morello System Development
Platform.

[1] https://www.morello-project.org/

To simplify the testing a linux tree rebased on 6.13-rc5 is accessible
at [2].

[2] https://codeberg.org/vincenzo/linux/src/branch/morello/dts/v4

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org> 
Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Changes
=======
v4:
  - Add cache information.
  - Address review comments.
v3:
  - Address review comments.
  - Rebase on 6.13-rc5.
v2:
  - Addressed review comments.
  - Rebased on 6.13-rc4.
  - Renamed arm,morello to arm,morello-sdp for clarity.

Vincenzo Frascino (4):
  dt-bindings: arm: Add Morello compatibility
  arm64: dts: morello: Add support for common functionalities
  arm64: dts: morello: Add support for soc dts
  MAINTAINERS: Add Vincenzo Frascino as Arm Morello Maintainer

 .../bindings/arm/arm,vexpress-juno.yaml       |   4 +
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/morello-sdp.dts       |  30 ++
 arch/arm64/boot/dts/arm/morello.dtsi          | 467 ++++++++++++++++++
 5 files changed, 508 insertions(+)
 create mode 100644 arch/arm64/boot/dts/arm/morello-sdp.dts
 create mode 100644 arch/arm64/boot/dts/arm/morello.dtsi

-- 
2.43.0


