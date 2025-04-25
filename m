Return-Path: <devicetree+bounces-170963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E80EBA9CCAC
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F75A1BC2377
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 15:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E135288C92;
	Fri, 25 Apr 2025 15:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="ZHwq+GeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F2027A90F
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594330; cv=none; b=DGYrJ9H3gdI/WEUl9Jw/2OIBAWW2IJYv14KRvnKPCsU4vYXGtx5vgkKVz67elGVATjZ21pSMy2/Wdipgokw02w2ekveEQwrX2ZamqB+WznfETYyACvhOIJ59jlW6eK30DRYHhmqjX5LFVWNXHBB8izC1rPSXmxbxIKS5YLOJCIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594330; c=relaxed/simple;
	bh=wDYHCLa5R2Lm8PFv1HaWiPbvSjf5XzEvOyMvWi1H6CY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cNSH4CpTKMfJCUumMErUv5weEYgo7lBikzGi5gPYPK8Cka6xUS2yc40OCG+wvISDxKEbymV+hPdW+JcOZKfISt7rdhbQyhjCUuCl8pBNtXjCPurOtqoHjn8Z8d8uX7qRVB5Dtuda8qJhe9fMmyGVubc8d5IqQGdRMu0G/lk4+fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=ZHwq+GeP; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-acb615228a4so595313066b.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594327; x=1746199127; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PGhABSDncyCkqMF1m9WG+uwjNnjeaT93SjRTLfv5Zno=;
        b=ZHwq+GePs+RKCQobQ9swTjG3tVZNiCPZNr0zGEbFHlxgRETxYR4W62+5S9Qsjuj1xg
         KNY1+TXArniXt/OBtRxLicDD2HoiXwbDS/lZHycrwnCpsa1YLnd3TQ8z4nBLFUvXk1mB
         K59QofHgU9nipZfx5dAY4eqcdoLepMk5Dkze2em4PnmpjAPyiqRB1UTMKgvFcEl9/zeK
         hEwqBb1SnpN3dFcQ1gRUZMQ3rrStUu9hrXjoSn7mq4++GE8gIHuCNTHEJnf0thS5gsk4
         oYbDFRx9Vs0a51dES32e1sVlTII1Z/DrpRmoxOO0wsnRVVwhNhCgvOBRW5LJKejjVLU0
         4K/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594327; x=1746199127;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PGhABSDncyCkqMF1m9WG+uwjNnjeaT93SjRTLfv5Zno=;
        b=aqLlzLG/D0zAAPG7RsF88ZPzGvDDUGP5kGCvCr8vVuV+Yj7KlfNyOZ9XBU7yxBImkL
         WbBUbIF3LEoOmsNMXzWph/hNrmwPl3yGLlBQ6QbtE2WbaUlpquH/vXOpZadKhyzvp+T2
         yiW2uvkYIxdRdk65M5Ro30mQZKYRWjqtiP8TbEelOwwW3QUFbrQ9uad+ORsVi49guNfW
         hJ1ltUUGzEfdDrYpktNkKXC8C69Epi9//xeIAm5yzy0cgGIYV2Zl6ITHqP3alFXjlsNA
         EuHh2qrrCG1m8TZPZ8gg8wyxDjb3OFSDIjscAKsVB+edLzUiDRRCyAP42YSAIQVJut5v
         ymqg==
X-Forwarded-Encrypted: i=1; AJvYcCVTwcmq4XhGbpYCSepUPr1PFB5W7aqeNat+9es474HoNFT4U+HYMnd+PiehGbIPoAE/ohjnm2ecrGfA@vger.kernel.org
X-Gm-Message-State: AOJu0YwWDpRlTwgFfxs3UyIOfUpwYkLvqoOOQs3/pkjGjYQZLDsUsrml
	ZWhp8hbOIEBbPD0EXFIChvdaLt3QvkrsifTActHDswjgQnF+4YzrK9em1odcLl0=
X-Gm-Gg: ASbGncvfpf9RieVRg7ILCjEaucytHcegCv+Sq5UgjPCQkBVBjZGtePyvwkMOdvPhVlL
	2DU/+wrgW884bU9Fh1T2RUGRMvHZQdgExTOSmB/fg654qNYucbM+1/77OkoHRuzIAl4R9euFojl
	YS4q7OUVuCNdg9Db6xXKUhAUeWAgsb6F3ABTxXMspoeqbMZc3rUSOoGtpyGWQuz8XepmexB7vKG
	mm+1mjMczdiwc6ABI/Uz3kAGNoqiCZTt3Qi8HEygzn7Kha5wC4tFwSIVmWR4wX6eqpeP2dJF3z9
	4Df/DgX/N1Tv2XD9tGd4yRAWSGN5Of74vDoKe+dI5RbC9ho+jd4Nf+xPusWrXYVD/B3v
X-Google-Smtp-Source: AGHT+IHtzafs1U3OlDFbdl1EHKhqDpSLv5FVfv0SchkozUHNmBnUPWs9GEdrQlZ8/5oMkLAgq6/HDw==
X-Received: by 2002:a17:907:72d0:b0:ac7:e4b5:4827 with SMTP id a640c23a62f3a-ace5a484e6dmr564732266b.28.1745594327250;
        Fri, 25 Apr 2025 08:18:47 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:46 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:07 +0200
Subject: [PATCH v2 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-onboard_usb_dev-v2-2-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2

The Cypress HX3 hubs use different default PID value depending
on the variant. Update compatibles list.
Becasuse all hub variants use the same driver data, allow the
dt node to have two compatibles: leftmost which matches the HW
exactly, and the second one as fallback.

Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 USB 3.0 family")
Cc: stable@vger.kernel.org # 6.6
Cc: stable@vger.kernel.org # Backport of the patch ("dt-bindings: usb: usb-device: relax compatible pattern to a contains") from list: https://lore.kernel.org/linux-usb/20250418-dt-binding-usb-device-compatibles-v2-1-b3029f14e800@cherry.de/
Cc: stable@vger.kernel.org # Backport of the patch in this series fixing product ID in onboard_dev_id_table in drivers/usb/misc/onboard_usb_dev.c driver
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 .../devicetree/bindings/usb/cypress,hx3.yaml          | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
index 1033b7a4b8f953424cc3d31d561992c17f3594b2..d6eac1213228d2acb50ebc959d1ff15134c5a91c 100644
--- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
+++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
@@ -14,9 +14,22 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - usb4b4,6504
-      - usb4b4,6506
+    oneOf:
+      - enum:
+          - usb4b4,6504
+          - usb4b4,6506
+      - items:
+          - enum:
+              - usb4b4,6500
+              - usb4b4,6508
+          - const: usb4b4,6504
+      - items:
+          - enum:
+              - usb4b4,6502
+              - usb4b4,6503
+              - usb4b4,6507
+              - usb4b4,650a
+          - const: usb4b4,6506
 
   reg: true
 

-- 
2.43.0


