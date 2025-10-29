Return-Path: <devicetree+bounces-232814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A31A0C1BD8D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:57:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 872ED660558
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C00FA346A16;
	Wed, 29 Oct 2025 15:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CEXx2Iv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2496344045
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752468; cv=none; b=lVvNBZgK/g3ygkYSDEyKkwKgT1OwN9T8TGe9wQeLATlZXCRhFUC4cLESa5nIG7vcqiV0hOn43dBvNDoW6GMsENwbJGgtt4fR5bYX9E+p5gZTVq4LwBRNsc5Phlcz7L1yZdqWM3Aupddji/QDZrJ/7k/TasQynf8F/+hSKLUI/DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752468; c=relaxed/simple;
	bh=jcD/muh/yg3HFerxyFZxTqkuolBzxrZADlEk8jQbDjE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YAHPbJaNeeYfqauBgGun96rrOV3akzt7yQQgqEufZ00BlH9/+vcDgYLGu45dsu8TGEuINSuB14FounTy23hDLHfdxdmFy16a4+bafTSV5UlkKo4WWmFTrzqjr99LV809Dv01vI/zSCajhRBt73ZDJ8+r1BlKOvykrfVB6X7V/Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CEXx2Iv7; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47107a9928cso4434495e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761752464; x=1762357264; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IB4XYlUY2JZQ36hrOiaGPtBE9KxSOxOkBTNgx+iHCVg=;
        b=CEXx2Iv7dLxz/Adf0kZlWhXsl9klwAKaYYcCA2TXyTnO9SYTQupcnYVoe1I5bngy6t
         KI4KlzKshBUr4tGptunz0Bb3G7avRHiH6OINZ2WF+iS4jei8P16Kqke2OQhlqMa6H0Kn
         KS3VDc35pRA6QnYzH8OHmbGHphQsRSbq92sGNdhQdZO35m8MYO02RzzSUcVdNP6M+AEU
         h3x96OUrZzt9ftR7vhGmmfMBN9T4OzL5sWeingZG7ZFtfC9Z+VxBDoIEE7RDHWWCXiKQ
         xYBZNpA604RjM1JWJC5U5YJL3h3uNAq0/G8pDuXedk6q57ByLD73/u+Wp3J5VXudb2td
         w13w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752464; x=1762357264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IB4XYlUY2JZQ36hrOiaGPtBE9KxSOxOkBTNgx+iHCVg=;
        b=uifyQdkrZpw+F4CtF10V09QepfvQKiu75M6qinVF1O/9jeyU9nf4auf8BPFwCR6/0+
         0hatFt8HrQya2XfeGYH8Ru1y3aSuFcrkGKL/NdSB5jzXR+3LFWzZCVRPlgg9v4LwcWWN
         cHk69HhFyJfUEsVw/Pg0XhVvqbX36IWMxi0HMWZp20mOCKdqaoN1U66q5JryJYDzfW2M
         7J5pNKveTd4sIeMTJq3RSW8M5C+zD79sqPyyTRnBONfNy3RG/Zx5NrO6Fr52OT/n9nk5
         JVwK1GqCDQRw5ny5GGtOceXvqJMeQyApLSbVBoWnglIwhaPojMicGEYMXpjYFxCGeA9y
         vnlA==
X-Forwarded-Encrypted: i=1; AJvYcCVZmxP8Jw52s4p73L4CMo3HccFb9MsH/11drzUGFu8LMWZYW8DN3e5eiJV7ejWow757T7zwQZ/DQ1iY@vger.kernel.org
X-Gm-Message-State: AOJu0YyzUIc+QCJpEUyxMKz2/1pwrjqNQotPuhTvQns/dzRg5vAkPyZg
	GJxEbKvCL/gSf5PDidS+Fg9+9imj39cdSn4dgfU586MkKL35O4vz76qY/kCfBquqBPs=
X-Gm-Gg: ASbGnctZP8Z0crD5a+FiaWIMoSaHov2QBws4ZfpZa5CsuWlHENH3nMy+j0v3Fs2zsn3
	D34O+peero1tRsGjfTSr2y3BmNnNq15mZPDnlBJGo0yLU0WBdKadPq/NHz3OZbfA9SDYDuZpUos
	BmPYqA+TuXYTRicfkSHY/nDj+mg+xHgZq4l4/+sFP1An/hl+gJS59z6Jk2KqjGf5RC6MrSEy9Bw
	TM48TNKqnfHn3+3X8ocJ7P0Yxygf9LnUzSs2GZmt40FjrBebMyM/bTMdyIS+qDcH2TMFwxV2AH+
	RK906CVv61QzKhRdcNO0AJGaP5y0VAaG++fVVqB51KiFooQEECstFJkUGWiGb16QAXEV7Ptr8T4
	eHy7z2tSagZe7r9fuM2yj4RmvwYpVRZ7zNwAAzr93rff04qhsNWkcUB40nEvmUv//TGUr8TuC7Y
	Kb7C2lRhEuvUN/EAJ5
X-Google-Smtp-Source: AGHT+IG9DjbF0EUlFUTGru5YaWEbzqZRQ5rKxmL+Dczniu/qZ8YVLMUMQrhXAGjSZsPLoQbulsBrFg==
X-Received: by 2002:a05:600c:4ecf:b0:471:152a:e574 with SMTP id 5b1f17b1804b1-4771e16e538mr17553815e9.2.1761752463973;
        Wed, 29 Oct 2025 08:41:03 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm27006875f8f.41.2025.10.29.08.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:41:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 16:40:42 +0100
Subject: [PATCH 5/9] dt-bindings: PCI: qcom,pcie-sm8250: Add missing
 required power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-5-da7ac2c477f4@linaro.org>
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
 bh=jcD/muh/yg3HFerxyFZxTqkuolBzxrZADlEk8jQbDjE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAjWCdRkgSj+crNTt0ZPf5p7k3sOTszyclpDbU
 1o3zeCn0G+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQI1ggAKCRDBN2bmhouD
 13d6D/9i2r5Li5azvJiuPvOaq5bhZqUycmZaxUdiWiryjuPm7d3LEylVeO0glrT3h1lLvjxc66v
 2W9bOdT5RWb69wU6RRyFm7l7/pOmNC79C/zTHVypzzUIKbV1R48cbGg0MdZGqvyjcwKNgIiwNJI
 jjUfhRCJIfG0snC5pDqO5KNYUhH0B6IpC116cuoMLto5wr9wq0ADXkkXp8nBq175ACmXY0/s7aI
 Ht4DbFEmBtNwNq59/bqWeYHw6V9R9jsmLOBXv9ted9vsuULuuIW6JvQ71EVHQR/K/SuDlElL2z4
 eahFimBL9xGOnkwhizjnYmxWTFcNz8ZUYikS64Z3IZjs/d2sq4yhOU2aVMs/IcqHNgKe2byTbiB
 kl+TUgFUH+X6Hu/CUrqf/5nx5Z4IBCo5OPTSd//JIey0eaUSyBkeZAM0eBdt0UVBKRkH4rzX5Qk
 w/u58DwGiKInGkZzIuQBIOaKLZrPyZRr8kw8zLGQ6cvgezmPyq9biYlM7s3I81qEsx3YKcjN3Tv
 FA1Q4eCrJHNR0aPL2j5P+XdbUDyNUQXh45ngocNiXvkreTV5t4vm8BNYGBGS/aGrMEpnl6lBLI4
 JgF+IsBygKmMunPMjGg2z0SfP+wQSdzePL4iQEQbvVa0DYqZh3aFLRouuDyYXMl4PNkrDz2m1pQ
 THb2JVzFbi89lEQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 4891b66185c1 ("dt-bindings: PCI: qcom,pcie-sm8250: Move SM8250 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 4891b66185c1 ("dt-bindings: PCI: qcom,pcie-sm8250: Move SM8250 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8250.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8250.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8250.yaml
index af4dae68d508..2ad538019998 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8250.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8250.yaml
@@ -83,6 +83,9 @@ properties:
     items:
       - const: pci
 
+required:
+  - power-domains
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


