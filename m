Return-Path: <devicetree+bounces-50284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D42B87A938
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD11928918B
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD19958100;
	Wed, 13 Mar 2024 14:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="V30hA1Qa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9155A56770
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 14:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710338952; cv=none; b=Kzl2RG9HDyJ5mZG+adQaEXn/wKSfoQBs8II+DDTLpjdE0W081Zf4O8GtpDMf1n41+X4UHOofR0btn2lhYjtfSBIbzt1NGPUZQ7ZkC4l+hA0H+e3D7/HidccfbEw+v0UEbIXyp9BbZRQGh/BLw853sojG8DfVhnGmgrjd3EoAa9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710338952; c=relaxed/simple;
	bh=kVdZlNo+N/KnAT/Z2kOTskJN7eca2zSo5mLfoyTSMUY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fpjUd8GYpnrpyPwaYj7Ko6/gHdGmJZhrVbr25xCOznusESek8IejOi5YP0iA2YOhYzo93w/vGmsSP4L0tAdeMf/1OUhhNPUEbpo32IbIiWIyrGVtlqFJ8mD6v8RFPKdPo/U5JWIVmNYrwY9JdW/C3xXVTh+rcfN4iuKn/BIJFAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=V30hA1Qa; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a44665605f3so926250866b.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 07:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1710338948; x=1710943748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GZRpUUNRnIq77pI2eAogF8VwCXAgFL/1g3LqDmhWq/Q=;
        b=V30hA1QaJl/pohCPP2spu8V8TnfLYQFGL9b5M9aaNJn6LFvmUsA9B6YAtWeBA/dpx7
         Vgnay6FkJdGmznWb7C6LELOEq4djOfr/bORVf0z0Lxvu0kAS7Cbex0ToFx7BP9xlzq6k
         qlA/e706OyPG50TN2g/FJltK6NmkIXaQX73OqD8brHKlAuiLXi9WJ8o6hO2YYNRZlmsu
         wSxn5fxKAnwD/PE3LdxDv4R6qHoIaaO0niz0pt6dF4i9j/knuKyQHVj7G/zV1ypnEUgk
         C3XfUud7yj/AAOhUJBRuXmLs/TXr8ohGaMa+eh4R7oxRIaViMGFTWwqKWiywZLvbkDuJ
         BWLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710338948; x=1710943748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GZRpUUNRnIq77pI2eAogF8VwCXAgFL/1g3LqDmhWq/Q=;
        b=TEUOnnbFlZ2FDArkRnY8TigcJfX8BXNWjSLTTlz2ZO3WsBsO0ZE/ymW3jR60HaZHgS
         dQoCDGvixYYfdvL1+A3OpKB4mOak5iPeiybUe5cSKPeHedxyKspY+Y0uTgdun5riAVdI
         7i+BErtGN2ASk1H+nh8t2vNxNT660iM8bH2KkWHx/CIbzPb9QpLPV3ufyXvKsfWOds4x
         h6dd4DBIjeRodZURiJvvtJ6ZBG6QsUX9yfoUiZ487GBSZYQzuUFAlpuZPPu8Yj98dozg
         Po0cYJQLPfB4KkVpw4mf904Eav2BCDXC0lZEY6oZe6M4Q2AMkLTHno/qD1l6xgZBTA4l
         dHww==
X-Forwarded-Encrypted: i=1; AJvYcCXMQCD7XELAis3ZxIaHfxoYrwb4wxKsI81uM6edXzCPFIMsJ4SsKrT48Qvfyw5f56CkpVEpVEguCB1maLEsESz5dEJ3l4ez/w/Nlg==
X-Gm-Message-State: AOJu0YzTJElGJd1wNwaKgaXcO0wTcvwD/sxE7OnEN6rrTUD9Unx7jKfS
	mqxR54c7dFtt+ktI8qaAGego1FOH+EkefhzDHJjJXyQDPF3nU0Y1pVHmxzZK29c=
X-Google-Smtp-Source: AGHT+IHXP//swNkKDNyDphpeA3YlUW8pirt81Yn5DGc/hQTDcD01ShGZgqiYGBU6e4PUzoyKglVJzQ==
X-Received: by 2002:a17:907:1819:b0:a46:5941:8927 with SMTP id lg25-20020a170907181900b00a4659418927mr1199309ejc.68.1710338947965;
        Wed, 13 Mar 2024 07:09:07 -0700 (PDT)
Received: from localhost (host-82-56-173-172.retail.telecomitalia.it. [82.56.173.172])
        by smtp.gmail.com with ESMTPSA id lf8-20020a170906ae4800b00a4657cad7e8sm701392ejb.127.2024.03.13.07.09.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 07:09:07 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com
Cc: Phil Elwell <phil@raspberrypi.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dom Cobley <popcornmix@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 15/15] ARM: dts: bcm2711: add bcm2711-dma node
Date: Wed, 13 Mar 2024 15:08:40 +0100
Message-ID: <c1ef1ba7cd9153d607e6130277e560b139056fd9.1710226514.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1710226514.git.andrea.porta@suse.com>
References: <cover.1710226514.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

BCM2711 has 4 DMA channels with a 40-bit address range, allowing them
to access the full 4GB of memory on a Pi 4. Adding a new node to make
use of the DMA channels capable of 40 bit addressing.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm/boot/dts/broadcom/bcm2711.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
index 22c7f1561344..d98e3cf0c569 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -552,6 +552,22 @@ scb {
 		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
 			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
 
+		dma40: dma-controller@7e007b00 {
+			compatible = "brcm,bcm2711-dma";
+			reg = <0x0 0x7e007b00 0x400>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>, /* dma4 11 */
+				     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>, /* dma4 12 */
+				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>, /* dma4 13 */
+				     <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>; /* dma4 14 */
+			interrupt-names = "dma11",
+					  "dma12",
+					  "dma13",
+					  "dma14";
+			#dma-cells = <1>;
+			/* The VPU firmware uses DMA channel 11 for VCHIQ */
+			brcm,dma-channel-mask = <0x7000>;
+		};
+
 		pcie0: pcie@7d500000 {
 			compatible = "brcm,bcm2711-pcie";
 			reg = <0x0 0x7d500000 0x9310>;
-- 
2.35.3


