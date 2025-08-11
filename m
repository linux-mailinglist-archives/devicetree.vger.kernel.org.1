Return-Path: <devicetree+bounces-203324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0D5B20B9A
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:20:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 683476268D0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CD5228CA3;
	Mon, 11 Aug 2025 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A2N5qD3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8001F9A89
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754921733; cv=none; b=cveQRBRjLcsA84Au9T2cnwH7EbTfdflSV4m5FvfowPX34Us5qZVp8n0iLlET4wykC8Ua+df/3Bc0MKHXVbkMns/3ePaoSNW7bqOoMuYC1BqCiQYLB1DpqOOU4YzMZwg1VwcP2XG/FPIu2SEOjcC/fYbYRvmY1uT7chd9YVH95/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754921733; c=relaxed/simple;
	bh=GgTedC3H+eqwGWuvamKaf6D4osHTsX7u0PmKCWiC5qk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kz27olRT9XLzsqmAcduAp9YDwpJKmXJw7fP5amEGSLTrWB3VojdSL7F51p3QZLqQc8AYA42JlCCJuVxU6FvJDAdWPAESyNJOxc0Vuk9p01Tn4ASmtdvt6V7rEL1Zt9+Q4BFqzfshbFrXm3qBUx3dR773Ew2iaCpEYsHlbmFEqTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A2N5qD3d; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-617b526d402so632656a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754921730; x=1755526530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TNA8iFqzL6qzbh6WBBPgT81FgWKTS2Sk37AwyCWlBGY=;
        b=A2N5qD3dmQtCmkPbwtMi22gr3ZSMIuF6QmZeK+3VEv9DR3ETkhMmWIyX2boC8DTqeu
         F6Tbd1dfs2NdiNCoquWo24tMtOFUMY+wDHq3kv64CLzY5WfCDlHNn5zfvv+Srigbpw56
         M5lb3FQiXxvV5WEI00XbhCiNdmCpEhI0Cp+BpW1/8pdfesPtUqzWqyJa/MLRJaWWZlKa
         0S7pBlNkXlBqVso5lvvAdWarQgCDqdac1Xz36j6EtlV1ynU5qObgWr0RbexwkcASeqIA
         KbQCYd/9lqy0G4k9dcslVj1Htau702mcL3GjIyfVG638hOw5uwg1FEy7wy2fdZ/lkOKq
         iviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754921730; x=1755526530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TNA8iFqzL6qzbh6WBBPgT81FgWKTS2Sk37AwyCWlBGY=;
        b=EXmsLrwOM9Wqr9isEIMH4HFoyp07tcox4JniRCJWcyFg67mhjZxtzHl8TJ3U16lXkA
         2d7kMiZfe3PxEQePZ0WjFqygp7NKXqcHSyaRHb30mQB3IlmejtU9CCHcK3Fj12Jtgb7h
         u2fyEF78KgUUdytop6tHTJX3ORNPrDfeygY9ifsgB/d3R2UZHxE8UQrfCsx++rZxcTQe
         bw8hLDYG0wGaTtuMmpKw4zSdu+lUNENySKAcOrpXUrvga9UymZmWIt2byd37RXfbVueG
         c/TL6ZdO0y7h9juKM17SDTk/JAXmNuAsu4hKESAWxAuPPi8wMIaX8NPFq/o4BMmDiMBx
         7OVg==
X-Forwarded-Encrypted: i=1; AJvYcCU6UMRo95+uQefNMBnyh4NvP2zcBJtiDzIDltHne8+nFHvc2MeUvdSV45auDQQmp3S4uQK4tFGAmxdj@vger.kernel.org
X-Gm-Message-State: AOJu0YxTn7N2zkCybNahnv/N8ZXvZ6WJdIdivVvwZPjy2IGPfYox9lxW
	McMPMFjdQ2opc7VLMv+Z7Wye6FdVLIo5Gwa4AYr7tCpl12muXoNz7cbvNTTeupxTLcE=
X-Gm-Gg: ASbGncsF7HKmAToyx8EvRMzkUIcyZUJtg9uP+XZzTQDXMAtOBo/uZ2M/DayVIyMfkpB
	GCrjrOQiIIfbAR8hrXuEkc3JK7QQf714DSuuURyHn63Obp/+kyZq6qvlE2m05iQcfN7zg0Y0GCq
	JRDdMoVRMhvcaMgXbqIkohBplrqoo7Go7HpcvMIiOju3QUAm9xLsb6GVM40XV70FrhAgY4SL1jg
	scqPkLOy2vvvyVGwhKNab5nWoApcgW4jSiRwZ2z0Xu79FsJFPiOGSxagNM3zt4dK+qIrMyJJB/9
	wK4DA8avCEDnUj0YzSMnOYfe8Lv66hkCT57KPM4j3usWL3/km15eWgg/Ouwjij9Gis8ESBquxhx
	EzFkcJWU+dUSI1b0Kkmh715Se8es4lYZBAA==
X-Google-Smtp-Source: AGHT+IHAygobEGiV/EQmEH+EomKzx4R0eZdqjy9CgtIpiz1r2MQuZDal1lyU8YfvqW6ryYkgxuvnKw==
X-Received: by 2002:a05:6402:40d1:b0:617:be23:1111 with SMTP id 4fb4d7f45d1cf-6180afb0786mr3370254a12.7.1754921729836;
        Mon, 11 Aug 2025 07:15:29 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615c57f9fd0sm17333490a12.11.2025.08.11.07.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:15:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ninad Palsule <ninad@linux.ibm.com>
Subject: [PATCH v2] regulator: dt-bindings: infineon,ir38060: Add Guenter as maintainer from IBM
Date: Mon, 11 Aug 2025 16:15:27 +0200
Message-ID: <20250811141526.168752-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1310; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=GgTedC3H+eqwGWuvamKaf6D4osHTsX7u0PmKCWiC5qk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBomfr+Z33oN8yHkHq2Ur+59H5VGRH01BufhEBeN
 SOT7ngoNguJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJn6/gAKCRDBN2bmhouD
 1zlBD/wOnfv9rtrSEHox/rZR7LIkrrh2EhPsGVmxgJbDWJ3A6iNyfCZTNAwgNftMngQisg3IvaT
 mMsoHA2eDxfCWw3CAzzmmsQ2wGEqGOcM5ml1sckLfWUo1qVeg3GSilgpxtYpTgBolfIFhgwgN9i
 MVSxIi6roIlNz/Bfq1uMnQb5lEca3iZyfng9655C/XnP2qbBJ1Bqhfeb0rMfmDnJKv8WHT7EVG5
 wnLlKOQySKkkl/+/Rt/ImmOyE13HSajCY7cYeMiutMimhhtq/5cCBsesMX9CS+829suMNsV6Qms
 dw7xEybfynaSEaVn6/tUdk4H39rhXSQ1KtgsDgJaCn7QSVVoqjgvSmnNZL//RYbRI2GCbsadrpy
 4tvGOB7TnXMzoyGRCqRx77AaO89MQwusBmbhSoby15ZFV7jTOnaylKdGG3xet7wsGYtUIewSWbN
 7h/2OHafHXW0UwPWSZgz7W4M/0RsHld7jYcqiWcbHTCLfCvb7njXg8CLPdUIcb8u6XxRt4rrVSW
 wqGLmBkQbVXwID6yLdcmnp4kIL6igqoNQfKtlOi3c1+g9aJJDUceVHwPm7zVLdjvZd0/TwfR7ad
 hYPcvZUOTZac436BeDbceIzQhijSQmAo4ETyanYvocQ0eDdR2CNceZrIXlS6pdf6tif0KJL15Hk CnNr+7Zzlp332oA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The infineon,ir38060 binding never got maintainer and fake "Not Me"
entry have been causing dt_binding_check warnings for 1.5 years now:

  regulator/infineon,ir38060.yaml: maintainers:0: 'Not Me.' does not match '@'

Guenter agreed to keep an eye for this hardware and binding.

Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Conor Dooley <conor.dooley@microchip.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Ninad Palsule <ninad@linux.ibm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add Guenter instead of Ninad.
---
 .../devicetree/bindings/regulator/infineon,ir38060.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml b/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
index e6ffbc2a2298..57ff6bf1e188 100644
--- a/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
+++ b/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Infineon Buck Regulators with PMBUS interfaces
 
 maintainers:
-  - Not Me.
+  - Guenter Roeck <linux@roeck-us.net>
 
 allOf:
   - $ref: regulator.yaml#
-- 
2.48.1


