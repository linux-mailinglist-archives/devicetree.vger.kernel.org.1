Return-Path: <devicetree+bounces-2209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 727A57A9D03
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:27:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8612E1C20CA4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 211BD1802A;
	Thu, 21 Sep 2023 19:27:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088AD9CA74
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 19:27:45 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C9A1905ED;
	Thu, 21 Sep 2023 12:27:43 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 53273805CD;
	Thu, 21 Sep 2023 21:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695324461;
	bh=w4s+MYqnZ2xQI1Rv17N0ZTQU2qMqwYRQ1GkDMHi0qgo=;
	h=From:To:Cc:Subject:Date:From;
	b=v3WDDc4gsmyKWj6VTFziFLz2pdPGt8N0vSXCQWY0zmtZfUtxP7r66L9zAU7T7nbwN
	 bGya2QCYn3BdxihQd/O0bbVVoz7f0cYdRTt8vg0Y2TcRsTQ4DdBe0C/tvGR1NwPAWD
	 McmNjm/DBisTD1mm6PkuxOXYDvprXJz3uZlVI/1DnfA7C3+OzEqK+bA+kV7VlWi4HV
	 I9WtU6BycS0bYchNQ5EA+BoCJtoNVwxfPcRJdukQZkR3B6I9MC5ipG80yznv6Mug/Y
	 6GmETS3zUAPx+KgMxC806m6L2lRozP3Lo55XUKWWwTgf7TOvpeFkKfA4kkGiBEkItU
	 dtcPyp98r8MCg==
From: Marek Vasut <marex@denx.de>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-serial@vger.kernel.org
Subject: [PATCH] dt-bindings: serial: imx: Document wakeup-source property
Date: Thu, 21 Sep 2023 21:27:29 +0200
Message-Id: <20230921192729.71259-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The i.MX UART can be used as a wake-up source, document the 'wakeup-source'
property as allowed property.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jiri Slaby <jirislaby@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-serial@vger.kernel.org
---
 Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml b/Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
index 40414247d61a3..83035553044a2 100644
--- a/Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
@@ -70,6 +70,8 @@ properties:
   interrupts:
     maxItems: 1
 
+  wakeup-source: true
+
   fsl,dte-mode:
     $ref: /schemas/types.yaml#/definitions/flag
     description: |
-- 
2.40.1


