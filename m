Return-Path: <devicetree+bounces-3428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1D17AECDF
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E2711280F5F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C42257A;
	Tue, 26 Sep 2023 12:30:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B55327EE3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:39 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 065E4192
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:38 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c60c10db16so5314585ad.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731437; x=1696336237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdOnEwMwDuUgmBL74L0ZTFnz9/2NbnhmipHvOS36yIA=;
        b=O5Tl//nKT+RucGdDvJvZ73tbzSVLXYRNPnIWOMVGeeo2ox91rMvbKiwQvZl7GOMze2
         dVg+y9T/sLSTW/QRm+3AwVapiUSqHZZnXScsN6ncQXl9uA1msrjqgXhsm5jO6CsgaZxH
         HJ70KwVrMng8Ihtn8k93OnauTWuxLIZfLgSD6PD3OEHDo4mcHSlAMriT45atzylMkAmL
         f9LhcdNg5wcL/E11WadjhHrT4+kFYiVmgpZST+R4DGegTLA7R7OT14GhrBAYU479weCC
         XI3d74WLfuiQS7wWu/r/st3L+/g1Mu8jShBzg8weKuak5Fj5ZGuPLDi8OS5Aj1xaoPjB
         NTVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731437; x=1696336237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UdOnEwMwDuUgmBL74L0ZTFnz9/2NbnhmipHvOS36yIA=;
        b=ZyeFohI5Vl8mG3Qh+hxQk79G23uMEwg3jPZ8vpuHQHayiDM2sCYHGr8b/nP+whWQbJ
         4NOy8hX/EY7dncKjrc7183pYKL2tCoH+2w8H4ai7m2WdqdWNtENba88j0Vxs7QSjNn0F
         FAYSKcTjg+TiRMWzTA0AA/8Vs0X/IyQ+DMtTrTpJrTyFLpxfIObKiGgMDvMmjd3AO4gX
         3HdQZzfhbMONQoL82+ESV9XbqMUTSe4FRXbVZTAj+KBNZ3h5YrrpDZS0yw4xXnGEA1Y0
         +FlgSRp+W0EauAedkNU5YHbo9q10NfRsKgQKOpa62XRI/1pQslu3Nv+oXB+GhPqej+W9
         ND3w==
X-Gm-Message-State: AOJu0YyokLEbLDiOOeqLJtwMGhlBi+tGwoHtXnFOyv2kxynnChIbnRsb
	JMoXccgxeU5S8QCrVwUUpdY5CdPAKZQ=
X-Google-Smtp-Source: AGHT+IEiKDfeoPVWFJ4gP6GTBeIL1vG6iH8MDZP/rwNd57Ax4XNIX7aFw6buGS7TCidX6fjkoI6d5w==
X-Received: by 2002:a17:902:fa04:b0:1c6:2902:24f9 with SMTP id la4-20020a170902fa0400b001c6290224f9mr3290677plb.1.1695731437276;
        Tue, 26 Sep 2023 05:30:37 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:36 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH 7/8] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Date: Tue, 26 Sep 2023 09:29:56 -0300
Message-Id: <20230926122957.341094-7-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926122957.341094-1-festevam@gmail.com>
References: <20230926122957.341094-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

imx8dxl also contains the SCU watchdog block.

Add an entry for 'fsl,imx8dxl-sc-wdt'.

Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
index 47701248cd8d..8b7aa922249b 100644
--- a/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
@@ -18,7 +18,9 @@ allOf:
 properties:
   compatible:
     items:
-      - const: fsl,imx8qxp-sc-wdt
+      - enum:
+          - fsl,imx8dxl-sc-wdt
+          - fsl,imx8qxp-sc-wdt
       - const: fsl,imx-sc-wdt
 
 required:
-- 
2.34.1


