Return-Path: <devicetree+bounces-223530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D6178BB6ADE
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 14:51:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF75F4E1F7E
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 12:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F316F2EFD89;
	Fri,  3 Oct 2025 12:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E12M+7GY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFAE156678
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 12:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495863; cv=none; b=FefpXA6Ig21xWw8hO9vemYeJqxf461uqErBeZwdv9f48Brgo8O781fp4iUVXmI4nUI7t7y6nZlH1e/UzCiBvaulqn0ID4Cx+WChgkd3PxjHRKYVVoIxunlMVfevECX/Fp7SGO1A0DlAA/J4tZUD01awg0n+dKXBoZXm2MMGok8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495863; c=relaxed/simple;
	bh=fPZ/cJSJkaF11EllnT7kgWt76oa1pY42U6aeyHqj7pg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VOV8UlJKVMwwF2jkcBZwgXAvY0gPoxWA48ehnaq781aurwPNr2EUkRc9jnUWax2jR4ocGZ3HCpW8z5CeZ237Gcd3Ibyjo1NWtkVWKtDGH05QY+PdzS2yzN9gK9ZefyDYRRt9MUalfLkvQXST5sx7Y4dGdeoVhGxuQ4oZCpyPe8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E12M+7GY; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46e4ad36541so24881545e9.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 05:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759495860; x=1760100660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WaXfwSB/FRGqmKy0Vb2zzmiYO4dF/Wx+pD0HOeUkg6Y=;
        b=E12M+7GYdz9yxn7MKWSMPlaIGG+69Y1f1EMSpigGSzcG2al79llkGku0b2Qokyt4U9
         z5GyGZMZ9TtS+Jfk1h4iGxM3y/IQso1EN9y53Kl2tVRcCd6c6kaJCh37tXmf+vbyI5Mf
         gwQE+KqQm71N2ialAVOqGghIvXx+FWj7ZfCN46OrIWDPVzdDy8EOLHmUu7NFC1IztFA2
         yhJ9MsmYqBMVK7FsKuBq7PLrxW1aewdLoOEpHSJ4GiFnz7aqAP+4uNTpjZRWlg+5l3uF
         NemA2/MLptp0ctpOGUbkIzHdvnjJKzxW4XNQW6x35uwyVesPBubTn1rlQOu36NnihCmM
         aakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759495860; x=1760100660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WaXfwSB/FRGqmKy0Vb2zzmiYO4dF/Wx+pD0HOeUkg6Y=;
        b=CCKtxFr7bJKNCCDwGJqxYOhv8tfHL6WHqxP5AzEBOa8v4a0TZ7tA/K8DI+CkQTIjkY
         03gLNC1S4+allwDCsYGha6k1Iw2QcoRhSnPceYvZ/PojofFmyXwS+38Du9ydTmFD7YyH
         29tLkmRhO8mDF3+c3KeZ2+czxkGybu7B7mxf6ym2pexHIqirJBNjYl4ja/D4mLJlQAA6
         egfjyAe0LvOGDIYQNFOIIA/Z2T5WfhTInAg1IiZnqbCaqDJcukMBiBIAm6RueDd6Jax/
         jBIG96WSqqlPXII8spIBG6pTfJg35nRu168LU8/q77H/IPvKilS1iJDxYtlEBZFLFwBp
         KrwA==
X-Gm-Message-State: AOJu0Ywp8blOsc2JaVNq5QnCTOuKPrD/WLy9gOKadjpjx5cB5j/fyo8U
	5DUdoUigJR2Kl0xKFW7a9kUiN15AwyTTySzU7WMcNWyGzxz68PWhK7kvpoPUBHtg
X-Gm-Gg: ASbGnctd3gqRXsvPNhu58mNOpZHsVkahVbaCILQuuQlO5nsYqJ41v4qWBv4R47bp5Lf
	yvawLaFnNuGZhDwMjtJje08N3XZ0zbRoBR0ZQcm6EmbkT0ueWHqxqzA7H2KFv5kmGfCsNetgRAj
	vPZ44wzYtnv0bx0xxZGrzI7GW9tYCoiLocz8/OjfsaOHUmMZpibOMxbUcuTLhIC6Gw7ZZ3ZRwE7
	j+gpMpG97cjFpDo2bNO3lZvpsnA+0Kg6hnHdeh0UNEODwDDi31Y4qyWalv7FnlxhqGLUh2YniSU
	JgB23Z7afofuQNwyl8pG+KKGb42QcSHxvK2FbTfLdjF6gtI5/19OWuxFpufg5BRapxFi3mzxbSO
	lKkRP5h0BxObI1eljI3N/7h50eqdDJnv/RznxV2MbN4d3Z0r262ioJbkRqsZ0RdGl5QMcxHJBw1
	2Gs6h4
X-Google-Smtp-Source: AGHT+IFK24Hmy9qDQXQFVbal729f+4HuhDIUzQDqGeKXa8THbxiFFtjcu/scKAzTeHzoz76wi6we2g==
X-Received: by 2002:a05:600d:4392:b0:46e:74bb:6bc with SMTP id 5b1f17b1804b1-46e74bb07ecmr9696025e9.5.1759495860204;
        Fri, 03 Oct 2025 05:51:00 -0700 (PDT)
Received: from localhost.localdomain ([37.159.33.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c40983asm80598605e9.3.2025.10.03.05.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 05:50:59 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 1/3] arm64: dts: ti: var-som-am62p: Refactor IPC configuration into common dtsi
Date: Fri,  3 Oct 2025 14:50:27 +0200
Message-ID: <20251003125031.30539-2-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
References: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the VAR-SOM-AM62P dtsi to align with the refactor introduced by
k3-am62p-ti-ipc-firmware.dtsi common file, allowing to remove the IPC
nodes from the board file including the new common dtsi.

No functional changes intended.

Signed-off-by: Stefano Radaelli <stefano.radaelli21@gmail.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi | 52 +------------------
 1 file changed, 2 insertions(+), 50 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
index edaa4f99295d..b93372f22732 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
@@ -63,18 +63,6 @@ rtos_ipc_memory_region: rtos-ipc-memory@9b500000 {
 			no-map;
 		};
 
-		mcu_r5fss0_core0_dma_memory_region: mcu-r5fss-dma-memory-region@9b800000 {
-			compatible = "shared-dma-pool";
-			reg = <0x00 0x9b800000 0x00 0x00100000>;
-			no-map;
-		};
-
-		mcu_r5fss0_core0_memory_region: mcu-r5fss-memory-region@9b900000 {
-			compatible = "shared-dma-pool";
-			reg = <0x00 0x9b900000 0x00 0x00f00000>;
-			no-map;
-		};
-
 		wkup_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c800000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9c800000 0x00 0x00100000>;
@@ -320,44 +308,6 @@ &usbss1 {
 	ti,vbus-divider;
 };
 
-&mailbox0_cluster0 {
-	status = "okay";
-
-	mbox_r5_0: mbox-r5-0 {
-		ti,mbox-rx = <0 0 0>;
-		ti,mbox-tx = <1 0 0>;
-	};
-};
-
-&mailbox0_cluster1 {
-	status = "okay";
-
-	mbox_mcu_r5_0: mbox-mcu-r5-0 {
-		ti,mbox-rx = <0 0 0>;
-		ti,mbox-tx = <1 0 0>;
-	};
-};
-
-&mcu_r5fss0 {
-	status = "okay";
-};
-
-&mcu_r5fss0_core0 {
-	mboxes = <&mailbox0_cluster1 &mbox_mcu_r5_0>;
-	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
-			<&mcu_r5fss0_core0_memory_region>;
-};
-
-&wkup_r5fss0 {
-	status = "okay";
-};
-
-&wkup_r5fss0_core0 {
-	mboxes = <&mailbox0_cluster0 &mbox_r5_0>;
-	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
-			<&wkup_r5fss0_core0_memory_region>;
-};
-
 /* mcu_gpio0 and mcu_gpio_intr are reserved for mcu firmware usage */
 &mcu_gpio0 {
 	status = "reserved";
@@ -385,3 +335,5 @@ &main_uart1 {
 	/* Main UART1 is used by TIFS firmware */
 	status = "reserved";
 };
+
+#include "k3-am62p-ti-ipc-firmware.dtsi"
-- 
2.47.3


