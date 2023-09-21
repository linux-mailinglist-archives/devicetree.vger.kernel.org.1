Return-Path: <devicetree+bounces-2201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FF07A9BF8
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 638911C21522
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9AA618B00;
	Thu, 21 Sep 2023 18:59:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF1529439
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:58:57 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFF836DE19
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=P2UTB5t8XD9NtlqSsq8WH+UKGF31k4LPyuXnRCJcSsU=; b=aQRTvR
	IoCDhpscqTqS5VyqB969XMkC7KAhmznJ6gBMwQb1g1R7DPY64LTt/yzJOMrq7CWD
	C0h6BfMfn2sR8cYw/0BCkgxE06v4opOIJA4pqlTX77OxMeMEg9ynsFhTZka6OW+g
	eEwQkRArMvYq3rfrFtPIktzJihiUbeUzkfQDpdF1tAQpyP4H5VxTmZt5lXDlDdDQ
	OnWIdM6VUbgA/WeiMQ/9BGPYRuyuv9qZhuawB+VWA1EJNZsfsd8dKhMsnCz2X0yy
	51najsSf09NGgEgYyWml7ju2tHDYB+LlikF3jQn96M3Z07f5RhIRnhS4Xn+w/eFc
	Ft+LEjQ9mCueLt1w==
Received: (qmail 964439 invoked from network); 21 Sep 2023 15:32:12 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 21 Sep 2023 15:32:12 +0200
X-UD-Smtp-Session: l3s3148p1@qKP8hN4FxgcuciJ+
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Johan Hovold <johan@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: gnss: u-blox: add "reset-gpios" binding
Date: Thu, 21 Sep 2023 15:32:00 +0200
Message-Id: <20230921133202.5828-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230921133202.5828-1-wsa+renesas@sang-engineering.com>
References: <20230921133202.5828-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Needed to enable this chip on a Renesas KingFisher board. Description
copied over from the Mediatek driver which already supports it.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index 4835a280b3bf..8e97e475613f 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -41,6 +41,9 @@ properties:
     description: >
       Backup voltage regulator
 
+  reset-gpios:
+    maxItems: 1
+
 required:
   - compatible
   - vcc-supply
@@ -49,10 +52,12 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     serial {
         gnss {
             compatible = "u-blox,neo-8";
             v-bckp-supply = <&gnss_v_bckp_reg>;
             vcc-supply = <&gnss_vcc_reg>;
+            reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
         };
     };
-- 
2.35.1


