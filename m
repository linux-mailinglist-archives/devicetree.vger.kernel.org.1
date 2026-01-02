Return-Path: <devicetree+bounces-251118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB98CEEEB7
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 16:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 284BB30275FF
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 15:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53CDB298CC9;
	Fri,  2 Jan 2026 15:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="Ui8rzs67"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7580229617D
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 15:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767369229; cv=none; b=dz50yDGGWMlWLVFA3Ten/+XsKc1qVYR3xglYJLLHrW17QqAU0NMFe7Dggr74p18W440Z9SZhnSUkq3t4APzwwHGjf2K5/g9sJUuh8ZnatGU4iVLRwNkWJ3ioMQglEgcCVKxiGgt+VjN5BKdCSL6GNzqMvXJ7L5hspm4eOs1J0Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767369229; c=relaxed/simple;
	bh=xYFasRoR+6RdmuU/wFqbhiWKC3YOQUdmKUnzDEjQxaE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OKp3SYEr9Wenb6VMX0cGgfVNLHkGEyGlEQILaPIVWxR+gGyjWOKw1y1Y30G0uQLSAB8W8qy7omMMWNivtXcnhCGreZZOo9zbl7xXbtn4uR4v6EDjt9HoWIXUHO4W2iNKX11Tqe2UR9MHJ+dIZ5/YdCOjJEuebV2+CN0tegL/XHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=Ui8rzs67; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 29423 invoked from network); 2 Jan 2026 16:53:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1767369224; bh=pTuvYWbsPdbCKoL0+Bab+OPewJBz4FpesHrWJNueagQ=;
          h=From:To:Cc:Subject;
          b=Ui8rzs67kt4mvHrJbA0Y23pDGSbSH0U1gS/l242uXZFivJI04Oj05OinXHpaAwW13
           h3KsB/0u86qYqxar4NWTkAw/w0lRMcOiyN+NRH8T2am/yqmEWRLSuTZGbSj7AtumGS
           Jj5utxYFUiX6JH8+WLjYN8sTMZN0mf1cR758tOtww6ZWMa9mKPKPMhoV9WvverYZ65
           6A2WWyJT5BevqxpyqwF0pW4bE+nI8EYwa5r2xVI0uedsigQ/pUl3D34ar8rltLRV4t
           gBrI9w0Pcii7jV+fRohH+V2XIVIVVnhH5N9k3jfJcUnkjXfXo5Q+GI5ogDwBbH0bVi
           P0yTQrh1XeMkw==
Received: from 83.5.157.18.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.5.157.18])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <benjamin.larsson@genexis.eu>; 2 Jan 2026 16:53:44 +0100
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: benjamin.larsson@genexis.eu,
	chester.a.unal@arinc9.com,
	davem@davemloft.net,
	angelogioacchino.delregno@collabora.com,
	ansuelsmth@gmail.com,
	conor+dt@kernel.org,
	herbert@gondor.apana.org.au,
	krzk+dt@kernel.org,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	sergio.paracuellos@gmail.com,
	tsbogend@alpha.franken.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-mips@vger.kernel.org
Cc: Aleksander Jan Bajkowski <olek2@wp.pl>
Subject: [PATCH v3 2/3] dt-bindings: crypto: eip93: add support for Mediatek MT7621 SoC
Date: Fri,  2 Jan 2026 16:47:34 +0100
Message-ID: <20260102155341.3682013-2-olek2@wp.pl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260102155341.3682013-1-olek2@wp.pl>
References: <20260102155341.3682013-1-olek2@wp.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: de0ba326c9d18cadba17ff32d4687418
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000009 [ofrU]                               

Add compatible for Mediatek MT7621 SoC. The implementation is exactly the
same os in the Airoha SoC.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
v3:
- Use enum
v2:
- Corrected commit description
---
 .../bindings/crypto/inside-secure,safexcel-eip93.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
index c6c99c08dc68..acd7c68178dc 100644
--- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
+++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
@@ -31,7 +31,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: airoha,en7581-eip93
+          - enum:
+            - airoha,en7581-eip93
+            - mediatek,mt7621-eip93
           - const: inside-secure,safexcel-eip93ies
       - items:
           - not: {}
-- 
2.47.3


