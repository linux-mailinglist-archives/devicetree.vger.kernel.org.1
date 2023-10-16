Return-Path: <devicetree+bounces-8722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DA47C9CDF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 03:33:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCB071C208A8
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 01:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5A41369;
	Mon, 16 Oct 2023 01:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="dhYgZVE5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C31136D
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:33:08 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E7AEDA
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 18:33:07 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B7F072C0733;
	Mon, 16 Oct 2023 14:33:05 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697419985;
	bh=ko5T8oZxTS9rIyp1bVTVligc3kX9bo+JSpSRE33ApsY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dhYgZVE5mzOHTRTF/qyeXifd9fuLrkEsacshOLJ5gze9eEP7cszJ6BdreWlvrxmA6
	 GmhwOJsQGTnMbY2glQZtdj63PMSQndKiMw8yyGSRerpeqi18naWry34mRwbxzDFMGX
	 Djy9QLRXIAiA4kPrFlO/jYSXo18wNCDpjo+oQQWPViI9v1G6wpWx9p0WN1+MNw3F6d
	 BjEq9QS0nwlNtrWvvmp7FC3IW3chRf2QAyrNfVzOgKwL5+XrkpWmPW/lum5YY0dI7A
	 9yMplHdXZLu5hWi/mrBT3TMmi+/yfjYHkaDHqm+nk9IGmPiOuP7jEbPRuPP/1MzkgB
	 qMTZk6+Tw2Lcw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B652c92d10000>; Mon, 16 Oct 2023 14:33:05 +1300
Received: from richardl-dl.ws.atlnz.lc (richardl-dl.ws.atlnz.lc [10.33.23.23])
	by pat.atlnz.lc (Postfix) with ESMTP id 9808813EDA9;
	Mon, 16 Oct 2023 14:33:05 +1300 (NZDT)
Received: by richardl-dl.ws.atlnz.lc (Postfix, from userid 1481)
	id 959D6520158; Mon, 16 Oct 2023 14:33:05 +1300 (NZDT)
From: Richard Laing <richard.laing@alliedtelesis.co.nz>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	ilpo.jarvinen@linux.intel.com,
	andriy.shevchenko@linux.intel.com
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	Richard Laing <richard.laing@alliedtelesis.co.nz>
Subject: [PATCH] dt-bindings: serial: snps-dw-apb-uart: Add property to drain TX FIFO
Date: Mon, 16 Oct 2023 14:32:07 +1300
Message-ID: <20231016013207.2249946-3-richard.laing@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016013207.2249946-1-richard.laing@alliedtelesis.co.nz>
References: <20231016013207.2249946-1-richard.laing@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=yJYUBcXGP3-BVwV7yiEA:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

An issue has been observed on the Broadcom BCM56160 serial port which
appears closely related to a similar issue on the Marvell Armada 38x
serial port.

Add a new property to force the TX FIFO to be drained before
changing the UART_LCR.

Signed-off-by: Richard Laing <richard.laing@alliedtelesis.co.nz>
---
 .../devicetree/bindings/serial/snps-dw-apb-uart.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.ya=
ml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 17c553123f96..4266ef96832c 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -114,6 +114,12 @@ properties:
       register. Define this if your serial port does not use this pin.
     type: boolean
=20
+  drain-before-lcr-change:
+    description: Force TX buffer flush before LCR change. Make sure all
+    characters in the buffer are sent before reconfiguring. Define this =
if
+    the UART drops its FIFO when reconfiguring.
+    type: boolean
+
 required:
   - compatible
   - reg
--=20
2.42.0


