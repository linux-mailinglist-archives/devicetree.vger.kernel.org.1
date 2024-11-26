Return-Path: <devicetree+bounces-124600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD1C9D9564
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:23:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8FA8165A94
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4324E1CD213;
	Tue, 26 Nov 2024 10:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l15ybey3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3041C462C
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 10:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732616580; cv=none; b=akIkEZg1gxSMe2FhEdnwBQJazVcvl9BXpTHJEsUA8Kb5Ng7PZKhxP1nVy5R39FoEDKeDctZrfVYoWE7TEhZhGVKvnuBi+BdzQv/yagb1pNfuYX987B6aiY3T7ZI5g+we9lgRcnolZWwvWu+P9oy/c+9uxA4G9T8RBFo9gxHFGHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732616580; c=relaxed/simple;
	bh=3y33KwWV3X6ptS7V9W6/9HJibX4ha/yfLJjiTJa0VgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rJrsGygZ1iW2ouMaFDqjIycZjN+yPeQkLegYaYQxH8y/DKQ9ZHAw6OwIOAdHftD3A87G4cQ/Ugy6TGTTUV/KWkiDzCFqQ2y3kqpa56KiR1103zfYD8z2XN0PtKbU874v8ixoHQcCj13lMhwNpoiGgqqeG5u5iK7txFSOEmM2yBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l15ybey3; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4349e1467fbso18220415e9.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 02:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732616576; x=1733221376; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8o3l6m5vwxoJdK2INVmuuDNErcbA+zded2JvEzJ8vLA=;
        b=l15ybey3Wds6Mdw9+HRTeyivx1Gxq9fLWS9k5R4bn733MTPr38c2DIScteg6gtbio6
         b/PmtddDWaFHCRt1V0O4U8MRyFJTSMFjvZqTV24tojB6NxapBOwrEYovzGMvOpIrlljv
         16ziclFEfwn9i+pqTxFbnC5qIbsnEvWebih7F/TTGnwdY4I2zGzuwSVygf81JWeB+faG
         eyW0HcQ2oHaKybjMvc9am2cRKOBJWohO1N/bAobu8VeF+0ilGOiXmIt4HwRFAUbuaDr0
         C8tyvOpTOwTtbzI6WcaIZseoP4c8qXNX40oZaja0YmjEk3/GKS1s2NeW8E35cx9WAtcK
         1DVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732616576; x=1733221376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8o3l6m5vwxoJdK2INVmuuDNErcbA+zded2JvEzJ8vLA=;
        b=tb65OoJBqpalnJxZeT24jSSucOYgX3aRem61y+K33EToDI1yaigO4H0BFId0dsXLJe
         q3b1FmwvJpItJmxCPJgwh0VryijD6mlq1GdSF4G7P41QcGdXC8KjY3hvkENRhf3+38hE
         MpIOWDuHXA2g6NL3WoSyn2CrQpq3yeB2DbfzMTTiM0FJnvUebedgwo5XeuRQm7klyyiI
         fYv7AwNl+3nUbMRnU5tOiROEAiNfMa+nes5JmbHEgg6Rxs91+Dcv/NUTrymFbRCmJ4iJ
         tyLKfo62DuVoDO4qrWMxD7oz7TOj40NHlHGz5I0g2wzx54OP9Bk+ru1h+P4bEIXApvn8
         9D1A==
X-Forwarded-Encrypted: i=1; AJvYcCWJmlNr3A6CTwANGjYQFfeAAAB+1CzAkh/UaFk3PAAjMBsHTMj1xGJVOK3YCIsoy6MI9bs7CsbkVx+9@vger.kernel.org
X-Gm-Message-State: AOJu0YwOhCKUChj7T07EjMuE3ZoqykfCDoWP9BTS/g9t2i+M4MDP36ZY
	TwcActOeJfXXnTKlJb6p1a/1J+9acPQshqMp+O9tZ4Lnnromyv/TeWUifDkrWVs=
X-Gm-Gg: ASbGnctr9Ji6tSyIGUIVJvvXL79cXQb5E2H5QqC4U2k/EB4s1CiquYOrxdtocOypOoD
	d6U8jXs8mB0jzzYqnewP1rvsgKT2/b0Sex8o+ii2JAZ/q7DdWNsk7uGc7DFEXK6QVvWEJ8/XR0x
	wLv1D/XRoPG31cxjg4bq1D+nj4Dpnh5Wj8HqzLZSaWcjYyD6P539z7qZRJ5h3wtqHt1noWa4Oce
	84MqAYtRiFU1DdS480g3zdPq/1KsVHkvpvw/UHXz88cWYPCge0F83dVbwpXRfeK+KeS784=
X-Google-Smtp-Source: AGHT+IFD1SUZK/wzIE5wrG+sA6a7sit0Bs1O5qLASWCEnOzhJbRnej/agfqThpwvYDHI00Fmt8odsA==
X-Received: by 2002:a05:600c:34cd:b0:434:9cf0:d23d with SMTP id 5b1f17b1804b1-4349cf0d3c9mr68830285e9.25.1732616576639;
        Tue, 26 Nov 2024 02:22:56 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b01e1046sm228378075e9.4.2024.11.26.02.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 02:22:56 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 26 Nov 2024 11:22:49 +0100
Subject: [PATCH 1/3] dt-bindings: PCI: qcom,pcie-sm8550: document 'global'
 interrupt
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241126-topic-sm8x50-pcie-global-irq-v1-1-4049cfccd073@linaro.org>
References: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>
In-Reply-To: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2273;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=3y33KwWV3X6ptS7V9W6/9HJibX4ha/yfLJjiTJa0VgA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnRaF9wevUPdMUYIutNZvInUfAq/oBR5ApvS691s2M
 lhUxmR2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ0WhfQAKCRB33NvayMhJ0cclEA
 C1iAj0zWzZ9YFUQdMHFxz1FrUJQLrlgSJw27jNJt3k8mgVXcJUZbRbdqqwtiIa1D5aZcldv2+v2KVB
 A1yG6l2UsGgLV2ciLU/cVdV1O2B30t9qvsNQ8Qtj7piyKchR+ekb1PJrDDmWXrPGoPd2/ek8JfLMAr
 HixKHM3zOQ0TRiimKFnfhEzZvf6kjd7CIB3zbJv3IniINoDP8xeuWSqm6ct2mB4LDkuU8QBvdiIYpW
 6AUnrZZYidpu9d/2XPHIiu12S5XLJRUuDUv+POeDEFhhw2rv7LD1yolHog6qq6b2a967zUvupRLyDc
 7iv51wUH5MuS9HvwvLhRz8o76ZwdFXAWDuqgbmMZ2s8H4K+y9h7b/KnJOD6jfDyRm7mYlNOTtCqdef
 Gb+NvobOoIVOpDgTiTSeBTybAytZPRnEntaMRpLtJC93ufg5CuAeTrhqOzle8+us3nfrr2dNurSWbg
 PrRRF6J/Y2+hv7U5BIO1UyKzkCeMCs0SItNbzzc84UbaVZLkzje+STMKlVz9LNmtJ9KuWiBjKf9t57
 6TDSOJav9SnhElCnN84XBG4VS3fkvHcmUUOwGwUgYrM+F4j1k5Ujig1TjZl+aJYEDH72AHnGPrp29u
 wngL4wOoKH748Y9301DM3/SySc3+VOU/umwG61CnYU+BGggB9Q7vVpAz9Z8w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
to the host CPU. This interrupt can be used by the device driver to handle
PCIe link specific events such as Link up and Link down, which give the
driver a chance to start bus enumeration on its own when link is up and
initiate link training if link goes to a bad state. The PCIe driver can
still work without this interrupt but it will provide a nice user
experience when device gets plugged and removed.

Document the interrupt as optional for SM8550 and SM8650 platforms.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 24cb38673581d7391f877d3af5fadd6096c8d5be..19a614c74fa2aae94556ae3dfc24dcfcd520af11 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -55,9 +55,10 @@ properties:
 
   interrupts:
     minItems: 8
-    maxItems: 8
+    maxItems: 9
 
   interrupt-names:
+    minItems: 8
     items:
       - const: msi0
       - const: msi1
@@ -67,6 +68,7 @@ properties:
       - const: msi5
       - const: msi6
       - const: msi7
+      - const: global
 
   resets:
     minItems: 1
@@ -137,9 +139,10 @@ examples:
                          <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+                         <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-names = "msi0", "msi1", "msi2", "msi3",
-                              "msi4", "msi5", "msi6", "msi7";
+                              "msi4", "msi5", "msi6", "msi7", "global";
             #interrupt-cells = <1>;
             interrupt-map-mask = <0 0 0 0x7>;
             interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */

-- 
2.34.1


