Return-Path: <devicetree+bounces-105990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 003C6988C7A
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 00:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 925DBB214D3
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 22:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072F61891A9;
	Fri, 27 Sep 2024 22:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v5CMLCZ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CFF18EFCD
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 22:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727476196; cv=none; b=NjbToMYkU9A52ZzMuZajesZYbxQ/UJgiFtQy1KggOtkvy6b7VLX7RSdeRfaflaNBZbXrYIm/mhw2+PldL9hOKDERiD6wJWkTnAMYLYi+fo7iAwD4yik6zHukSqHtweak6b8LLrUzVIkhMf6NxChSLMj2gA1zq5cLfYe6TWqa5BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727476196; c=relaxed/simple;
	bh=FmGcDe1p/XryRMot0XsEfBe1wWBOoapRPT+K+lRDZVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PCfJSEYHf21W6EFsOuU1Sj0TiQt82WbJ7xmHkRvnW2s1W1/5WqnBb/kz8d05mKv/rHAbcuOkaruDhE7iqO46VaHt7+wcwmVPmhsRiIdewi5TTJ0d0HhOEH6T8bfDGWoUdv8+4oxb5E64YzRspuQEleRJ78PQbPUCX3IGXUjRhR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v5CMLCZ9; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5c5b9d2195eso3095622a12.1
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 15:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727476194; x=1728080994; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3LUVzEQIz/A5tXIUDtOQ9ez96BC3u8YRQCjYb/XLh+M=;
        b=v5CMLCZ96CVN8GhX801mFuZAszZjsM7C5Gj7zP9KftndCbjfPU9pFzBjE3tYiNdVRz
         pwMgsrToxhh80kf+z/cb/INye2ByscwHVbzgXhFXahp7g7ZdWjmSxfCCtLC2iLxAG7Ym
         49UfpYluO0zqE0HxVVoCu4DDCXKG0MvH8IIW8qGDQ96zPvK/aRAykCmWeipPr1VdXOLb
         YRNQOZb2Nsp9owJg9WwY+KP1dzpuofHJbrTdW/hisGaWSwh7kuQjssbaOfbKZdmxSXUX
         xFp06pUYLxr/7hEzpQ5Trzqf/XLoHuG8NpZHc8Np7Al424UdebCF5XvDYSr1bF0PC6HO
         ocSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727476194; x=1728080994;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3LUVzEQIz/A5tXIUDtOQ9ez96BC3u8YRQCjYb/XLh+M=;
        b=d2MuvKtg5OxneHZ7+5bBtcN+9kSWII+VaoN7eykPqYsWcrTGfoNURKaAGgv5PEP4lw
         B22M+Gez2IwpRURJkdk2sLXSE5Am0NXNti1VlK++yQl7WZYqPFyokphTltSwHAP53Beq
         BSri3iXTR+0EBhxeuqhjdZkQWSGWx9HwyFGIHD5dOrDKLCvbaLnzh4QL6BL7igEQTv3Z
         Y36D+hgB6MVPiViOWxzvZUwX87NUxvpEA28FNsnEBfDMEZH5TyXt2FmBpEqk3e3V0qUe
         slvWhNDP9VpAIFpzAy5GoYvdUEKrhIWdOrWd4lSZHPz7e/tHeeg1Hnln0yfaLtlpnQg2
         pIbA==
X-Forwarded-Encrypted: i=1; AJvYcCUc+rIOsVGcuwRdcWBTZt8gR1XqNbSPtJYF0TBvSCkpthxPurX3uHxg2qR8d19FLNdHRGOB+Nzfb5ol@vger.kernel.org
X-Gm-Message-State: AOJu0YzkPbtrn26k9FMzyQOqplRocqBEcPIWxah6aQAreoB119bQgYna
	WfTJuTFPc4c3OkwvnsB7j7Vuy/FIC8BK0uMSq5LGBSz3bMGgrwS3RcVhZtUwWfM=
X-Google-Smtp-Source: AGHT+IHB0zTVjEfwaHCQx8PIwBJBJrhn37SfrjLIPeiADOfkCNOJ4wTJti1Tz9xOpDocnW+tseBUwQ==
X-Received: by 2002:a17:907:930a:b0:a8b:ddf4:46f1 with SMTP id a640c23a62f3a-a93c4a98de5mr450042266b.63.1727476193687;
        Fri, 27 Sep 2024 15:29:53 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c29460eesm179504066b.119.2024.09.27.15.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 15:29:52 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 28 Sep 2024 00:29:47 +0200
Subject: [PATCH v2 1/4] dt-bindings: leds: bcm63138: Add shift register
 bits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240928-bcm63138-leds-v2-1-f6aa4d4d6ef2@linaro.org>
References: <20240928-bcm63138-leds-v2-0-f6aa4d4d6ef2@linaro.org>
In-Reply-To: <20240928-bcm63138-leds-v2-0-f6aa4d4d6ef2@linaro.org>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The BCM63138 family of serial LED controllers has a register
where we can set up bits for the shift registers. These are
the number of rounds the bits need to be shifted before all
bits have been shifted through the external shift registers.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Drop the $ref to u32 since the new property is suffixed
  with "-bits" and thus get standard treatment.
---
 Documentation/devicetree/bindings/leds/leds-bcm63138.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-bcm63138.yaml b/Documentation/devicetree/bindings/leds/leds-bcm63138.yaml
index bb20394fca5c..b3d530c46061 100644
--- a/Documentation/devicetree/bindings/leds/leds-bcm63138.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-bcm63138.yaml
@@ -41,6 +41,17 @@ properties:
   "#size-cells":
     const: 0
 
+  brcm,serial-shift-bits:
+    minimum: 1
+    maximum: 32
+    description:
+      This describes the number of 8-bit serial shifters
+      connected to the LED controller block. The hardware
+      is typically using 8-bit shift registers with 8 LEDs
+      per shift register, so 4 shifters results in 32 LEDs
+      or 2 shifters give 16 LEDs etc, but the hardware
+      supports any odd number of registers.
+
 patternProperties:
   "^led@[a-f0-9]+$":
     type: object
@@ -71,6 +82,7 @@ examples:
     leds@ff800800 {
         compatible = "brcm,bcm4908-leds", "brcm,bcm63138-leds";
         reg = <0xff800800 0xdc>;
+        brcm,serial-shift-bits = <16>;
 
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.46.1


