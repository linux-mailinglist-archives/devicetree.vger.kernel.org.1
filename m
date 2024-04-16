Return-Path: <devicetree+bounces-59749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8831C8A6F66
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 315411F2213D
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21D81304B4;
	Tue, 16 Apr 2024 15:11:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C3B13049C
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 15:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713280314; cv=none; b=HoRI03i206DXVwf7fcR7rZFYCHdvU9qYwGuM89mR4XJvNyO1deQ5HXhoUmb/QCIs8z10B/XavExvfiFsFW8RxirHAzcb2AnI9PQAtPXQrpQyv6aNWHkH44gPWRUs8mIdhNG3y8WEAGwaB+HdCNaV6bOgI73JJks+Rm+Pq1Cdv/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713280314; c=relaxed/simple;
	bh=4i9DUqbUmi5G2UyjqfPTTv3swrA0F4CllH4pCopYeRg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ie1Df+Z/Qa0NCWPcQ48Ctl+WjTDr96ADElTGXRQ4HLahqpwIr2oDUuSwZA0DT/WnrJJpFItqI6X3m2VZOpQDRSUI5rctje/UOZp0RPhYXWckx38JEE8jFSSB7LE0N2enp1C57G/r+Rrad3PhSE3nt9W2J69ATeb/jP06sBM21Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:76d0:2bff:fec8:549])
	by michel.telenet-ops.be with bizsmtp
	id BrBq2C00Q0SSLxL06rBqVq; Tue, 16 Apr 2024 17:11:50 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rwkSo-008EY4-VG;
	Tue, 16 Apr 2024 17:11:50 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rwkTO-00EbHw-Cx;
	Tue, 16 Apr 2024 17:11:50 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-bindings] spi: renesas,sh-msiof: Add r8a779h0 support
Date: Tue, 16 Apr 2024 17:11:48 +0200
Message-Id: <68a4d8ad8638c1133e21d0eef87e8982ddea3dd8.1713279687.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for the Clock-Synchronized Serial Interface with FIFO
(MSIOF) in the Renesas R-Car V4M (R8A779H0) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml b/Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml
index 00acbbb0f65dcf57..49649fc3f95af971 100644
--- a/Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml
+++ b/Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml
@@ -54,6 +54,7 @@ properties:
               - renesas,msiof-r8a779a0      # R-Car V3U
               - renesas,msiof-r8a779f0      # R-Car S4-8
               - renesas,msiof-r8a779g0      # R-Car V4H
+              - renesas,msiof-r8a779h0      # R-Car V4M
           - const: renesas,rcar-gen4-msiof  # generic R-Car Gen4
                                             # compatible device
       - items:
-- 
2.34.1


