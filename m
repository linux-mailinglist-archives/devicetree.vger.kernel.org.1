Return-Path: <devicetree+bounces-264808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MmkJ2TPjGnbtQAAu9opvQ
	(envelope-from <devicetree+bounces-264808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:50:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C1E126F14
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BF9983005598
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 18:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE67B3542D8;
	Wed, 11 Feb 2026 18:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dnu/UZXU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5769E352F8B
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770835805; cv=none; b=Oj46IEho/IrncLI09GuTzVylDmpv5uPKbB06DzSw3BtWVaYFeDqKL/ybY08hDTQU++zf9VvuS8T15uYLZG+o+R+zTPenz/ZRhsAGBtJHMnTI8depUQqg52XPAWSjYn32vV8PuvYN2T5Cjz9rStfDrBwKzOwd2uxQgLC5totmvAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770835805; c=relaxed/simple;
	bh=hZat0I9VIdWWHDsvicQ3Z9KpzrhEFn0VJe8SEXYtBso=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pL1KzkqcmmiRsuWpN49syhiLt6/AkuWA3O6DOjuWxSH/enZHLE5TlhVk/wj4BQRdB63+1+tB733yYHYQgZausjHSUdcwEXuelmeVwmFwS+/knKfXoNOTiyB7U+xd1UNOP8eczwYHEUsLJ8TuFrr+erqDRXNXFELRX8+BgTz6l+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dnu/UZXU; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-48068127f00so23133395e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770835802; x=1771440602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bwu2nMaud2Bbjzz+z2shZFKs0C47ZRHqGTyVHyxnk5Q=;
        b=dnu/UZXUWPC6TQCnhVhBYrON9WhRL4ZIOmqicXoFn9G2qjh0MjAkxU6Xh60XC9/LRb
         6uktgDEQ5zTuO1XttEbnegixhKIDtACJ60BobD5pjsk4R8+G9cELo/e210mW0HJbAqnq
         IlYsyf5TquwAb8FilaMFMKRfaFpAT+ynUGexraslNd3Wz58bmWghlPkJXfC1A2yJnlWt
         zMAiF61zbdGa31eWcKYUIvhyN5mYNGm5R9Ll3eZv8EsCp1+UNHXuij7ZjGnOufQOwMIt
         4mdkuus1L1vnpaxhOtRsHAVz/sMCJJo53PEEF35sUBACO4Jg8eckIexC1+vnUzl55Dpr
         A3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770835802; x=1771440602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bwu2nMaud2Bbjzz+z2shZFKs0C47ZRHqGTyVHyxnk5Q=;
        b=dnzhJHqyke3p9ASQNhRuc4LPH4t7jha+DJeXmq3uaAlIBtiAFTWUXYY86HXbyxwS60
         a2OM3vVqmZvHG/ahWlE+7DFf8gvpOMWjUYOuc8FdpG/CTLdpjfDD4s9xWx4HDlGhklEo
         VTnQeOV5Axo/5Eg+XrchuYFTHFqcBVfxvdkpFTFlinGLy3qg58axB1whwlyfGsxEPLIH
         OaDR1sne0NScVXvW78NpDdNZ3W344WKAKKRArWgPswRhHZx4my9FV/QJ7gOlXj5NocS+
         wscy7iB8ZJuCFZYyE6xjj3rO8TDyBzVe45pQ/yGJhyhyL3pP9g9jWfgbJys7vtoNNqJJ
         9omA==
X-Forwarded-Encrypted: i=1; AJvYcCXD3vqPhSAXzFkfVCWpGAthgQkZwHeMNeQKE9NehAEu6gHMdRQmuTzxZ3E0seshVyQDko+Ts7ukui3R@vger.kernel.org
X-Gm-Message-State: AOJu0YzxnjoBo+af4RBjh0IHuS3tfEQvb0RtjpFaC7Aa/7aX0onuCnSd
	x4RWEzvLoe0uvO/i1QUWaXR4nbWl09gd5sosgYy5rMsnZG34a8YTsk10
X-Gm-Gg: AZuq6aLaFJCAfJhr1sgNwLdNoP++QI/cZ761g3C6NojFIo1cbW/AJPMmo7IYxmcz2sN
	dOLJnzxABBFiMDWys7IVi8rkkVA63fQaiZdM03wKMgwYKzCfGgPo/nna+nxn9DwrqwVo/HcwnHG
	9YaDVDnPx2UOXdc8fnsztU4Dxvupt3maWpcsep0lZsMkwFnHiqr2YCDxYuj3MNW3Z9tR/xhRcJN
	bWMsHfBwIHnZ/BDFK8fbEyhtvY0Dsm75Ec14dDFWz4V1WMxLUd4w9jjKmU8qB1v3bTAjZMOm4is
	lKh7qldaI9+Ve0xXkOd5WdVlrkMyTbpOWaezJ2D15yZYaetIvOAnsEjzDOXhVrq5d8sgQRZO9tL
	qUHIJR3aZTAuLL73th78+lYci7qnSCKqjL+niG5uUZkwQC+LN5/9LYFcjfokZM4rLv6KbtKTkqm
	gKay18l6RwJX5X
X-Received: by 2002:a05:600c:4e93:b0:480:699c:abe9 with SMTP id 5b1f17b1804b1-48365822c6emr1965835e9.37.1770835801734;
        Wed, 11 Feb 2026 10:50:01 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm93175855e9.6.2026.02.11.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 10:50:01 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: mfd: maxim,max77686: document optional RTC address
Date: Wed, 11 Feb 2026 20:49:40 +0200
Message-ID: <20260211184941.6756-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260211184941.6756-1-clamor95@gmail.com>
References: <20260211184941.6756-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264808-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.9:email]
X-Rspamd-Queue-Id: 02C1E126F14
X-Rspamd-Action: no action

Document an optional second I2C address for the PMIC's RTC device, to be
used if the RTC is located at a non-default I2C address

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/mfd/maxim,max77686.yaml   | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
index c13d51e462ba..2d4aad8feaeb 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
@@ -32,7 +32,17 @@ properties:
     maxItems: 1
 
   reg:
-    maxItems: 1
+    description:
+      Can contain an optional second I2C address pointing to the PMIC's
+      RTC device. If no RTC address is provided, a default address specific
+      to this PMIC will be used.
+    minItems: 1
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: pmic
+      - const: rtc
 
   voltage-regulators:
     $ref: /schemas/regulator/maxim,max77686.yaml
@@ -59,7 +69,8 @@ examples:
 
         max77686: pmic@9 {
             compatible = "maxim,max77686";
-            reg = <0x09>;
+            reg = <0x09>, <0x06>;
+            reg-names = "pmic", "rtc";
 
             interrupt-parent = <&gpx0>;
             interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-- 
2.51.0


