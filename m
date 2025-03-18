Return-Path: <devicetree+bounces-158722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C387A67D48
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 20:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73E7A3BED31
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1C71DF24B;
	Tue, 18 Mar 2025 19:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pereznus.es header.i=@pereznus.es header.b="AGyn0Wpg"
X-Original-To: devicetree@vger.kernel.org
Received: from p00-icloudmta-asmtp-us-central-1k-100-percent-9.p00-icloudmta-asmtp-vip.icloud-mail-production.svc.kube.us-central-1k.k8s.cloud.apple.com (p-east1-cluster4-host3-snip4-2.eps.apple.com [57.103.89.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744617A30B
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.89.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742327231; cv=none; b=m32UXamL1tHiPbDxmSjBYiLKAbASaB4eT1MENkBP4x/JbkWwFWO9eizihRWKv8iIfIQnKzpBJHbVoBySAObN9DNaQmC7bUGVXStBpMPg815+/TPmiuTQTksw4GtTzGJ18OHM5uBvCLgOwCnlJalNHMvq7xMORWrcQAvacdqhp/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742327231; c=relaxed/simple;
	bh=jSYigw9RHd5MXqnBsNMF/i/zXhiUyoQtQhVRk7JevBk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kcavTbVz0aHgu6C6F0qDmIMBsz9CclF1Wq6ADyJ1+SPYhtQQ2239NCC7h7ZRIQQb3P+efZekmqMf/KlqdEm7bA4N4YsT5YmRdd8Z1VceDbkEoy/abgzadzKJLrTJisma2Jr6eXPStFCV2bLaCRymcxVuK2Z4ryKUQP6/oLFFDYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pereznus.es; spf=pass smtp.mailfrom=pereznus.es; dkim=pass (2048-bit key) header.d=pereznus.es header.i=@pereznus.es header.b=AGyn0Wpg; arc=none smtp.client-ip=57.103.89.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pereznus.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pereznus.es
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pereznus.es; s=sig1;
	bh=0YAbwE3jUJmjtAF1aTc+Ih0zOeBMB4K71DOpq7By6Pg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
	b=AGyn0WpgjVxL7J4hRqXjxy59wKpX0U0r0OXBYOqSIc05JbGG2Y+8ziuY7TtsAyxzn
	 iSs18sLM4WxdjQfJ9W/uzUsP2P0AeibWuNZ4iwAk48vs+6EgNPfZqtciSBa8wiKq72
	 KybS2Re4m21jyF4wcWZbbfYDIyPYKENI+YljKqqLYBbzYvx3ZAe6cCAolVcvETbPSF
	 V760Vz6FXM+OJ476qXHo5+oBuOCcnhPTPJ8/ooGMNHDxv+Ls73qqddQFYeT8QSoLB1
	 waWXEjhBftOQjamgMP0hBgn95f5mxLXC4LAwH9+Qa09SgPfFTAKs7L7rUp2OUTTDBC
	 fvBfHf5+aA3Mg==
Received: from localhost.localdomain (ci-asmtp-me-k8s.p00.prod.me.com [17.57.156.36])
	by p00-icloudmta-asmtp-us-central-1k-100-percent-9.p00-icloudmta-asmtp-vip.icloud-mail-production.svc.kube.us-central-1k.k8s.cloud.apple.com (Postfix) with ESMTPSA id 527D318001CA;
	Tue, 18 Mar 2025 19:47:04 +0000 (UTC)
From: Sergio Perez <sergio@pereznus.es>
To: linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	Sergio Perez <sergio@pereznus.es>,
	Tomasz Duszynski <tduszyns@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 1/2] dt-bindings: iio: light: bh1750: Add reset-gpios property
Date: Tue, 18 Mar 2025 20:45:54 +0100
Message-ID: <20250318194624.7626-1-sergio@pereznus.es>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qs5RND1TH8wMqItkiprUYf94-BngdX8M
X-Proofpoint-ORIG-GUID: qs5RND1TH8wMqItkiprUYf94-BngdX8M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_09,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0
 clxscore=1030 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=899 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2503180143

Some BH1750 sensors require a hardware reset via GPIO before they can
be properly detected on the I2C bus. Add a new reset-gpios property
to the binding to support this functionality.

The reset-gpios property allows specifying a GPIO that will be toggled
during driver initialization to reset the sensor.

Signed-off-by: Sergio Perez <sergio@pereznus.es>
---
 Documentation/devicetree/bindings/iio/light/bh1750.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/bh1750.yaml b/Documentation/devicetree/bindings/iio/light/bh1750.yaml
index 1a88b3c253d5..f7a8dcd7d2a1 100644
--- a/Documentation/devicetree/bindings/iio/light/bh1750.yaml
+++ b/Documentation/devicetree/bindings/iio/light/bh1750.yaml
@@ -24,6 +24,10 @@ properties:
   reg:
     maxItems: 1
 
+  reset-gpios:
+    description: GPIO connected to the sensor's reset line (active low)
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -39,6 +43,7 @@ examples:
       light-sensor@23 {
         compatible = "rohm,bh1750";
         reg = <0x23>;
+        reset-gpios = <&gpio2 17 0>;
       };
     };
 
-- 
2.43.0


