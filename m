Return-Path: <devicetree+bounces-13766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 638317E052E
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 16:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D7F5281DDD
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 15:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 139891A58E;
	Fri,  3 Nov 2023 15:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RQLZ7F/J"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1876E1A585
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 15:02:15 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C90DED5B;
	Fri,  3 Nov 2023 08:02:09 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32f7c44f6a7so1268640f8f.1;
        Fri, 03 Nov 2023 08:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699023728; x=1699628528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3tesw7WKuyg4I4jCWy3z1Ub8ebMp3kejf48dRXp6MTM=;
        b=RQLZ7F/JDUxabwnOhNvmsMcLMvv17u8Qoc0fAFb/sYu1YsqjCUy1COEGFORDVq4KSj
         HmfDiNWp1fdwi5KoK10WnjQBsnFOc14kpnjy/0lDJ+jwgvnvN95RoM5AARiuQrBmvuyx
         AXnTljHewWEh3FMNUGFaXlUM6Ivxk2bAlBD1wC+xwSN2V3lFycSdtuBxSW5FlkKOz6T/
         0QDDd2NLS27pqMvCLd6KAf24DZXfR0Y29hLyiIbjBCOK3y9CqKXp0F/yqnQDRkU/DKzY
         E9AiMjO1xg26u5xL8MjjQw+/VG62I828pQF2f7v4/NTPyMEnot2tpBuBTJFtEE2UsG+e
         99nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699023728; x=1699628528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3tesw7WKuyg4I4jCWy3z1Ub8ebMp3kejf48dRXp6MTM=;
        b=apTbpEUCcJZEZIJPfcpCtssAjAoO1UFypmJZ1JeKzbFKEal3qMwCUqiqtW1GV2+GCC
         CaG9EHpou9o46UPQtfB43Yd2HlYi92ExqjE+D3WnSK4xA/Q5Cn+f+MLdsVE/HIjJhNbj
         6AQx97VO/WMydiktaz9Gm8QI0ihYwHB5U0+likbxuJcqtIlWVibyAehrbKBvtnYhR93z
         dLq3RX5PeHpDok/gij7jPc2UBBixXjKCoXEHu79fQij/JRjSaz46ig3md/cBWsSaYde7
         /aF13aBI5Pft2wiY4yoFuNRBImzeIX+dCCPpT6OV16V46U24NV1U1s/NaQYgeOkbm2+j
         W96A==
X-Gm-Message-State: AOJu0YwaPvFTKkMt1au/E8Yc3laFrEvpnXU0xy1KOWk8gte+4TJy0M7D
	5HUbBCO0bk7x1c8lzlQichk=
X-Google-Smtp-Source: AGHT+IGYJmn0gV8S7J6NV1x8m+VB7BIy070HHbi0x35h/8QukOdG0IVgcoYDKJzi05t13yd1h3RGFg==
X-Received: by 2002:a5d:62c9:0:b0:32d:baf4:e572 with SMTP id o9-20020a5d62c9000000b0032dbaf4e572mr15078197wrv.23.1699023728135;
        Fri, 03 Nov 2023 08:02:08 -0700 (PDT)
Received: from ubuntu.. ([188.24.51.27])
        by smtp.gmail.com with ESMTPSA id o8-20020a5d6848000000b0032f933556b8sm2077277wrw.7.2023.11.03.08.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 08:02:07 -0700 (PDT)
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
Subject: [PATCH 2/2] dt-bindings: iio: hmc425a: add entry for ADRF5740
Date: Fri,  3 Nov 2023 17:01:30 +0200
Message-Id: <20231103150130.1090246-3-anamaria.cuscoo@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231103150130.1090246-1-anamaria.cuscoo@gmail.com>
References: <20231103150130.1090246-1-anamaria.cuscoo@gmail.com>
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
index 2ee6080deac7..42341fbf8d74 100644
--- a/Documentation/devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml
+++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,hmc425a.yaml
@@ -18,12 +18,16 @@ description: |
   HMC540S 1 dB LSB Silicon MMIC 4-Bit Digital Positive Control Attenuator, 0.1 - 8 GHz
     https://www.analog.com/media/en/technical-documentation/data-sheets/hmc540s.pdf
 
+  ADRF5750 2 dB LSB, 4-Bit, Silicon Digital Attenuator, 10 MHz to 60 GHz
+    https://www.analog.com/media/en/technical-documentation/data-sheets/adrf5740.pdf
+
 
 properties:
   compatible:
     enum:
       - adi,hmc425a
       - adi,hmc540s
+      - adi,adrf5740
 
   vcc-supply: true
 
-- 
2.34.1


