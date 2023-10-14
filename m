Return-Path: <devicetree+bounces-8638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 552A47C9523
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8742B20C4D
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 395DB15484;
	Sat, 14 Oct 2023 15:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830E45CBE
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:29 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.238])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26F4BD8
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:27 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-2.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id a52d7e82-b9c7-4ff3-b346-a12995cbe937;
	Sat, 14 Oct 2023 23:54:23 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id 285CD1C0559;
	Sat, 14 Oct 2023 23:54:23 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	glaubitz@physik.fu-berlin.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v3 27/35] Documentation/devicetree/bindings: vendor-prefix add IO DATA DEVICE Inc.
Date: Sat, 14 Oct 2023 23:54:02 +0900
Message-Id: <2c63fdae1d2c60f478212d07898768b68f01b3b0.1697199949.git.ysato@users.sourceforge.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1697199949.git.ysato@users.sourceforge.jp>
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_SOFTFAIL autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..2179a9d61e6a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -657,6 +657,8 @@ patternProperties:
     description: Inventec
   "^inversepath,.*":
     description: Inverse Path
+  "^iodata,.*":
+    description: IO DATA DEVICE Inc.
   "^iom,.*":
     description: Iomega Corporation
   "^irondevice,.*":
-- 
2.39.2


