Return-Path: <devicetree+bounces-14392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB487E3FF3
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 14:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 262371C20B37
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613872F50D;
	Tue,  7 Nov 2023 13:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Op6DVYsY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD192DF91
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:21:31 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B047392;
	Tue,  7 Nov 2023 05:21:29 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c6b30acacdso75129801fa.2;
        Tue, 07 Nov 2023 05:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699363288; x=1699968088; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BkcBjw6N38nWpcH98Wo6zXUMJseV8oYDmiwD9ic+Q3E=;
        b=Op6DVYsYVEKONaN43KLwLRXzbj/crJXHppdrECTO6fqhkWB1HTryEqq09MyWbwvD8d
         0eGjAkmKv3CKIoqjerRGAEN5us8I+LXG3OzLDdS+ooioaHjtvfdQx5g0b/67YCN93Y9Q
         3JgWwyDT/knqch/Cgi/ARdWJpoSdKe+z7Bor+KZu8qb1R7sdaG6PEz63QzWcB9vgG+av
         O+TtXWOuXsf6MychZ7jVJ9d1R7mR0/a4ySqsf26XXsXAfSJtvSahuRv8W2gBt5KhouEA
         EmKvtW0Jfojrqr4W5er65J6m2FZV5T/4uWanARgU2FLnWUwOdefTl+IjBHUAzUNmhraq
         SwWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699363288; x=1699968088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkcBjw6N38nWpcH98Wo6zXUMJseV8oYDmiwD9ic+Q3E=;
        b=moCNFCITUxhDpcktlU+2cqz1dV2m+CO+44Ij8i1AyMhejYAurWC7bdwpLqyrlLP2JN
         Lxoyx/JfkenUpQ/4ZdhS9T9iFkp2WraEmHc86V4gCLhAyZFzD8pTC28PwybQXXcBKPt1
         Voj8T7qR5ontIicpwzs7GHWNzT+2Z70sAS16oeLz85H0ZQUxDLfK//vcZqt4hIB0/B1d
         z8NvG4vQ+rJ/kSXkCqyne8COEn0KXcjW8wAgCfeoqPgSUkOIb6EXKO15XXBf8psMPiNP
         2ipW9YJJB18bubAcBWxKHJshKfUO4p+O26GzZ1TsrisO8HOMhonRnJR6JsYxQLkmfx7V
         GX1A==
X-Gm-Message-State: AOJu0YxV4Ufug9c+IAuwHCObfYf3/vq7KAF3zHX+BRcZhom8ES51MEp1
	Z7EAsWr+kcGpcA1ns7BiSzI=
X-Google-Smtp-Source: AGHT+IEcOjZaTG4bXioWPlfAx6mUeADkRgjRpoC0lFW8eh2uLucQV1GNPJ7VSo9vSVOe1GxwJ9/IpQ==
X-Received: by 2002:a05:6512:10cd:b0:4f8:7513:8cac with SMTP id k13-20020a05651210cd00b004f875138cacmr30261458lfg.48.1699363287608;
        Tue, 07 Nov 2023 05:21:27 -0800 (PST)
Received: from ubuntu.. ([188.24.51.27])
        by smtp.gmail.com with ESMTPSA id w7-20020a5d5447000000b0031980294e9fsm2356297wrv.116.2023.11.07.05.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 05:21:27 -0800 (PST)
From: Ana-Maria Cusco <anamaria.cuscoo@gmail.com>
To: Ana-Maria Cusco <ana-maria.cusco@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: iio: hmc425a: add entry for ADRF5740 Attenuator
Date: Tue,  7 Nov 2023 15:21:17 +0200
Message-Id: <20231107132118.1165494-3-anamaria.cuscoo@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231107132118.1165494-1-anamaria.cuscoo@gmail.com>
References: <20231107132118.1165494-1-anamaria.cuscoo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ana-Maria Cusco <ana-maria.cusco@analog.com>

The ADRF5740 is a silicon, 4-bit digital attenuator with 22 dB
attenuation control range in 2 dB steps.

Signed-off-by: Ana-Maria Cusco <ana-maria.cusco@analog.com>
---
 .../devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml       | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml
index 2ee6080deac7..67de9d4e3a1d 100644
--- a/Documentation/devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml
+++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml
@@ -12,6 +12,9 @@ maintainers:
 description: |
   Digital Step Attenuator IIO devices with gpio interface.
   Offer various frequency and attenuation ranges.
+  ADRF5750 2 dB LSB, 4-Bit, Silicon Digital Attenuator, 10 MHz to 60 GHz
+    https://www.analog.com/media/en/technical-documentation/data-sheets/adrf5740.pdf
+
   HMC425A 0.5 dB LSB GaAs MMIC 6-BIT DIGITAL POSITIVE CONTROL ATTENUATOR, 2.2 - 8.0 GHz
     https://www.analog.com/media/en/technical-documentation/data-sheets/hmc425A.pdf
 
@@ -22,6 +25,7 @@ description: |
 properties:
   compatible:
     enum:
+      - adi,adrf5740
       - adi,hmc425a
       - adi,hmc540s
 
-- 
2.34.1


