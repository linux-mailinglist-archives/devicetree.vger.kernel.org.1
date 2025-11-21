Return-Path: <devicetree+bounces-241157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 834D2C7A68C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 48F8E4E2C24
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2EBE33D6E2;
	Fri, 21 Nov 2025 14:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MzSVmZXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3EA2C15A8
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737162; cv=none; b=BaSrvRhUz13fQgr+lD9pIVlcyf/yYpuGQsWBXD7FtMuGMlaLnEep2Y/Ikbtc6fPN+IxG4K6KsB1ZsbcNb59e0anxHLIBbFve8GgKVvy4XIyA+AcdKE+tXaEOsTzDumOxX/rarZh97gixWHDIKpougod2nJr4KOK8R9ZTnshtfP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737162; c=relaxed/simple;
	bh=9YhlRXNK/AS0U6vPrcc+iqniROeSUye2gI5ifHJfW/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E/sHDommsPWenAjrlOPrTI7DfjB+PSc8UIKY701OW0RBP/QoX8pQw7rZ5LZzncWumT23ETGSCRoD22KNk6oBcjW4fCZcgpj/CNuiRigFW1BNU4YL20dti9FhB2mJJpY/Kq2i8ZoLNogGECAOh5qKUuLrJ9chZLlBgwVusUr4lF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MzSVmZXC; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8b29ff9d18cso206827185a.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763737157; x=1764341957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8ea4pMOQnhPykgGqMiIn66ht6L9UZRItA8Bf1WZ4Jg=;
        b=MzSVmZXCXIRXWWYdnrOA/NJqPY3tg5EYOUbQKZ3uk6DuyY2iglU4dm3vLYvmh7K9OA
         0MRDG1cQbAKK7egRpdDKZglmJP10HtMlUBXDNLnRK0ejMwU09cNvQmUBDkzFmXZdcMp7
         /z3dkbVejM40F67Ewru1WW/ZohP8kwkVQG+lWn88Yp2YDKBGGhexwTXXuIuqjqn8wX6p
         r//9Mca2IcVqoaPvYwN8PsSbJJD6RhCVnFtmuF+fuXI2cdZwxWHRq9CHaY1CTUgYCaMc
         dVJMiQrsaVyupAZal6fH+yusq/QAe8b5Aju1mSchD5z8jj+LL1KSgpfTk6sWP+VAOQ1Y
         m3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737157; x=1764341957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M8ea4pMOQnhPykgGqMiIn66ht6L9UZRItA8Bf1WZ4Jg=;
        b=Espgr+glMUTvJn4UM35z86Jn4GMb/80RnZqtNYt/7YtuxVlRjG9FmKz9s54Q56yEFI
         c+hiGPsJb0TihQS+eCZ9d+zsl6jc8Z4CnZLGjDGaVER+tGW0BLdVoFWZV8BjIpYp6zx6
         m27MN1guPZ8CsA3df2UaV5DF9p4PQUczRk7Nx2SW7QIcElAo+SizJObfBwIILG8lRuMa
         +E/q3F9R4xT3h0xKU1N06qpzGxnQH+remdudNvnKv6+bzpuans4UdQjNlw4y0yfgzU5B
         iVdwufAywHkKJf4UIK3qYj3Be2fWi8QJr3OHIz1ZlpbhdPCVh0g1TGNaMTFRbD2yifKS
         ov4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX1Nb82+e5SkemzDHt50aluOd9m8KLo/OImSGWtjFfFNIJDpCwxNOOGg2GgPnKMHEOxbx9ZamboH/Gy@vger.kernel.org
X-Gm-Message-State: AOJu0YwLRlrDoCrvWRaBYBJ4r2+poIrCBmgUCxyT3RN2hPzm1xnN5kXO
	vnzK+X0pOnNfhIemqZSzlEjy1YSNS9RL+tSPEBN1IPxBHQdP1rhK1TPi
X-Gm-Gg: ASbGncvoDPjrIrdkwDsCav11WvDiFSikrkn44Pj93o3S8pS1tB8UXrQcM8FLs+PDQEG
	5X2M2UZ4PukjTNLWFBfwak6X2XZs55+PAYhbUhWEhSc7bpeaw3efuykObIFlEnWzke9qUfD2CMg
	hTX7MyZ7tzOh6NuBY3ktFW00ZrnR0XTHa4g5QGyQ19I54A4/KevvMQqXks+3d6j35XyuIbZlc5R
	qlCYjH7dhilPwgoluvthHLVCnxZmZ4AE2lsTop8sFn6wPl5Xt09bETSeGLS4vuBJfmkfnCGqQAT
	i0syIKiijnLkUt+42xKY3ufViZH0osq4a1r8uyZfr0aOm5Sf/xmMFP8a5w+AaRduXX0CB/OvxzZ
	IZPHTYzct2TyImXEKIATpYhiQXYYl1Oj3tek7kJYLlzJO45nKyXexd1RqGSK64VMLliasbn3hMJ
	40+yF7CD/otB+2z4q6mSMD+twhwObJwAN8564+mDCFpuWM/KLxr9+jOk3H
X-Google-Smtp-Source: AGHT+IGCuldQWb2AEu8tnF23ocVRpmUPhz8HWemssH2EO8+OXTAE32Y7Ibmho+V21o8Bh6+9GtDicw==
X-Received: by 2002:a05:620a:4593:b0:8b2:74e5:b13 with SMTP id af79cd13be357-8b33d1d1118mr302903085a.32.1763737157429;
        Fri, 21 Nov 2025 06:59:17 -0800 (PST)
Received: from localhost (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3295c3306sm383882685a.31.2025.11.21.06.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 06:59:17 -0800 (PST)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Lessard?= <jefflessard3@gmail.com>
To: Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 2/7] dt-bindings: leds: add default-brightness property to common.yaml
Date: Fri, 21 Nov 2025 09:59:02 -0500
Message-ID: <20251121145911.176033-3-jefflessard3@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121145911.176033-1-jefflessard3@gmail.com>
References: <20251121145911.176033-1-jefflessard3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add default-brightness property to leds/common.yaml to establish a single
canonical definition for LED brightness initialization.

The property is currently defined locally in leds/leds-pwm.yaml and is
needed by auxdisplay/titanmec,tm16xx.yaml. Properties should be defined
in only one location to avoid type inconsistencies across bindings.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Jean-François Lessard <jefflessard3@gmail.com>
---
 Documentation/devicetree/bindings/leds/common.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 274f83288a92..f4e44b33f56d 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -173,6 +173,12 @@ properties:
       led-max-microamp.
     $ref: /schemas/types.yaml#/definitions/uint32
 
+  default-brightness:
+    description:
+      Brightness to be set if LED's default state is on. Used only during
+      initialization. If the option is not set then max brightness is used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
   panic-indicator:
     description:
       This property specifies that the LED should be used, if at all possible,
-- 
2.43.0


