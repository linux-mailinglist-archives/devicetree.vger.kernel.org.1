Return-Path: <devicetree+bounces-253303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F89AD0A7BF
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3062A30A50D6
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 014B335CB8B;
	Fri,  9 Jan 2026 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T22xqPjo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D97435BDAF
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767966273; cv=none; b=hzlHXl8sYsIs6oWMp+C4sVYYVav2vd6kKVQAEH89SiO3oxE20+0AZ8bUDkI35Hk6YRjlI+rJuPZKVzGE/LyNY03fO3BepSOJZWes2+1F3f5ZbEA1euRK2tmpB8MAnDmEFPBrVu3o9KBr3sSzGZZmJA6YZH2LQB0zLMG9f3HK77c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767966273; c=relaxed/simple;
	bh=1LQ7pgQADLkv3Q2JfJ0YKNTNCFMPBPWWQX+7eb5Jfpc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ngaSDNKRISl2kQYtmc5ud8KaTZI4oiI10Egh7iQRsR+R6Xx205+pB0Jwkec91AKMD6Eh+XX2QcpPSpOHCtnczryxyBoVYeHSgh0DmDpNnDEhjEQSG4vKWxzpKMtLLmwBzpB6d+iA2x1p+O3oKGr9ctOi9wedNjPQ6AQjgj88xag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T22xqPjo; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-432d2c7dd52so1280204f8f.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767966269; x=1768571069; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SvvQmiFOUMr/XdsMeV6yI6szLxAkwyU8Gztse0HmU4Y=;
        b=T22xqPjoUng3R0/lbVqftLHXYgAkCfQn9SJwHiC5fAy1/qCs7D450jYCl3UW1zjeHy
         RZ9JTxonquhy3i+wQZJQ9/ndBGBuS2jSRINlJLj5Bj/2RkrfVcqs31laj+PDzfnESoBq
         FUs3irdpEZ4dSCGtLxTfOGfrasm6ICBTK9o7C8kD9g8qSYj3bdFb3yf0xJWYvdDjS3ao
         IhZMadggx/q87TczZtxQIHGcBDZ89GR+b9y3zLCTbYZSJHDIeBqTCES3yLa+ISRS0waH
         47Vf/ThVhpohJLwOsNO+HXGHZ4wPv+vP50ahkaufIw1ZwpHpuC3nk/RViYvjj6KSfm9k
         XzGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767966269; x=1768571069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SvvQmiFOUMr/XdsMeV6yI6szLxAkwyU8Gztse0HmU4Y=;
        b=b3lLy8BFmWYtWU5DNDnMk20CITadnBwpYc249qf1WMI8NGEyVoxW2dXcpc9xTfAUCb
         i8zXkHWMfxNQfKEWoTS9dHVwscu50x1lukxk3/fMlJsn7tiDD6KEPTtHIZ/qPJh3p0h1
         CdoTztSJ7pZjpy8VzSDvfAbDU3pD25PL8Z0GqrzBgWbNaw4n6YRyLPXRDDhYuYo5f8qj
         kqaeaSGr6YaT+dmGXjS0wkAMRrxY/p0NgT3KSVFDKOf7bwP0S2MCR+UcykLrZNQncVF2
         Gifw66yTnsoqMDaFiF7QUyzb0ttP4+QPnJhuuI1a5J/iQPsxJ8hvaT7RKzdK7aR47LUe
         FKcg==
X-Forwarded-Encrypted: i=1; AJvYcCVQIkERxqJ0BjBnu8Pr7Nf/wEK7U9tjrEaOMShrzzpU0sXrnfbwmNxRP5zbBAEl0+vhFL+Kc/EcRSaT@vger.kernel.org
X-Gm-Message-State: AOJu0YxXd7pWlpaSWXLJOGZPWjjFdVPlchFRA9+ONdqWKws7/37kgW8F
	YOWJjZt6YttodfoIzF+nR7crcZ0u73yRjbs49r9QEtO5O1fkIYe/r/HB
X-Gm-Gg: AY/fxX6eNiqDYY+HeBg1AXpjxPhUU7y8G5skju7jsShlh8kWUX0rA/4s4tr0VcD12PJ
	4ecQ0/Td2Yg6Vv80phkmIGZkA8guiiW3JUM747qzAtfRRVDNTl3KCEqOtuEMyg8rwOlOSFTOuTw
	TwB5XfAvUkh4oZU5FgP1bSfgyqRaIeVGa7NbcGRZdwS7SXSiXpnzO1Pyp2braEjle+v/nKo61Mt
	D6215uLdMIUBp36ICFOA4F/koPq6/Lk60UoUNyQQu+5dk3Hm6VW6rJokdrBAuS9OB2SuTJZNvjZ
	mTtH9z7Hfc0cJEOoUU93quIJleGgCtkFYv/hsmNRsAS4cNkVccWd0520+yHacUsJo2dLaz8MF9t
	YOzdURffBEdb2+5T4VER4RLH39Q9qsaC11z4b2DU24RXGYj/56FqK4m0WSUQpcFe8g+yjN9hasI
	L7om6ZnonXwpezKir1NCmugwNnLncdZHzxPSNkGpB2Gj0DQUgfK7maZhIr4D96wKku+fSmIF6Qw
	OE=
X-Google-Smtp-Source: AGHT+IEcyqPvQXXgSb8upUybhhoHWlS++tR42ZMn0J3rAkpHIq7i7iKiZeRqR+4mcCGlOkEYTV7yLA==
X-Received: by 2002:a05:6000:420f:b0:430:fc0f:8f9f with SMTP id ffacd0b85a97d-432c37982f5mr11382930f8f.37.1767966268426;
        Fri, 09 Jan 2026 05:44:28 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe83bsm22896047f8f.38.2026.01.09.05.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:44:27 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/6] dt-bindings: gpio-mmio: Add opencores GPIO
Date: Fri,  9 Jan 2026 13:43:53 +0000
Message-ID: <20260109134409.2153333-3-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260109134409.2153333-1-shorne@gmail.com>
References: <20260109134409.2153333-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a device tree binding for the opencores GPIO controller.

On FPGA Development boards with GPIOs the OpenRISC architecture uses the
opencores gpio verilog rtl which is compatible with the MMIO GPIO driver.

Link: https://opencores.org/projects/gpio
Signed-off-by: Stafford Horne <shorne@gmail.com>
---
Since v2:
 - Fixup patch to simply add opencores,gpio and add an example.
Since v1:
 - Fix schema to actually match the example.

 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index ee5d5d25ae82..d44edc181e0a 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -23,6 +23,7 @@ properties:
       - ni,169445-nand-gpio
       - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
       - intel,ixp4xx-expansion-bus-mmio-gpio
+      - opencores,gpio
 
   big-endian: true
 
@@ -160,3 +161,11 @@ examples:
             intel,ixp4xx-eb-write-enable = <1>;
         };
     };
+
+    gpio@91000000 {
+        compatible = "opencores,gpio";
+        reg = <0x91000000 0x1>, <0x91000001 0x1>;
+        reg-names = "dat", "dirout";
+        gpio-controller;
+        #gpio-cells = <2>;
+    };
-- 
2.51.0


