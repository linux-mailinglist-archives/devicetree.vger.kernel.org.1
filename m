Return-Path: <devicetree+bounces-93404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D98A0950CAE
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96F5A283D73
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5351A7064;
	Tue, 13 Aug 2024 18:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qWfOiFjv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDD81A4F3E
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 18:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575522; cv=none; b=SiNeiFsgSkPMOFZIBAxNQFpoLwszJDtXTHwKmI8zQcWQ9+lFzerBzZupGRxfVHwF4br2H1NV4lpCWCBCgxVUGnXQaxViDWv3Q5mtyGPKTVE8vTy8xJnWKb9cFKnrK/jOEqKMFF+2+0bw8Dv18pGJQdHCus2se/X1eKGseLydYtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575522; c=relaxed/simple;
	bh=cgKJ86aFQSXRkOjVomh98YNMu7bmzApkdVedZLziGQQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JvVl9qBiypgYDS2vkUdeum7huER6dot4z3HWtuQPswg4H0Fst1ug79sRZFW9gEyYoRWrSvzZSrx6Czaj0a77FyYLsR0RlzUdbv0pN7l+AFveXAz9e0YFsB8q930SRL2pYKkpNrqeXnCuGlKyKCqh4YrSrhcGOz69ZEpwzu1LWTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qWfOiFjv; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52f024f468bso6845783e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 11:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723575519; x=1724180319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wUV4XHIlWDdmSvDrr/xcQAhn7NeKcNTvFWfePKkt2OE=;
        b=qWfOiFjvafyFjK/BMEWr1YZgOL5h2I57oiPSOX0QdINpGG0sI9WIiNPWeJs3yFZbs0
         UIBfX5K8BFBW14TtKnbKAqP2d0GE+hHxwAB5V7EDIX9/k2CVPhv3gfgdDGYcxgAFjDj6
         N4ZKn0B8nMX+I1e3ponl0nD2UReqevGHqJduBYhHYKiM4fykc1s+0VLtCLI6e5RlWROD
         ptIKrlxwS0KizXOnQl3kv11wHLPfjd4qT/8E/RMpux25qbLCcje5cihTnT17mj1kSjnD
         8Q4EToNB0mX0mwyiV4gw8iqbFQNbXWitzOaQEu4sWxmkWeTyFaF9ldrjp8C4AZON9JC1
         MdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723575519; x=1724180319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wUV4XHIlWDdmSvDrr/xcQAhn7NeKcNTvFWfePKkt2OE=;
        b=SjLZU8Vr3tZmvZXQ7Uvr4N6WyvnF6DUgXLC9SYqETlIPzQDgaawXYh/6Bj4o2xe4Mp
         NGl5LO5i+xHa+iBRn0FO4QL3KqbbPxPaSV3vs52XLvTNWEiPmKQ6bf7pI83LoPmT336c
         bGiJdOImUKQtlTJWK/m+lnI11ldeasHmHi4/+i/beIl51+Eo8KADtPEP/Tqi+nSw4Q6n
         fQKVfMXwRirpK4agJBBddY7TwfVg9ojXvA6jY/j6gSQ6P8ha7oXGA5uLuCBVipYxIQlZ
         0W1KZrIstGh5n8tSkFeSAoY44ZOcNVUELnv7DfD1Ih+dXtibFuYX6M333s4V2AJpQ/2+
         Ydmg==
X-Forwarded-Encrypted: i=1; AJvYcCXrBnU47HKnhYQVYgByr8DZZwvm7mcNbsnd981IU5Mc/1KCJhVr4QM7hJnC82AWhn1JHZSeKofIjc0MzWpn9sgz+U3rrZxkm76ZoA==
X-Gm-Message-State: AOJu0YxU1Y38StErN2LV2pk3Wg3+VfAT5l1dMjzJKA/vZh9ZEvWnLPIu
	YTbMvdQ5M9BAted4xXzv52WfTGW8Kg3hvfL7ki8xTMa4Palc5wpDiO85RRJknQA=
X-Google-Smtp-Source: AGHT+IGlYNi54ow/y9t4POWEbVoEw86CSboMPSwBpuuHQA7APctLUhJ3CK5aCCTQbHdiSdknwVbK+A==
X-Received: by 2002:a05:6512:39cc:b0:52c:d626:77aa with SMTP id 2adb3069b0e04-532edbbf2a5mr203953e87.58.1723575519313;
        Tue, 13 Aug 2024 11:58:39 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429c775c509sm151208145e9.44.2024.08.13.11.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 11:58:36 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 3/3] regulator: dt-bindings: qcom,qca6390-pmu: document the swctrl-gpios property
Date: Tue, 13 Aug 2024 20:58:27 +0200
Message-ID: <20240813185827.154779-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240813185827.154779-1-brgl@bgdev.pl>
References: <20240813185827.154779-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add support for the swctrl-gpios property which contains the phandle to
the GPIO indicating the clock supply to the BT module.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,qca6390-pmu.yaml       | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index 6677939dd957..11ed04c95542 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -68,6 +68,10 @@ properties:
     maxItems: 1
     description: GPIO line enabling the Bluetooth module supplied by the PMU
 
+  swctrl-gpios:
+    maxItems: 1
+    description: GPIO line indicating the state of the clock supply to the BT module
+
   clocks:
     maxItems: 1
     description: Reference clock handle
-- 
2.43.0


