Return-Path: <devicetree+bounces-255088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA37D1FA64
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:14:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BC31C300AAFF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D3931A542;
	Wed, 14 Jan 2026 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L2Aet/NC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6431A31960D
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403664; cv=none; b=uyp5AzwJRUT2hehDAIufoBidWK/gU5xBjOczHTxBCeaOTk8N/5k1txMFKbbl5ut+2OV3A+wGtuBGWQC9j5Xorm2P8J+3usLMuJIDFV9ChA3Bhze0QNLvufxoBJJgnY0xRvSKjKEDjyCqcgXX08BImXpoUdnifWPrwkTPIKJ28iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403664; c=relaxed/simple;
	bh=i1sxNWay3OrLSO3MFPSI+TEryrt2fH9KJo4+hr4Oujo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dse6nbcVJxxPAclWbHq9Fq23j8YkU/C18y19fCP5ttGD+CcvF36jDL+bTRrDebXC57vcGfaYWXBQbqC6S+YiizDPDmZzNcqLZ9zTEs3atn1spYWzc7N0fsqgLLi0015qxKnaq6Z+EoSoqA7pRve2BCEARv5FqHRiuSje5AXQ+fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L2Aet/NC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso81442465e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768403662; x=1769008462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1b8JXi4AZ9AeOAP9TFfNlUgwjeng9UHzVaIg37xeoa0=;
        b=L2Aet/NCnTLdq96q8bIc8VeauRAU8UeZYJoRZEtl4Je0AKsqv5BdI2kEk4+UuQYPxr
         JYqiWU61wQfQZoEwplAZ0LFgONlo/zVSPpMlUNjqr5Z5H9S31YOgUY0OS+cmuiQAQPXN
         Xrrv7F3nZ5TuDCH2keAKsuhMgmXaXf1RWu6mcVDzXF0DcnUWRe4shNIdlzAZLAK87m2q
         YFddBaMybE5AQqo/pQXUc5EaChEX4Gatfg5hd1gEkplBz73Rqs7nlaim32/1he5H3GOx
         CDWVg4WS0vkW0OHE11m9DNXoLNEBhoVou9fZ35RU5MX4SlHiWZ93wruNLC+ANCQYNEVR
         o3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403662; x=1769008462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1b8JXi4AZ9AeOAP9TFfNlUgwjeng9UHzVaIg37xeoa0=;
        b=lL0wdcn9iznDkEQrBIEJfcz6jSiCfRh2WhHdYn6rEIK+5wYrjT8q2FIKQq0q5DhMxD
         thBePQbgv3aJ/AOmFHHO6ymVf4tQRXw3MaMV8p0V/hrloOjVGZETulTMzIrzZ/f+DClv
         WrrN4Xkf6cQYaq724/1wnf0pu8hVjsGOXdtcCBu8xtKV/+CI9dzyyTbbj2NRY14GoCNe
         Kh4u+eIqXxCQM5JTXK9YVE8Yb8xPYstpwqU9Loep7yUZ6C3yC2MWmayLMwK/qRYrHjPx
         ioCxnw5VI8ppn/4jMiIPVPFpPzGYuOovHerZ/bRuCxUyuniTWrbPV6rb+puj+rgz0ko6
         qOPg==
X-Forwarded-Encrypted: i=1; AJvYcCU/p7CzLYRY9DaealPviJh96xscVKCIL6WDYEcnrru0SLCojQHOEDLSWdo5sskTXArTUmdPkVfo13uA@vger.kernel.org
X-Gm-Message-State: AOJu0YwCu917Rs0RvzQkwVyiU9UOQBZFZ/ZkjE9z/TCt4WtpRXIFykDW
	GpEC2TIdD6/Fs6pAdrx1DzGFrnMcCjwtqLalJFAuhJHr1hd8m4tNodgG4zmtRg==
X-Gm-Gg: AY/fxX46dz/LROUyez5qjwLVXszU0aWcqTjNZqA4aZNy2sNgVy9VSD1KasH9bJbWrRx
	snHlnvKy4fzvuP6TzpWGAwujrowqOihdUpiZHHQ9McS888AGBqZaU+ZG7kPVZTVJYsoYHCyaNdw
	5rwlkupxyVvuA+VU5UP7mSaabQrgY8n9fxENsomxeAS8cLmOYPODG/DzHSXZ9sCaB9PDMmsAq3y
	tfR6zvh7KXuPoxEUDs89f6bntfdHe2gM1m9rmlTHcXbbVCQS2SW1bSe5SJ74FucuLJCluAgZlQ8
	0DKeM7s52Pj30aM6xxvsQhgf7OvDjxvW9vEloMgKkVXGl6PfigT6w8I5YicpPd5eghuWMy3Vogi
	voIyCc7Qun3sMqubiLZbQIK2rKlbRFDZ5J7Nvnr1szji+EI0rWiDkKnDq7Y2StrHWxHJBSC7SS9
	x8jwnJJowxQzrGHhun6bl8UqbZ7Wq7svjLfM77yWbqdC1PVDvgFJmtzIeBtBmtiaf7ritSbPUH0
	2Q=
X-Received: by 2002:a05:600c:4f56:b0:46e:4b79:551 with SMTP id 5b1f17b1804b1-47ee33993eemr47277185e9.31.1768403661606;
        Wed, 14 Jan 2026 07:14:21 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee55d4279sm33909775e9.8.2026.01.14.07.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:14:20 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v5 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
Date: Wed, 14 Jan 2026 15:13:10 +0000
Message-ID: <20260114151328.3827992-2-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260114151328.3827992-1-shorne@gmail.com>
References: <20260114151328.3827992-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In commit f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible
string for opencores,gpio") we marked opencores,gpio to be allowed with
brcm,bcm6345-gpio. This was wrong, opencores,gpio is not hardware
equivalent to brcm,bcm6345-gpio. It has a different register map and
is 8-bit vs braodcom which is 32-bit.  Change opencores,gpio to be a
separate compatible string for MMIO GPIO.

Fixes: f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
Signed-off-by: Stafford Horne <shorne@gmail.com>
---
Since v4:
 - New patch.
 - Rebased old patch and rewrote commit message.

 .../devicetree/bindings/gpio/gpio-mmio.yaml      | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index 7ee40b9bc562..a8823ca65e78 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -18,16 +18,12 @@ description:
 
 properties:
   compatible:
-    oneOf:
-      - enum:
-          - brcm,bcm6345-gpio
-          - ni,169445-nand-gpio
-          - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
-          - intel,ixp4xx-expansion-bus-mmio-gpio
-      - items:
-          - enum:
-              - opencores,gpio
-          - const: brcm,bcm6345-gpio
+    enum:
+      - brcm,bcm6345-gpio
+      - ni,169445-nand-gpio
+      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
+      - intel,ixp4xx-expansion-bus-mmio-gpio
+      - opencores,gpio
 
   big-endian: true
 
-- 
2.51.0


