Return-Path: <devicetree+bounces-11551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2AF7D6296
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED56F1C20D80
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE01171CD;
	Wed, 25 Oct 2023 07:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="qy5mzYib"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3547A2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:35 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C08BDD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1698218913; x=1729754913;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=pFJQgkjNqSXUMn3kC9QJXLPl8lLNsDaW7X9imZhGhM0=;
  b=qy5mzYib9oG0BVrhJgZpEg8ed8HoEGK86Dj+1K0mlJP7tJuqKg29AEDV
   QzavvrnEuNS01rIsZx81Jyz9vSZRd/QSdBl/kyErPJfuLX/F9KgPnMhvv
   1HjT3pnrbqVpRz5Wa0adgOFYseKG6ZgMj4Sjyo8AoKKMJtF+YLhWxXu1a
   PFhRhuZToaq85pq9haMa7Y/cZX09Ax1N7hzMiHyFgiDgmkE+AKlMiCfGy
   RS0yr0Rf9NlAeh1uEzkujfJWklPYND1QvkRMoHJxeNbiBlBqtSrFsAPha
   5ckECo4Te4NkOVgGQLSvoAAbT4eYamoJswireRkLapXqA+yunKyTJvTqv
   A==;
X-IronPort-AV: E=Sophos;i="6.03,249,1694728800"; 
   d="scan'208";a="33640504"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Oct 2023 09:28:31 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EE86A28007F;
	Wed, 25 Oct 2023 09:28:30 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mp: Disable dsp reserved memory by default
Date: Wed, 25 Oct 2023 09:28:32 +0200
Message-Id: <20231025072832.2277609-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Even if the 'dsp' node is disabled the memory intended to be used by the
DSP is reserved. This limits the memory range suitable for CMA allocation.
Thus disable the dsp_reserved node. DSP users need to enable it in parallel
to the 'dsp' node.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Actually the location and size of DSP reserved memory is platform
specific. But to be less intrusive, just disable the node.

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index eb2b81f6302a3..b2b041604d2e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -264,6 +264,7 @@ reserved-memory {
 		dsp_reserved: dsp@92400000 {
 			reg = <0 0x92400000 0 0x2000000>;
 			no-map;
+			status = "disabled";
 		};
 	};
 
-- 
2.34.1


