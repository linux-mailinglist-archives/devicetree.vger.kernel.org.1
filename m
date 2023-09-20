Return-Path: <devicetree+bounces-1769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4DC7A8380
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F28001C209B2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6DE37C94;
	Wed, 20 Sep 2023 13:35:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC711328C2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:34:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DB99C433CD;
	Wed, 20 Sep 2023 13:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695216899;
	bh=chV3GRCWr5Lml55DQwoEGOZDvAsEUjg7gojzo9cDXBk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lA/25alJIqhzZtBEaJdB5MCje9dmmQga3PK2pwJKeKqZMBztBfXD2qWZpyoQCZ5PN
	 J7uRAtAeF4/rRv3QYmJIe++z0Ba+CYkiDR064Gv4TmEuSz4isu3Bgu/3wbpnwctpS8
	 ETvYvReFG0d0G06040t7pc9z4hCslnHvhI2YwSTnp3L0tPTmdKiTSJsjTW/WxzYofm
	 JnWKS9OIPnem5+fT3INP676YVAarIqbfSCIiJAKYTTaGDPjicUsG96kWowbPPSoOxM
	 Pm7IMr6MXqZWbq1uJ4HTKf7NFBqa7QKiB1g+KoAFxZ5+fULulw5kDUnnzwnvuHyAJZ
	 1meIt8EqDMwhg==
From: Roger Quadros <rogerq@kernel.org>
To: nm@ti.com
Cc: vigneshr@ti.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	srk@ti.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 1/2] arm64: dts: ti: Enable support for overlays for relevant boards
Date: Wed, 20 Sep 2023 16:34:49 +0300
Message-Id: <20230920133450.54226-2-rogerq@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230920133450.54226-1-rogerq@kernel.org>
References: <20230920133450.54226-1-rogerq@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable __symbols__ in board DT files for which we expect
overlays to be supported.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 arch/arm64/boot/dts/ti/Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index e7b8e2e7f083..06d6f264f292 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -72,8 +72,16 @@ dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm.dtb
 
 # Enable support for device-tree overlays
+DTC_FLAGS_k3-am625-beagleplay += -@
 DTC_FLAGS_k3-am625-sk += -@
 DTC_FLAGS_k3-am62-lp-sk += -@
+DTC_FLAGS_k3-am62a7-sk += -@
+DTC_FLAGS_k3-am642-evm += -@
+DTC_FLAGS_k3-am654-base-board += -@
 DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
+DTC_FLAGS_k3-am68-sk-base-board += -@
+DTC_FLAGS_k3-am69-sk += -@
 DTC_FLAGS_k3-j721e-common-proc-board += -@
+DTC_FLAGS_k3-j721e-sk += -@
 DTC_FLAGS_k3-j721s2-common-proc-board += -@
+DTC_FLAGS_k3-j784s4-evm += -@
-- 
2.34.1


