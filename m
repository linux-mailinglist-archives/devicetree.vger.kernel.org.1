Return-Path: <devicetree+bounces-205139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 516BFB28185
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:20:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F1BDBA0A65
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F70B2222AC;
	Fri, 15 Aug 2025 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="gkRma4GW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC4A221F15
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755267496; cv=none; b=Ghfiz+qKoPinMzMyjvhrEgTI45pK33VH9NWyGdFcOlhnxXTfQPT9IoRPc+WnnkRcPNQqXEjfNrhy/D69D0s8pds2tf0Yv+Z7qhGbc4Xjn70qegT35I+Nmi+t7AM0sXNxGdLC0KB4wNNCwMY7Zgxfvvx4+E+xn/OdX2d7BV+MdjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755267496; c=relaxed/simple;
	bh=qaTWPwsrkB+wi7tolMEyeqmFeQwexOntUJ9CL6/3FNM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KfjHdpal83jp1NR6izVZpn96Qr9u3KyH/8noIDPfnn+AoaIOxQWzCoupJoQe7d7WbEnd/StnDMVgjwOqibnECgLilhALJh8EPfnAfIJhBK+tHT/XbRk83R0JRvFWAezCaw7piMmDGAdrR+m1HFcqO4IkuLn30KzBKeJCvHdkQW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=gkRma4GW; arc=none smtp.client-ip=212.77.101.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 28140 invoked from network); 15 Aug 2025 16:18:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1755267492; bh=o8sdz/69AAFYqhrPbZw4rkNIOj+K5M6724p3x+gnegM=;
          h=From:To:Subject;
          b=gkRma4GWcB14l2Wi+icC03/YkzxWQ/NAIJ9JU2lLoY6BxOuEMOjTHbiRwegUS+ZET
           fOjryEWOPymSmrUSbU9A+Q9+BJ1HUffhpR7nuY0NZ2p2cbjBXP/jG/qFumSy+lo6N0
           DcgNe6JpNbOe9AOjp/7moAXH1hYZIovxn/9vK4T27GoVY+E0MDtw0HxRk2hh5+MvAt
           ZphDBXdBCCtrC+a1PkJ72LLE7PVr7ARulaDTIj4kgYGeanynCcvZKok1+zcagXXJnn
           PPDbSGHOhQIN8a2ToSRyOXzC6kp9IsKcS2Plh3GPUL1rS/cbhRCXfbdW6o+H0QZgXS
           6gCjn51F02I3w==
Received: from 83.24.134.210.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.134.210])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <tsbogend@alpha.franken.de>; 15 Aug 2025 16:18:11 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: tsbogend@alpha.franken.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	olek2@wp.pl,
	john@phrozen.org,
	linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: mips: lantiq: dma: add name pattern
Date: Fri, 15 Aug 2025 16:17:42 +0200
Message-ID: <20250815141759.3408909-3-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250815141759.3408909-1-olek2@wp.pl>
References: <20250815141759.3408909-1-olek2@wp.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: 89a4adb929d09e7b8f42811d4107115b
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [QTN0]                               

Lantiq target doesn't use Common clock Framework and requires strict
node names. This patch adds the name pattern to the binding.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 .../devicetree/bindings/mips/lantiq/lantiq,dma-xway.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mips/lantiq/lantiq,dma-xway.yaml b/Documentation/devicetree/bindings/mips/lantiq/lantiq,dma-xway.yaml
index 15d41bdbdc26..14bff3d058b7 100644
--- a/Documentation/devicetree/bindings/mips/lantiq/lantiq,dma-xway.yaml
+++ b/Documentation/devicetree/bindings/mips/lantiq/lantiq,dma-xway.yaml
@@ -10,6 +10,9 @@ maintainers:
   - John Crispin <john@phrozen.org>
 
 properties:
+  $nodename:
+    pattern: "^dma@[0-9a-f]+$"
+
   compatible:
     items:
       - enum:
-- 
2.47.2


