Return-Path: <devicetree+bounces-232815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97689C1C3BE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:50:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37F85662B8D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512DA347BD4;
	Wed, 29 Oct 2025 15:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zk+YGaOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404FF3451CE
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752470; cv=none; b=qWL+YkqXG0B7MSTfJmv8cvLLvtqHdebhNWoWbJkyhVuiMY80rdszddYBtLuPYZ+Cjop3Bd8Zcnh8ZBUGb61sgTF7l4Po+x06Ti8cmiVrScLEdc2R0PaKn6HEHeznrmWjGNmZs1hNHcfUj597PZYJfOeh5wvOstJ2ey3fefxKQLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752470; c=relaxed/simple;
	bh=gcObtR8O5ZMp1fMjuAEDOYmMY8vzvFQgHaemqAfEjN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z0Ag0oBzR0IhDsq47kaeKcod35VOkTC9uofOCHaosDnuD9AS6/jWIF4e950mdXnm745wpIEYGQjFltU2aSX3Jk2AeEqtWcTevgZAQP1kc4/YTDPevWzkPQhnYDs3SbyPAtcsZt+sqAU3lcD0/a4vC+0ftxyLnxmtvo5cQ3Y/Zkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zk+YGaOD; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-427087fce27so947061f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761752465; x=1762357265; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TNRZvMLh19JYUSBdaaySWh/yUqTck826cyg9+QX0TII=;
        b=Zk+YGaODo5WErRkupFok9ypdEBU0iPKOCExjZtQImwCFQyxlY2aAagkLjHFFl0257b
         LcQnmPXMTNzsAr2oL5ci8qWySBFtpCxMGD+j0Vp8MQI+1fqjbY1TmNErPPhf/Xqm7kB/
         2C5QRCKL4XSRfrulBKVsA5QeSX6M+YnSUYX/VpHzbHihMuYEHl9kcByxPdcT0hHYWC72
         j05g3352+O32gdKYHKMOMBHTactjmMys6vJDi7XZLMJW4XU9JDp8GAIfDcV4kLtMAevb
         INlxXu+BRdZq3f2qiGzmsZ1UnDOgoU8B3ynqLsQ6790YOc1hxYi+tvMEOLSDgCVvSvLL
         CBcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752465; x=1762357265;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TNRZvMLh19JYUSBdaaySWh/yUqTck826cyg9+QX0TII=;
        b=ZmSySPa3TJeoCiM+9zfHIQ9/nRn+4XRBD1v8YFJC9KrG1DWxdSkkmCJ7Fs0K9W73Bx
         xRrw4/O4+pHrQNAdnq80ZIkw00CytO4c0QCv5gUAPCCSTYpEBnxlNiAtyVN2Yg6/5EwD
         PquiHtN6J44Oli2+k+ji6wykbirWYiaFZCSSpDmhh1WO5ktr0dCUrRFjoH48j2wGscmI
         Vnko5Wx2i7CloltohcQ+4h88jlOsCRAmjwnV0mr8Tx2a1bE08BCf0/93sv5r1FfCuUSN
         xnWm7b/oIHtgcKFZHi+RnxRk43Bnz8rkQ9s/rgctwSJcaC5Q1IfBNoHoljQ7qnEdU3IH
         RQnw==
X-Forwarded-Encrypted: i=1; AJvYcCW+EFfhEOZWhFTH0TTXfzVSJIivz4Mri2BFi5aPYIFU3qkN7Buqnqm6ShEyxRdwnDXUl3OFYdq7CDZW@vger.kernel.org
X-Gm-Message-State: AOJu0YzTqDmTZH08/NQIYCHKz7W/1HIkjF0NKKRz/ic6uTFzorcRMU9T
	oGHqz3IQime/5OWDSByUfkw85SNu0jsZqeU1gkcXQCFVfYJeOVBumr0yLMuTHqZVdWA=
X-Gm-Gg: ASbGncsVEmXyp7SEt6YThQ9F5KGzNiouaR4xtJESNSdQJPxkEHBRViopS89q8Vzdazp
	ZlRPLT41lLglIuOFLbOIP3CRd9CtfeGBlniLzX5dTdlXY+KzBCkCg9ToIIrOtjfkkfxlw6oacgX
	w2UX/tDmlTIevswRr/+hHvPEnaC+zzaB/lu/5o3eez5rYoFZ3rUcz1gDg7mOEpXUTQGs/N/e5tA
	oTaugH4bxfGjeEHO+eTLMA/pwtXExpVFpfu3QLtBnRchQPnFChwjRqD/bByU2RUnJoTuZ9CzoTq
	wd540qAKCbtarhnhOYMPxC9mjZKv1wnPvUn5R5hoy892ruHiDPP3jkYRPFivicI0DX9LMN5wCUI
	l7+TCs0iDVSUSlFOLznrle258yXfHWjOtHshdvWNzVaXoIASzItuwHnPe1PQhZRg9S8P4bZUljj
	bd9Mox9lnTSBAYGjqw
X-Google-Smtp-Source: AGHT+IEHcEqR1OdvqLT7eFSnCpgoJm/oJzx813KuGyGeIP7ewwn6rKls9lXlsuPVl0vgZ/Ia/84viw==
X-Received: by 2002:a05:6000:402b:b0:3f7:f02b:d7a with SMTP id ffacd0b85a97d-429aefc0267mr1328492f8f.5.1761752465432;
        Wed, 29 Oct 2025 08:41:05 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm27006875f8f.41.2025.10.29.08.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:41:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 16:40:43 +0100
Subject: [PATCH 6/9] dt-bindings: PCI: qcom,pcie-sm8350: Add missing
 required power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-6-da7ac2c477f4@linaro.org>
References: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-0-da7ac2c477f4@linaro.org>
In-Reply-To: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-0-da7ac2c477f4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1043;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=gcObtR8O5ZMp1fMjuAEDOYmMY8vzvFQgHaemqAfEjN0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAjWDrYP9a0vChuYXfR8Ab+MtJdkra9hCmwFbM
 hzimW88JWiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQI1gwAKCRDBN2bmhouD
 1+uiD/9tc10crzvcSVVVTGJrGwZDo3ymggZeqB4dpQkQO9qW8TCegY4ChY4YPON2MO9QNcu/JnD
 U+QbXdTAEVo/TpjL92VL+0fsP5JpRNzvmv0FZwDekHwEp/9W3ux0TO0F3d+tOsufXVozh41LfTp
 1AhW8FuNoR9vpmDPd9dwGF3Y3HG8HAVAc1LzHkRDiEJ27YTRCoYQU6UlvlWIbYzuUo/uS9jm3dd
 duyOvzEoQ2nrpU2GnSVov78qUt6BGm677yXo0ewX4xvdp2lPRVZmnP36tdo411qH6BxjKp3OElL
 AsluU39AGhioV6p0GHUazID4dQRkYiqi+e/bQ1KAOioP0lbENtdaIuqs8CvHgPiZ5A9Az4IlksJ
 1vqOEddg71wF4yR0N5OMGwhi2whCJ7VBhdL1jcHBKrePUlj15T54U4mJ7NM0d6QQQ6FcDV9O5t1
 VUTlB+tWJDXxWAe5ULAxacFC20hWnCPVI2cJk1PKG1HOp96J1HISP+sBX/4qcTGAtpvlnZZVieQ
 g802C1XbIapQ3zMYCToGJMqdpHxm0u5I7Zwnbe2K3TOqSKXGWQYpVarZN2izM6s4kw/1JC7LIyq
 btx5E8eh/MUfCUF33cleNN/A5uAKloctJeXae/VKXehVKoLcl+qvslGBp5S3+twTaXnaNC2MUYX
 4VB8Ql1gQkJqL0A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 2278b8b54773 ("dt-bindings: PCI: qcom,pcie-sm8350: Move SM8350 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 2278b8b54773 ("dt-bindings: PCI: qcom,pcie-sm8350: Move SM8350 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8350.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8350.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8350.yaml
index dde3079adbb3..7106ff08da6c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8350.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8350.yaml
@@ -73,6 +73,9 @@ properties:
     items:
       - const: pci
 
+required:
+  - power-domains
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


