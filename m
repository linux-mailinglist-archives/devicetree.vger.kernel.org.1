Return-Path: <devicetree+bounces-35164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0883C702
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D6BA1F21358
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD10768F8;
	Thu, 25 Jan 2024 15:35:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gauss.telenet-ops.be (gauss.telenet-ops.be [195.130.132.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57B876906
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706196910; cv=none; b=ppRl7NuHMY1lLEPSopkTzBlySTxFL8eiY9B/fhYm8A6QqTv7SFbVPGj3FTQ/CoCrAfh4K1jHKWsBD5kaNaHfq7h4Q67KdJOhfBQZDdncn3u96EMW+Luzc81o5uVcgcJ+sPyjq0s13QIrZkDfmp9BG+5HvrOr4vNB7mAFOaKVJ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706196910; c=relaxed/simple;
	bh=5kt5BtaMu+g3R+vgsVwu5Jtmq9SYlBM3BUBpX2Sm2w8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nnMEFbcDQdT0mCwMxzsBanGLlJ4segyH2YR3EZJmTGXOL2K9brkKq+zoDFiYpfUIwqfVUPPaTnC1lLJfQJ3UtWyjRf15pJWqB5C+JjmnhcF0qUVkp59AsHJPAwnzJhuhputThSmEusayWSLProjXrqSzWQmsuyP8UEQ5mz/Dfeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by gauss.telenet-ops.be (Postfix) with ESMTPS id 4TLPyq5TSnz4wyjy
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:34:59 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by xavier.telenet-ops.be with bizsmtp
	id f3am2B00758agq2013amcM; Thu, 25 Jan 2024 16:34:59 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT1jo-00GUvl-29;
	Thu, 25 Jan 2024 16:34:46 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT1kc-00Fs2c-1U;
	Thu, 25 Jan 2024 16:34:46 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Magnus Damm <magnus.damm@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Cong Dang <cong.dang.xn@renesas.com>,
	Duy Nguyen <duy.nguyen.rh@renesas.com>,
	Hai Pham <hai.pham.ud@renesas.com>,
	Linh Phung <linh.phung.jy@renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Conor Dooley <conor.dooley@microchip.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v2 05/15] dt-bindings: reset: renesas,rst: Document R-Car V4M support
Date: Thu, 25 Jan 2024 16:34:33 +0100
Message-Id: <bd26299d687412c20fea5e2d57195a763cc532e9.1706194617.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706194617.git.geert+renesas@glider.be>
References: <cover.1706194617.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Document support for the Reset (RST) module in the Renesas R-Car V4M
(R8A779H0) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2:
  - Add Acked-by, Reviewed-by.
---
 Documentation/devicetree/bindings/reset/renesas,rst.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rst.yaml b/Documentation/devicetree/bindings/reset/renesas,rst.yaml
index e7e4872477517b2d..58b4a45d338006ff 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rst.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rst.yaml
@@ -50,6 +50,7 @@ properties:
       - renesas,r8a779a0-rst      # R-Car V3U
       - renesas,r8a779f0-rst      # R-Car S4-8
       - renesas,r8a779g0-rst      # R-Car V4H
+      - renesas,r8a779h0-rst      # R-Car V4M
 
   reg:
     maxItems: 1
-- 
2.34.1


