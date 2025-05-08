Return-Path: <devicetree+bounces-174997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF15AAF7D9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:32:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADB0A4A7D30
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7150D211A3F;
	Thu,  8 May 2025 10:32:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1512620E328
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746700361; cv=none; b=WL4cjUBb4X/AZowLEoEMk9f3aNh243CxK9FkjYOiZaxbRqDHQAOvhuhmrf8y3eLTNGA2zmjpXrokAESSoehOcqO7QNMCzeFatwWSFnTfsPiE8lMxv2tCTYfk4GkoueOZPqdRI2AB6TivTYMuibsDqJMDXwfk8ryaV0bJUyyeQLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746700361; c=relaxed/simple;
	bh=5dsfcgiJ2m5Hne6e/xMPfGncCWhlHs3kGgCI9cbQUwk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Lg1t6bp0nTE92Hx4z8XNLqBotvEyA6oEqdCU9Ow33dzTuhyEklnpx8/7uv+jd5W1MgCCV2mOjkPowlc2wo674HsFdkL5X0SsInxya9pENRKxa4+7c130LRJhyACf2/vlgzuoRcb0y/ga73fPBi6K4Yva8S2OLhgmbKByMYWs9jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5A491E2F;
	Thu,  8 May 2025 03:32:28 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EDE9D3F5A1;
	Thu,  8 May 2025 03:32:37 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Leo Yan <leo.yan@arm.com>
Subject: [PATCH 3/3] arm64: dts: fvp: Reserve 64MB for the FF-A firmware in memory map
Date: Thu,  8 May 2025 11:32:25 +0100
Message-Id: <20250508103225.354925-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250508103225.354925-1-sudeep.holla@arm.com>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
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

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index c1e22ffca623..2c2c9f45b3fe 100644
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


