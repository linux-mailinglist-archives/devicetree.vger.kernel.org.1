Return-Path: <devicetree+bounces-232813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BC0C1C5DE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21DC56467B5
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7BC3446A3;
	Wed, 29 Oct 2025 15:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ra/9fSiG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CB933F39F
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752466; cv=none; b=ZzDLZbWzj4sTCDRonogqKWu8khU4rGRZPkZlMtV5avSS6R9K1FY/IUP/oLzW3O6ImwFE/rS7gEvkwJBVnHKB4bYT76kLDZUcn8Eq71gouvh0XBrXp2Us0bCqGQoDFC/BrXNk7oPzBgPqFiDKTiOxGeXkX+/e2XeLs29U7MCsB78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752466; c=relaxed/simple;
	bh=jmZDND6HgYX8EZDdUAJP/IquD3beTYD9OCZKg3gtY5U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K64DupNEjvbgbikOIgMjmunpvo4dE58X9lVUCTDW7q8vvimrarpaAoekm6iWN17ZU0etBCYqKP3G+44TLnpKtPzuoshtV1BARURGTWGdW04rSUYgMIGERuPlV+plpvN8xGW3zpwI8sheaIXfGmmKRYxXwYO6ZuNl6ZcvPcyoO74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ra/9fSiG; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42708097bbdso597616f8f.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761752462; x=1762357262; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VxI90H/RvA6j+47WbvbjLy4lY2bQBr0L5l614wF2bwQ=;
        b=Ra/9fSiGcI7N2vrUAw+2qeKQ3MweoeRYW3rjZys/43icnJJfxWqeKQP0WSgZqQnLXc
         KGGHl0C8uDKEJ70aaztiAMkpsaHjl5wly7oLcVc8a5XMbHpqy8rXgPKuMIi6xqWXs4Uf
         UPKXNILrzwdHAwg/C/F34AFa6Rwqu7veTeaP3LdvEYb6nhuV1ztUT/Kn85nqK65JVpvg
         6dpt93NBjUVAoxYDEyhkxRkCZ6uUP+YQ+WiTPLQXE0srmkHCcmslTruCN4RFWNqGypdo
         +RQHCxRmupXylhYZ+lLIMBBkeUrxb78qe2NyCv0WVoaBeEgrAe9hhMMrFclrHb6n3p5V
         +fnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752462; x=1762357262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VxI90H/RvA6j+47WbvbjLy4lY2bQBr0L5l614wF2bwQ=;
        b=n5dHnrz0V776iA+nN+PLZl90iph9ojdCFspc+7ocvfzdONsBgYHzblnSprVncGSfmi
         3rJQanSrHUvLHEbIlDYf7vLhZtm1Yo6EoqIg76ReeOd92iUkqb+o8vo9DkNGwEraJXpz
         5ag1LZ25fne+IRngw0DCfhv2F8VjydMB/4FocHmLitB9ub5kCJOPWMU9nII3cSpE7gJq
         ENDe0X1dLvJxDXCmgERDioOqtpT81FyQCxLSyai1ys3xPVRkZufA9Xe7q36VkxDYOkw7
         oELIGfe4O5o09LMjeB3qvb8pYvodBTO04gbOr3Df1TrFvj1ukodEEZwpkKx95QWH1eR/
         RxLg==
X-Forwarded-Encrypted: i=1; AJvYcCUnKFdBy0uqxlFJbIDTrkVK7If//woZx+dIRtxwZLOVuoBwdj/eUhNrXVZRtpRxmG5TAHBpp0XN/1qu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8sK2xWy2WncxhHAAm38oo9FbZzIaQWWwZGNA60w1UNP8BfFL0
	gITf160WKHr1IFzfUP4VZAHviRspGSk9GesCMJFY4QLNGK/4vr7eH9Q5HkM2t0aZ1Zo=
X-Gm-Gg: ASbGncsjRvW3Ln5weHldex+dBY9kC8FyqYF3PV65ndsShnlV+l63HVhk+xd4qfuU3t3
	4Ec1Sri6mW8j5OtSzHv9gaiR3NGhjt0aGkgRg9azPlLNNbXT6c0kE0GtZOiZ/bskz3ivnkIfF5z
	RlB1ixfXUhY9Q2PlCSA/Ku/zmmiwEzYGg/CmKKKWtOXpolQqGhCRgQ0fivp5SkvfRcqIdoqZWL/
	0qybwDqn2MrmZUCKK2dP44uloGa1Xz4D8KOVRaf+p9wi009IdWkW/ScA48AjpAcmD3WsSE1ktMB
	g4RpSCmtWtjkUYZtSXWh7uDsLNooC3oarC6yRyXjJVljzno6VxGAbVTS2WqB5Ja8ymy9njxbM6Z
	lpbblpZWCh2nWjnz5nEwLKvn7TzhqQl4AJF6KkUkYQ7HOc3QHikxXP9nGmGa77MEcbGfDnbOx1r
	Nu05iJAsSi5ldXKUzX
X-Google-Smtp-Source: AGHT+IH0MTxj4KideKlmnNCTWGRH1FJc2DdwXawsfzS+YbdnXfbjerZ4hGirRpqlsBnBP95NVvOT1w==
X-Received: by 2002:a05:6000:2088:b0:3ee:1125:fb68 with SMTP id ffacd0b85a97d-429aef70b89mr1611585f8f.2.1761752462598;
        Wed, 29 Oct 2025 08:41:02 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm27006875f8f.41.2025.10.29.08.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:41:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 16:40:41 +0100
Subject: [PATCH 4/9] dt-bindings: PCI: qcom,pcie-sm8150: Add missing
 required power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-4-da7ac2c477f4@linaro.org>
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
 bh=jmZDND6HgYX8EZDdUAJP/IquD3beTYD9OCZKg3gtY5U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAjWBmcy4XgYDlp4xPS0l52FU7QL68VmVi3wFH
 JptIegewAGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQI1gQAKCRDBN2bmhouD
 198pD/9wZok/UWTRqJu0zO4NrX3NW/CSMcltjXyHSXz9f1CNq4CDhov3GAq2fPqNYAwFbGZg4eg
 RmW4EAElTFoutWfp5ht3GhccOCMM5nsiQE44AhZaDeLujUn8kcnNS48fpVjnkFgnYumkvmcBeQN
 51PHrVGSPgTW26Sex0ZDJTwPt//BZ9o74QJ3Ief+fJQtN6ACsJTEIM7sewm4dJw3Y5dsNeijb92
 yjYNeQNfFD6NIb7PZFUgi1yVT0r3IBWtKYFp755iK3Agjfm/XrrHwqI3DidgoHYEs4HsHk13Xxp
 rIvGsG3SMJ5LYSavdm37X5/ENlkLpj5NjC+dmBArbBkLbjQjs7/1C9kqM6fCG/5Tc24aqb5hILX
 Av6B9bUNOaeUuR8YdSfhVtWQZy4i1venuSxvdFskZavcp//gfwW9TzODZOSu76kC7ZYRgcwaxHQ
 cnNu1+HoLlP8JvKl4i/o/U108JORS4vsPO4uXxasvgGhumQaA2c22t3KltmJ//0Sod88rwonAe/
 wd3soqsovOfNnLqFv4oTgT9TBdr2NTbuVxybhlnHRAh89YuK18KHuv4kP/UJNDOMyxvF/ZerH63
 QZpA98YSVZSkCk9mrQvkpKlXcEYhTxEaB7RhJW5TbUB5mj2Gc0zHAgO1nzBk+xy7haa7Tg0TkaT
 WXCe62oV/PbTsTg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 51bc04d5b49d ("dt-bindings: PCI: qcom,pcie-sm8150: Move SM8150 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 51bc04d5b49d ("dt-bindings: PCI: qcom,pcie-sm8150: Move SM8150 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
index 26b247a41785..ceec5baedcd8 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
@@ -74,6 +74,9 @@ properties:
     items:
       - const: pci
 
+required:
+  - power-domains
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


