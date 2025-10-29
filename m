Return-Path: <devicetree+bounces-232817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B3C1BD84
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:56:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3052C5C3662
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5742833B6F8;
	Wed, 29 Oct 2025 15:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ckYAIvlU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25933446CF
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752475; cv=none; b=b10a3cno8oT3fMq0qL68BY4CeUUwDyXtLtSiGS4MLbEOJ9FNfAnxzvPyx10DxVDXdi+MrS3s6P0lIc6oQmFaMltqbD9Qgd9xsrxfhLPWIhsIHdgJrBbFerFlYrtQhVQZ4N5aeSye5xiZcWvksTolIu/br/2QLJIpr7dTEqojlSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752475; c=relaxed/simple;
	bh=53sgLXqYhZpvxE9VfPFYnKGG+WSNBhfa1Et5HeyqvGc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lt/hDnKLWIo2qKACFOyadT0QHkhsnEwu6a9nQ/2oN0WPX7CQ3MBailjhZ4AGuS4g0YFJPXTZxCand5A8RMtlWmQ8ywew9oB9GSY6EZx6J3yAjk36Z8d9A77o8l8TIvxjTkPFCQZlc3+sp2bqh/+yShNMzC/377f5cAjRolgB3Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ckYAIvlU; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-429a8a27db6so260565f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761752468; x=1762357268; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8hNdW1UdVGs0q+9m0OQtp3GCp/eHhN3q36QZRJjw/U=;
        b=ckYAIvlUE7x1sEsyA9G8nnRyItFWnaqfZVfkTPNVcwGikW8HwabfQ+g+3UGytpwioR
         YTS6z7GMtyMjYQn4TOUZTcTyJ8LZCKcNywX3Q1tk3t9hols1QK+Ci7JdHtK05sP6Q2Rx
         G4/VfLNikXRgvG987q5mnWttx5jU1pHbDFWnXmQegOre1Indjl7osZ0KAo7mTV4tNwJV
         GHUBVvN/TtOMaukaK1PUm/ZulrYMYa2eeqUaM1On78w5R9qET4DOzdhn7EZroCjPGQlT
         I78oULXXrYX4VO6h9pTXNVXS0yN6ZI9nnF/ql3wrCHzLvSMq5O9oC5jaJ+pNFq3BAig+
         FwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752468; x=1762357268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O8hNdW1UdVGs0q+9m0OQtp3GCp/eHhN3q36QZRJjw/U=;
        b=Itssoxqv2hevRm/FK59NvbIufycKW+97jPjnafBk6/1KuE3+gN/TitogQpYgFlBaUI
         wXBJo9BSc87y8XtEFkm4omu1Rvguk2e5Vkwknxw53dnDtgNUEf6C+M9vADWtAHMvAl+K
         VtIaQ4SPrH5PendaHbe6w8H+ybOI6T2xZYFX0JNGw8k4lyRYGvN7JYSTXoWQNYXvkkFo
         bAZ0hNkfSldbMk8tfz7Lb8pKNED/MXdlpYfLIqXWOLU2PWvpJOzY5M7sylDlHgEneT7V
         WVEM+vHFGDykm9UGqJrMozeoJyn62CiZ2BV8kZyS0yjGGZDsDuy5tn6isOEBhHsmsYxw
         bKnA==
X-Forwarded-Encrypted: i=1; AJvYcCUxJdL3w7wCq2YirUKS+ccbN6/B4lct68qCIusGbM+H1FCCryjZYiwc0vJvn094MPvtER0RpxnzYkwN@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6wU++/Fr7De1fgyoUwWGo1CYDVrYV6Xdzvk1cPKnjFm4+BAeB
	lD6Jy+2God/7iy8+2axqnPgRZWDu3lq/C83Rfa3JHVJS4trMyWpQ4yKJqSLNPU3Mhg8=
X-Gm-Gg: ASbGncvJNKuU9qhaWDWYXNsf2quwD4zU1EhGCm/ieQ5Y9GQzg0dH3G6jc9uG9bzqg+U
	7BpFGbVIv7uhQAxL8d4+BzLETJ3/lyHCJRmHewMp9XNquH6MBD/AfwkmVNQG/4j4genDEhJW3aB
	T0AmMfUTaGHgcU/v85e8xcd+ve3jsBeXhtMqSB6P1f02P84lARuDpVYKapSeVvh5qswEYJpNI6f
	DnbbmjRUDuyFaEHvPbsq5Pv5aINTpfc96cjHl2Vs1W6/6Hc+0SV1eytrrHIrT5lFRxGjBocxVBq
	3XbrWYSSQ2/FwSyD+uKoS2HWVmgwyTNNil4ITNJcKb+CJJ0CyaaNZHw9pOmf2MHfQH0Qan9bK/I
	FxhEL8fLf4BE1pUv0gBqRcqIkwV+AzooczdKfu4OsFTbNAjd3fNToU5YYIsm6WsFjXStqPqu5Zz
	G53XDlUGTyix1dsBOq
X-Google-Smtp-Source: AGHT+IGTV1Z9pcCIuK2AabPU+xp/QKfF3KWNJoH4hjRtj5SjayytHPlZRtPhtNjeo75QTLBQSZHXow==
X-Received: by 2002:a05:6000:4304:b0:429:8c4e:6b99 with SMTP id ffacd0b85a97d-429aefccfd0mr1390712f8f.8.1761752468374;
        Wed, 29 Oct 2025 08:41:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm27006875f8f.41.2025.10.29.08.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:41:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 16:40:45 +0100
Subject: [PATCH 8/9] dt-bindings: PCI: qcom,pcie-sm8550: Add missing
 required power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-8-da7ac2c477f4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1098;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=53sgLXqYhZpvxE9VfPFYnKGG+WSNBhfa1Et5HeyqvGc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAjWF7Mo4MfJI4JwNrcznfev1cDVGoW79tEfqx
 s2lIvOOQUKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQI1hQAKCRDBN2bmhouD
 12b1D/95B/f2UeuWUWvHPgxRWE4/eakcA61t7sZNjR7GgPhnkndzlM6EajdhvCvgQidJkQf7TEx
 g54bi44zn8IEhq4PB0rJ1gByoVIBM6rcEZtHKXV0yDL0KqgUJ5Lf+SnVnzJH8w5GfBUMj+cZgkI
 WHzIenc6ks0meNYI8/9Q1EbqYh9hc6bOWcGksIVgQs6h3CCgNDmBUjFEly9E8be4DeC7kxdyUlo
 71DXdKYOdsodWx6nO29Cx561spNVZQl55sORbIzzns2cpQgkiwuZ1GejVR3vQBcsJDjroty7H4U
 DHKIUcVJtS9t0md16A2Clnhm5C+hk5jnUiIvbE5andpoudVK3WyiNL1yMGGKQdQcffvFnfMbgAC
 hCQQFuJSYp1JQ1y2dN+Gkrhlr1rXni1hfv2P32BgAfUpQ5SPByzqKNLWebwn1H9WxXkr70Q8yER
 zyZ9IFXReYT0O/m1Uhx3sg7mqR4BlACX7kiPM6byC8u/OiWQhjxucr3KQnjo5BHAVT9iMWA0yoq
 XGPKvUabMyMGGwqeRWDEhM+yP0AeDYntUoHrQfK5x/2IQuGwWxiWbPQ08z1++Z0YWTk2pgqRPq/
 Q+s3OETwVn4hI3PLhmUN7teMbVLBkJFzztKl290x4FNukKyVBJITr/wile/FjSoETilkNZeBN73
 D5w6GWOd9p9ZtyQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit b8d3404058a6 ("dt-bindings: PCI: qcom,pcie-sm8550: Move SM8550 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: b8d3404058a6 ("dt-bindings: PCI: qcom,pcie-sm8550: Move SM8550 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 8f02a2fa6d6e..849100269884 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -84,6 +84,9 @@ properties:
       - const: pci # PCIe core reset
       - const: link_down # PCIe link down reset
 
+required:
+  - power-domains
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


