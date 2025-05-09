Return-Path: <devicetree+bounces-175729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94BAB192E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B87B01BA218F
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF90B230269;
	Fri,  9 May 2025 15:46:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A42F22FF58
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805609; cv=none; b=P7VEfdV5U9mzjz2+02/NUJRMiWFns98aqA8Vfc+V1qRxQhHVsu2cxnETK5W4OvR57CMReeVe86fkCstMOVl5oVZJ/OBaP4I6X/bRKEH5XL6lPl1Ni6kcZnkmBhZAYEYrV6MS3NG0KNfEmk2qe8MApviD5K1Q+bqpFTKMrZdpo0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805609; c=relaxed/simple;
	bh=Gfu4cQXRM4nOnAic9N5Nn26h2MpZeLO7VAUP8M04fIU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VOeZx+AyQ+iAkTgGtoeG8oNIk65RkeXc10es2gucQ2BVIRbfNMqeBplpGHeU7FD25ruqE2VfYa8lpyEhNsinuGh+B0f7mvtW2JercTAxwerazlO+ZsCRt7zzazbmzbU6uMXZCAIWWCbc54pnkHCMkKj/QMVvMbM8QguhymzDFbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD4F5175D;
	Fri,  9 May 2025 08:46:36 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AA5733F58B;
	Fri,  9 May 2025 08:46:46 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Leo Yan <leo.yan@arm.com>
Subject: [PATCH v2 3/3] arm64: dts: fvp: Reserve 64MB for the FF-A firmware in memory map
Date: Fri,  9 May 2025 16:46:40 +0100
Message-Id: <20250509154640.836093-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509154640.836093-1-sudeep.holla@arm.com>
References: <20250509154640.836093-1-sudeep.holla@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reserve 64MB of memory at the end of the first bank of DRAM on FVP model.
This is mainly for FF-A firmware use, as required by various firmware
configurations using the Firmware Framework for Arm (FF-A). This prevents
the kernel from overwriting the firmware region.

This is also useful when running other firmware configurations(non FF-A
based) that rely on usage of 64MB at the end of first DRAM bank.

Necessary for proper coexistence of firmware(FF-A partitions) and the OS.

Message-Id: <20250508103225.354925-3-sudeep.holla@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 755b1407c4dc..a5024075e3f3 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -201,7 +201,7 @@ C1_L2: l2-cache1 {
 
 	memory@80000000 {
 		device_type = "memory";
-		reg = <0x00000000 0x80000000 0 0x80000000>,
+		reg = <0x00000000 0x80000000 0 0x7c000000>,
 		      <0x00000008 0x80000000 0 0x80000000>;
 	};
 
-- 
2.34.1


