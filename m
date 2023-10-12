Return-Path: <devicetree+bounces-8186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 518677C7033
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A7DA2825C8
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D351330FA5;
	Thu, 12 Oct 2023 14:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="PWm8z4TO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84E730D15
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:21:31 +0000 (UTC)
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF3FBB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:21:29 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 8971A240101
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1697120486; bh=GgTVt7+YXxEkX26Y1BkpKSXRpt+TceAR7c5yku7geAM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=PWm8z4TOzOq6BZyN48AUVR+Z7U9KVwuXzTL7o7oSXYFF5BCRt4ALLypA9edzwp23k
	 DSGddCP9l6/+vw9NWGjddFcAXu2ZrT5SFoTE+e9/QJigC3jhMTjnzVMRZnSz8P1VHd
	 7D7UGv7O3x7wPjvULbCVPJVBpE2G8F01UGnT7bB16Gzc5DIyoEu1TmcKdUcjfcj9fE
	 MTZ7jmt6rr2c0SI2uPvWpuHyJjppLmuRTe4ysKn9m735Wuz5QNRsOirZbexHc9ULyc
	 y/e0xugwemsK5eUAocuqnhGfkijg6/2ZbK+9SDdswyGhwxVPpCvSNHHhl00pWvg6gL
	 6/zlaEbuOJgmA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4S5sJP1W0hz9rxd;
	Thu, 12 Oct 2023 16:21:25 +0200 (CEST)
From: Martin Kepplinger <martink@posteo.de>
To: lorenzo@kernel.org,
	jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: kernel@puri.sm,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Martin Kepplinger <martink@posteo.de>
Subject: [PATCH v2] dt-bindings: iio: imu: st,lsm6dsx: add mount-matrix property
Date: Thu, 12 Oct 2023 14:20:41 +0000
Message-Id: <20231012142041.253332-1-martink@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the mount-matrix optional property to the binding since it's supported
and very useful when using the chip on a board.

Signed-off-by: Martin Kepplinger <martink@posteo.de>
---

revision history
----------------
v2: (thanks Jonathan)
* remove the addition to the example to avoid unrelated discussions :)

v1:
https://lore.kernel.org/linux-devicetree/20230721103410.575555-1-martink@posteo.de/


 Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
index ee8724ad33ab..28b667a9cb76 100644
--- a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
@@ -93,6 +93,9 @@ properties:
   wakeup-source:
     $ref: /schemas/types.yaml#/definitions/flag
 
+  mount-matrix:
+    description: an optional 3x3 mounting rotation matrix
+
 required:
   - compatible
   - reg
-- 
2.39.2


