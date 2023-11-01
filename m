Return-Path: <devicetree+bounces-13402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7BE7DDF4D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:23:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35C721C20D97
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDCE1079B;
	Wed,  1 Nov 2023 10:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailoo.org header.i=@mailoo.org header.b="aaMOPazM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF5010781
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:23:52 +0000 (UTC)
Received: from mailo.com (msg-1.mailo.com [213.182.54.11])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEE59E8;
	Wed,  1 Nov 2023 03:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailoo.org; s=mailo;
	t=1698834192; bh=LulnQVU2LGroW0Qu5VgPRqq9wD46yJr/35l8o6hbSh4=;
	h=X-EA-Auth:From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding;
	b=aaMOPazMbCrS/2CWeb5BRZEj4btnQEQT/aCDiGoCNPUD71KmP5zwPbqPK0RH/9nNQ
	 z/hELE95uvZ97uiU2gSCYtqXT3Qhlvz2I9XxDGxM9rvYeIgpUCDD9pIVg/uiFrAJbX
	 IZFmbFlOx/ViYJe/GSXJA3eWkjOMAtCnrBaBCcbs=
Received: by b221-2.in.mailobj.net [192.168.90.22] with ESMTP
	via ip-22.mailoo.org [213.182.54.22]
	Wed,  1 Nov 2023 11:23:11 +0100 (CET)
X-EA-Auth: BVb0ILTlpz9169UulICTfvd2SidbhkX2Cm3cPMSGy9Y7QlUsIMoiJhzNJqkxUSTlHnlgvycagn6A0zErM0fjp940yupvJJMO0P6GZ/HaA/Q=
From: Vincent Knecht <vincent.knecht@mailoo.org>
To: Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Vincent Knecht <vincent.knecht@mailoo.org>
Subject: [PATCH 2/3] media: dt-bindings: ak7375: Add ak7345 support
Date: Wed,  1 Nov 2023 11:22:56 +0100
Message-ID: <20231101102257.1232179-2-vincent.knecht@mailoo.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
References: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document AK7345 bindings.

Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
---
 .../devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml     | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml b/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
index 22a810fc7222..fe312cc6a873 100644
--- a/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
@@ -15,7 +15,9 @@ description:
 
 properties:
   compatible:
-    const: asahi-kasei,ak7375
+    enum:
+      - asahi-kasei,ak7345
+      - asahi-kasei,ak7375
 
   reg:
     maxItems: 1
-- 
2.41.0




