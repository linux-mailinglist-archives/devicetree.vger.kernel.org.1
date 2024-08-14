Return-Path: <devicetree+bounces-93726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50677952027
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 18:37:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077681F223B3
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 16:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4004F1BA883;
	Wed, 14 Aug 2024 16:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="LnVR+YGW"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8DF1B9B38
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 16:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723653451; cv=none; b=KvgagkRC+niyQoebBxCmKRWLSJsDWSmUzARl/ws8CvO1ww36JCoT/b/FHixNgav0uEUfhgybkY1WH5V9rnfPVkAJgu4YU6CT9NbS4OuHMhysQv8GbCqFka04ICkIXfVjxrw9iSTB7XXal/pqxTBFUHyNeS7dI/KYgkRF/iH6JTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723653451; c=relaxed/simple;
	bh=xwO4qZm3Gbqbi5R6FcqkiTL12YiVG+Slagrb4NBEdyM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JAG5wGXvtY87/mNz13doU5qeFRnk6osrkZPbQqgS+td3ROxC549WQYEDTYa3DnNPCe/YNs5y7b3H26P6bpaXzu0PpFPc5IFws5eJUK8SI6ME+koa8vpbbD7dCs3+JmWIYE39TQ4bUzewE4njL8Y12Kg6eqAzu814qM8H0ZDqmLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=LnVR+YGW; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240814163720d5970b89e2238665ba
        for <devicetree@vger.kernel.org>;
        Wed, 14 Aug 2024 18:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=nESrF5vTvc0qOhMZmjkHj4ky91fAdlGMxwFql/ii16Q=;
 b=LnVR+YGWfnNZHD9zQoHI8hDNmfvGE2HsYysH4jLvQWicgfiOrixn3EJUPD1LoFbSYFOWMA
 edE8kZ/Bn0SsQKDZxhCuz2vQ4HXZkyS3zD2ggJLr6igScWqOKjyuHu3myRuiLoSElieSLHN4
 tCqMIQHVbfWuQaMtDaR9p5g8sKe4lsLHLTxANbb1pfnPiVsWqPEautjBfSqmFTYSKnGIM5VQ
 PFU09IGuUTe3Yhnef0ucn8ta2j2njgrvNkPgx5Qx/R2f8N/xhOSPNNlspuddWALWFCm/2xGv
 r3XP04FQuV+V9l7kmKFDx2uvUL+ChR/n635l6N4XAzzHjHehQXjQFPMA==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v4 1/3] arm64: dts: ti: k3-am642-evm: Silence schema warning
Date: Wed, 14 Aug 2024 18:37:17 +0200
Message-ID: <c16521bd55ebed8d1625f11c2ed6fd2c45e8baa5.1723653439.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1723653439.git.jan.kiszka@siemens.com>
References: <cover.1723653439.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

The resolves

k3-am642-evm.dtb: adc: 'ti,adc-channels' is a required property
        from schema $id: http://devicetree.org/schemas/iio/adc/ti,am3359-adc.yaml#

As the adc is reserved, thus not used by Linux, this has no practical
impact.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 6bb1ad2e56ec..42015a55e0d3 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -646,6 +646,10 @@ cpsw3g_phy0: ethernet-phy@0 {
 &tscadc0 {
 	/* ADC is reserved for R5 usage */
 	status = "reserved";
+
+	adc {
+		ti,adc-channels = <0 1 2 3 4 5 6 7>;
+	};
 };
 
 &ospi0 {
-- 
2.43.0


