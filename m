Return-Path: <devicetree+bounces-72609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 607E58FC620
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:25:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4419B251DD
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A62371922C8;
	Wed,  5 Jun 2024 08:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fu1u8YCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF75C191493
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575552; cv=none; b=n0nUta1R/9OvAiHjMSblVEQCGLujTMyHxy4yDVEdJeMwD6FSxpMOKYdGj3SH6XtQReAJecyd7qFCDLKI87Nbo1ueqlRzsRDVg9j80RBRWIuqcLk1e/kttTsJxcK/drWhNEpVGMKlyZnd/6bqMLJ43W7ompYbOuT04Q4r3DLHiNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575552; c=relaxed/simple;
	bh=vp7Qm2xgCaJ7DquW3IpHfBp1L88l0NedFhQPYw7bLkc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=VhOKClJw1iccpDdwwxOK+DEpDsFs/z2sjgYKpHowby6Qv3DyD/9ZXTYXaHYrSIxhHyesBacLT94zyHyrS7UdaUkeGDLfZJDy8jI//K6rHLasDAoMJRKFMlh2retD4ttmGco7t9BUpBWUBY5qcIxJULAqxG0bQcJqTvKc8u66KdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fu1u8YCU; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a63359aaaa6so832976566b.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717575549; x=1718180349; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ENqVUKHdwy0O5lgnMAW326XCMPTN57QKxIlzQHh9wB0=;
        b=Fu1u8YCUH3xVmntVjFlf9XP82vgIeO1tzd/q+2IuNXDzZpPGBfhC44e1OmX1arLikj
         eKf9FBpiIZ8XTSWW3tNLhEbTdfj5Pevwn2QWIsNMub8H6dAP07WjzNzBHdj0fqvrz07+
         fipErxUQHuf22xdtJvYfC49uUzsPvinzpFIdBIXTbnjAGQ9veC2NHbis7YFqsf7sVdrY
         dAsecyR3/Ipr8uVuDIFpPQhyXt/n8eLGDZkA2ieSP5Wj9Y1USPDUAwjyqFc0aPK45RTD
         sJJxqRqHZ0Z2/C4KZAwxjRQ//jgyqnv3ZOZTpHoaw+y9/mnGBngEDVPsX+5xLIaYYCES
         pDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717575549; x=1718180349;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ENqVUKHdwy0O5lgnMAW326XCMPTN57QKxIlzQHh9wB0=;
        b=GMPy8cUzHX9v692sNy0XUdfAmA8BM0aRtul5EIJ2hQ5Jr0Y+b3CTh0i4BgV765g+iy
         1X1tOQYyvG3WnSifLRINy9mThIS2cBrrfUo6Ebk1Ye1XrPm+M8P5uXNrmKnzYHOokRpX
         xcGmiwHvWk3inQ1Rs8+ci9nZiMMT21ky00v1zkEexuD7OBwUQt9rLaf14mGVSdINRyWP
         +LhbfzqhVOkm3Pyyi4i5UgXnxxoDhZdNGLLd7vWuMCGVFJ43I0ayf1LMMF+AtIHRDeaR
         0ngsBkEx3cty/h2/ppmu2JIwBWiteHuHaH3+0w5VxXiZ7fJvjlAZfKnhL6jt53BazP9B
         61dA==
X-Forwarded-Encrypted: i=1; AJvYcCWQsnpku8Gev5mbmySzn+SY7Jaumgh3IE1f2sR+AQdWWLH1VEHI9d6rWy7v9CCKPWJoZARZTMYpFRbWaiOMJOmqFmAOfXmP0m+3ww==
X-Gm-Message-State: AOJu0YwJsvk7pGP3ND9AM7YgedMddIac9su072Z2c61xb6GOK/IbYh9l
	yY0ME75eNfTOOhOT+WuCStoYj1SHOp495GbXrg0lz8AcUnOrZpx3X1u8ZYlo+tQ=
X-Google-Smtp-Source: AGHT+IH/wDmaXDvfueqvjYO5BfZm427ahsbQZq0Pgceh1jGEgF4E+jD66gFd8ABdQXpQZbngPeuoJg==
X-Received: by 2002:a17:906:852:b0:a69:906c:9005 with SMTP id a640c23a62f3a-a699fcdfbaamr113842366b.57.1717575548908;
        Wed, 05 Jun 2024 01:19:08 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68a408ef12sm635274166b.183.2024.06.05.01.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:19:08 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 05 Jun 2024 11:19:01 +0300
Subject: [PATCH v2] dt-bindings: PCI: qcom: x1e80100: Make the MHI reg
 region mandatory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-x1e80100-pci-bindings-fix-v2-1-c465e87966fc@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHUfYGYC/42NTQqDMBBGryKz7pSZVKV25T2KCzWjDpREkiIWy
 d2beoIu3+P7OSBKUInwKA4IsmlU7zKYSwHj0rtZUG1mMGRKqqnEneVOTITrqDios+rmiJPuyE3
 dmMpyZWqC3F+DZH1uP7vMi8a3D5/zauOf/Wd1Y2ScSsnRioebpfalrg/+6sMMXUrpC4AUCojDA
 AAA
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1643; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=vp7Qm2xgCaJ7DquW3IpHfBp1L88l0NedFhQPYw7bLkc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmYB92tZXyy+MsIwrx4sdQ8/yrKeESlOReZHYqM
 G/PtJRDdrSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZmAfdgAKCRAbX0TJAJUV
 Vru2EADISn6YapQADX1ufRGp317ooagXO9Ej9Rv2DW9xvgVBDM5WEvW+HzS/0pjkAXT/K7X3hfE
 3ubM02RH35OyguBiYwsjIYOVRYKcStSAr5I7S3k+xxWtCA9+7VvlWqnKuc9O1Ehr8+tkh9yBHY5
 6fV+K9C/qcrXOjwymJkj2Hgy1xYmuARVFMUiFtMzNGQh9jCCsLU0QDRQOz7cj/tOV7M2mfM3zB4
 xe+Bd52lMyRmV+X/HD6fwDzBXrPzCG0Aoh1zjVkFDrdDwK0cgL+LI2HoVEEj70YgOyr+d1f7lPL
 1zzTbZmfKFwUyfeCt0u6q7QRgDipR0DVpXyVWDmDEoPFLSlSMJaG1iPTx/Ve4n2hRzj0GGm+hYu
 oMuSn/oTXdtCf5XY8sXmwAC+4kBl9l+oRpUkoazCj7Unxb2Feh2XeWew9TNGk7tzI12Byis8w/9
 xSXyHZrklJQHXg+dUPi+xqQJOt0mUNKeiHeji1ZOimdfQz1hsXD7WqjbEHi7KqKVbNcVf4l6Zoi
 pHHgwzdrXGSN+Pmk8Hgkm7cz5Bk2yyAWdSc6E1VzEUVGztidrW1lgoQTQj53zAzrZgYVxAeNCHF
 cNcv1oy5/QuJ+3eWy/58U2nRHVDFvzyL9HHJL7MphDZxWwvRPQ7S8Wfiwa8RIBRw8l3U9jjGCzn
 Dg+uyLKjbpiIJmA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

All PCIe controllers found on X1E80100 have MHI register region.
So change the schema to reflect that.

Fixes: 692eadd51698 ("dt-bindings: PCI: qcom: Document the X1E80100 PCIe Controller")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Note that this patch will trigger an MHI reg region
warning until the following patch will also be merged:

https://lore.kernel.org/all/20240604-x1e80100-dts-fixes-pcie6a-v2-1-0b4d8c6256e5@linaro.org/
---
Changes in v2:
- Dropped the vddpe supply change as that will have to be reworked
  in a different way, maybe on multiple platforms.
- Added SoC name to the subject line
- Link to v1: https://lore.kernel.org/r/20240604-x1e80100-pci-bindings-fix-v1-1-f4e20251b3d0@linaro.org
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 1074310a8e7a..a9db0a231563 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -19,11 +19,10 @@ properties:
     const: qcom,pcie-x1e80100
 
   reg:
-    minItems: 5
+    minItems: 6
     maxItems: 6
 
   reg-names:
-    minItems: 5
     items:
       - const: parf # Qualcomm specific registers
       - const: dbi # DesignWare PCIe registers

---
base-commit: d97496ca23a2d4ee80b7302849404859d9058bcd
change-id: 20240604-x1e80100-pci-bindings-fix-196925d15260

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


