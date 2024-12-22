Return-Path: <devicetree+bounces-133297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C019FA39C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 04:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECF01166F01
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 03:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13532AD25;
	Sun, 22 Dec 2024 03:05:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADBB15E97
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734836736; cv=none; b=HBBOM3/OA0fdnd11VT/FPFUOogbCO9JgIaaf7tSEYEONWdvgVaho7SCIhs2o4hN/kFtRuqPO9sYXm2o1ym3Z76UQRvHrnR1UbyJuEmBHZbysd/ktHYpgE20y7bvfegPb8s6mV3f/VDCF9rZ5Cj+nfZDnucvc/6fm5DaoJT8sgM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734836736; c=relaxed/simple;
	bh=Cdx27afQu5540ZEJzWThbWfS4JFOgFK63J6xBRjocH8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VVDeT+LeIB7qswDSfQgvY7vxTIVYvcT5FyV0INAs5Os/QVJ4/xZTPyAldGyjMT1JJ84Iqcmu40AYn8t5CT86ZcZ20ykonrCL05kcuCN5tbmaLxjL+ixUaOJ/CjO2EV+pkQOkvcFbEuAffpSM+rS9y9c77Wkd3+WOG7pBiHq+2u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BM342BS020894;
	Sun, 22 Dec 2024 12:04:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, liujianfeng1994@gmail.com, dmt.yashin@gmail.com,
        dsimic@manjaro.org, tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com,
        sebastian.reichel@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] irqchip/gic-v3: Enable Rockchip 3588001 erratum workaround for RK3582
Date: Sun, 22 Dec 2024 03:03:53 +0000
Message-ID: <20241222030355.2246-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222030355.2246-1-naoki@radxa.com>
References: <20241222030355.2246-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3582 is a scaled down version of Rockchip RK3588(S). Apply
Rockchip 3588001 erratum workaround to RK3582.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 92244cfa0464..c59ce9332dc0 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -4861,7 +4861,8 @@ static bool __maybe_unused its_enable_rk3588001(void *data)
 {
 	struct its_node *its = data;
 
-	if (!of_machine_is_compatible("rockchip,rk3588") &&
+	if (!of_machine_is_compatible("rockchip,rk3582") &&
+	    !of_machine_is_compatible("rockchip,rk3588") &&
 	    !of_machine_is_compatible("rockchip,rk3588s"))
 		return false;
 
-- 
2.43.0


