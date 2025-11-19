Return-Path: <devicetree+bounces-240278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 867C6C6F91B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:12:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id C54BD29173
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B35D36826D;
	Wed, 19 Nov 2025 15:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YHUUReFr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D4F2D47E8;
	Wed, 19 Nov 2025 15:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763564751; cv=none; b=AuupqZfgRNhwtT4Q2mrKfWs+hDveHyQOxAC/WINQ03sPJ6q30Oq1NupMKhNpRQYctlAj7MsWLco5kGnX49nFcni6Xc0wxVhwZa4ZqDddsdurO13AaRNpZLdIB1aOMVn4CgY2ThcaGQOsrGhSSlSk/kpJGVdG0Zg1lckPFMBbKlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763564751; c=relaxed/simple;
	bh=efvmwvyH51DRySXYvY+dRFfd2BHtm2P6hLkC1+Fl7/U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kk7NzGPxu7BiIi+wjg9QlO+Okj2b47NEk3lrqipWz8Ufa6CxfKpzGC7OKGOiQ+CzojfdAN6ESnn/1Mojm2T3SXFW+1mC6GFYy6XFl3F7Ayzyizq/3loWcs0DE4rCk7r1KDd4JVhNOem9vfiq4+Uy3hh031P7ReLaweWi+PgFLHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YHUUReFr; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id BFE941A1BBC;
	Wed, 19 Nov 2025 15:05:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 94A1E60699;
	Wed, 19 Nov 2025 15:05:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6EE2A10371A72;
	Wed, 19 Nov 2025 16:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763564746; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=uP7CKXUyQl6rzRBAXqJUK1ve75kUt2tdvnwbigkav/k=;
	b=YHUUReFrys4JSwmM6rrTCmyNmvQxORzHzmUkZRzu8v5XgrKAYqOf3YULOH0modRVPaDo1r
	AJfxOq+j/K/RhJb6btQ8ZU7VN8K5rpTU6iCSnHkV0PUoiGRvsh+MPb60MGOXjMKThsC5g+
	99vWYMdMCLr9S+vjpY6XMmN8LkqnkBUn3KgtJf85pjMgAppSw0bJ+x0ABL7pqX5nlYZOHE
	Ktx3UEtuZV8vZ14sBxTUFvjRn+FEav7c8Loqq0BM89LS8qth7gS4HrWZginsE8NLIFvULG
	x1k31LyHfdSWbnTk8dCp2HAOTCNZEwMt+2chhbkq1NXxCwOW8VBj2JrK2xNI+A==
From: =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
Date: Wed, 19 Nov 2025 16:05:30 +0100
Subject: [PATCH v3 1/7] dt-bindings: i2c: dw: Add Mobileye I2C controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251119-i2c-dw-v3-1-bc4bc2a2cbac@bootlin.com>
References: <20251119-i2c-dw-v3-0-bc4bc2a2cbac@bootlin.com>
In-Reply-To: <20251119-i2c-dw-v3-0-bc4bc2a2cbac@bootlin.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, 
 Mika Westerberg <mika.westerberg@linux.intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Jan Dabros <jsd@semihalf.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 Dmitry Guzman <dmitry.guzman@mobileye.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rt-devel@lists.linux.dev, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Add compatible string for the DesignWare-based I2C controllers present
in Mobileye Eyeq6Lplus SoC, with a fallback to the default compatible.
The same controllers are also present in the EyeQ7H, so add a compatible
for those with a fallback to the Eyeq6Lplus compatible.

Signed-off-by: Benoît Monin <benoit.monin@bootlin.com>
---
 Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml b/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml
index d904191bb0c6..914200188809 100644
--- a/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml
@@ -34,8 +34,15 @@ properties:
           - const: snps,designware-i2c
       - description: Baikal-T1 SoC System I2C controller
         const: baikal,bt1-sys-i2c
+      - description: Mobileye EyeQ DesignWare I2C controller
+        items:
+          - enum:
+              - mobileye,eyeq7h-i2c
+          - const: mobileye,eyeq6lplus-i2c
+          - const: snps,designware-i2c
       - items:
           - enum:
+              - mobileye,eyeq6lplus-i2c
               - mscc,ocelot-i2c
               - sophgo,sg2044-i2c
               - thead,th1520-i2c

-- 
2.51.1


