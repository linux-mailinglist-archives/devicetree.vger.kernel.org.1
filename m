Return-Path: <devicetree+bounces-233102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1246C1F1B1
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1244425BC7
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774D433CEA4;
	Thu, 30 Oct 2025 08:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F8TodJvF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDBB33B970
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814270; cv=none; b=WhyyUJVLkVLzDqP3yXfO0ETufC9Vdw8PRv66TdPjx47v7NbnlZdpPo1HE1XnsrcTKtu1FOpXb1GXIse7KqkL07qv7essro6cbBdmtzUydkSLMLRIy0XG/kC4rQ6BrnSvvjoQtHA7az26huU3P79csLgZDOVb7DpqtKLquKfaazg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814270; c=relaxed/simple;
	bh=rpjdsC8YDAR4ce9DkX3G6WOQjqex1hTpcjV1pmb+6FQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BySr4IMdwE5CS2sj2RPHxZ2OeK5M8QFXEKhqEUn/BgcvYo34wX7g+560zmpmU0GF6vgbGAaIF0fJLSUA1C4eCr3OULePr7t6Wbs3XW4quFQIBqtAvtiAUGxjsqO8zFA4Sp5jecjzN4I1Gm3MTNkc0k5wkiYZ7ot35PMP6by3inM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F8TodJvF; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b6d535e3610so15991066b.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814266; x=1762419066; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HeZHkr4YD9H0TDPFAU8SBi/+IlGQLxtOdn7QyZP9pFg=;
        b=F8TodJvFhk5YF+XDak5Z1PaBE1hpNigfrG0zKBzTSD8Y7FYgbq+2d8FeGe2C/tzgPK
         Q45mXFBWWWXq3RmAqgZJNQVI6W9OgQmyiGvd1HlQ/XykIdOsspPK5gJmDEnNvaMirS2E
         yGLptMPadfz+2c3BJWS+VVJFmtpLEBJoLfwuj7dZZBeQ7FCgq4A/o9cmbzI9veRgKfJ8
         zqSMoWE5gH3NXe9tflwlqBgEDyQTrba5+XBRxOOPsDTILFw7bqUZPLlW0Gn38pJ1Wr+l
         n2L8t0wopGGqkbh/oFbJZoaXYdJ/xI2fBd+yP6unpgPMM9aNyKVXxN5CPW2Xbc0hfC8T
         kEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814266; x=1762419066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HeZHkr4YD9H0TDPFAU8SBi/+IlGQLxtOdn7QyZP9pFg=;
        b=wQh/HSA0N5oIhbL3zdzNf5pVCSqftpEa32ybq0vGx5wS9EiHm+ng3iM6D8rk8QWSAO
         WKxVvR+wCy3tS82ghoxHUFea4WHpx3pVKZz8pE9RTInaT4KkW6vHgV7josSsTaVPOiFz
         oHIOLF0jJi4f1NK5lxuERQgvoJ4AbDrklAqYvkiE2W1DI0cEXw9fZ4ywLzdHBDo1MfI6
         UMVWJGeSKlHj63dwGq+LrlC4w2YinDjXUAtuGPZfTvUcDVJKgE1LGNWTYTLgJQQyqkhl
         VZwWsoGtm+EkuVkF2xCC9WpXHZvgN2j10Szld5d5bABPjPi80ttfHaBxdQ0V7R73dYVd
         LiHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+kbLXMMoaLzAL4ituMiYR2pUujIys95zlfdceLnlpuv+0tVQH4UG0QgYtKNswBm+GMGyOgxJ5Kb75@vger.kernel.org
X-Gm-Message-State: AOJu0YxrvcMinWr3lQOfrjTZsDeyedbFkZ1y7MoQegu5aP9gxrJGyQH2
	e1+Su5OMTn4EK3V/0UPKA+gKO8Ic1Dz2xjs3of2+qkDh4NjulzxXxzdDYrJgyCSkOxs=
X-Gm-Gg: ASbGncvqLOw+l/CGmRPFxyejjzsyJSDPFk2aby6A/OgCUVLCx368mLIsEy++4VfFBvV
	l3Iy5wK+bSCGe3bS64Iq3x6f4eKuouNebR8vlraxzuqoBzqXoeHADKfCQq+R+zNaEAw8fxhf5qB
	uFCXJq37YqmkUXD81njWjC6xIfx18fAF97fCbjvd7pMPzFi/1eQWDa7bS4t7TrgpWMCaYEHoq0I
	0gDlzaZzQWHHX1TDfAkyRYDNgQGkkUccxjYbrziW9CbVWcb69wqYxBskvL75aeq6/n+rGe1QIrj
	AfRSSY/AlGkG03SlwOfUq9ky2rhTjjcqOxa9FU4Vldp+dHEstal9NZcxceIucf4haG0+MDfGqCm
	nhvUCP3iY64r35+fkSy4C3GQA7YFt6V/UyJ1S1DUVvU384DZkr92Pw77rMBNxHatVcsvvEWuc+B
	aJzFOj1PZtI2ImsBeO
X-Google-Smtp-Source: AGHT+IGa2ZrCMJ941md/YaGSeVQ3cz4WZFg2TaBoGEFTfFX7GrykK6ynC7BBGxsj4Kqgr42s5r1Irg==
X-Received: by 2002:a17:907:7255:b0:b46:b8a9:ea6 with SMTP id a640c23a62f3a-b703d568818mr370592666b.9.1761814266546;
        Thu, 30 Oct 2025 01:51:06 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:45 +0100
Subject: [PATCH v2 2/9] dt-bindings: PCI: qcom,pcie-sc7280: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-2-28c1f11599fe@linaro.org>
References: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-0-28c1f11599fe@linaro.org>
In-Reply-To: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-0-28c1f11599fe@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1088;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=rpjdsC8YDAR4ce9DkX3G6WOQjqex1hTpcjV1pmb+6FQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAybvXntta9FsaICcpfmprRUQ8u2uaIde10GCc
 2STDIF0KwmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm7wAKCRDBN2bmhouD
 1xNYD/46QXqnYkaIGSMZZXc3CCIa5r8QA8x6uVCG8deex5AnM0Cv6cpu8/OLgT6PqgPjYdUpLIx
 j8LQodj1MeEEMOjmqZrIfAVq9/onEuPEfSGZMni7Ltf8uw82Wt4rqF11IHXiBg7hScSAop2VXIp
 8Tp8+8vacfoDLLdJ1iXu2dgZo/tjQW1IECcIBUSMd0lNsuH9TEnqrazOk/ZikVV5tOtnbVMdIwJ
 AM4rxtHheqEnH4Z1cXc8f5aivkuMOQ8JKwHvAMTOkh/QBoTiAV89LbkHyhZcPOvpwgAc08tA6L3
 MZxYoI2SEfhrJcX9ZfrElJxXpGeAavzw64nZji8uKYJAZm+4gZ7SpFjC1FsNhR+Hm2l1zausrYd
 MZmkPsRYjm7DfDGKa0/7rHhgcf9yemb5G0aQNd6ILASUDyeKWye/Te1/dGdVpJS0qx3gNuog5Er
 rtpsjVLum+hMgKJEL/rJTDsYLQWXjSwEtNlDbvVTSK/OOAkK5BP933vqZ34xFOz+xgcD5MNy+88
 wcnRGFsM1cT8lcFeDAbUPBG9FLGqKeg8nSo0vMMlD5jD+XTdiSISPeDcLUpCv8mVA6jhYyFuQOT
 9s38CAF9I04uf0KUzEUttomHR/5dJmu0X5GZN4iSZVTPfOYIjakMCgzsjJzsF395tQ50w9IMUmD
 u0VKS/Tz9oi7ViA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 756485bfbb85 ("dt-bindings: PCI: qcom,pcie-sc7280: Move SC7280 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains and resets for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 756485bfbb85 ("dt-bindings: PCI: qcom,pcie-sc7280: Move SC7280 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
index 4d0a91556603..f760807b5feb 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
@@ -76,6 +76,11 @@ properties:
     items:
       - const: pci
 
+required:
+  - power-domains
+  - resets
+  - reset-names
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


