Return-Path: <devicetree+bounces-254626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28380D1A283
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E45230A32FE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BF3255F2C;
	Tue, 13 Jan 2026 16:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WHVkvVZp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B64221F13
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320916; cv=none; b=GGMQvKR+Xk9giBEQ78GS62AvfKmM2z3a+OSl03odYxDonpwuA+QMrw7oG95ld9vzY0TJqnvRe1GNO7CyfG01rzmBNZOjS19jhihvYHPmBKGdlomL7aO6JgKsK1Ts3lBwcbcQuclQilVaom2Gw25UslCxOLj+k4n4LghqZfEUmy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320916; c=relaxed/simple;
	bh=RA2MpMFiQcW8woGky10vbDaNAxzlqZLD9Qto0cY6qXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YAdyVlrKglzWgzv3Iomj8XjcMQOjzwm1U1vFvnLbux0IkqroNzjnEkCRv17Bgz6HzKXFfxpDO53O9MYVVHq5fx6QUCBNfkruuE2qenQWFRLacjH008HNaieVRFsT6r+QAMbFu7ZEgzNzf2jTLpQfmLFJ2dQrsgldsZrVqSbBSmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WHVkvVZp; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so42937555e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320913; x=1768925713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFO76MpaV7TKA3kGHuuWwQjUOsm9CcTqHJpQLHw5X70=;
        b=WHVkvVZp2tFn5fN3VtseiKJ4MUg2bBz3rTLusO4W+lEFKP2Yx1ZXpSxk0l+3Tts4l0
         kgrgL4f5xvg8bgqt1ss7OxTbRg0kK2MA2idmBMM9ZWlsmOHJxGoHA/0cLrQXjCF4BPTZ
         lgJ3LtWMfzrt3z0/2dHULeRYcZEW2cEIAHXahwm6H/maf7DBqXm//hszdUPIlHjU6uHg
         f5YUetVj3ocJ95zdOMcwbApYj1KwOjx2Fs8DASZ+SS3MSL4PuQT469C5pNh1yuFB2DNM
         FcbB9Q9Seq79gCJPeCn+IqSo4At3FSu8CeBe6yn9yAXFdB6yLtxyCjY8f6suGJF0sK0B
         udCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320913; x=1768925713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iFO76MpaV7TKA3kGHuuWwQjUOsm9CcTqHJpQLHw5X70=;
        b=r30X7T2MhwkjM/W1IPGE6PW5G9OOD89jGuPxEy4/M3vBny8Rw2B+e2ed0+lJgqqbah
         YXgnvyh9pJlYcgcelMC0zRwvUOZvuGrBFSsqaNhoj9oIHGZlZpQVuU9ZsFKNWsrCDI94
         VfbITXwUHb90x4frWunMTyHGjOEa7qaQw33HLad9eFUj/Jgc0V7UXZy2F0I9cSi4OQKf
         4WJJJ0zcfT9mtJem4XUU4nus6dJE9MSEYt2jFUAFuEpsZvvOwE8iwOqkNVnXLcO+EXoa
         H0kPA1j6TwE9WtQEKpelhuvu9dt4bgcXSIDch4IohpIByz8pFzDf5mooW8/X2rF/uEFJ
         vgpw==
X-Forwarded-Encrypted: i=1; AJvYcCUK6Sc83TmH+kx2DMNzrzUv9P7SbfE+LS8lQCnkpWlNOMxEWyDd7NUnfcPQqS32QmPAmwvbrvqhgM+Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzFU3N7PgGQtQji7TeXThe5I9Bj+t9ZjN9pU/8KRIiX39MaxiqX
	9qeL8zs9BolrNRd6OHrOkmlIkoLkxYzDjc9usD1XuuIHkn9FGrSFXoHe
X-Gm-Gg: AY/fxX6Vk/8tf2jGCBG6gGLgAGWK28e7NMKeRnK9TrSXg9RF1Ao7yZ9IqHP4yHKo98f
	I3iD0oZA9/QQC/14faC7L9w4CNkjI06AjkzaAW2trgRoLOtEGyAyq6HUorRlppWuG2clP1nGgnc
	QeqUx3dG6IDcKB8fTKw8WvpfIu5CBUWEE1h8aIevl0oRJYZlShW0hUg0JgWDsyBvchErWG8YFZG
	6gq1XUteSVGKoFy5/F37IIviHDdv1LGJmU5KGLre/uUt2gBgTNaWpE4LKokIItyqB/f4+0ysk9x
	0Njun1rrCcAwMw95cBNooYyOKyQRVpXq8wpLzwtE4XtDYvYSESmYybdC5wC7N6jWKue/BZSL8EH
	tYoLkpKLGUWCaSuVjRTasC703ejYFv6pdJdlXvqtZocvG8hT5RC6lpunBtaOf1riZpykfyV1z7H
	IrpoLh7Cyg41PJh5j4waJ5MssToUvtPTDn7zv+h3sNxcrXn7mnM2lB4rA4O+s+PT//
X-Google-Smtp-Source: AGHT+IHTmM9+1s27vLw2S1CrS8QJkz3b9Itz6K3HmIo/KuWYYIxo4nw1Xc0bBi5bp063eE8Hi+T2eQ==
X-Received: by 2002:a05:600c:890e:b0:479:3a88:de5d with SMTP id 5b1f17b1804b1-47d8f284042mr148197935e9.36.1768320912845;
        Tue, 13 Jan 2026 08:15:12 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f4184e1sm403936465e9.4.2026.01.13.08.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:10 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v4 1/6] dt-bindings: gpio-mmio: Add opencores GPIO
Date: Tue, 13 Jan 2026 16:11:34 +0000
Message-ID: <20260113161152.3688309-2-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113161152.3688309-1-shorne@gmail.com>
References: <20260113161152.3688309-1-shorne@gmail.com>
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
Reviewed-by: Linus Walleij <linusw@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Since v3:
 - Removed example.
 - Re-order this patch to be before adding compatible string to driver as per
   device tree binding patch rules.
 - Add Reviewed-by's.
Since v2:
 - Fixup (replace) patch to simply add opencores,gpio and add an example.
   (It was incorrect to specifying opencores,gpio with brcm,bcm6345-gpio
    as opencores,gpio is not the same hardware, its 8-bit vs 32-bit)
Since v1:
 - Fix schema to actually match the example.

 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index ee5d5d25ae82..a8823ca65e78 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -23,6 +23,7 @@ properties:
       - ni,169445-nand-gpio
       - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
       - intel,ixp4xx-expansion-bus-mmio-gpio
+      - opencores,gpio
 
   big-endian: true
 
-- 
2.51.0


