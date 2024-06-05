Return-Path: <devicetree+bounces-72673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE708FC808
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:39:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30A36281A58
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8278119005C;
	Wed,  5 Jun 2024 09:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PmHN4Geu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB70918FDD0
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580164; cv=none; b=pLEQ3qCyTiANv2VM5Jz/eV7C48YCBcIH0SiGhMIXELQ7tsNX2dqp1ETtPd2gxoIfUWVC7DvLMYbtagvVCm2rtJ5fJVn7C1bT1b7gpVple93ZF7epgwrEJffHishVwPiCnnAEWKz6n8CDeYWKoPnVQFknWhUGcpD3XwMLONMXBUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580164; c=relaxed/simple;
	bh=2AiPNgYn5aJ9kmyFeJAW+F3M18dv8Gy8FjbR8CZ+MhQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=PqNI2VyuarqzK/bbCG1yPZITVpvqwK6W4YzZK4g/LUoMC5VMvC+rf/PIx5h/WZtRcpnvJRWxqHx67oCMHEpiQBNuhKdoz8DTrlhkqX2zvBnvJr67OLZ33JSAPh7HCviWfdCAWzMWDgxVk0W/4aWljANIFQIpNrx2Flt2uhwnyM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PmHN4Geu; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-35dce610207so4861256f8f.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 02:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717580161; x=1718184961; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RvLzM9PWDuCZzQefB2Y3g2EHSJvTBdod+ADOPN2y/68=;
        b=PmHN4GeusMKKD1k+4NCjWc4+cq5s3SiH0PE0ll9Su+K63w6rXGMQAwpu2exPehtBGG
         +pN7ygNJCPv8zNXZiAqApytW1o6qnCNV2Gv3FzS7jhA5qmI3gFXZxKDeKoL8CrUyQwxq
         dkb+38IBjyJph5i6x3KhDhzAnmrSluZmFT2tQN4ZwjX6POl0hKBCyteTyC1qSkielJXc
         KDvKTna7wIoOgBqVBiuOxuPVE424UysaUDOmXAGpKChM8D5yqtzDYKk25M9Qsm1koSST
         rXwjgD1umFsvm/nt0JyRbtcQ0AoJiMEezFvMRXkR0UJFmaFY3bJgRAQDKiGxdc1Irfjv
         lTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717580161; x=1718184961;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RvLzM9PWDuCZzQefB2Y3g2EHSJvTBdod+ADOPN2y/68=;
        b=u9V4tofgrBnxpx7H0yjVy85h8DKZNHIL8QaO0GgnXe/TrOvt1A+3cOwGOHXKDBFDRj
         HPYV8tkWB3KoJwImZEcJfntqyHAPfb0misB21EY3oiOiHBq+/C/sM5rY+3tYYP9/r//q
         Yzee1YzBj6Ir4z12c+uXhDbvSDaXvvUEBYJyMFFy8yhgGMs/9JmDePqZmJeS+AQ1kd0+
         rpn5sOI4jqfP8J3KM7Ykf/w4ATAsXl+a2X+hfACeW9zuUe3YJ0B12oqjZ1l2ZfBg3BhS
         lX6Sfn9XUNvg/sDn1v5wZwcrC8jJlhhbmQU0zEY6z8ChtkXQp5fF2tmxc981mce5tXcI
         /bBw==
X-Forwarded-Encrypted: i=1; AJvYcCUVqq+4yxqIU/dHgZG/NcdWCc3FVYzDeFryD3FkqCS1ydAoyM2JbXuBTv3TAR4KSMVwGGpHYxU0hDPONMlakHbYm8nKkPqZPDIQnw==
X-Gm-Message-State: AOJu0Yxfb4gC4nxpa6LpKckcGoidwNqnAFLVJ37JboY+Nk2rYT4gIkqJ
	OPWAPu3HiygRvADNS+5xa2X6rjM9I5Nj6ynMIzZ8agyG200nWqQ5MgcwsAQAId0=
X-Google-Smtp-Source: AGHT+IHtrU1+uKM8tZ8aHtiLuZxzOra0uUBCT7mFMeP5oUJarPdWQFzzhLROAKv0kBYHXRcX992Icw==
X-Received: by 2002:a5d:5747:0:b0:35d:bfe2:baaa with SMTP id ffacd0b85a97d-35e8406defdmr1840962f8f.13.1717580161377;
        Wed, 05 Jun 2024 02:36:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35e7e07d7besm4303860f8f.18.2024.06.05.02.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 02:36:01 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 11:36:00 +0200
Subject: [PATCH] dt-bindings: phy: g12a-usb2-phy: add optional
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-phy-v1-1-c819b0ecd8c8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAH8xYGYC/x3MywrCQAyF4VcpWRsY2yriq4iL2MlMA86FSeuF0
 nc3uDp8cPg3UG7CCtdug8YvUSnZcDx0MM2UI6N4M/SuH93ZnXApVSak9CzRdq26NKaED8leclQ
 M8mHFWt7c0JdEkk3zFwNd/DAyDRwIrF4b/68Wv933/QeVz+oeiQAAAA==
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1068;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=2AiPNgYn5aJ9kmyFeJAW+F3M18dv8Gy8FjbR8CZ+MhQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYDGAU1XqPzj0KlIZpjxSHWVqHuAwLj3MQo+kTCmC
 fA4KajqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmAxgAAKCRB33NvayMhJ0TEGEA
 CjSucUUcLIoEmjR2q1hRGOWbefCwLDmdWvKRIPAt4kaVSs9mp1i61naayqw0ICNlct6wrWsH6ZpiqE
 9AdBsWN17df0MP+53I0k6On5hDJgAQryTZ73iXW48oT6HTJFrhY41AYguHchUmhM9fpY7UggYrtGqw
 nerealIaTlYLWj+zQl4iFPhKBI8mWp5Al/tjrzK8OXVQcOjja/6XOhGkyC/KDejjKpSCSzwoN6zO0E
 JFUU2HEz3jiSzjYGE4ehI0gc3n9O8uVN8p32KA0G71eLpBLA1QMoqi8xRqquZV11yrL7CgZFIuusaO
 pL2O+hspt/LpHYBQKnKirP4wJ60QHupYoK44J5vqWLN6iDWa8NU5Ryb1gastIy6g1y/FSmSEOh6b7e
 DBuVG6tBWGzmZygywv92vfxq56u4Xe3nrzhEOM77ODhcrw7CmYKXxOryodjgP0dOAy2LZxNI+fXq88
 o4dgJuPV6hZZv6wui8kEh28f+IJK76l1K+YdA1I2fox56IzjnDdZ7JiV+kOn+jsmaOwJdRZJjP54/+
 D1TeadM2vuJks/ZHLTJ3iLVydnLQJo2A6uWEDTWKzCv5nFANE0pve09r+xLvcsIdWBTHnvsdnGn6Yx
 AqVnEUrrgeUnOmVYrVCAmmuDd+oT/gnaVLX77Ch+gMZP9EFDWKmVCscsny+w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On newer SoCs, the USB2 PHY can require a power-domain to operate,
add it as optional.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
index 0031fb6a4e76..1a0c436b87a0 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
@@ -41,6 +41,9 @@ properties:
       Phandle to a regulator that provides power to the PHY. This
       regulator will be managed during the PHY power on/off sequence.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-fixes-power-domains-phy-fa8d34ea3efa

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


