Return-Path: <devicetree+bounces-51687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B45880103
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32961F21BBB
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 15:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F75A82881;
	Tue, 19 Mar 2024 15:46:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from riemann.telenet-ops.be (riemann.telenet-ops.be [195.130.137.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0C8657CF
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 15:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710863186; cv=none; b=DH5IAmLf+dcK0Cxd7PpNltT11EM9hmHCBqsfam3WIzCDjY3+EYzSmNExcRrYbguFthIpbqA+wJN1GNoF5uekOi7/3W9KO/zbqn3EOVnkb8K1DmoC5tolIrDoYou0X0Blx7bOkTj1DhYQbChZtU899fUzbZqWmr0WJ4zbFtjkICA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710863186; c=relaxed/simple;
	bh=l3fAhMFwXdTrWlgZNWbnVdbuoEcQXgaCLUpfAHd+muQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=vDx93QOGcpBkGgM4xL6KB8xhIwVcBiJ3QJWxKW4ywBK2BLZzD3BFQ/1KFJ7JMhrh7X73qJ5AQkmyt798x5lZYz1g7+N7t8IRltnHnKLVAPwxV2SDH2NGAsRBqa3qq6u12D8Bl3sZxHeVBNMeE7Qzx3KbpKPCjhGmmFR23OoFqjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
	by riemann.telenet-ops.be (Postfix) with ESMTPS id 4Tzbfx2QXyz4wyWV
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:46:17 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:76d0:2bff:fec8:549])
	by andre.telenet-ops.be with bizsmtp
	id 0fm82C00K0SSLxL01fm8mp; Tue, 19 Mar 2024 16:46:10 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rmbev-00468j-Ez;
	Tue, 19 Mar 2024 16:46:08 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rmbfE-000pFV-Bw;
	Tue, 19 Mar 2024 16:46:08 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/3] dt-bindings: timer: renesas,tmu: Add R-Mobile APE6 support
Date: Tue, 19 Mar 2024 16:46:03 +0100
Message-Id: <18b3778031f939a8e40a9865f9be0a9ec2e28a1e.1710862701.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1710862701.git.geert+renesas@glider.be>
References: <cover.1710862701.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for the Timer Unit (TMU) on the R-Mobile APE6 (R8A73A4)
Soc.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/timer/renesas,tmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/renesas,tmu.yaml b/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
index 2c915101d7bcec68..8df9d4718cf82a28 100644
--- a/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
@@ -21,6 +21,7 @@ properties:
   compatible:
     items:
       - enum:
+          - renesas,tmu-r8a73a4  # R-Mobile APE6
           - renesas,tmu-r8a7740  # R-Mobile A1
           - renesas,tmu-r8a774a1 # RZ/G2M
           - renesas,tmu-r8a774b1 # RZ/G2N
@@ -94,6 +95,7 @@ if:
       compatible:
         contains:
           enum:
+            - renesas,tmu-r8a73a4
             - renesas,tmu-r8a7740
             - renesas,tmu-r8a7778
             - renesas,tmu-r8a7779
-- 
2.34.1


