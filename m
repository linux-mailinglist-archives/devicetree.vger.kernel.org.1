Return-Path: <devicetree+bounces-140244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 333D3A18FA1
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0AFB37A1483
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07A4521129B;
	Wed, 22 Jan 2025 10:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QRAL4/GA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946F20FA8B
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541509; cv=none; b=bNYLqRUJuNkihAsvIvRoyPeuBLy8Img8x2bplmztGjtsSOFLkN9rSmxeIEgZkhPmjMX/4M8FMpvf/hdLf6V6ttQB+zHyjHA4jEsDJoa0c5HzOPPUu0IMpECxFP5JrolLdRkhcOsuQtxZ5qv07n/+jDuOg5iMZTQLaZfpQ/Ntrl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541509; c=relaxed/simple;
	bh=NpuDuCt4ALF4oICaFLhz7K3buKHpxyvWMHv4701ZSw0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kSUhXgHBgy5AC5XbXEcbK6Ra0DLt+1fwTyZihMwL6wtdym+mdZ8hCq5+eavqKQK0fQ/slElyv5/ZTFrysZETWHj2XcoHnj1DGxK6bePoqkgGKQMAOt8Z6BKbKUY1LpXmT2sAT88I9z497v4W5Lj3KK5/aUTOGTJGD0TrpTuZksM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QRAL4/GA; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso46267095e9.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737541506; x=1738146306; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IpIWGgNd2lENHo+vgBhA/C2LOLlWQiS8zO/AwCsXh4Q=;
        b=QRAL4/GA/vEd2KTU7CnpVxBpTc9mIhzv7qfw7GSHlT1kWRZ+w90qtBSXEV5PJGGdoo
         dSQCLZcJS6u4iMK23wts7yL1Zawrp8hXViR2MK1JOdFLGCFfb/fnP7jUQMS9be1P+6YL
         6n/Wsdcamx39yGtE/Mec5S7R18s5x8Lc7swr1/JIZPia9Ayd3+jpCowO7OM0P/r1MYbf
         DzgEegAZsAInrNMgeT4wfFvEVWSsrj/FI5ReLqKappxxIk7wZ+9XYmy/Edyf0cuAkjsw
         6VZTXd8H9U/+aD0nfcshdVL/oX/aJtXkjClmI2IURWPfmRzW/Xm8LaLQMiHu6JoSthlK
         8U5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737541506; x=1738146306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IpIWGgNd2lENHo+vgBhA/C2LOLlWQiS8zO/AwCsXh4Q=;
        b=GOZYbzq7EQrHSn8BOLEPV/dUtQN03kY0a8lil0axrpUiLehLp/TZJEm1sMFlV/Gpry
         9RrRZIx7/VSWpF+YjXUA05b4ZC3tsDYBQAsa2PkbF733gKzHnduuTDdHjSNj2eWvoYal
         CgsyBPNzkpv7QRvlNZZ9q/3uMkNPVbgFYCkf6Er6vGh7Y+1h3EIIgtsOsPcDR+LZ19zL
         mSNZBXDouM9Jvkc0oW/cYttYcoM3QS+JJSGKd6bJAZQbQy3euCz60B6z22SatOecCMTn
         H0RqvXsnNUb8tQqfznZYACQmP+n8ku1cpwJ88fQAmXfPBQZsihfbUmYrMbKwWAlRyDWX
         vQKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4Mw8BcAf3rgh7gM2dvhAUclAFVSC5ULXYEkKURJqqgi8925C5t7BHaDI+tdGca3YVaedi1yHOW4k9@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ2mHbj9yLCDVNUWOKeBQNio1jb1HYNL/nA5qE0mx167Mqilqk
	Q4WkOwn8kzBiC9XmfMCZ5Aka9b4QVsgI4vxIyV1ngF2HX60QSWRhhMCqg5jX4djzilMqzktavP3
	6
X-Gm-Gg: ASbGnctLystAPqYJd3Jrxa+5cYHB9cu0vY6/GdKayYjj1HFyQHCpP2ja/Mfhxc60Od2
	ZgOJ5EDzPp1VzjcxTIjebu2YNszJ4LRBmm7PeQC3n7WogEk8BTR0j7cPBzdktJLftAS2jnf0Kwr
	w7Bksgzr7+c7+/YiIANan9ERXzeMpDLy8Zh4u1od6pjBNpyDsznUW6rCcAN1Hd0bGOwEOCXTn6H
	og98halrv69pS53UJ+W3u0+Lc6DIt0FAv4X1wtrjbnpkWbieBxfZuf6aTyW52nX/ok=
X-Google-Smtp-Source: AGHT+IHPUrmQOCnYkU3EXFbKGz2qcbqTpnROon80fji2JKFfsS7aPn44TzE2C/9th1P+qRkaWMnSzw==
X-Received: by 2002:a05:600c:34c5:b0:434:b9c6:68f7 with SMTP id 5b1f17b1804b1-438914376bdmr167252605e9.26.1737541506526;
        Wed, 22 Jan 2025 02:25:06 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31d99ffsm18631675e9.29.2025.01.22.02.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:25:06 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 11:24:32 +0100
Subject: [PATCH 1/5] dt-bindings: mfd: syscon: Add
 ti,j784s4-acspcie-proxy-ctrl to second list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-am62-dt-syscon-v6-13-v1-1-515d56edc35e@baylibre.com>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1025; i=msp@baylibre.com;
 h=from:subject:message-id; bh=NpuDuCt4ALF4oICaFLhz7K3buKHpxyvWMHv4701ZSw0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHM9cli8RF2J29E4eQ0s3p3VR8GXddT+3V5rc/NhWX
 RSdUsbVUcrCIMbBICumyHL3w8J3dXLXF0Sse+QIM4eVCWQIAxenAEyk5xwjw6vMLTNPaskqXkyt
 UPoZ+vW41bPIK3I7xVW7jC411G93MGX4K3bXVLBW0HWD8lpbE8vdN+73bn7cr9PfMnFfxqtmKU5
 VPgA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The compatible string was only added to the select list, but not the
second list of compatibles. This adds it  to the second list as well.

Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index b414de4fa779ba3289a5f0d484b3c7d0341395d9..0e68c69e7bc9ef8c2c96f0e7d1b5d88eeab2bfba 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -213,6 +213,7 @@ properties:
           - ti,am625-dss-oldi-io-ctrl
           - ti,am62p-cpsw-mac-efuse
           - ti,am654-dss-oldi-io-ctrl
+          - ti,j784s4-acspcie-proxy-ctrl
           - ti,j784s4-pcie-ctrl
           - ti,keystone-pllctrl
       - const: syscon

-- 
2.47.1


