Return-Path: <devicetree+bounces-70038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FEE8D23D2
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 21:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD371286528
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 19:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A332B179203;
	Tue, 28 May 2024 19:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qyYhmdeY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2288178373
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 19:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716923034; cv=none; b=nP6i4UYMyFdk6RrodUmtECi0nqr2Fy4uLi0WTvC3nalt9PMUVkj0m6pD4Wkou2t+c12qp7jZjHKoJI3D/G6lUk7Z/mqtwQkbgAPV3oYbikuLu8IYTQV6dHdeUz4tgv5L+gqXlU3keTYNk8FnT4xO0NRsjvtCTWeSd588i87jVzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716923034; c=relaxed/simple;
	bh=VkJcouEly56xcn2I/JpoLlFyt/3UCbwc1z4XoFy0ZPU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ffL1fpktF/9PA0UjKwuDZjP0AQg2A9mbVMPPxJa7SgT6O/vAtUASnGmHtN/HkZiHP3GB/99vGBjFfFlBTP/VOhRg1ClgxQBSLSz2IMeBbGpYykQ8TW6MaO/MflaByc15351ZelL9HNOpNYMokM3zOjYqbSwLLovRyXUwkYnDE0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qyYhmdeY; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-354de3c5d00so66558f8f.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716923030; x=1717527830; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLB0YN7N63SKOKotZw1GpntJgaecWBJiaVtpBcrO/S0=;
        b=qyYhmdeYpfL9SNOz7LRACcUrhqTTpu2Ygp+LYJofSDNgrfqJR44MfJhSa7BnvJQYNu
         5H4lv9CV1k/iGSkDyfmL1ugn3Kd3sWqGn5WG8tr5jx7SZK1+oGYrNIGbVD6sNmqBW9DM
         +DpFY/sKODRaZY9x690EUCd0U+/vCpeNmv4WMfKR/u4m+rB+slskNTznuRStFgZEzEco
         eVPmUHHWRs6INdg09ZMn3yfiylt/nk3Q2nxN3bLeWBBDFkLi/Frz1ThVECKF08sFYzI8
         /qWlTDUbgWc52xlYUMdUU7Zy/YoPePGqDFnqPbnnelx99n6qV5ZNdGh19RRK4+ctHz/0
         iepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716923030; x=1717527830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FLB0YN7N63SKOKotZw1GpntJgaecWBJiaVtpBcrO/S0=;
        b=vGkaIRev5fR4gxw4odFthyg2mj3iDzd6XsntmHqdGr7SnFaraW83HIWzZwx5kzv+9U
         4uyLPpZoyTta6yfxZXUjjpctZNrABmg8qj4VnXNfQNo39ZuLOB3wgJsxOA1sdlW+/nCN
         i4fICnjKNDybO4M5Rjf5RakscK6jHg8bSn0oxh514/IDWAxUWjZvXDpZUibRniuDiF/r
         iyZ8edoZeU7F35uf4jL8aa8EcKsI0gU5Q5eNOdsmHzoif7bWh/Iz/BZaeFyUtX88fi30
         4nFPRVzgnFruzw1qyXL7+C/ztd2XLDdXQqJ+D37i1zr7/gdM8Z8KPKpoQd9yD6/Zsaq4
         pCvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtKXPdTnbrAoZ3+mK4+xN8BzTJtzfIclQr3gL9jwfq+7EVSFC6W+f511HPhQIRk1LrMLdL+6iss7JsggDR5fm2tIF2bTcmHEvoAg==
X-Gm-Message-State: AOJu0YzLD5kW7lMsg4y5dD5M9ma94MgUb+RXHNS1vLqVhyl9bk4lt+qz
	6jQ+/oqmEyDJnfqmJ7T803zR9NTDIXqo05cV9fDtJMv2rou1a1F8TBdc1QYFveI=
X-Google-Smtp-Source: AGHT+IGkTRJM5BqJwxMkgY3NJwBdsKQTISnjb7z3O7SzLivMCfj6/1CLTbKr3BOipAl3zMJM/jdDxQ==
X-Received: by 2002:a05:6000:180a:b0:354:df9a:f99a with SMTP id ffacd0b85a97d-354f750f95fmr12748159f8f.11.1716923030222;
        Tue, 28 May 2024 12:03:50 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:93eb:927a:e851:8a2f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100ee954bsm183895415e9.4.2024.05.28.12.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 12:03:49 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 28 May 2024 21:03:10 +0200
Subject: [PATCH v8 02/17] regulator: dt-bindings: describe the PMU module
 of the WCN7850 package
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-pwrseq-v8-2-d354d52b763c@linaro.org>
References: <20240528-pwrseq-v8-0-d354d52b763c@linaro.org>
In-Reply-To: <20240528-pwrseq-v8-0-d354d52b763c@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, Kalle Valo <kvalo@kernel.org>, 
 Jeff Johnson <jjohnson@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Bjorn Helgaas <bhelgaas@google.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Elliot Berman <quic_eberman@quicinc.com>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org, 
 ath11k@lists.infradead.org, Jeff Johnson <quic_jjohnson@quicinc.com>, 
 ath12k@lists.infradead.org, linux-pm@vger.kernel.org, 
 linux-pci@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, kernel@quicinc.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2562;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=nIq2ZrI+2J8wWzUlSGNJuD+/fuNY97wIAceF1yEhqMY=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmViqMCMh0XlDYXajqmjXXmuj8/4NW5g5yO6PrS
 V94gVmLw5GJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZlYqjAAKCRARpy6gFHHX
 ckfyD/kBiPhd5RtEIWrboqOXgS0zbovWj36MTcHNi2ZlVV2hPQ+fx5L44A+Liypg3s8bKsIRZO6
 iSJxOpQUKsND1M1eV76xNp5dwEwPOFXUvgvpXfoMNVmDqfHFisBAdPAuZgQWT7L/hbDJsMAlgfa
 zL5p+YQE8cgFPjQ5g2AUOK6jxwTIN5gDrtwRWg7G7m67/jToqRPkk6wksPbbthckUZLJ1QMTjaV
 bJzeuQBa3kDX8lPqD8WZHKwWyuBaiMShy2e8MIXJ4CPIzgwWQkgJ6omxkwFpJeeAd6qjrXOlE3D
 DzjSvKpReD/tS7xfejwZwHwvS+HLUhzPMopsHkCRpznIDOVL4swvKYgaZrMnFe3IINMOnH+rhO8
 zzzU97xT5cJhs9OfC5u4JwDCHFfJ6XGAG1RK/cZo4P0pA3P9rkA89gO2WQw/1IJgVh0x/4hSyZW
 FnYn60tOGi7fe7m9CJ4q+VftA2JYfPbtbPk9GeJk8CG2OZbkbZkXeeZUpv+IKg+tihbArxm8Nl8
 e+FdfSjVNGpKxQC2aVIRhfY34/xXrId9Ggqu7Ho4PF+Ki2lRwhbT1NoBBwjE3v4alEFd8uTnoWb
 Gzr5/MEU8hfh05PMd7wOkQeigMrSinrGUCJnBhBChnPi8qIbq/URbJf0GM0YNqUIVNC2Ku5D/4a
 2xy+3VAujkLYrQA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The WCN7850 package contains discreet modules for WLAN and Bluetooth. They
are powered by the Power Management Unit (PMU) that takes inputs from the
host and provides LDO outputs. Extend the bindings for QCA6390 to also
document this model.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/regulator/qcom,qca6390-pmu.yaml       | 36 +++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index 9d39ff9a75fd..2e543661a1e2 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -16,20 +16,37 @@ description:
 
 properties:
   compatible:
-    const: qcom,qca6390-pmu
+    enum:
+      - qcom,qca6390-pmu
+      - qcom,wcn7850-pmu
+
+  vdd-supply:
+    description: VDD supply regulator handle
 
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
+  vdddig-supply:
+    description: VDD_DIG supply regulator handle
+
   vddpmu-supply:
     description: VDD_PMU supply regulator handle
 
+  vddio1p2-supply:
+    description: VDD_IO_1P2 supply regulator handle
+
   vddrfa0p95-supply:
     description: VDD_RFA_0P95 supply regulator handle
 
+  vddrfa1p2-supply:
+    description: VDD_RFA_1P2 supply regulator handle
+
   vddrfa1p3-supply:
     description: VDD_RFA_1P3 supply regulator handle
 
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
 
@@ -50,6 +67,10 @@ properties:
     maxItems: 1
     description: GPIO line enabling the ATH11K Bluetooth module supplied by the PMU
 
+  clocks:
+    maxItems: 1
+    description: Reference clock handle
+
   regulators:
     type: object
     description:
@@ -83,6 +104,19 @@ allOf:
         - vddpcie1p3-supply
         - vddpcie1p9-supply
         - vddio-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,wcn7850-pmu
+    then:
+      required:
+        - vdd-supply
+        - vddio-supply
+        - vddaon-supply
+        - vdddig-supply
+        - vddrfa1p2-supply
+        - vddrfa1p8-supply
 
 additionalProperties: false
 

-- 
2.43.0


