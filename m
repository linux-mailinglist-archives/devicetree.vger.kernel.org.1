Return-Path: <devicetree+bounces-94093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE266953FBA
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 04:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 590651F235BC
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 02:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337C747A73;
	Fri, 16 Aug 2024 02:33:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5724A6BB4B
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 02:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723775609; cv=none; b=QuzChuSRa568BH3wDVKRya/ck5VbXKOOEKb2RJQVZM4+N+sIl0VD1QvbaILryylZK1C/fgPyn7x/kz/HBrX0QvBJlOwnMQEOzW77X3NIhJf243kW8ihDnD+F1fpt3JLOuEmGsi8vog0c8YwNKxEqNSlIzp9ciaW8uIhB/6aU0os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723775609; c=relaxed/simple;
	bh=hZzcGeHzqoK3V3DRAgR2uEwV7qsWuP7BHI01DNNnHBk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=diQIozu3YjllcnJAbYIMreq4JAOzTJc75AUuGUYbJnVntg/bPhtU2IGrVQqaSzmMM12OyW3pxnMxoysw9SItD065P5gWpbjzsEZXe4SZDmMr7tDnwQ7a7IwG8c+eqa7HNxtd8gyEg3XiQ8aXFO2UOLGtehf3WyE+/btvbhCpbyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47G2WnZR023994;
	Fri, 16 Aug 2024 11:32:49 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
Date: Fri, 16 Aug 2024 11:32:42 +0900
Message-ID: <20240816023243.487-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

enable "pwm-leds-multicolor" driver.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b14cc106e4f7..725eaadc22a9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1171,6 +1171,7 @@ CONFIG_LEDS_PCA9532=m
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_SYSCON=y
+CONFIG_LEDS_PWM_MULTICOLOR=m
 CONFIG_LEDS_QCOM_LPG=m
 CONFIG_LEDS_TRIGGER_TIMER=y
 CONFIG_LEDS_TRIGGER_DISK=y
-- 
2.43.0


