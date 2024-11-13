Return-Path: <devicetree+bounces-121615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6D99C795D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 17:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 060DF1F25BBE
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 16:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0822010FC;
	Wed, 13 Nov 2024 16:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ACviE16K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF081E1037
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 16:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731516931; cv=none; b=G5wNgq1FdBL2V92gRTiXUbiXR77dyWg7u/d+4mHLDrNRsfxm77s245bzn7Ugj6CR1uQJS2EaDdlZZXH1PrWAYDhyy7NkSjw+zBmx9XSd+22KzS/29zbBrSFYqQPlaWzDvnddta8VnvB38dRau6bGzpchOrM0aWXDIFMhl6AId5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731516931; c=relaxed/simple;
	bh=FcOHKxBF8nl/v4SIQ/tCUbE1JuAOflWFIy3yGdifeC8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KoCgF9U/1tDrq9OPKvtx/bS23pzHGbiwJs1cqOUBDTOfMvdLhoYQpx34q9DPymwmg8qHoxofBlRuN/Plns8f3dmmXpS+IqLtHEVdmJpCWSHpvsrn1eeuOMyE+V1ga+gfcGRdyzueNc14Olf8sBlt4BPXFFPMaSQqZYl/QJBNryE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ACviE16K; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-288a90e4394so3199948fac.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731516927; x=1732121727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TSikvYecjE5L7Fz7wq5gaGm5AXMewltD4jATzudM75s=;
        b=ACviE16KCe48ui6sPB9i/aKwNKj4q6sNYx4AMD3mL1kPjU7SEBvkAee/GmI4fkg6/Z
         h6b0oP++hm4lTeUzO0P/0fdGPhMJogi2zr4SXPJfG4ajPRsbq+/MG0nxArtZ/CjBThk9
         a4WJYaXcMQPsYG8t24OP+brte6kju7LTJO4yLsFKSwMJi15THpqEFn8iAFr9mR+PCvZX
         hQSclRmJW9IsxaDdtOJZj2q6J4O9JZT6Ykq/cPqWaJ15aJUT2OYWoiGZP01gng5GPzhA
         T0VRxfV//QAeyVSBw8XJISsEVhsqv+YyvTc5ZZ2f+Ke/+ALnteQHeH4e50Dt05pwKMar
         UjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731516927; x=1732121727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSikvYecjE5L7Fz7wq5gaGm5AXMewltD4jATzudM75s=;
        b=Z9KOxZ19edtboazo/u+HwHnMKhrcZrLu8qvn1inNSH2x07r5dKQbmuGf/b70JPscQf
         v7fcYVh3R/W+CRIoztHodsnS1f0EoahL9q0qbQ7Zqgr5PSMOnl+sOEJ+EFS02cfLI1sn
         er4laMakvv4bodoqbiZVqzgpjNW/A19KvO0PwaNEh8as0kLMXe/WGvWQHp4iLzIuieAE
         uTJoA+LK6Y2NqcmaLFNvCPU+nCJD1V46qD+XAZAXvWU70QA8DupxwojFlBCQbbyQjVHM
         rV7y/sWu/tta5w9WBdv35yxlU0vgR8ZLmDur1znmNP8IVZYfPiKkcnczTzfKZHMdekOF
         x12w==
X-Forwarded-Encrypted: i=1; AJvYcCXAjFLIbPCmdMLKlaA7nN1QgVECShK0tOpgn2F0dA/QjdsBl90ntD/Jifzs35+7fCh+ONB45kPwPSy8@vger.kernel.org
X-Gm-Message-State: AOJu0YwwhdvPf0JEmuq9t8M1tLQvi50Om7JwX4Je5cLaiRRjynpzxXGg
	LZBxxoOyA1LfY/4qosspizDZyV/hTzojnpcj1JSuV0qJ+3ZNiYFnizNVxhMJTm4=
X-Google-Smtp-Source: AGHT+IFJpZjge+IOMpaNgashhcck+YSg0qirNU1tLokH+1+ASRcY+i1i7QixDL8eiYp4UVv+7gSOuw==
X-Received: by 2002:a05:6870:899d:b0:284:ff51:58ad with SMTP id 586e51a60fabf-295cd216d11mr7802349fac.27.1731516927381;
        Wed, 13 Nov 2024 08:55:27 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-295e8fe5c61sm873432fac.23.2024.11.13.08.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 08:55:26 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 13 Nov 2024 10:55:19 -0600
Subject: [PATCH 1/2] iio: adc: ad4695: move dt-bindings header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-iio-adc-ad4695-move-dt-bindings-header-v1-1-aba1f0f9b628@baylibre.com>
References: <20241113-iio-adc-ad4695-move-dt-bindings-header-v1-0-aba1f0f9b628@baylibre.com>
In-Reply-To: <20241113-iio-adc-ad4695-move-dt-bindings-header-v1-0-aba1f0f9b628@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Move the dt-bindings header file to the include/dt-bindings/iio/adc/
directory. ad4695 is an ADC driver, so it should be in the adc/
subdirectory for better organization. Previously, it was in the iio/
subdirectory.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/iio/ad4695.rst                   | 2 +-
 MAINTAINERS                                    | 2 +-
 drivers/iio/adc/ad4695.c                       | 2 +-
 include/dt-bindings/iio/{ => adc}/adi,ad4695.h | 0
 4 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/iio/ad4695.rst b/Documentation/iio/ad4695.rst
index 33ed29b7c98a..9ec8bf466c15 100644
--- a/Documentation/iio/ad4695.rst
+++ b/Documentation/iio/ad4695.rst
@@ -101,7 +101,7 @@ The macro comes from:
 
 .. code-block::
 
-    #include <dt-bindings/iio/adi,ad4695.h>
+    #include <dt-bindings/iio/adc/adi,ad4695.h>
 
 Pairing two INx pins
 ^^^^^^^^^^^^^^^^^^^^
diff --git a/MAINTAINERS b/MAINTAINERS
index e69d1632c382..3fd398d6e64f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1268,7 +1268,7 @@ W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
 F:	Documentation/iio/ad4695.rst
 F:	drivers/iio/adc/ad4695.c
-F:	include/dt-bindings/iio/adi,ad4695.h
+F:	include/dt-bindings/iio/adc/adi,ad4695.h
 
 ANALOG DEVICES INC AD7091R DRIVER
 M:	Marcelo Schmitt <marcelo.schmitt@analog.com>
diff --git a/drivers/iio/adc/ad4695.c b/drivers/iio/adc/ad4695.c
index 595ec4158e73..3c2c01289fda 100644
--- a/drivers/iio/adc/ad4695.c
+++ b/drivers/iio/adc/ad4695.c
@@ -30,7 +30,7 @@
 #include <linux/spi/spi.h>
 #include <linux/units.h>
 
-#include <dt-bindings/iio/adi,ad4695.h>
+#include <dt-bindings/iio/adc/adi,ad4695.h>
 
 /* AD4695 registers */
 #define AD4695_REG_SPI_CONFIG_A				0x0000
diff --git a/include/dt-bindings/iio/adi,ad4695.h b/include/dt-bindings/iio/adc/adi,ad4695.h
similarity index 100%
rename from include/dt-bindings/iio/adi,ad4695.h
rename to include/dt-bindings/iio/adc/adi,ad4695.h

-- 
2.43.0


