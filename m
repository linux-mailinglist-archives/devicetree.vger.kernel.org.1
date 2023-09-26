Return-Path: <devicetree+bounces-3422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD787AECD9
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8077D2816C3
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995544C60;
	Tue, 26 Sep 2023 12:30:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EB827ED9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:22 +0000 (UTC)
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AF9DFB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:17 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-56f8334f15eso1083700a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731417; x=1696336217; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x5y14+OcFB94c25m5R8AMd9Gj8vjZ1GHkk+U6TQJKX8=;
        b=J1W2iOdeOnWYpyqfBQtwPZwWzOwRT7dl9V3gEo39qkW4loBjNvETjoBsKUDcJguz5I
         bx3ym9SsBqWToJe1RsKMgpOOSDiyNSSG9Wz2YMGHMWbJ8/mfeEg1pJx6zM4E3Tp/NnLG
         RKARU3ju/09DgyDM9hLObmzZTRAmMGbCMH/ZSq3iLMNQQlSvFIF8/0Q7Eppw9wyUdXUl
         bYbPL7cpHtplIOYfPLU4XCY4RlxPsQ2neJQCZcNsRVJsGqfLtuZ6Px29BzMqfc4nc6U5
         hwo+d0s0CHhdE3hq6b7LWzSDC56Ft9md392rQVPDVgb7sa2eBZ0mm7XTWXMX4HUubeh5
         UMsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731417; x=1696336217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x5y14+OcFB94c25m5R8AMd9Gj8vjZ1GHkk+U6TQJKX8=;
        b=KVuyBjC69LC/W6p6SldkwamjvYqgWB7Rd8WstppY/NCRcXE+eYnMH8+D49nA7O4Ilw
         N278Z6H5FqxSc5t9A5Fphdlscx78D1MHaoBuMVzSm9fgSiHtv+RP+YnlSleCV32oUVw5
         Y+7PIfMcilBrqBbvJJt4SUan5aZb1gtk/fxJCFPqt6lcCQ31l1xbFFWmr2KhR+l8m/zh
         QZCq9J3620iWwZereBJIVxFHV0Rzu99FfLHQ+vuHC7k6AF5FEY9zYZctRTHPhnEqH5vy
         yg0XQZEzwomdZSrahvCtipM9cE5/A02v9EfbVolzTh/GFBkbcyMS8PT6Gvi/M999oPQx
         1t7Q==
X-Gm-Message-State: AOJu0YwaoVSgzHmi2mmaQsnZnthSYph7WmVnbkjVjgynl3QOTeIKwT3l
	0pY42dq8jLnIcODYUrBhQxQ=
X-Google-Smtp-Source: AGHT+IGn6u0gxGb+PxlmU6tU/OK/ngYL6qS2j42R/G71TkNyNcWyl2sHyQZb47aSvX/aO8uEvQ5NUw==
X-Received: by 2002:a05:6a21:a5a2:b0:13f:65ca:52a2 with SMTP id gd34-20020a056a21a5a200b0013f65ca52a2mr14336970pzc.5.1695731416846;
        Tue, 26 Sep 2023 05:30:16 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:16 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH 1/8] dt-bindings: input: fsl,scu-key: Document wakeup-source
Date: Tue, 26 Sep 2023 09:29:50 -0300
Message-Id: <20230926122957.341094-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

The SCU Key controller can be used as a system wakeup source.

Document the 'wakeup-source' property.

This fixes the following schema warning:

system-controller: keys: 'wakeup-source' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/input/fsl,scu-key.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/fsl,scu-key.yaml b/Documentation/devicetree/bindings/input/fsl,scu-key.yaml
index e5a3c355ee1f..29921aab9d97 100644
--- a/Documentation/devicetree/bindings/input/fsl,scu-key.yaml
+++ b/Documentation/devicetree/bindings/input/fsl,scu-key.yaml
@@ -24,6 +24,8 @@ properties:
   linux,keycodes:
     maxItems: 1
 
+  wakeup-source: true
+
 required:
   - compatible
   - linux,keycodes
-- 
2.34.1


