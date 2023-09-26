Return-Path: <devicetree+bounces-3466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB287AEE7E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:43:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BDEC0281555
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FCFF1862A;
	Tue, 26 Sep 2023 14:42:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E19910EF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:42:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0B10C433CA;
	Tue, 26 Sep 2023 14:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695739377;
	bh=uMjIAFfVnuWj2Z28spkl8zPcFTWWFYCo1rAP0UtIQ9M=;
	h=From:To:Cc:Subject:Date:From;
	b=LyaBuSKfQXWP56qsP4GUXh6c9xYn3Stl0nrozbD9NELYcX9GWWfrHRN1c+LaWHTQC
	 ujH8Cd2PSKwwC8TyhjQITk4d+9MgHe1mvI1/Rx6ZPgmilP/003ndSf0MlMF2Y8vVL9
	 0ioejwwvksqZBC3U1zlDeS4KQnZxWVns7TtNdUCc7xt4GS14zbxeyLV44QpswFtls2
	 ecbJi85EWYNEC3TzGrwGyyfwgK4kSvZIG5WzmphClQfdJrrs0HBGRdjS/ETaS00QR/
	 TMShVThH2OAz0Eidx7ZpHGyXl1lLuj9FF34xyxbgqDKaGSGjw8uoroLYuriUc4XqUS
	 MURD2f38J/O+w==
Received: (nullmailer pid 4053487 invoked by uid 1000);
	Tue, 26 Sep 2023 14:42:55 -0000
From: Rob Herring <robh@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>, Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: input: syna,rmi4: Make "additionalProperties: true" explicit
Date: Tue, 26 Sep 2023 09:42:44 -0500
Message-Id: <20230926144249.4053202-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make it explicit that the not yet documented child nodes have additional
properties and the child node schema is not complete.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/input/syna,rmi4.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
index 4d4e1a8e36be..b522c8d3ce0d 100644
--- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
+++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
@@ -164,6 +164,8 @@ patternProperties:
 
   "^rmi4-f[0-9a-f]+@[0-9a-f]+$":
     type: object
+    additionalProperties: true
+
     description:
       Other functions, not documented yet.
 
-- 
2.40.1


