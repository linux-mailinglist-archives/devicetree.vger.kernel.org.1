Return-Path: <devicetree+bounces-42405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F78F857713
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 027F81F25FF4
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70F35179A7;
	Fri, 16 Feb 2024 07:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A0NxhxKU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9841817741
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708070155; cv=none; b=f/eKcK7ob1v6x0z8oWEBTWCRSzD5PoU4AxauV32yWIbjkblKBGR5+3d+eEv0O547cYeYgNRGoDIqjEOGlEV0gfDtIXoIFqMvQ47eonIexTBidNYPKLuxP3EeIDZHgv4Bb8lZ2v9o1xbyVW3gHgSDVn8ffX93gwIiDr6Gc2KMwD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708070155; c=relaxed/simple;
	bh=p92qClcpEb5JX/EeaVZ/9X9wSdFmQ4Oo0VeBW6x2QZw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Os5PDhRM8jmE+9SKwEqqNpa1T1xPRHMyx/oB2+LJ62b6PuZeM/CcE01I4T0t34GEKzAbvgyMXBuqclMim33DVxzhmGJHfjsBlhAut2ng8m6VrpACAh+vUffRgYvB2sehzm4jJVLsz5JmO6rnivhbR3T3JnhBD9vaVc5MKeEyzLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A0NxhxKU; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-563d56ee65cso521592a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708070152; x=1708674952; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rOT0jdNXZvIhcM5Ie5HqkhIcQqrl3AOpRJW0bZ4tw64=;
        b=A0NxhxKUIJXOioB9zh389SIqoOo7tJmMNZdTEF7upifsMTn4JvKYMjSrmknPt0Hfwn
         dx2qZKMPzXHz/J5GKCAfZu2L0kRxvugTA7wcUUD+WVGuDoExP0YTDMW9D/G9IDfLTIf/
         T7aXPGayKy9fNQFd2mRMoQ5jYKnKDn73q9V3lTN7vRVsjiEykPyDm+m4OZa09SFyEWqD
         /3Ic76isUt3kW7fYStB4SHhT7/QTpGx9z9wBuEkraCmuUzRPx8hoJuGOVvUikuS7+6Ob
         MpU8rnh6+5MhHV6TBupWpaxPwnPNF/pL1M7YaD7uTjFyLmnjBrACo2t41Yd/AgsVFy9H
         DzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708070152; x=1708674952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rOT0jdNXZvIhcM5Ie5HqkhIcQqrl3AOpRJW0bZ4tw64=;
        b=IObhLXY5yAJOQDP/3U4FhK8Yf8z/xl99sP+C6bHBtIMtnzCQX/2sqI73fVVzVPaFbD
         0t9Ql+oPZkRB2pU3h4APBCJRKNroDpH3EXV8jrzmh74w7zgi4S+I7o0mItU2Q5XozKPX
         r5FZMKz28IKRKv8pZeTcf3MJCysf0vkETQoxq9q+nb1FW1IeHwZLbvOqfFJ+vKsvlZ+I
         fayaRAymsPkqnt/jTaROn/F/PpplyQzJ2VxbPp+S4wO8vIRbGSUSDUw0Cf+zBp/07HTj
         8eFZN5Kn1AbhCIqZ6VdmzkX32sBjwK9F5TcWfRs7zJjcLDowD1bkBaHiYD41nafPhDzr
         VLAA==
X-Forwarded-Encrypted: i=1; AJvYcCV9AvHcWju09EUuvLpIZKCZ62NJEODgtUNGr78J9/ejV0FgtSTOKhOc1Mx08Q03Yc0wWhBo0xXLFm8qee64LXARuIMDPphvSPt/rA==
X-Gm-Message-State: AOJu0YyxORfjFg8sVjQ7FQYVsN8cyYT7ue9ihM/Dl4mYiityRFXBqagc
	gyVqONbn0NkjXb5F94i5m6ZvOjxJvLaQfwm+2fnQr+RDCgb/7DLJzFGWrbU3HE8=
X-Google-Smtp-Source: AGHT+IGi4VoANB7n0/XvKMPIaGqywZZxiiFZxGd8mDSeCQE15ATfDTvlu8TLFahHYfmOlwQMypxqbg==
X-Received: by 2002:a17:906:228a:b0:a3d:eb7b:8eed with SMTP id p10-20020a170906228a00b00a3deb7b8eedmr344882eja.34.1708070151938;
        Thu, 15 Feb 2024 23:55:51 -0800 (PST)
Received: from [127.0.1.1] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id f23-20020a170906561700b00a3d828c54f1sm1300750ejq.135.2024.02.15.23.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:55:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 16 Feb 2024 08:55:46 +0100
Subject: [PATCH 1/2] dt-bindings: hwmon: add common properties with label
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-dt-bindings-hwmon-common-v1-1-3c2c24ff1260@linaro.org>
References: <20240216-dt-bindings-hwmon-common-v1-0-3c2c24ff1260@linaro.org>
In-Reply-To: <20240216-dt-bindings-hwmon-common-v1-0-3c2c24ff1260@linaro.org>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1015;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=p92qClcpEb5JX/EeaVZ/9X9wSdFmQ4Oo0VeBW6x2QZw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBlzxUD6KwcK+jdwBtKcEhhuA3k2bq1sDN+vKWPS
 0iHA9vMDj2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZc8VAwAKCRDBN2bmhouD
 19OYD/0QRb1MW5XOXDS4h5j6vJ5EIr3ySyJMAAbL3LbvZQ7ec5uZo9aMM4pqgMCco0flfVeTRAS
 RpmhCu0HLBRvln8Vysa/BnADSpE1DmnGY2C3MaZh4IYR+jPWK0E1myQJaC4rPSUKfWCQHmKtVIA
 rdK3kx5SfrAyoR5/eAWLbCdYMxjssQpT2OauZbHIRksFaXzVjaaOO/fjYqcSbIqaVeDCQ/2cPbU
 v009TaEe4w9G/iothr1M9KLv9EXe0+bsFd7fQJpEuakMS/GIU97VXohbA3pWnd18fcQUnKqLPKQ
 E24O1HA1ShkUXz9cDYYfmB7OP2Iel/qyUOYRAysCH8g4CusPaN8XTQabvqCF6hh5TppRQMiC3Ej
 Hinsk34iBg6wa5ZIL+/DSRbp4wGfh1PaJxNjxoEEyGlag7KuXKg9tK4IlqwjY9no7MwhA2oiY2z
 Ihdmz6c7ud2do5827Jo8nw9xeIPsaX/5kpLPu4bA3dyQF2Kr+QEiGk/R3BXAwkYZvUG763Pejtm
 8LURenFrypB7FlifLxq5e9Kno05bnJQeu71GBqV/r9sIOqD+B/YIOuyINqaXQ8HYgwOxUyn6O8x
 Ne0l4le1mnxyKRMjBMWu0uM8n9lW3SydxRxP3YN8+g8KhCQ+BrWtca5L/F13PI/zxy0oCxZu9IV
 fyexQKfDkCUQQhw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Linux hwmon core code parses "label" property for each device, so add a
common schema for that.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/hwmon/hwmon-common.yaml          | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/hwmon-common.yaml b/Documentation/devicetree/bindings/hwmon/hwmon-common.yaml
new file mode 100644
index 000000000000..d83f4180f622
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/hwmon-common.yaml
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/hwmon-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hardware Monitoring Devices Common Properties
+
+maintainers:
+  - Guenter Roeck <linux@roeck-us.net>
+
+properties:
+  label:
+    description: A descriptive name for this device.
+
+additionalProperties: true

-- 
2.34.1


