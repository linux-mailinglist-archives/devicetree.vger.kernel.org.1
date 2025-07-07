Return-Path: <devicetree+bounces-193607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7533CAFB04C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:52:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B070188AD47
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 495FE2951A7;
	Mon,  7 Jul 2025 09:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MASQr36U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79F7293C4B
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751881830; cv=none; b=NehoVdiSXzlv+QIbTMjyFCgPs9dUEmAi+Sd6mG+XJH+tBnOBjIHU30OyXoygbl59zmgrl3xbiughklSwWdzX8oJeFOHraHH1B+MIROmPCsnyVYBCfmveoY6IeTcciCfl9Kx3rwsbnYa85rzSg7SlvaBhNAyJrzhkhS3Ef64RPnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751881830; c=relaxed/simple;
	bh=35OCjncpjipJkDFoyGMGdc2lgjRMhccLUmqYrDrHROE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nyqPmK8dgMKK9JjznJLZIGoYiyP4hmL3B23KchJNXCko6S/sOyqb0AojxBSsg2ozYOm/YSUu4eXQTtLWTglK8XTlSsiZ4EFZXQMUytXpCJ9nyZwH5hQS2qngM1WDS2r4XRKMx2SiP2KA40S+rXvUKuNdiDx2YMYQFwHXe5UTRWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MASQr36U; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a577ab8c34so386818f8f.3
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751881826; x=1752486626; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GXFnfOOJYhBfICKorcW7Y1lqLwAP+51IB28GYyetozY=;
        b=MASQr36U92BHmelCNasP4gydx1oePXM59CHWGK5jXuteC/9tn3CpKKzbSpOGPQe9Z9
         nQjeqQZ0spIEF1AyYFHS1cTNbkTkzSNZWhUFbIZWMQ8H7oJyV1bAB+BV8fWAtwzBZOBj
         xjUNYj52DCJGuHiCkl44uZK4cd4kbXFUuKiAZgTgev1Hrz9etb/HIj1E0+R4vXZRi9E7
         8X3O0GgZVqHJIO4aPc4/8YzKf9dZFZtoLU/X736SRyfL9kQr0/6pyCoileYnEMYaXfkX
         ck19PS4id/q68oLW5hY77bgE+ctn+/xVu3XLd4iVzYkhdbqXvmHfaAgycFkd9emJMW+J
         lvMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751881826; x=1752486626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GXFnfOOJYhBfICKorcW7Y1lqLwAP+51IB28GYyetozY=;
        b=rylNnvXofs17+tRh9ysjODqIJQKEBPJ8yKk206jTCsOJmh7kYGHygaTfQLlbrmegJq
         kkibPUIQZTeg3xtbrlYrMXr9ZKgZm68V2DPcvE7sDAMoxqa/SlYwbnJSUc1Z+VeYB2j5
         CZjzJBQMZxdn8uQqnlabmIBIITOYA3nfwEneqGqGWW0CN0bqRoPQCZ8TdN8whMGGU/wB
         N5/oIEXy2R66kaZg/J+c0ywoSElg49DcFUv7cWvfYiOPDn8dJCVqvtHgKyjGGmyksoEg
         gQsFSUxspAr2Soe31tUuOg0avffckVM0TpVnG/uZ0WiCQfXVGnKfqpvviXXQ5aH97ta1
         WULA==
X-Forwarded-Encrypted: i=1; AJvYcCXEvnCmPRaU6xlZlqTENAyRAzOKxWfYZaBdVYYbMp/51DWDbhnPSHJ/CwKaLhSgq57GhWwQ45IXC4B9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2gQqzQcmOZZ+nM//JRlCEBO5v2c6W3s7Krj9UFlcFaHsj796G
	4lX73CgDUXy6Yx3C8IxcBxe0BnQNfq+6EEbD58K7Qz2k4KHJKd8NaXXSoXU49iPDLGrnysRA6Jb
	J+QTj
X-Gm-Gg: ASbGncvJxbeW/Dcn1MkwXAf6OjPWGDUTqytMgCeHTggsc+W4j7TyVqM/zL6He1T+xRI
	VFzaXm1mqG7gixUHwXPyn0mrjtT/+A8t6Da2xXtulWCKH8sH5W7nHd0AHac0EAdCWtm9SUxoqcD
	PM3k17Yja2q1e4mhVnobXDQ9xEA54IqGQxUHIBJ6ZSd/KHpP5HE3P5dSlwwKcO/4yrUNhM6hsAo
	eRkkTzwwVXeoWnu7gO7u+ja5rFxVefrU1xZ1rAXetvAM74f7SQ7bc2Zw/+/tD3gTxmi4v3UmfZp
	itdfJOi6s1PMqyAdKpSKJmcCGh8W7STixoQ56/eMhtOvtRc44PFcnDnLsFUldAZDBNioC4CJ/hU
	=
X-Google-Smtp-Source: AGHT+IFxiu0G+5YXwffxCvLR/dJosKTSDTmxQi/9EfK0g+CXahfPrEkRqEPOFFF7ZnVdE60AvIrrog==
X-Received: by 2002:a05:6000:2d07:b0:3a5:8b43:2c19 with SMTP id ffacd0b85a97d-3b4964fdc81mr2162438f8f.4.1751881825858;
        Mon, 07 Jul 2025 02:50:25 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b49cb46c61sm5670871f8f.63.2025.07.07.02.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:50:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor@kernel.org>
Subject: [PATCH v2 1/3] docs: dt: writing-bindings: Rephrase typical fallback (superset) usage
Date: Mon,  7 Jul 2025 11:50:20 +0200
Message-ID: <20250707095019.66792-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1475; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=35OCjncpjipJkDFoyGMGdc2lgjRMhccLUmqYrDrHROE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoa5hbK/qWu4PWrJMdllFBjL3Py4EqOd8xSxGSi
 c4seHxuXR2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaGuYWwAKCRDBN2bmhouD
 17uND/0ebQzn2NtraGz9v3Jw6ULdK5JM9tVhhC71q1PtT1TsXttHulxyJHhj4/M+4XUhlf8u2Oe
 feNkstbhhejh7tg9KdWq4Z+q0FpID3C43CL4scnwT+VKkl+tYsNd68qWIT8YzRZSk02q4t6oZpJ
 72EJOIX8jXlLkgdDOrZFtfSXZV9t5ZCjDCpPbUDfNaR+67VB2LhDyjR5T9+QxGaJ0Qqs5OREuHs
 Xv148Q13z4cgyryj2SSVjbdU7fesVGwn0XxFRP/RsCNpAUh1+lU+BR0VYTbDfdK2yFtsK+SOtSo
 OLj+VGWn1NISDNAIMT6hpS2jWSBHTI9Sjk6h8bFOyKK2Jo2PdGYCGDUAlAxH4T3H1lspl/xiSnj
 ByJ/LO+XzI2sRdTBGhwAGYzKi7i1HZXoyXvL1BRyqPGvNrviJJhCfXVB0j74NvPFuIBFIUDlygX
 zFuWiahemsN7sy8PZHI+0FnnRafxm1Jvx5/41VCuhxMQUFxRqQI19tJqzpfY4Qsbu/NXvrM98SW
 ub5uwp8nIJfxKVWZks/3myTLZLiz3XuYGSSTbvQrTlu3NAveHKHHwXFpsRf1uUib2hv97UWr5Fg
 M1CE6IKu52ocUOokMxeYFsTJ5BHZQufTDVNT0wDO2wwETb1ZA65lzyZYZdLonpJT0lSgclk9Lop fYynXNIPrpJOKoA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

When speaking about compatibles for new devices comparing to "prior
implementations", usually we expect new device to come with more
features, thus logically it is a superset, not subset, of "prior
implementations".

Suggested-by: Conor Dooley <conor@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. New patch, superset suggested by Conor.
---
 Documentation/devicetree/bindings/writing-bindings.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/writing-bindings.rst b/Documentation/devicetree/bindings/writing-bindings.rst
index 1ad081de2dd0..66c94b5adc87 100644
--- a/Documentation/devicetree/bindings/writing-bindings.rst
+++ b/Documentation/devicetree/bindings/writing-bindings.rst
@@ -40,9 +40,9 @@ Properties
 ==========
 
 - DO make 'compatible' properties specific. DON'T use wildcards in compatible
-  strings. DO use fallback compatibles when devices are the same as or a subset
-  of prior implementations. DO add new compatibles in case there are new
-  features or bugs.
+  strings. DO use fallback compatibles when devices are the same as or a
+  superset of prior implementations. DO add new compatibles in case there are
+  new features or bugs.
 
 - DO use a vendor prefix on device-specific property names. Consider if
   properties could be common among devices of the same class. Check other
-- 
2.43.0


