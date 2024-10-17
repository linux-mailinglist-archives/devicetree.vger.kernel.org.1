Return-Path: <devicetree+bounces-112288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EC19A1AED
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 08:46:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B23A81C21A03
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 06:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6314A193400;
	Thu, 17 Oct 2024 06:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cN68Waon"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C40B18E04E
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 06:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729147576; cv=none; b=UI1gqbR/Zp0ehTatjlN9eYevHckj17d8KjfEPJt/0C533zrxLl2VoXHA12yl6XD5Ygro/Kmv+TQZWHxjGquc1VYkCRoQSj50nW2+vDSUA8JK0OtlIbp+MSO29gL0b9QdF0ednKvc9VCCgZ//rF/cZYEfUCBr/lXU8neEF/LasSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729147576; c=relaxed/simple;
	bh=IRRMPJ2Zl5j7fCg37cjGcb4gNApBkC3Hj7oWng5fWy4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LtycX2nNwZ3apyT4N2Ovh96Q8wiO7/oF2Pf3G81RDe/kh4IMCGtVfcVW3lnEAUZX9MuMmnKj/bIxp1KGhLRFsFcOc5uPcqf6B9EPbH4MBAnOcufnXYynwgirxvUQb5ehMDgG7nDtonBZ/ZwGOY0DiLF5VduwhJXwUR7WATwFpwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cN68Waon; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb470a8b27so15251631fa.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 23:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729147570; x=1729752370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t4xfdE4mMIH72Gt5CQhOrdl9s+UJ0M0cpmPoCmTdmPE=;
        b=cN68WaonzCSQtL/dlKcm9ftx+CQ1BCDbA4dtQBR3pKE3fDeP77EAce5rwgOCR5Ztft
         rBw+M+6cehY9YHj6zWa5QzVqC45yvuDN92a+9435vCHUml8VQQL5xoml9YY1EjCXSetj
         /R6+psH4u59x5JvlyXWyZ5qJ4O3GyiDbCP/a7zbB6fNFhuCGZ5HlOnpESFAGG891lMQc
         Wv66DBUzMOcQTVVG688CGBskyGer2vSnICqDoGY9khxd6ev48dejbX55NVQ+CdgVcBtx
         PcwpmOIShBWRXFArA8LjnVOgqK0hyK8rr9jvNmDg1A/pdZieQ+D5IUd3hHIyt9r4VDj7
         6OSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729147570; x=1729752370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t4xfdE4mMIH72Gt5CQhOrdl9s+UJ0M0cpmPoCmTdmPE=;
        b=LbuKwKVqn6SEQi8KeBX1Q4fFTKF0KBx1vr0nLcbhHeTdHk6SBR0ckI4x+Tcka/ezxo
         TRqqRpoBv2P+YzaFHSRfwTaDCuXTOeEHsXpeYqHjIWbiYRgFHzheLU53G2GYZF0YtO1S
         gW9aljC4TP0ZQhZloHWxbafvIXIOwj1IWOTIzdqhfVRGGM367jwMlVtU6aRlg2ga0d0k
         KFq+AUuaFGEJcJ508wtQ/YBULAN7LW54luA4b5eCOKMb4IZz+iHOrjpDAe3rFMIfqCnX
         gcIThB8+R+3yopXG1/ZxJ/aYIaqURCtr+EbmUD40j5QHHIzZP65APTAxgqUpNVi8CwtR
         li9g==
X-Forwarded-Encrypted: i=1; AJvYcCWUkCmoyvDP+MAZLCXS23zEHSEVREyy372mXgGoXZnJ3VCo56D7VZfPzKtGh3oPZc/moq30ovVwh/+M@vger.kernel.org
X-Gm-Message-State: AOJu0YwtaffVIP60E5jebqgQiJVOUmwNP3/NinsQ3hjYBZ153UzPflTf
	IOVShZDrUkeaJTdbrJvwLlSg0qNeUra+cUSDn4/5D9oMJorsZqVtMxAtpjQ0HM4V44sC3laMDP0
	+
X-Google-Smtp-Source: AGHT+IHbGhkYpvgyD2LB8uLg82/AyUhFdMiF7ashibY6NEj0kUp/FRcXWUszo7SNrvF7V0moY8TvTQ==
X-Received: by 2002:a2e:b88a:0:b0:2fb:55b0:82b8 with SMTP id 38308e7fff4ca-2fb6d9ad31fmr6325051fa.4.1729147570327;
        Wed, 16 Oct 2024 23:46:10 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb5d1a7398sm6139271fa.105.2024.10.16.23.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 23:46:10 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 17 Oct 2024 08:46:08 +0200
Subject: [PATCH v2 1/2] dt-bindings: gpio-mmio: Add ngpios property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-gpio-ngpios-v2-1-cecfdb38d40e@linaro.org>
References: <20241017-gpio-ngpios-v2-0-cecfdb38d40e@linaro.org>
In-Reply-To: <20241017-gpio-ngpios-v2-0-cecfdb38d40e@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the ngpios property to MMIO GPIO. We restrict the
property to 1..63 since there is no point in 0 GPIO lines and
we support up to 64bits wide registers for now.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index b394e058256e..87e986386f32 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -37,7 +37,8 @@ properties:
     description:
       A list of registers in the controller. The width of each register is
       determined by its size. All registers must have the same width. The number
-      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0.
+      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0, unless
+      the ngpios property further restricts the number of used lines.
     items:
       - description:
           Register to READ the value of the GPIO lines. If GPIO line is high,
@@ -74,6 +75,15 @@ properties:
 
   native-endian: true
 
+  ngpios:
+    minimum: 1
+    maximum: 63
+    description:
+      If this property is present the number of usable GPIO lines are restricted
+      to the first 0 .. ngpios lines. This is useful when the GPIO MMIO register
+      has 32 bits for GPIO but only the first 12 are actually connected to
+      real electronics, and then we set ngpios to 12.
+
   no-output:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
@@ -111,6 +121,7 @@ examples:
       compatible = "brcm,bcm6345-gpio";
       reg-names = "dirout", "dat";
       reg = <0xfffe0406 2>, <0xfffe040a 2>;
+      ngpios = <15>;
       native-endian;
       gpio-controller;
       #gpio-cells = <2>;

-- 
2.46.2


