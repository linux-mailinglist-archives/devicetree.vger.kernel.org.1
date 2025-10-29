Return-Path: <devicetree+bounces-232812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC978C1C4CC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A768162611A
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5358F340D9A;
	Wed, 29 Oct 2025 15:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pDlcXMK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070C3385B8
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752464; cv=none; b=DkXVzJAArPueuB8RCls1A9otEFnNiTR47EbLhe0Lm39g7ztcyXgMDBGOfyw2xtl05pXsK11saTKEfyyNGFOcrWFYYFvA+owEXBGivrYF6fJo+7Uuc0J32+jYKkaYyPLXY348ZVAnx8R67B8tIxtF8mCBoF3H5WfHnLseWtD/5hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752464; c=relaxed/simple;
	bh=gg3q0o/WXEClcVN1pmj4q5ZbEehzsr+ZhzU5VwT5XO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Smj3AydVAqF9WRK3JWlh3yJb9GrR2P+YLiRg3kO/egUTw0oYzQGY/edR0NIAZzSllxdAz+QMpXV8HR3ZS6Ry1hJH1QCrOQylAeoQVvE9NwAV17pL5XdKjZkOEjz5NjRRfaNL7v5DTfQ9Tdou+0DxT7MPMpqf3rTw+BoZI5Sr5Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pDlcXMK3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-40d0c517f90so630144f8f.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761752461; x=1762357261; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Unvd6ZqORwHj8xRj6KdIfyizf9nQeBi6nqOhdj47oms=;
        b=pDlcXMK37c48JVAOfM+Tzy9bfqQqCst38M1EaLqefEfiYgTJaD/HvMLpKv9AR+tbpK
         fpHNLiauJc5f9tOmfnRRUn8hIQGbR+lgzBqAdBUcmOgRdpF1IjHbjhXHM5RgPrUKAroK
         QtoRPWram/VBR/X1hExuYqSAhSkwkp/YPdxsjpE9jS95vcvNwllWWF2myzLtROslsR4N
         VLFKmUiRmMm0rpRFxjX5O9dh2TJrULISWOr6Zm9zlyWDwARhzgRyPj3xA2k6jgg6Z0PR
         kwn9FBQBtaEohdAmiczK3+RKOHxoxYvPnz4xeJsAXrRpzYYTDZkQ1u9FP7ZiFIskff6E
         wqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752461; x=1762357261;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Unvd6ZqORwHj8xRj6KdIfyizf9nQeBi6nqOhdj47oms=;
        b=layP66sYYNawNYphIOfnCmqSxRpBhbCJD1VZDjBkbpkuBa7EJLS2d7y94/yJ/za9F+
         MUn/A5ULCu5A1/dtKAy6DCbXs6tNt94dLkk4dUQJCjYY6rBqTOfeWFwAZMDjBl+cjAwm
         UoD/b6H5ZYldwdbKU09LT4v/Yx3DLN3gsqtWXzZ+DyvpjK9f+NjwAu3t7H+dEqb/i77J
         F6Gl0+z/uXDE2EiGaoeqH99VhOAcK9XFrQu6p6v78dhpXoL1gE/3cQxgBvffxS6AjOTx
         Nukmd2rCmPVg1R/JdSCbRHcL7SiYxtxWm3Dlee7ntds9EJpKA5rDKwmdmCmi8gO7jVgd
         v+Ug==
X-Forwarded-Encrypted: i=1; AJvYcCXXmapdZsQrTT8iENYqwZbSPf6tV1TUUokfRL15uRH/FwQXCFeIj4Njs9r7kwF5FbnYLU6eH21eJGFr@vger.kernel.org
X-Gm-Message-State: AOJu0YzSloP65Rb7sOpZwZFUV+7GUE74vYvOWF2wo8jxzphjU/UMdjo4
	OqMI9ON0zSTJz208/wbQsMtxIph+dmi0ozX8voB8ciidI2OCtl4fTUmCi3HieRdXptc=
X-Gm-Gg: ASbGncsfLsguctHS21MUEvKYWQNFN4ekULIe3QlquzJ0WwZIEinwEuseg09tMZ8xjn+
	gW0Sw861wCPhq2VIzUgJmLsVFb/fMdg2Wm05uj2kOM2VJEtZ5PcM+BGul5jt2m3YZsQMMd3kqQi
	7ELzCjad3IBuAbH8VNtci8wLLnILPPm0JOuhanWPyqpGfFY9/R3Z0QwznedDlPpeIl6N7RAES1N
	lYMQPFHe2uNP2RTcgzwuWTOtSIII2ZJYJfrsiL1YuwHp83unKMKxIdNdj4JCng0SQyACt3bzYNp
	2uQ/Dl5qmmn3W+nijBKkTXjIMhfWuKdNla25MMXGT1wxR4pWdIWN4N0ydGdcIMvaZgj9dAmsqVe
	wWXx51WWeuNMXm4Le1GykMHc5Bxdbh/7p3bF63saVbxI/pMgv0lWihhGB0rLORWhDQPYOhvepbu
	8PXMCQSIr+kkzU+fzB
X-Google-Smtp-Source: AGHT+IHPRSkNKh8UTSCquSYHU+ryiQh0IUQEPrOt3eFcqubId9xEJVdpihA/qY7Z6iymfz+tTp29oA==
X-Received: by 2002:a05:6000:1446:b0:427:529:5e48 with SMTP id ffacd0b85a97d-429aefb1366mr1638664f8f.5.1761752461185;
        Wed, 29 Oct 2025 08:41:01 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm27006875f8f.41.2025.10.29.08.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:41:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 16:40:40 +0100
Subject: [PATCH 3/9] dt-bindings: PCI: qcom,pcie-sc8280xp: Add missing
 required power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-3-da7ac2c477f4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1063;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=gg3q0o/WXEClcVN1pmj4q5ZbEehzsr+ZhzU5VwT5XO4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAjWBhNMxrFdUkWBpBDmSXSET5t7bmT9rgM7Ts
 10CG58cmXGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQI1gQAKCRDBN2bmhouD
 1+klEACLorNk91cdSBxZPpSrA/EF4/gQZHhVVXpMDUJLwmgru6/G7eg6x8LC7Ajc+mx/1ABkjgU
 TarRKOx4xLz9IgQDmCHJvggAFdRVptXxSHq8/zPBxM6Me9pxH15t275G+mjC926LIcOZf8/VyaO
 ofDVmH5cnoKQXOZRHKq+vhsdwaio5VybcWpX5VFLzwfNiCRyNgz1ED8u94+TeUB6MOPA0188Svr
 ClFLcPDrzeE6NCSTRj+H4TS35EHu2Xlx24USqFTvue62ZyJkwr2yvyn4eFBSJF7ugIZB8tmGQOq
 s0t+MLEhlHxVjk9qBg69/ZEVRDkSWYdL+iL+4l1jKyqKeUswC2lWHaS24aGs/VyLGbalGnWjejE
 J4aI4pcxAuAp7pmBkeifowiW/uRiunV/bewx4pRWHTzPzjrKEgnzFRZiEqCEWkINS3dOL7oZTB3
 7yHq+TpXYt/3uzH1n8M7+TIgyk9ZRqWaBMEPclG0Zz/3Sm0HDVlcV6iEo9Y1PKlxqSNZl6oPTJx
 rkKMFdvedfFurc1GLukgGcg50otNYQ25JQK+hdhcKOw6OGulYOj8sya+wLVoDlJeCRrQ2xzwDSf
 e4hx6xfFCjwzBqwb/bVchqG+XnEE+bN2nhrd44bo/L3Pi/1GvhGXuW4ibJE1ycMoNpBRZbjv+wq
 Gv5Ct7DlRLw8KFw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit c007a5505504 ("dt-bindings: PCI: qcom,pcie-sc8280xp: Move
SC8280XP to dedicated schema") move the device schema to separate file,
but it missed a "if:not:...then:" clause in the original binding which
was requiring power-domains for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: c007a5505504 ("dt-bindings: PCI: qcom,pcie-sc8280xp: Move SC8280XP to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml
index 15ba2385eb73..29f9a412c5ea 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc8280xp.yaml
@@ -61,6 +61,7 @@ properties:
 required:
   - interconnects
   - interconnect-names
+  - power-domains
 
 allOf:
   - $ref: qcom,pcie-common.yaml#

-- 
2.48.1


