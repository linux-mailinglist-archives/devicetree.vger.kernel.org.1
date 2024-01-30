Return-Path: <devicetree+bounces-36668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 641A5842438
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 12:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56262B24D31
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 11:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9EF679FD;
	Tue, 30 Jan 2024 11:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Ro76OJuV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280BE679E4
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 11:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706615821; cv=none; b=Li41DzQhsVPoDNHclESBdAhTf7Q0WtdnWBIdZ0wU0Paq9X7eKNa7cc4F1luDufLEkK/3HOVyKhY2NvKxbsH/brHZzUAZUBpk2nwnLcZpalu1V7wLYSNx3cmRf5ACpDCajJCeetrnx2VfoPJoMc4ugX62504ZEFBqPngYGhLjhmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706615821; c=relaxed/simple;
	bh=5BNuu1x/bXsqnfMaHPtVjp+t6R/LjBZtMNHFrzbKhFM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KN1BKlUj9jIJTZlzsjxo6bpD47zX7eTT3rfwuOpU6daWa3iBouM2sMyPJQjmJ+frUzatlzEDHjlNh/dAG34C5UZ+6rYIxP5JDTSAB9Zr1yeTBrE21pbIxU5fDwbvpSd18FrIljp7s/ZbknUpb4L0+fxWozAoaUMJL5SLG5C+b/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Ro76OJuV; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a271a28aeb4so473694466b.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 03:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706615817; x=1707220617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3UEGIekdyazfqo3T299WapeO9DNQtaZe4LTOdPjlFiU=;
        b=Ro76OJuVzL7y/JZv3h/GVERlwMXQI2C1KqybMRAn5ru8BbOG4gLzTuWjTTtbk0YIQ3
         MDIA1BUWK3T7Ep35GxdQXvsJaYD2CL9qCvVhaPOgDpxadCLT5I3+FgV6yH3wPa2jVJqb
         WzCwAzET2UmIzyZNRfVsAs+1iyYYaYZ8yhjv+KOCY2/yPDY9QheYCk2wXIhU6IiX6Ow9
         hMfWbvY1MvyiJT+yz4tR+sQQsrTLWH/Gv8IfG6j9f9FmWGN5rY+RSdUZrufRfaFoB2Ve
         rbZASFgS2GroqggKNugTBDGrkahJHHTEW+WjK6rbWTWTh6A8cgnr3Q3AguQhMojPEAsq
         frlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706615817; x=1707220617;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3UEGIekdyazfqo3T299WapeO9DNQtaZe4LTOdPjlFiU=;
        b=s4HV6LfKSs2Hg+L27e6jW9EfuESXme/Eg9Q3qrW9LofKbKhKZK6PNUmuJSnXPIJLlf
         24jy4vKQg2LAsI6HC4XUNcNAj1+0YAk7m36Z1pwpescLd+hBFmwbl4QV3tgL2N5e3vX1
         m4P8OlHsCy0aBzFMpDJibHcUEkYt67xO9u5W8Hlz83v+kSYvREHtggFiot9XERHu0VOt
         QQThmDV1Jj7Nxj1YGGpfhDjoDkBZI8PqtJy9mqqbEt42DpWHEy/ijxfHdvPz8voluzEp
         D245dllwx8jq5PcWQqf9/KRxzPk6hYSduF9TxRm40WDftOv655sRsOLmrg8KsMp29FeD
         5Wmw==
X-Gm-Message-State: AOJu0YzlUo6PucusLFPWcXb5qvGE+BOpUg9JSsPDlo6nASV14cpIigOP
	FQozdR6xXQb//4NFViFPmPgOxHyf/YYTGjkK2iMWZwD3Ssy16V+Z9Er3Jnc89K8=
X-Google-Smtp-Source: AGHT+IHF2XMmAPc0QFgPB00blyrr9TU3ocIhSB9hQFLA8ZZADZtmjhdD61x8+AHygkJpvsIOw+nxsA==
X-Received: by 2002:a17:906:b846:b0:a36:4cb1:da77 with SMTP id ga6-20020a170906b84600b00a364cb1da77mr6163ejb.4.1706615817020;
        Tue, 30 Jan 2024 03:56:57 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUcaKChEB2aRD4siN6rXcukPfd3nJzIXUuUSm9rdm9/ggYWDvMvxsLIUWlF/DDOJ0d/MIvZ72c+1A2erHOcqgmqAn9cr60DqaVsoNxayeTimhKui/aOuVODf9YXUBsS3BhlRvTuHXBAXzsxbhc0RHby98kvle7PMCcsyZGCrcC6Nqq5Yk/FAyiJ2x0v80qrm7D5ZLYr81HKhABXsjXXVT+zGd4+2h2Cncl6Ic+S9aGIHiDBJ5UuVMJVxBAAAPqR7MP2aQVwQzpZrrkmI8bnCDDYcX6RtoJpYIyzm9nYr7AWT/XQUyleXjQVBUpuplF0WxYIwJWlg7jYr9ltWpc1RnnwHENfvqP/0gxN2f9JZRgKaw==
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id tl19-20020a170907c31300b00a352a99b974sm4201641ejc.167.2024.01.30.03.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 03:56:56 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
Date: Tue, 30 Jan 2024 17:26:50 +0530
Message-ID: <20240130115651.457800-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

voltage-divider is always an iio consumer at the same time it is
optionally an iio provider.
Hence add #io-channel-cells
Also update example.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../bindings/iio/afe/voltage-divider.yaml          | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
index dddf97b50549..98fec8548cc3 100644
--- a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
+++ b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
@@ -39,6 +39,13 @@ properties:
     description: |
       Channel node of a voltage io-channel.
 
+  '#io-channel-cells':
+    description:
+      In addition to consuming the measurement services of a voltage output
+      channel the voltage divider can act as a provider of measurement
+      services to other devices.
+    const: 1
+
   output-ohms:
     description:
       Resistance Rout over which the output voltage is measured. See full-ohms.
@@ -75,12 +82,17 @@ examples:
             spi-max-frequency = <1000000>;
         };
     };
-    sysv {
+    p12v_vd: sysv {
         compatible = "voltage-divider";
         io-channels = <&maxadc 1>;
+        #io-channel-cells = <1>;
 
         /* Scale the system voltage by 22/222 to fit the ADC range. */
         output-ohms = <22>;
         full-ohms = <222>; /* 200 + 22 */
     };
+    iio-hwmon {
+        compatible = "iio-hwmon";
+        io-channels = <&p12v_vd 0>;
+    };
 ...

base-commit: 861c0981648f5b64c86fd028ee622096eb7af05a
-- 
2.42.0


