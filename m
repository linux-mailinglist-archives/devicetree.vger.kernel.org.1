Return-Path: <devicetree+bounces-115132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 489069AE279
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 12:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E404DB20E92
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 10:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21E7D1B4F02;
	Thu, 24 Oct 2024 10:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EPXnIsbX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6C01C07DF
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 10:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729765571; cv=none; b=uP66FNJdptolcy/5OTy2amb21s5MxXM7Du11+W1qH3y2nggLe1QgDzSRwZhB5g6PQ7RfFYfEjqXbd7XZgxZZUKMu+dX5hcUT352/nP7WUnGPU/NP8s3WaHA2p7dalJUkZQSQCFTUy+N1ZDFhWaD3QOZDFaP5inybISdt/Z41FpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729765571; c=relaxed/simple;
	bh=iRN25hbq9isr2vGhOFjIxUP9FhrjBqw1sgFaQQysmIE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=O05klLXissZRGvVgGsXXdDB+E2AIUbhV+QQCFU+G4sh0cGkvnV+pOBe8ROX48BhK6WmTff0l5ib3iBPDM8o2sKxUs1kqkJKDVu3DfjvIK1652trw1/xxDBkMd9cB7cZttTpYeMwIm4ogKDHuxOAm+Pi+V3B9ZAS4TUa8DIoM7MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EPXnIsbX; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4315df7b43fso8023115e9.0
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 03:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729765567; x=1730370367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AhtIw+7BS/dFL1oM5W65aLz2my5+v3lTOv/bR89OF7c=;
        b=EPXnIsbXy6IbIMK7X3tKLZ0E1Bl70cv06p6F5hEjmqI3iJmX9oPs41j4UYugiuy9vL
         Dp1ws3pTZpgMrYCX0kh0dLdOPyGJZauVAwQmjxPguctUdcIkHyAE1SJkDjw7YaIebPWE
         4ymnNHbSM3TK0DFcYYi+04P+L35gRSxeQ4ddFODvDbnKCWMFBaQ/WjLsOFrT7UUPyMnA
         90Pvy6mJYIp9Uk1VVzQJrqe3ntOhKSDk64AQfi7C8kKFY8ZPXmdnyvXQt2qMnI/74q3a
         pJca+U5OzLhESYMGzqM9SI8DMLmkdxTogaluYKImIbL1GkUCpoJwtOtxjvLs5cJIzOZc
         +3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729765567; x=1730370367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AhtIw+7BS/dFL1oM5W65aLz2my5+v3lTOv/bR89OF7c=;
        b=uzx7P1s9ygC4FbOj87L4lRu4ohWtWHd4/4x3Rx56diUTRV6qCwC3VcxhjjJDjXmJBy
         Ec/foWbqiijmCn8hsjFGVnxbHkahvuVfNOeEnhYgcFm9S8dVEFMhGewxkxx9f88yweCQ
         SMTVlvL1VYH8ezAFn0ZVcd9WZtdorn1xt3/N/XKqgbsUIeoaJYyYvMVX4r2k7vfDIFR1
         5n+TKBYPU1NQY7Dl2Wb326JOcK4YysaS/oN4qrYVXSPWvZhuKPlR8wqjsHXc0xIfMiPX
         jI8q1nA33gWfK1RaMmSSpNE0EPPkGPW7aaFV5/U1A0Rs0RisDaoAuarGYH5ahG78FwFz
         Bevg==
X-Forwarded-Encrypted: i=1; AJvYcCVox+h6OKLI6dcVDT/KyCnMFpGwAvamG1JYDVlrW3EcTVx6VjTvT8swKYPis4xH4SOz6jlrr7kCkTaZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyBeTyv8wwAL+8nuCNWUBs1Uipn2cB+xWPVhMW9S17s9+J6aWYT
	S0ziSYnaKNwiAV2rN+CjCDZC3p3DElCKqr1MgyPDIwuJwelkwcGCYy70TNIODWg=
X-Google-Smtp-Source: AGHT+IEFrTpjs6ccg0ujM3/hq8Q11Njdv1GN4F0C33j/+FAYCoqsN7IcxEPS6zYw4ZiWUN2NcENe3Q==
X-Received: by 2002:a05:600c:354b:b0:42f:75cd:2566 with SMTP id 5b1f17b1804b1-4318c6e902dmr12229715e9.2.1729765566736;
        Thu, 24 Oct 2024 03:26:06 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b55f719sm12920965e9.15.2024.10.24.03.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 03:26:06 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Trevor Gamblin <tgamblin@baylibre.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: pwm: adi,axi-pwmgen: Increase #pwm-cells to 3
Date: Thu, 24 Oct 2024 12:25:54 +0200
Message-ID: <20241024102554.711689-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1257; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=iRN25hbq9isr2vGhOFjIxUP9FhrjBqw1sgFaQQysmIE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnGiCyGhgcoDpdCu23e8uYL9nba1LiPG2eEQgrW ZVPfHy0KxiJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxogsgAKCRCPgPtYfRL+ TtB0B/4s6ECnEjyhTSCcoppxlS0gLJbm+vScWDR88cUX/oGYIp1PRkpMCWQUx4jSOKBhwrMiq8q 3qoIacfdbjxnF//Yrc535tqsBVaczqgFSq5SdkmnLtpX67fw00VuOMd8JW+e9dcGOHaXmzi/kt1 ku8uA153ZXhjqWDoynuvjjmIcHuNPFPX7uQlyEtbSS4MxjZBWWQQa28SaPBfir5YzW8N1eVfZHU gsngxYaUjzUJbUiKFnWtGkpue3Eg+oQ4X7USj/Pf3AzUPHd/ijcxccgftQ537cgIX4YX8+jnvEJ hkH4C1JAGroAUIPeSob8xWJ/nRHFtz58a6/dGvNxe4z6g8sk
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Using 3 cells allows to pass additional flags and is the normal
abstraction for new PWM descriptions. There are no device trees yet to
adapt to this change.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
Hello,

missed that during review of that new binding. Just noticed that now
when (internally) reviewing a machine dt using that device.

There is no need for driver adaptions, the pwm core handles both cases
just fine.

Best regards
Uwe

 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
index ec6115d3796b..aa35209f74cf 100644
--- a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
+++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
@@ -27,7 +27,7 @@ properties:
     maxItems: 1
 
   "#pwm-cells":
-    const: 2
+    const: 3
 
   clocks:
     maxItems: 1
@@ -44,5 +44,5 @@ examples:
        compatible = "adi,axi-pwmgen-2.00.a";
        reg = <0x44b00000 0x1000>;
        clocks = <&spi_clk>;
-       #pwm-cells = <2>;
+       #pwm-cells = <3>;
     };
-- 
2.45.2


