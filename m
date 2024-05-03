Return-Path: <devicetree+bounces-64872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CAB8BB38C
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 20:56:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EF1D1C21554
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 18:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CABD156F2A;
	Fri,  3 May 2024 18:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vw/IqCuZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021B415535A
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 18:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714762571; cv=none; b=hcNfnp7KcCKNnzS+3Ldc8bl+pmNiqUvoFEq7+k/G1JKCA2uPzjIz/2nTMGYmnCPbPiTnZm9CeCVWgSSytm0Rnux5NL3GbgFCydt6tuy1zOy01Kt115aDrnBaKICtaBbE4KzulACt+r9OMqHvZBA7y0YIzOlpAA5209eJsW0DE8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714762571; c=relaxed/simple;
	bh=+VunjP6oHby9KChFd/CfAkViUD4pF37WAjMIg1Bx2Qw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=s5fEBB7H7cP73vCIaBbSjUKRcw1o9IDdoYVw5iT0ndI70TDqp0kAAiKZA2YBZqIigzfW6ckjX0hJWeoXfbdIRoY3sf0p6RdoJpfJxnCeVFNAjiWDax9jUk3MJndrenpnHjqVgimf77Bd/B85zNbQ4Ha8ZahHaRXXRU/veU9wR3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vw/IqCuZ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-41ba1ba55e9so347355e9.3
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 11:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714762567; x=1715367367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2gDg0EtFt/xxlIOvEogtGv9myXrE9F+TQ1+RihYnLgw=;
        b=vw/IqCuZKAumGfMG99/+sRrQA01qwlZK9Ogb4HN3MI80daBlNSelLwU9lSfgJU9ViD
         GtfX3koVb4Vz1rkgJbL8PVYmq8jiB3Oj2Mav2f+SPQwQiUlyWtG/yTDJKw30VNwebTnP
         wCoSPQL6n70b+UA4hfRpV3zcJ+dgMZMpF244VopVmBUAf4Wh7s6MwLgVixuYfma4B/cn
         0Qv2DUruChJVptks/aEILw/jkZpMmG1ZVyzWW9onph/GU6sENW3jddtB3CalNmL8QRNz
         kzfklJxe+Bt3NxJU9jaJXIDhH9wbH3ZCSTT+YQFSZNyG70chHfQFsNIgzZIxs9m3Nr3p
         wVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714762567; x=1715367367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2gDg0EtFt/xxlIOvEogtGv9myXrE9F+TQ1+RihYnLgw=;
        b=DzSOxIVjdF6xCbElP3j8xeCNpAm0xiWs8YheKWk6bBDSp8HBqKx0FVFqBgjrr6sVVM
         AYEiFpqzri0f9Mkdrk38Mjk6x2PUw9um6uFFi6gRIgvnCwDGralp4nVgg1ffQY0H3zNs
         N2vwqHNqDuvsuPOfP86q/Hsg7L9YlEJ2qN7CLQ3bcBKehQtKAA8/Th/KT85nAtCa3NH+
         2ejXyMjL2ppN8yUmtZP96YLUKPJPp8brslrK4baY2tz3vGAKNX64GGUkw3HZ3YkM3NZr
         ssIpTt54r7jyuDBkhPXEVThuf6uPRDMRlNNw3YiH3fc9zcjoQCuyeBDyDCx4u0Q4gKIb
         rTyw==
X-Forwarded-Encrypted: i=1; AJvYcCW7uOAO9Ixom92oSDeCvOlkEaeIbeWGEazHYkK9XEdMnEvT1WsnUNWB4dcqfWx/5SZqbBOLVkbpN/kcDuu9nbLz6cb1OT2VKSy0nw==
X-Gm-Message-State: AOJu0YyA7NHSBTsW/C2GUEC/TsZdmB2ULnNvDRLoaigrH6/NHc1GfsO/
	Fb6Z6MPvF1bw5oeZ0zJ7kKdH/5YgJhmCsf96wT0TqnlMOc7JDy0xRzlwmR0Gvpw=
X-Google-Smtp-Source: AGHT+IGt+qvGVuXWRwYw3TPochmOYVElXHAovZvrSOswxxRQK0YRqcOF0ifWDjD0FIZ1B1YfN7nZIQ==
X-Received: by 2002:a05:600c:3514:b0:41d:7c48:5555 with SMTP id h20-20020a05600c351400b0041d7c485555mr2704667wmq.20.1714762567287;
        Fri, 03 May 2024 11:56:07 -0700 (PDT)
Received: from localhost.localdomain (host-79-16-6-199.retail.telecomitalia.it. [79.16.6.199])
        by smtp.gmail.com with ESMTPSA id y12-20020a5d614c000000b0034dd3849eeasm4400937wrt.106.2024.05.03.11.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 11:56:06 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	nuno.sa@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Angelo Dureghello <adureghello@baylibre.com>
Subject: [PATCH] dt-bindings: iio: dac: fix ad354xr output range
Date: Fri,  3 May 2024 20:55:28 +0200
Message-ID: <20240503185528.2043127-1-adureghello@baylibre.org>
X-Mailer: git-send-email 2.45.0.rc1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Angelo Dureghello <adureghello@baylibre.com>

Fix output range, as per datasheet must be -2.5 to 7.5.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
index 96340a05754c..8265d709094d 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
@@ -139,7 +139,7 @@ allOf:
                 Voltage output range of the channel as <minimum, maximum>
                 Required connections:
                   Rfb1x for: 0 to 2.5 V; 0 to 3V; 0 to 5 V;
-                  Rfb2x for: 0 to 10 V; 2.5 to 7.5V; -5 to 5 V;
+                  Rfb2x for: 0 to 10 V; -2.5 to 7.5V; -5 to 5 V;
               oneOf:
                 - items:
                     - const: 0
-- 
2.45.0.rc1


