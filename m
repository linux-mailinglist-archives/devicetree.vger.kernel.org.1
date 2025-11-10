Return-Path: <devicetree+bounces-236887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8FDC49114
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87C1B3A84C3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8AB336ECE;
	Mon, 10 Nov 2025 19:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nm4pFbuo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA75833556D
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802944; cv=none; b=WK9q/SKKeiQU5YeZLnn2KwJ4pK7OPcCYKnrebOk8q0onVek7bbKHSw6liP5m+SucShL4LunmuqkhSP0GF2wDIoZC/ibAnzGeSHxoxMWZytqQhUjzJ/EeVJgrkLqji37o2NuscAjfGUq4QSqnd+SA+0u31QZSH4vV+M7x/s1LFbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802944; c=relaxed/simple;
	bh=83VsTolNJs8TOx5t5je1+Dgh3QeYaZvyttBMyQSF5Po=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g8D0qU1C6d9iUvCIIGHTMxk/WQ45ioQ/XPHPjXiFeYV/pQOetTSvIJoaUJR4f18l6zPYLUmVyS79m5yI3bKqD4WowLggBI2A49RCQ9U5+Q4mRN8APzoEAuGgVQOIQBlQ+7Y6psAxQb/ZoppL+8N+6Mo3L/uy+GPtKLlcMAL7+1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nm4pFbuo; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6419aaced59so1916565a12.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802940; x=1763407740; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zfP9r+aA134P6xP9G9rUEiFSSucymGxSGs4llBYmBio=;
        b=Nm4pFbuobOQlggfIxdgG6t7pEXdzGehMljmEWDoqJNDp+QFWnWVqI0BINvqnhO0Ixm
         Sz5GSTFPiwTGdu25YcmYTpibFdkTE9Vfoh0bhjJgOyp0GVxoYGTRdl99V3eaioa5g0dg
         Lyn3kuzKh1Dzb5lcFWoAgOy1X+NentNRezsjJuT2xkn2aXPPLrBPQgXMlTZrI+j6itPu
         crZHd0e4kU1BwuMAr80Krxu8zQ1Ofmcd8HaU340O7KnkrR0XHGPfSYjpO0AAHaoD/Gsu
         l2hfWybKMf28JMSb2GxS6auBSKS0mckMhtdDrVVZmJSZlfLXuuJQDCMiYTSjOB/+86iH
         2znA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802940; x=1763407740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zfP9r+aA134P6xP9G9rUEiFSSucymGxSGs4llBYmBio=;
        b=HJTFrwSB5jMuIhsjyaagZ2CByeJcpy3f3Yh7EHb7ZBpATpp9XpNxYnU1pEzpkAB1LQ
         6OzoJDAnwdKXQyJzCih57YmHjwmKcmIZpNtKcTlMnGm3ZEYs3uCdbqrmiBGFquGcgc6L
         y2MzT9IpJRzWUH2K7M2tWxiAtsLuvUt2IMy6tZGZJg5+Q/8v/HDb3xFhmtZO6E6n27pl
         TbBoH8BaLM4bV5zc8TTNH5U0jPq/fBfsvViPh+XJSy0J4noFnnLSzl4x2/R4G/vMMDZQ
         ht2PdfKM+N75Codwj1SCYiEqcF7R/CsXgnUNUdCC+yXwXARqZaj7Pifmew0nwr94oQDo
         pldA==
X-Forwarded-Encrypted: i=1; AJvYcCUbMiwlcZm6axg6NRp+1j0npPpk7OHZJKKPXRFqKvufZRbRbG8QEFPFWJM8lK/Lcbu8UKMihib+eMeA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9KioXNxxu8D/+eRcs5aBibJSl8Sugn1QwPBGtbLytWhFtz/CN
	Xef+pKFVqkyCpvujgqCLTIrBi+s+FLSSf8B6h39a1NMLneUIUdTjLyCeqU9EIdEnaWo=
X-Gm-Gg: ASbGncsGfBBjZOTeUAK32kySGPADVMt7fn5QZ8XIwwIFJanmy9rX+0rIE+qmctgqBNB
	K/eHd0EKRbeg9hrtTy0y/DgbU2P6Hi61KYtraFsDTEpLzUzUGy3q8Z0Wm0zFV9bcsUoQPJkCaPA
	s9JV4xgP5HNeKAl9uEgnnT/fQrZCWviYPQ6GDOfcfQNyapzIoa5i/tx353iZVZqvndBnQS/MVyP
	HbXF0FrhUfP4BavUdNxhyFJeGxyGRCMoa9JV8lnO9E3XMEhynojAGCmqH1gZ0yf92ywEeU4fESi
	VtTp/VT8Uu+/+Ev87RNTuEh3PchkvxQ1t60gvrNYkaSV6nJSW1KeS3yuISgj7nN++nmD2TjCiBz
	FqHB239C/wavA6mWBh0YmKPkmRyO3e8ZEkarJRWd36T3C68XSKyvX8UpJB5Vq1jXPrHpZEtS6tv
	veM6ZeCCpqvj5On789ZFsGwKPxxwJad+WDIwkQT1LFleIc95VvVlO5HrKk5jdwkhxuLLRzNW2mS
	z6BBbLY8Q==
X-Google-Smtp-Source: AGHT+IEZSSPtpeal08mT4JDkWnZNl6emyDrDOdTdmyu1o0WbaEe+XhWXtXX8M4p/UGGBXNH33FFv6g==
X-Received: by 2002:a17:907:6e8f:b0:b6f:9da9:4b46 with SMTP id a640c23a62f3a-b72e056cc6dmr966964766b.43.1762802940115;
        Mon, 10 Nov 2025 11:29:00 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:28:59 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:28:44 +0000
Subject: [PATCH v4 01/20] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-1-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Using lowercase for the buck and ldo nodenames is preferred, as
evidenced e.g. in [1].

Convert the example here to lowercase before we add any bindings
describing the s2mpg1x regulators that will enforce the spelling.

Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5bcbf@krzk-bin/ [1]
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index d3bca6088d128485618bb2b538ed8596b4ba14f0..4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -75,7 +75,7 @@ examples:
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
             regulators {
-                LDO1 {
+                ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
@@ -84,7 +84,7 @@ examples:
 
                 // ...
 
-                BUCK1 {
+                buck8m {
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;

-- 
2.51.2.1041.gc1ab5b90ca-goog


