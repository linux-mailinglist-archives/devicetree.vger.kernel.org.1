Return-Path: <devicetree+bounces-7946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B2F7C6397
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:58:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AA3B2827D5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 03:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60994611C;
	Thu, 12 Oct 2023 03:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="motWq61l"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAD25254
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:58:44 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80E012133
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 20:58:42 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 8F9B22C0288;
	Thu, 12 Oct 2023 16:58:39 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697083119;
	bh=8ldxjY2XTVgukHtY2rU8b3TaXM/2baQ3LVMTeqZSFyE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=motWq61lWkOuOaMRfUANhoQoIHNDoWkqsnEE//eCsasehWoGqql0M8KAfYGo2gJz2
	 EmPekgCqNYWsysDWE5txCPKdvmknFSEg9wi3enVQvoZ0T0tgg7Hp5OIEkcxz4b7f/o
	 ESAJ6rZixG/ZqoWsPwj0b9N89O/Eu5l/8lrrmUNLfWDzM82p0RgpS1PMPQLNHmDJXa
	 X4V5+FkmpC1IbaIwFnujL0wj4cGqIrSMsyZgO+pfKorN9yp3VqIjB6RBWAxvmHpg/p
	 0hdTAKpEV4EVTdeiydnkscHeYZlMY7K31Krc5Smeqy9AJmsuvw/YBcqNl2aCufebbi
	 rHv9KvZULevvw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65276eef0001>; Thu, 12 Oct 2023 16:58:39 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 52D8C13EE41;
	Thu, 12 Oct 2023 16:58:39 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 4F3A12809D8; Thu, 12 Oct 2023 16:58:39 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios property
Date: Thu, 12 Oct 2023 16:58:37 +1300
Message-ID: <20231012035838.2804064-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231012035838.2804064-1-chris.packham@alliedtelesis.co.nz>
References: <20231012035838.2804064-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=9qZDCEfNSpnagL8JuG8A:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a reset-gpios property to the marvell,mv64xxx-i2c binding.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 461d1c9ee3f7..ac8859aa2545 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -70,6 +70,9 @@ properties:
   resets:
     maxItems: 1
=20
+  reset-gpios:
+    maxItems: 1
+
   dmas:
     items:
       - description: RX DMA Channel
--=20
2.42.0


