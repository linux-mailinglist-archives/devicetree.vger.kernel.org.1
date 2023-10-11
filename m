Return-Path: <devicetree+bounces-7816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E810B7C59D0
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 19:02:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2479B1C20EF2
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 17:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD0513D3BF;
	Wed, 11 Oct 2023 17:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="UFJ4z8el"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4641328DA6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 17:02:38 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 085449D;
	Wed, 11 Oct 2023 10:02:36 -0700 (PDT)
Received: from [192.168.178.23] (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id 60F89C88FD;
	Wed, 11 Oct 2023 17:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697043754; bh=yoZyGjULPrJB/ushmKyYZ0a6kfi9O0JULyRgzUBtrnI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=UFJ4z8elzVnZnYya3NYMvOUlEECDu8M0MTrOPhvGk1is+IPp4vLK8xeqPbwpk1UwV
	 ngSsamtekJeOp4uMCFvbRyqZb4pa2ZXwz6r1NlBcLreWVSiaplUfTdKy/rHjhFdaLw
	 lIaSvFP5RkNQHYLyOeqv48OLLRIwh+1TIEVsIuDA=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Wed, 11 Oct 2023 19:02:24 +0200
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: document HTC Corporation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231011-htc-memul-v1-1-76e57873190c@z3ntu.xyz>
References: <20231011-htc-memul-v1-0-76e57873190c@z3ntu.xyz>
In-Reply-To: <20231011-htc-memul-v1-0-76e57873190c@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=788; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=yoZyGjULPrJB/ushmKyYZ0a6kfi9O0JULyRgzUBtrnI=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlJtUnAWlwQp5TJVE7pltEJJz+599niNgRc4/ck
 b2et2Yqu6iJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSbVJwAKCRBy2EO4nU3X
 Vv2dEADPQ3UGNYOLRBKWy+Ev13f6tZ5Wy4Dx5BjqmnX5bb5tG+kcPh/DFX0vX5uKahPCPJYIMa7
 0EM/yP5mbwkcTKvZ+YTW5hNPnw3jKlayc5tFbAbnHUS219DADAxj1Aob+93g0aUpwZl3sxaJ8sA
 E6f0Zu7zeq0NxMkntnlkQP0nJt/3aGLzIFSPnwHnK4ESWMtwPBbqRYOZiM34fFRRydvEtnQU7xr
 hIJGADrII/dC06eYfnGKW0oTRIOKSW1nRTvYJW+qzl0bkJpYf4mDcQeSGfUQ7JtncRbxTWInU/E
 KyGo8Xyrz4BCjiGRcAY3OIwFcfI7oBSq28fLXkUcSpt2imqjgnlMET6umKhTyWvQNzUXygzdJUy
 MV0qnsQRTsz7D5lboNCQPTjZTJtQw8LHefoSTqK9UPG5HDIVTt8l0IN1k7lsVbV3GAlSbx7rkxL
 hJiickGVQaYjPz6IWgkpgOkNIDmLiYdzxW/y3gWZyhEm2PhUgGukCr+2HlNS9uVt/Cy6RSfCro4
 eDSFjuesIfUqecoIR2PqBi7EV+U+YGZJJaujhgTCWb381uA14mXhQC14R+G5+PR+76NVygWnPMr
 pKJn0mYFPxn/hUpiLpd4jyka6dYQGNHDVOVHN4xmhnRHUVfyu4aa/b6zuXuJfYQPS0qgqQjlro5
 6jtnx595PW4VMOw==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the vendor prefix for HTC (https://www.htc.com/).

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..9fddc274ce76 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -583,6 +583,8 @@ patternProperties:
     description: Hewlett Packard Enterprise
   "^hsg,.*":
     description: HannStar Display Co.
+  "^htc,.*":
+    description: HTC Corporation
   "^huawei,.*":
     description: Huawei Technologies Co., Ltd.
   "^hugsun,.*":

-- 
2.42.0


