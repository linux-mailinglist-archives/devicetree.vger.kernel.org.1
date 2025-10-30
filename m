Return-Path: <devicetree+bounces-233107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF04C1F1FA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6AA794E8E36
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC32342CA5;
	Thu, 30 Oct 2025 08:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hIIur5fC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921CE340A63
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814278; cv=none; b=h5/0ymFraxeeNRZ0Z6vnmHsVyZ1ZA7cNPCqVODPxjR8AQtnXTJ698sqAZw58NKe3vn1CvGPgIAJ7q3j6dstPb0j967IFsjmE5Daut4V9s/IHMZ0odjUxEU8XrmTxjc7FejNSUXNfn21xrD6PSB3ov4HkDOuKEhs+2XYUljIsKeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814278; c=relaxed/simple;
	bh=WMwLMFL+tUnZKu1QAiyxhOnnxjDnDcEhqj/2d3sqLgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OcwzQsKZt6ujSxgZUSQ9cqZyMF5eUCEl52dmfTAtZu9UY+x+Mru36OMJUgq8raojPLFcPt0WPovKaAcul+sxxuTj59ZytDYw67vLbYRmechn9QxmI/28QDXvlXQcFL99ZAa45tgF5VUkIY6rGilFcU7vn8lNvkyX+wAQKiM26FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hIIur5fC; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b6d535e3610so15993366b.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814274; x=1762419074; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zyzuTmzeShZIW3iLAvgfvykrZphKRqiisNPS8AifF5Y=;
        b=hIIur5fC+p7B/Vs0PRAS8gKi4GM6hb3+La88ggynAp3FRIl3mFH85uwDmWi+TNI530
         FT9kr/tNIeLIsSbW4SVXJH5/HacnPIRFRJQNiV8aXP6csElB7EhuzSt2EUcH9epQ4Pzc
         EvtF15wORHrFog1/9qR+DX3SNh6XfjRIUoxYpmeUtfE3qzMUJ4JIdyVWL7DPg371csG4
         PvFPEX7t++hCMd+sd2cso4WgtBkp2T8T/vt4dxbnZVIQ/oDwFtQzR6MGwuc/CoiPRKKI
         advrGxn9MV5Y29rqfsnvnbhXhyur94OrQpee9dxbkRVX1eLEiwidqjiNJgF+Oho0pN22
         WmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814274; x=1762419074;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zyzuTmzeShZIW3iLAvgfvykrZphKRqiisNPS8AifF5Y=;
        b=TSboJnvC19IwP4emAOAGE+b1YcBDEP8Uh00SZrmpRnrSjl8uW3S2nQGMEMtYgW9MIT
         50k/5XmaZILjs5RdAMwySwH7NsBv0B8UNFOiS7y9t7ySwbttETFSDu/1DDPSL4j+YB1e
         oP/4qLaegayfySiOwv67cGsn5vDcLzaU8vBEqQHZ1GzJ3ZLQDWQ9fztlIO47LVpODAxy
         cg/35Tghv6SzVLIgJhOAlPuDisLnXSWypgicYWQ2dBywpt9/uSaeWRkXeDwR/eGKde7s
         QzU6HwUhzlLDunZYhq5dbhGEszz/ezaNiYDgvjnNQAwR377nOFIqnUZhUDgwd5BO0WnJ
         /f9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVd/XrHZuUOIeklqHslkdFJdB2/iqEjCPVfSb3UmwyhpRS9u7PXViqjcVeT52FzljiQPY+/j1fZBk41@vger.kernel.org
X-Gm-Message-State: AOJu0YwMolQLGgwDD9Y+EBoksKilDirLZOSF0nhSShA4TWuBts4QW5l4
	xd4OKPGPpG70suQXhTyReRsd1hbJF0HikQ+9ZonWlSa5kuOZBkAlTy/4UB4mVO8kQEg=
X-Gm-Gg: ASbGncuzoifUYE/jgq5QncqpwWjLQl5RBJMdYtHb+tNtvZh8v2yhBUEwqnAFIpc6//g
	mjHM9JF3etCj7G7dWSxMNVyxfJI5JJ2SVjRiwDxtqqwFLcfMf8FQ1XJeed4X9ojIOe3E881FMqX
	ZvZTyQBYcVDifC4OUw0drwTuS+/ifZR7RBSWfkfXj8oPZ8JFaC1dbEDcbsi5s5K3Mux4RUg205g
	jx9aFAm8N5ob2ttMb3JqSrwfz3ya/nwZlZsLSwbv/OHdp61JvR9m5M2JlfG7anEYe60gRdk+hc+
	C+i9sFYBKSSG5oyF/Gp4oqNFSIIloM002PjzcWnVbGRlRFlJzG9uOXQbrRTiHB66iAYQZUX4Q6Y
	tgcx53lPshnvJU1C6VKwxJnwlgmDAG7YyAZlszP7t8FaGQTgAvvX25P0WEYOYSLC/k5TdD4ozED
	BOwsyxZk+C0RWqKqhXWnlVLZqdcrw=
X-Google-Smtp-Source: AGHT+IHRAcmg+TMBIoejKF5XHwKZ503c2WXt1P+DVsIuGDH+mslSyjoJwpIsUPNBODWdIstgkLqBtQ==
X-Received: by 2002:a17:907:a088:b0:b6d:8da0:9a2a with SMTP id a640c23a62f3a-b703d2da9cdmr327320866b.1.1761814273740;
        Thu, 30 Oct 2025 01:51:13 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:50 +0100
Subject: [PATCH v2 7/9] dt-bindings: PCI: qcom,pcie-sm8450: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-7-28c1f11599fe@linaro.org>
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
 bh=WMwLMFL+tUnZKu1QAiyxhOnnxjDnDcEhqj/2d3sqLgg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAybzSvYFRSdwqk0IIn4vv8F/n6XPvxoeWhM/2
 vnKmJgZYwOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm8wAKCRDBN2bmhouD
 15rIEACIxNWH/qRsalqSQkGDGDsAP/edKqPEDXrAVX4obLXBeZkNLpjT6mrBSOIE/pPQ1gcDRjb
 JgTtuyKDjfnMmw0gQhKMB0mK+jDyfB+m2AsyBXj5JixkYUJFasi/p8t5HUaLKt1GcAuI8A5S3Xa
 fJm0OLv/WBlyneAv7qAc2jGs6p63AMamPNvj6EekxAgMX6u/gpcrZV9P8nePc9SxYnlsq8NJtbl
 TbX4GaRfYz36oyVW9TjB2HPnMrNQzNbRcrgN90if3OGg79bDhxg7UGIChAc2KzIKJGPWrl0ajcA
 rn4cxIcitai4wbJXUOC3FknEm7IyRiJ43eB7kz77dbwJnLu5c4gphVpTiusoBvpftpxKFzNJ3h9
 MwhId//GLg/f+wjNM9yxha6onlfdif6S7yNtQ6iWIaW6r47ug5VmY8Sl33GepYhXvRSaMLZmJl7
 C211jDLfEtXZrz4vTv3b7v6iDBpE8/wFm1NJcn8sinMISdPaK7JhQOHQQCQ8I/UEJRJdL34dFBa
 CiKWpbZqd83mU8effDVDIs08SWJBSVjI0MsO4jfc58A38aBRHEXTBNX2VTJOEzzbxZc1s89WxlE
 Ve439tuXkHE3jhugZh/aBkgzaUgX3pL1PpjUr0y67RfAA+KpdWn3QBCSWc6rMeR0Z+LjL06hnRC
 m86CFhbxLHrq/Eg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 88c9b3af4e31 ("dt-bindings: PCI: qcom,pcie-sm8450: Move SM8450 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains and resets for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 88c9b3af4e31 ("dt-bindings: PCI: qcom,pcie-sm8450: Move SM8450 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
index 6e0a6d8f0ed0..6a17d753122c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
@@ -77,6 +77,11 @@ properties:
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


