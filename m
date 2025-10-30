Return-Path: <devicetree+bounces-233109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0152AC1F24E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83EE04279DF
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40A033451C9;
	Thu, 30 Oct 2025 08:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cPIkGlWi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908F5339710
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814281; cv=none; b=IUjXSGDfjq3HipYT5TEWGdvIlbpml+YSsnxn21B0rMviKy3Uq/9Exzzrpn2uiojuMmaKMIvNfso1Hz63JfePRtOlB5/rTb4sVoMmhPAr6RwS/ckWh4LBuE+/BksaqXcKnz0p7c+OLCAchqFLQKcA2vl6TiZhid24/nHgHS5acX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814281; c=relaxed/simple;
	bh=tOFcZ+EoVU36Gcas8ByUgbu9yWXwAq4SdMIRPuEe4Hw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QCuzDRbconhzyeSKx3/y/ISMcIuL89DAz4KhVZEXzh77fVxhvhuSJc3WAZwqy6cE7i+JPOT3/ULx7OzM9v6V6Psxb96Eg00/8zyRCbnAvTDnuAZaPhKzCdffK5xrlI4//SBLXJDQSLM26Wh4/mvRLQH69AZkVsm6EvmXLnSDYts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cPIkGlWi; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b6d955816bdso13655966b.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814276; x=1762419076; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dyElttd76tnImw2rKaTu1EJufTIHlBuUN2ebZk19A2A=;
        b=cPIkGlWiSTS1/VqEYMoYSjKQfquhSglZBwF7gLOA7bC1NPWjitE/G+llnML65KsspP
         Cnzbdn6BIkJZRIt1co3jvHW74XGWoeTzYPVxn21qUyMScMcjR/J59L9RUZJOtf5umskU
         5Fl+l7tckf8wzE2010yAlNh+DMsLgeptATmNz+Y9gN8TdKDK7f8Ji12Dema3ohiZIOlI
         5KIMw8p+NcT2Qd+HrAeJk2xIcSLlfad7NGWgoDdkrhFJ3S6MdTPNo2CZ9vaJH6AQ0SIe
         P5N642L6/iPRCtNG51pNcK9rjYOulop8gHJ5nlL4CzSQABJrEHyc0rrV91g7VMLlak8p
         56BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814276; x=1762419076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dyElttd76tnImw2rKaTu1EJufTIHlBuUN2ebZk19A2A=;
        b=CbNSq8+cQ6hfHGI7O/Qv32Earh8v57ACL+DjUlpYefpMRUo4lne3Dj87IdyAmoDyNb
         JJ7aJpohrON2bzkrS23V90M2mograg0xYeSgC+t9GqTtqxrOiEgmWXTaF5ljDrGG8M0q
         TvfbY1pdPUextuB3NhQhAP5cG78CnJqD1udrbtMPmXtifokYKyZT5d1LPdNjBuKoHN1J
         dWxPmBgrZr+lJ0gx/fF5GuKtm6u+oUeL8XKhWFnv9wUItnG3WRvVczSUgOkX/8yv4E57
         erQurD3hk+CwLH4jnBzW88Jbws8B6e3VHLXhRVouKIM9TAi1FPw3T6qGJ946Lz1OrgsA
         NRIg==
X-Forwarded-Encrypted: i=1; AJvYcCVOwiS22AloQ7mgyLdnA2fj8YFsJjohAeylossrYapsO+/6DmLFC5lbmMkJQRW1wWJQ6p38FKpfxGmh@vger.kernel.org
X-Gm-Message-State: AOJu0YwPD0ArXESM0vXK231A5APaWQxWI/2FWPstK4EsKVMp4iDpZHa1
	WxLOXjJ9EE9nK2GNqolY9pt7Rcn5AlBGlegWZMYZhxhAoTrxsmopaXBnP27fP8xEn3g=
X-Gm-Gg: ASbGncuQ1t5/LDfWBz7uDU5x9XIwZNBY7AaKe1Q9qOxGscAvGARdsNYlZPzigSDQNyA
	wDHHq8PzcLKWX1BnQfZ/OeIyhBJNV0OLFvN1qrgLJYUXaHAgVNLRzsHDTm8WLD/DurVyeTeWRzc
	4XBcutsps/7DT8LTXSU/i8ak0xGvdb9EKLKYHGdn2DXSJAzLSo+wDpmKGHcjv4qNLw4QdqdkyKV
	E4tzbS6iag6qWdVnzI4QWfrXde78P8KymNwTD6tZxyYcLUmAjadB5OeizhMaicBq5CHZF6p5DOC
	H+FqBSjU1AMVRkW6J1QEAd1CGP+InLKA+D4/MsVRUxBkbQ3HQYEnTZJ4IhyMnyYfrjU3k1D3Mio
	61FxWhtXT+9NuLLDqW3WsX4E8uDo/SvqDRt4lIi/R+Hlfhg7ATEFdXCy7bDh7DbbpHQnceH99Bm
	LaePaYOy84vxLambe6
X-Google-Smtp-Source: AGHT+IFQVdw8/tPXlVf5rqd+6iy/3RoBW5tavJDgwS71+TwJTiu7nX0lLlocIq3NyDrw50g8MOfctQ==
X-Received: by 2002:a17:907:d88:b0:b38:7f08:8478 with SMTP id a640c23a62f3a-b703d06512fmr354167266b.0.1761814276487;
        Thu, 30 Oct 2025 01:51:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:52 +0100
Subject: [PATCH v2 9/9] dt-bindings: PCI: qcom,pcie-x1e80100: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-9-28c1f11599fe@linaro.org>
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=941;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=tOFcZ+EoVU36Gcas8ByUgbu9yWXwAq4SdMIRPuEe4Hw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAyb1rCWm0in41RGHAdfE4Lvka2FoeFs/clIRk
 ZoaP88Ig9uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm9QAKCRDBN2bmhouD
 1x4pEACVJrEw54/5DQoRujMfwdvo23l7nZ6vMLdhg1RXGPqYk+73XH+lCnIRfHgpNEJqgRZ0mbY
 I5e5+Xq9n8s7veUbg3QrpRrUU3xiK3u3s8jJsu7ftW15VfiK/P9ZMITmOd0Xlc6Be22uWadVLZf
 JFPwNNZO1AjNx5i8bEw+qIlTE0qk1hxFg6Pmd9DAIma/MuyCD4zPjI3Sy0aBT28j3SgHBJHNsrN
 +LztllD/ZpueKn221+PPIeCh/saDbqYcMvqjBBUHuoC0K5p17FT23LmsoEeBn50/krzGN72+gfM
 n0XzHYRrlhNXoYdFr6nCLzd6kRkBPXz8QEI/kX268mzmxShzvru5VbxhSAPuhv6v4lmTbWXKHdC
 DWW0eicXLN6JJXEa2CMJgc/ht0WLmWA35/LS9ntgICyTePgMuc3TUVWH0+BeRfzS8VxreXWCWSv
 FLr0hnpuLghg2O814EtOUv0pPIL0+5GNgLaDiCLsmY7nwSepKF6frj4N7I39dbQVCeEqgkt+f9a
 x+tOrJesH3stJtOYT+XV83vpW4FGHdCqsgaWFG8RWj5QfNYkS/kZdorC+DRwLOoOEq60RJo3YYG
 xLMdrPsZTToeWPl69nLxP3/vzUQ++yV2EV5MbISbVY797NVnErl6f39LCnMVI+GrVJFEp9qXI29
 P+q9qVJGbBVpkkg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Power domains and resets should be required for PCI, so the proper SoC
supplies are turned on.

Fixes: 692eadd51698 ("dt-bindings: PCI: qcom: Document the X1E80100 PCIe Controller")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 61581ffbfb24..83e35543b233 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -73,6 +73,11 @@ properties:
       - const: pci # PCIe core reset
       - const: link_down # PCIe link down reset
 
+required:
+  - power-domains
+  - resets
+  - reset-names
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


