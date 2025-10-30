Return-Path: <devicetree+bounces-233103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFE1C1F1DC
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C1CE4E912F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A160B33FE27;
	Thu, 30 Oct 2025 08:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h8MAx9Sg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B879C33C53B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814273; cv=none; b=drweZ0P9TYdvlATfv7JBgXFCl16cYOkcNrK2gDm2byk8HAFXqXWUvqMvgJApqUC04U08WmuXuDR8xwvq/UnV88ffw3e31o+dvj+NDkv6yeCsDOuwF+YYiPLHccqxfXj8KJtNg51lBGIh/kHN9okBJPdhfeer6ngRraU0tdUqWI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814273; c=relaxed/simple;
	bh=UnjXcV99SvWkoomQOs3r0Y0I0AunpUUaV5PFC6B7+o0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IoD4c4iiI7Dvjmy3jik7UucsCH+Si0ETVT1kO9r/epRW2muAwFJzi5VBQEReGrvlf+XShBXZnd2NKmNRmRkiwvCPNJrW8QrN+nx1uviUW3JcTIJDd7itaGZkZP4yYI+VTzHyaov2+LI7oOh60fV7lR9ZRP/mTsvH+Z2ajQXZzW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h8MAx9Sg; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3df81b1486so14162866b.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814268; x=1762419068; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/swht44pfZHk2nX88R5C4csGgGV80gpv8aGt6ox/pU=;
        b=h8MAx9SgtWI90FcqVZj6WiFivagLNTbeIcW4BN/6C/scYBLnXIGAXiEXryUTIfRrrJ
         eMOF6bGvv3tdFPhVzu3IS3ZDAB/GCmdiAu+z1khevGWPKjphnvaDpsNZWksyBXT9c/La
         txvokatlaphrOYZDEJx2cLFadQj41Qv3WVL73FFntZl9KrJPh/YaTjQ1sUSfKvOxImtv
         39zkjC0Vkp/Q/GX/ZeLFBbJIXKbadCKPQECh6Qw0cgRXIEkonkrLJGo78YDcfg3NEVKC
         jS6kZqB5E5BNpKruLpdPGBizV1jUXWkXAmSzlq/FqULtj6DS+ZswdEMGQSbBKUHSrZNP
         jWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814268; x=1762419068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/swht44pfZHk2nX88R5C4csGgGV80gpv8aGt6ox/pU=;
        b=NjjHAhc1kERHGemNdAgO0vgNz+CaP0i0tPF+JfMOkbNDqvjQsXB3lPneuM8X9INuQ+
         koRGXNbDPN5z63HxfvFhJaQWvXMRB2OMPzlUZsRM71pTW9YRMcUlLFMr7/YLgIn15e8n
         hMTnkdW0mSge7ibxD71zypHrtpefuLNMrYlp6dULRiFOT/cESc5dqR5a5R3iFbK04OUh
         p9656mGZTMd/mSWPtbo1DujlKLv00Qc3L/dXEyopEd+SIeYkYvcGmYck/+p8K7+pUI/G
         ZAjx3A/cIgtG7pf7ODzRV/W6s5DVN0rnUKp2jOv8uSy/pCHaBQD2cQ9QLWNw93eaEbn3
         OKdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUARa4Q5Euq4k0Pt5qSreVMTtyahi/dapuExdPEs5pZzd9CYDBMZSlu+CKMmMYzBZJ2XM0GbXWSYX9h@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3tawWJPI236Ougs6uML90NMworbgcK+/kR0Jx0A4s4gmjFN1P
	14ecCuHgkzx6nCj3LyvXe8+S2XWAvasOeWijBCE6vgJ9JWRofT4lb4b/FEpJ/NUy09Q=
X-Gm-Gg: ASbGncvd1zu1HVoLWugYkJy9TaYm/Kxm9XXmVCmVwEYGrEs6K9CHoxyTelj2C+vi+kL
	fgnXMPMs7Ocf7BCSO5odefcz12d+MYOoQJhlaF8mm6zgY8+WaQ1owI9+6qqbsE08yq0Jhv8Kvvj
	Yb+qa4oXfq9MXiF+ZLj2cDkQbyHxGxpQYKJ8Q6QNYDN3riMhvmkD48q45KUHnAK8ZjMblLCzFEh
	CUfZV8gn+4WMRaU+IZk+LRzZ85mUwV+sT+5fq3hdAFifccnYCJO1Nwu0Z0tQpSp1DKm1bLTB9lz
	UhjCpvdSpzptcyX11cB/xzrHrNzFHc/U6EAjOrgI67is1qkSV428y3Pms11pylEkef0dSOCVYiN
	SLxEs8A/9rkMAJoESYkA5hFjpie7i3nZtC2nYjFSwqqlqGWmOcilFRvaZH8zz398EROYIMAqZma
	Q1exoTB16/fgvnd6aVgWe6FlR0maY=
X-Google-Smtp-Source: AGHT+IH4Xpg+Im3DojMugmh1k4WQg6GSGitSimjc0UjEvJ67YG1OYfvfJB1hyyAWNNTXg3FuP1igOw==
X-Received: by 2002:a17:907:1c1a:b0:b29:8743:81ef with SMTP id a640c23a62f3a-b703d062d24mr328347066b.0.1761814267999;
        Thu, 30 Oct 2025 01:51:07 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:46 +0100
Subject: [PATCH v2 3/9] dt-bindings: PCI: qcom,pcie-sc8280xp: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-3-28c1f11599fe@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1108;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=UnjXcV99SvWkoomQOs3r0Y0I0AunpUUaV5PFC6B7+o0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAybwOMIy5w7bVl5laC1F4cjGoJzeCUfsuy9MV
 e27p5XJXNqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm8AAKCRDBN2bmhouD
 14njEACEAza30Q1dP29Vs6Eqa9pYTbA+URJVy6miVBTSavZAWXhlnPMMd9kpAP8wWwFsAnOShld
 on3rTD4/3IsP9vcg8vTYTS4TPbhNOLAOhdiBNx9Cw9Xu/keTxYG0wD3SIFr59ge40KF3bCmy9Kq
 iHQ9Parl8OKVn75at+yzA81l3tj3KQmE/jwi9W86vvdh5LuSuPBFVcAuOQQxAzq57vPCV6xAgbD
 8mCQ2ev9GdlvoqHpW9fN0IPYZAGYnqN9ODdkBvHvTgJ+OQKMDhEj3lRK6R45lTMT2XUKRheS0Y1
 0ylazyYeY2z3U+bu20ecS1zRB8cu6VpGnsGFAKn2TCcr5GVYEgorUItdfVeGh6umBpTEsLszu7g
 FAtBsYXk0u/Wc751GoXJMQFXsleMwDVoO4Sieodja+ktfIw38a6sxP5Ri8j4rdykDu2ca3OojEZ
 6mK68gvYsI6nhAa9siz25yReo7wAc5kCPPPeGxy8qGmHV2qfzHfEYsNJFndnoarD/B5+t4YWzbV
 beiULSkopGYdfofLXTdtZa7h+l5g3n+cO/P6EunojWpqKP1rTsWPstWXJslxIinRZM2msroFKS+
 jhojr/TNW/F29S0G0j7MAIEhIrOcGo9mvZlMw/dFgomgf7DVNLyzdEjRp3bE/BE6rw9PYeNRtiC
 RkP5/pc6FWZLBYA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit c007a5505504 ("dt-bindings: PCI: qcom,pcie-sc8280xp: Move
SC8280XP to dedicated schema") move the device schema to separate file,
but it missed a "if:not:...then:" clause in the original binding which
was requiring power-domains and resets for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: c007a5505504 ("dt-bindings: PCI: qcom,pcie-sc8280xp: Move SC8280XP to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml
index 15ba2385eb73..b6fb0e37cec5 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml
@@ -61,6 +61,9 @@ properties:
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


