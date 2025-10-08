Return-Path: <devicetree+bounces-224350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E455BC332E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 05:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB6AA3C31E4
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 03:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4232B29DB64;
	Wed,  8 Oct 2025 03:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M1WIwCnp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C2E29ACF6
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 03:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893499; cv=none; b=rRPx9nT3YDOeDEkGFP27Qiqu7EA+1uBgl8qN1yu28MVqhQz2NsLdBI2aPpWRN1u7wrODV3TdSmOqb8tAhsebdOI5yxTvzwLCJVs1zo+j06m7jrL0jZq9jd1TuIe//KB4Z5APmZrd9uTaoqQeG9QHoqFFApBcIHWLjz/RFaclNIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893499; c=relaxed/simple;
	bh=w88O91l141EF9mRTJr5gYUX1SUVp35Zw9XxJTz5LQBg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TFaL9XOM7JcsrgfzCIbnQ55Gy+xTQk0cJMDrg58xwopGbwGz6rfKnE7YaHvOEigGYaMvKQre58f5tbWvxyoJZO5/+a19hFwXRT11FjHv2+27oFVgzkW9OXJwTLwFkx3X06yTIm8Ay/gWJ1AfD1Kvna4ZXLasU5SC59IPUP4HIbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M1WIwCnp; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-78af743c232so5849554b3a.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 20:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759893497; x=1760498297; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlQFQcawRFMEewIt0bOgUlauxcu0MJP5hQDoYscvOlw=;
        b=M1WIwCnpEDzXEfOawWMTjwqmrgQJKk4/+Gosj0RlYSOe4ynNOy15RyErknQiYiS7be
         Wa6MO96L31WX3vNoC2viiiA0hnrnWZgJzcB1NlA2xq2eEu01XsV+UYjbcBfIbaZ9z0QA
         3xvhvPYfDqmlWIFyaKqmO5VIr+oXckVj4uuPRfAI3DU2gRaL1F6XVmqjyEMqXkpoRSBD
         0R7hLfEKUH+VirBEFDFBd+KIHT9ZBuINuyyTpY/g9nO3uWauw9L7RvQfXWrhqPPQnQkW
         5Q82/DZ32jeuUqSR486wLyHjSMNvS7a8OwOfJ4a0zEM0zzr3RBHTlhoJYZC0JP4K52ch
         J9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759893497; x=1760498297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BlQFQcawRFMEewIt0bOgUlauxcu0MJP5hQDoYscvOlw=;
        b=PFsy9W1pzvovfitO4G86gNmYlo49nPVurdSAYdZ9Eernjs8RjZ+Dzsp4DQJcJxQPdq
         8nLwdlaWoNQOQnFdtY2ZX4geKcgcXaxqWdwzOn8KYXhv1ibemODsmkubWwUXhiHokPkV
         IJqoKTKKf1glPUUZIcZnx6/r8odYxsn69gKr07zBRyGQVY3wCTN6srV14vX4Uy6qQL+H
         iXeJVMWNcGnF2JNVKgt8nXq6IBDQHTtt3RvKJiPoU/4rVnl6afF0yZxispb4mKtzwUwe
         5a+2qRJgdKkXJnHWTPDBLakSG9svVfkEgZMf0mCf0x+e5VbF1V14Hn2hGJIceKuAinhU
         akWA==
X-Forwarded-Encrypted: i=1; AJvYcCUILU+/+hf5ggrFEJinCIsIQzSlcCjf3byHAERpUJ87JHvJHQDDri0jK5Rn74/ecGIi5asFDbTUs7ZB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr/8aS6qPosTXyWo05lNBOrmAz56cAbEEfoIcmec0wDVY7IJ8d
	Wm7jg4Nfgp0QB+i8UT3rh72oM0V4cZSDi/FVxu5nn6VQojkUZ/e8LcxK
X-Gm-Gg: ASbGnct1jcyzbDocI61BIRYPJQLusXa89AZYUehNmNTy9zAZeQyDeIv5uhfIl2ocrhR
	XrD+JFy0AXacmNT564wBMQ41RUc96jc9onNd8B5xcR/erPQhOD9CgYyQhX6hBj3WjIz446PWDzs
	eoI3OaCEuNUtu7JpqdZ6NB40TSehZMz6NZ1fSrJ1DdTD9RMv9fwJuHrNAqoD6hWEQkjLwiVOsOn
	LXR+QkjZJgMSZ+zINczsJFI30pPQbnF4hf4H9cajClSECFQB/dsCc6tOxNl1Q2dairEic2J7C8j
	8eKigdSS3XptwvmGmhWCYowTLmg+JGbMl9LrlkvihxZ4cmoVvX96ttHUV4k+3m2JcY+QajyD57Z
	nK9/UM0WfEWZ2ReP58AnUtr2BWVXossnT5um73QMOuLc+U/wtNg==
X-Google-Smtp-Source: AGHT+IEeKJ+xs0GcbSYEkaMOoq4ZNzOHvQx0Xbcrl6XMXjx/qanyX4b6zdbK6WVXlHpUCKR6ek6s0w==
X-Received: by 2002:a05:6a20:a103:b0:2e3:dd60:913d with SMTP id adf61e73a8af0-32da8163cc9mr2183530637.21.1759893496900;
        Tue, 07 Oct 2025 20:18:16 -0700 (PDT)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f5990csm16527746a12.38.2025.10.07.20.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 20:18:16 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: iio: max30100: Add pulse-width property
Date: Wed,  8 Oct 2025 08:47:36 +0530
Message-ID: <20251008031737.7321-2-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251008031737.7321-1-raskar.shree97@gmail.com>
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The appropriate LED pulse width for the MAX30100 depends on
board-specific optical and mechanical design (lens, enclosure,
LED-to-sensor distance) and the trade-off between measurement
resolution and power consumption. Encoding it in Device Tree
documents these platform choices and ensures consistent behavior.

Tested on: Raspberry Pi 3B + MAX30100 breakout board.

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>

Changes since v1:
Add unit suffix.
Drop redundant description.

Link to v1:
https://lore.kernel.org/all/20251004015623.7019-2-raskar.shree97@gmail.com/
---
 .../devicetree/bindings/iio/health/maxim,max30100.yaml      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
index 967778fb0ce8..5c651a0151cc 100644
--- a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
+++ b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
@@ -27,6 +27,11 @@ properties:
       LED current whilst the engine is running. First indexed value is
       the configuration for the RED LED, and second value is for the IR LED.
 
+  maxim,pulse-width-us:
+    maxItems: 1
+    description: Pulse width in microseconds
+    enum: [200, 400, 800, 1600]
+
 additionalProperties: false
 
 required:
@@ -44,6 +49,7 @@ examples:
             compatible = "maxim,max30100";
             reg = <0x57>;
             maxim,led-current-microamp = <24000 50000>;
+            maxim,pulse-width-us = <1600>;
             interrupt-parent = <&gpio1>;
             interrupts = <16 2>;
         };
-- 
2.43.0


