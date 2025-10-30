Return-Path: <devicetree+bounces-233101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B582C1F24B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CB021890940
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B18A33CE92;
	Thu, 30 Oct 2025 08:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pj8S9j+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BDD2652B4
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814270; cv=none; b=PcnADV7NvZMGB3s54IPi8T+YOYjKd+YTHVSDWF8z49NWc+Hqaff4uW81OV3F7xML3PhAHwOnr+KkND6GWpkAayo/8G7RgsMTHH80c1f/c64ldcKQOI3AWI6VNNSLthf9zO+RLZnvrzsNGCwEC3TMwCmVHj2BKrl+OjQHqMqjmkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814270; c=relaxed/simple;
	bh=rXq1QELCgTi/4niCTS0uLONUwSjnukkVWCz4Maq8s8U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BJDYHdLiChBiGhIrZPRlKR11xh8CT1VTZsXGjU7okUrv/z5aJSGfSLH0Xp9Q3mwtTXVV26070y85D/UO9lXn4BTdnC76PH9iTOsD/BVDUu5pJ29cQdh87Ym+r+1mk672pExe7dvtm8FdpNL/8NTQH9Jehwl7bDRiIo0ZFAzCZ9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pj8S9j+s; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b6d4e877915so11194366b.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814265; x=1762419065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OG7PpDsVAE9tQ612HrRzhxoXJQE6UwfDyZazvJz6U6A=;
        b=Pj8S9j+sJU16ltLrouhED1Z0QtZlR9BDV4kzu3SyFH2PcN26Ib/xZHHmeEc00DYVXK
         1W85vjvD7XdY/A5gDiEQ8ECFLAwYFQHvoXF1npaKrklJ/C5I9grcfNMu1z31CYZTwjgI
         zqDV0xm5FQYhwZdM5f2dklhZ7U5nUexK8bmCqvWDvGclwpqoTyhjUMC56++PQEn9pH+8
         AWVCU5zaq4ZzZo/mO9P685+OgM0XyyTOeyXqrgIOU1WKncQB7+oPM8qNVTjMwT+Ft8q8
         58uDn9MK2ooTxMSC/gd43B7+XV/2oLFeWH6KEjQyw1OM1ReVOPpHaFVb4EJBZVPjatJz
         SpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814265; x=1762419065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OG7PpDsVAE9tQ612HrRzhxoXJQE6UwfDyZazvJz6U6A=;
        b=A4jvwWyd4ipgK16jvhk/KRO9cEAtgsZxeFvMSxQbXmsQtscEqfTmhf9zlMTkBmkW0a
         ldHzD+JCuTyHnaA2Lg6ERS3/fTgMoL3U5dtWqgtDUNLGl342Z3esG4egX9QsemCvN1lB
         NmOnGuj+vl9KIOGl9lcoAhpwMF0xQGUUUphFEVKX08paUgWENvpTA4EgEx5GlmU4f50e
         RHXUDvp2h9blzUA310nC6ck3i5NO35DhhGoZKK1DzmbTypUmpvsw7/lY0bLmZJXvVjCR
         c7xVfwJSSSqk4r8bBtODcFLOVg8fx88ARCcSa6WYWRMzqwlZ3jHm0sBr+ika3emKsE1M
         4r2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX0A1BAGXgc03ELyU4BGjcK2tbStQeDgJ4+ikoMLl67KxganLUb/mWptDlbmJpv4nH1+zLUO+GQvPeJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyRxG5yQ+X6NFFxmE+EuxQL6ziYZqJL7Lyu+cmAU4Md2X9UhCCB
	t6S/VDoxfXn2dSyWDPcHis5AyIiYCUR+TTmLo+EZ+eUa9s06n2q/Uygh4EiQVOw8pRU=
X-Gm-Gg: ASbGncv1/Y2bQDDAISjoS58F9ESTBjJphRLcktnHRii2sCbHCwHK4r2cHwEQYxyFK+Y
	CfiOKzFSrWA0nLJUEfV9Srcwu67amMNZLi2ZLbggOTk9P5RgS2UzMBSBnad596+ZWb4aiZ9/Txn
	nn+XOq/Q2PT9241lD3bpSVx559RLxN+Cc2uJm8sDH7F7mVe0IXXIJCVXYxDmgMM+nxZKsTCAXHy
	VsS00rOYaYuOMGyWeQG23xpaAmYjQmXfMQrLg4TffC/+TXmvLMEi3Pi5gV6BIc9IgVnFU3m9djn
	CbXHvtni51hfNcFXpZFedZPax0Uge+2yNA27RsvyVYx3QDbTCZfFSr3aNAaIEv96lupVIo3oJnj
	vHx3KoE5Oon1f+tJi8d73hDmSOi49fDLIoG3bcxUowqNzbaubHUuwRvnuPj7pnBewejgsCTzU/z
	79FhxC3gEnDL1qRWgKuPfwDkhnPDk=
X-Google-Smtp-Source: AGHT+IGFLZS8GxF6MeLiN8EwoMl4nYDKEwyD7OXcUHBvM/zIfmGm/ta5BWBNREoMfdCnaAAicyJZYw==
X-Received: by 2002:a17:907:7e92:b0:b46:6718:3f1f with SMTP id a640c23a62f3a-b703d586658mr351894166b.7.1761814265126;
        Thu, 30 Oct 2025 01:51:05 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:44 +0100
Subject: [PATCH v2 1/9] dt-bindings: PCI: qcom,pcie-sa8775p: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-1-28c1f11599fe@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1069;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=rXq1QELCgTi/4niCTS0uLONUwSjnukkVWCz4Maq8s8U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAybu2D1GdGoCurOh2ok8fMYpMdVXdtvTMQIHF
 CIjvg8fh4uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm7gAKCRDBN2bmhouD
 160eD/0S/f4g3I34lZxDFRmvUnDit4hDTpsAETkFlIoGC/R+d8I52YI77Y2J8MiiQwe+kiBDPdX
 AseaW7+jWxpEE+ucJPOdDXKiIItt15hkKzuPwjZG2wn+RMSwxMdr9edhNPWO8kM63XO5ZqoBimn
 M//1FX8amSzIGOYqUKO0XVa4QXB2kDQqGRGVNEPt/Nzqw2fop9phljeYAtBQlwFM8hl8VySPkp6
 t16LbNBjj7NAvyKwe7ujVjbxqkgUFAMBSGvZGF4sKB+KdOLT7P2vJMO9PkL6GxW13uFrjTBUfRh
 CqcAzGkaRRrC+EM+3sqXFfsCP6bvawuS+rGwWySCJjz/9jxcFn7TPvcT1nl7tHJGzP/HT7v9SG9
 9GRirQIeBOwPnI3iIn/zvrZFqDaMYTypKcdyvdtQT6eB3uC8lRgAZPL2JcBr3WqcB3ovuc2GeUf
 ey7G558vcRkvBwu2DaIim8JZ+Y+3YiiH5eTgTrXmHMkX2tLVmbYL8Tsy+PfsZWvvRSoKuTSdn3p
 ZRXrLq/NxFKVbyKCB76iZLkc26DOVz2nzApJzmgz5qunvXyGsQjN0HmP8Dkx55B3wtw61vSJzfD
 Fd5I2LR6hu5nUXdObHNLQGvOwMZaqDKmc7uXsAmW82igbXtNL07n5cKBBdzCw2JBobzE4BaXF/h
 3LCi7xdkKYxOQRw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 544e8f96efc0 ("dt-bindings: PCI: qcom,pcie-sa8775p: Move SA8775p
to dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains and resets for this particular chip.

Fixes: 544e8f96efc0 ("dt-bindings: PCI: qcom,pcie-sa8775p: Move SA8775p to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 19afe2a03409..f854c809ae37 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -78,6 +78,9 @@ properties:
 required:
   - interconnects
   - interconnect-names
+  - power-domains
+  - resets
+  - reset-names
 
 allOf:
   - $ref: qcom,pcie-common.yaml#

-- 
2.48.1


