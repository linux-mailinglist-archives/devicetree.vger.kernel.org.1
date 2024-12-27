Return-Path: <devicetree+bounces-134392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 180529FD5AB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B01DF3A0FC1
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA56A1F755D;
	Fri, 27 Dec 2024 15:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Hzek+HOk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263061F6695;
	Fri, 27 Dec 2024 15:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735314162; cv=none; b=YMhq8KZ00pmPBSkOhVieZxuoP5Ug5+h5MngcblmtYTQ4+hTXx5Oq5cSLBHRDnsAz8a8sPsJlZmwDoW/P+3/f1LEgqwBU+OnzFQasemQ5UnrhxzXLUJzizVNfz0KjXcqVc4hxzoPcrt122v9hhmrSl3tJtLkiREY9VFrm2Fn0hSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735314162; c=relaxed/simple;
	bh=+w+RyXTBnHGMuhhpgvR4mMSLHUZznN0bRTn188jONWM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ckyMKLg9bLNdAaQABvB1qO8UTXSHtz5Mt2hTnaez5nO+0o0Q8+LRXNhNS8PiGdJVnVvJ1dn9Dt9TtBQtDkqt7i3GgZEVzAOiIbZR8jw3FQtkfc3fvUUinvRT6GzoT8mZ8SCtTfCzbUJ0abDWDD5MEQQ27uaXQiLRmEcpSBojlA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Hzek+HOk; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735314159;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hEcBR6l6UHxeka28jkp0UZiIrR1TObruGMZ44Ym9TOY=;
	b=Hzek+HOkJN6awql/zr3rwIK5vauxfOdCwUiq71REymTIdas9uTUCZv/nQC4fKvoMBc3ksC
	oYmBuEnqv/ZbPK6irBg1nux6LBzfxruPknzCMTNaMq9JiRYE3xwbCLncqFNbW1jjJbSj+r
	2xfITBVgS/gU5DxjRN4gjTQWOk2ECd1fr0rZxPy7b68irXuH8iUCgJHCTQKNqbW4O/EJzH
	CUjcEC/44EZAoLOGqsX2ZfZDX92E8ELjdqxpkVymD77NXLRm2ihVXTaVldSeJCFuDsgm5F
	cf48A1+f2/iBZKLelZ6SBckIkakAPu393tiz7l4ASqoLz1NwkBykgDpPS5UzaQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	maz@kernel.org,
	tglx@linutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] irqchip/gic-v3-its: Make "dma-noncoherent" preferred for RK358x errata
Date: Fri, 27 Dec 2024 16:42:24 +0100
Message-Id: <1382cd99ec213b5fb6f3b23d4e895f078f587b8f.1735313870.git.dsimic@manjaro.org>
In-Reply-To: <cover.1735313870.git.dsimic@manjaro.org>
References: <cover.1735313870.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

The preferred way to denote hardware with non-coherent DMA is to use the
"dma-noncoherent" DT property, [1] instead of relying on the compatibles. [2]
Alas, older versions of the Rockchip RK3588 and RK3588S SoC dts(i) files
failed to specify this DT property, which means that checking the compatibles
remains required for backward SoC dts(i) compatibility.

Let's have the Rockchip 3588001 hardware errata handled the preferred way,
with newer versions of the Rockchip RK3588, RK3588S and RK3582 SoC dts(i)
files that properly specify the "dma-noncoherent" DT properties at both the
GIC redistributor and the GIC ITS levels, while falling back to checking the
compatibles for backward RK3588 and RK3588S SoC dts(i) compatibility.

[1] Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
[2] https://lore.kernel.org/linux-rockchip/86msgoozqa.wl-maz@kernel.org/

Cc: Marc Zyngier <maz@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/irqchip/irq-gic-v3-its.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index fdec478ba5e7..982dcbb30f39 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -4747,6 +4747,18 @@ static bool __maybe_unused its_enable_rk3588001(void *data)
 {
 	struct its_node *its = data;
 
+	/*
+	 * The preferred way to denote hardware with non-coherent DMA is to use
+	 * the "dma-noncoherent" DT property, which the older RK3588 SoC dts(i)
+	 * files failed to specify, relying on the compatibles instead.
+	 *
+	 * Thus, check for the presence of "dma-noncoherent" DT property first,
+	 * to let the hardware quirk be handled the preferred way, and fall back
+	 * to checking the compatibles for backward dts(i) compatibility.
+	 */
+	if (!of_dma_is_coherent(to_of_node(its->fwnode_handle)))
+		return false;
+
 	if (!of_machine_is_compatible("rockchip,rk3588") &&
 	    !of_machine_is_compatible("rockchip,rk3588s"))
 		return false;

