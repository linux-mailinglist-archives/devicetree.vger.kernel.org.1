Return-Path: <devicetree+bounces-238772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6D7C5DD87
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08F4A4272B0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10A632D7FC;
	Fri, 14 Nov 2025 15:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjZBGVGS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705D532D7CC;
	Fri, 14 Nov 2025 15:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132739; cv=none; b=YFL4pfHGv6i01HgmuXlzgZUx8KVZtPdAr8hqz7OG9+q9t81pPWitsPUPzhrwDaDXIJZDchz8AFR/q+NGn/45AL+P4C8ksT3NKyNAz+oL4jggow2KdjdZQTw2SROD58gDHIHwdtMcTSsQyCYMqTxFkn6bBaUKcKWHvIqfZPqrc6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132739; c=relaxed/simple;
	bh=dCV6aDcfXxrs6y0pvofn0dOS4IfWjDWjcsBp1lbRTo8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YQC8SYUa0tvl8be+Vm9FOI5n8cNJzGEvmUaXy1NYKrjZSJ91JEGCrhrP6Di54KQ0pz+7elpa9wPau8cVlXGy7u2pHd5mJhAY54utiHeeufgTTY0vuOU1URSy7k0xV9sHyIiejTFY8UtU1Vm5BoFuHx49dy+AbO00+raeniPYPOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjZBGVGS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DB52C4CEF8;
	Fri, 14 Nov 2025 15:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132739;
	bh=dCV6aDcfXxrs6y0pvofn0dOS4IfWjDWjcsBp1lbRTo8=;
	h=From:To:Cc:Subject:Date:From;
	b=VjZBGVGSh6+0ZPWZX1sHg6sIv3hHfavKU8q7r0GzfK8nCzA+yI9EU2MTX2XBQyp5t
	 jKUPakf8uJQwjniQ+PkCL9i70tFHJRZ63Fq5g0jRNNZ+s6DsULRR18eGpgwSSmI8Vd
	 YCTIq1gC2OhpD7+CkZn7HLwgjnbFOldz2OqA6HpJjMNNDMbqzlh+rR/QdijuOlkkLE
	 0giXyCdMiZwwPABZHjVhs2mxlP2xh6Bs0nZaEaMWXwlt9MiIhythKibIoZU0gkOuKh
	 6tb+y/XQekPbsrQAXpqruMyUG6nBiG+4WXToAsWZFS+9PIV0lnHXpJVuriRrzXAT11
	 uiu1wbQCYZOzA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJvMn-000000000BR-3yxf;
	Fri, 14 Nov 2025 16:05:38 +0100
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: gnss: u-blox: use lowercase company name
Date: Fri, 14 Nov 2025 16:05:29 +0100
Message-ID: <20251114150529.689-1-johan@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The u-blox company name is written in lowercase so restore the style
that was used before the binding was converted to YAML.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index e8b696986bb7..893f6eacc097 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gnss/u-blox,neo-6m.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: U-blox GNSS Receiver
+title: u-blox GNSS receiver
 
 allOf:
   - $ref: gnss-common.yaml#
@@ -14,7 +14,7 @@ maintainers:
   - Johan Hovold <johan@kernel.org>
 
 description: >
-  The U-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
+  The u-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
 
 properties:
   compatible:
-- 
2.51.0


