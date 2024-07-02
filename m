Return-Path: <devicetree+bounces-82369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C03924169
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 959251F21A82
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397861BA899;
	Tue,  2 Jul 2024 14:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a/j11lhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790861BA892
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 14:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719931974; cv=none; b=eSoVyKTFfcSMyZ76fSgC2mrOEucrqrv52RpFnsPzRqFvDdUxW8pJAODYw4wOkyVGg3riZXU8Dj4bJA0HBTwNhR7ntIbPBfIvNDpxfFpmBP6aN9g0K9rkz3+gqofIwuR6pn485dHhEw7kANKXOi5DVpuJ9MF6etJpduVSPVCTNrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719931974; c=relaxed/simple;
	bh=s2/SN+aY294KJBk46ApgAbGwP+XkttNkKRk5A23rcOg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BDOeyjh1mL5OboEpM7as1QQmBSSGin1ZnYiBgFYCpvKmYTy1ix5uojMcfiA9Od0XrIisI29AlxGOQgssVgO4IXc2K/LMoRVVUAm1wiIz2kPfUBlIjrGkKCe547s839LROYHJwaTl1iibXjzLo2K47enXtiLxTgnVvOMVAgf/3CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a/j11lhy; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-36703b0f914so2725086f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 07:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719931971; x=1720536771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cqZRZ5JDAvuLJzijPzrtSFCWbmFBLmXDFXM1EkI0A84=;
        b=a/j11lhyKrL3SQqEFkjo0RH+Ed7/lCjnDCLkuPe5hdG9mm02/gmMXC7+91ejsKP0X4
         p071mue58al6hQt3ffr4g5dOUR2XXPmb0zrtazQ7b4AovXjC15jpw4NsnPR3cEVlLXw9
         xFDcwtGuVjicYsOTDeMRvOmdXwsnY+kTFl5wliJp3rPZmEU8fPByGWG7ti/DfreZXH1B
         3R/9xfiGOqfTPve7ioTCxxauNXGEdLCAUZTXOVJVdzy8vs1C2ieMn4jHctM3+p+X0WkD
         2MgdXhdTGwiKh2o5anjc8sCYxtE8OMeiNvOWr7l3wG5/2tjFcXNGUgNlBNqjyYy89DAj
         NWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719931971; x=1720536771;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cqZRZ5JDAvuLJzijPzrtSFCWbmFBLmXDFXM1EkI0A84=;
        b=KeSE7VezjCq0pGJ1G9XNVQLaFoxN+O0yH2JiUYvB04BHWlK+A77hlwfzdMwVzYA7Tf
         mVUd4s4TdecjII0GQniuKe0AHnn8in3mUPUOSViMdU8DdDq+2qh9NvqvXr88tzAq9y8T
         XcM8+DuiIFpqtOG0ZdVGt0RAxHhy2wQmKwJmCDGZcjl5qjJVODaNLK1HIPymXIYpEJrg
         htlyAjIrkKmpx60WVkAJ0we3tWXtWa3HJ+m52ps/P9z+ZpqBVw5PF4JNcV9iUf3tAUaa
         Qt+Cc9WwzCAlo7GdVSJ59JzpWqD9ZVpe+oAXiFWBqQ33VFMJPvTENwcnKOINIO2d62kp
         ZrAA==
X-Forwarded-Encrypted: i=1; AJvYcCXhaGm7czzc+5fS0LYW5XS+AKLmyjFare5fyl0h9STde7dPWsRaUpw5p3ncg8tc9vyOGcQSv5a8RRQTW80jarFD16TKjc9FCKuhvw==
X-Gm-Message-State: AOJu0YzwdruBX4nuscqKUAtRdWh8sH8HWQbEGF3G6Upop/BEj2RX3ImG
	gprzhTd9epy/Y50IMvVa4uZRCj5EmOUXjKEMWYDiUdRAGTew/MCW6RZguKw70TE=
X-Google-Smtp-Source: AGHT+IGrmxHz8Jxtr4a4AWna5zv+DQYMBNjG5ZT83E29iudMDCAjgjL8DXgVHasB+X4Bhig1Sha5Qg==
X-Received: by 2002:a5d:484e:0:b0:360:9e8b:e849 with SMTP id ffacd0b85a97d-36774f935f4mr6734918f8f.31.1719931970887;
        Tue, 02 Jul 2024 07:52:50 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0cd712sm13468483f8f.20.2024.07.02.07.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 07:52:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amit.kucheria@linaro.org>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH v2] dt-bindings: thermal: correct thermal zone node name limit
Date: Tue,  2 Jul 2024 16:52:48 +0200
Message-ID: <20240702145248.47184-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux kernel uses thermal zone node name during registering thermal
zones and has a hard-coded limit of 20 characters, including terminating
NUL byte.  The bindings expect node names to finish with '-thermal'
which is eight bytes long, thus we have only 11 characters for the reset
of the node name (thus 10 for the pattern after leading fixed character).

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/all/CAL_JsqKogbT_4DPd1n94xqeHaU_J8ve5K09WOyVsRX3jxxUW3w@mail.gmail.com/
Fixes: 1202a442a31f ("dt-bindings: thermal: Add yaml bindings for thermal zones")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Shorten the pattern and mention source of size requirement (Rob).
---
 Documentation/devicetree/bindings/thermal/thermal-zones.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
index 68398e7e8655..606b80965a44 100644
--- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
+++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
@@ -49,7 +49,10 @@ properties:
       to take when the temperature crosses those thresholds.
 
 patternProperties:
-  "^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$":
+  # Node name is limited in size due to Linux kernel requirements - 19
+  # characters in total (see THERMAL_NAME_LENGTH, including terminating NUL
+  # byte):
+  "^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$":
     type: object
     description:
       Each thermal zone node contains information about how frequently it
-- 
2.43.0


