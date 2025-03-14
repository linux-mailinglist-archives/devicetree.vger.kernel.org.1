Return-Path: <devicetree+bounces-157600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4ACA61520
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 16:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDA9117AEBE
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 15:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B39202F65;
	Fri, 14 Mar 2025 15:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YoDhXhrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EEE202970
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 15:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741966701; cv=none; b=H5IOuvLDiz2OZcccSj/o2dSCCkNw0hz/JpKJ0nKrH2EmH8VOMkZyW1+vtmSpY/6gXIqKD938S2rUNgItcgLz63Ei0E09jxCSCRvfGUB7tnEic+IniCKl2qwPQ1/VhVdeJRkUCbjnNSE5UXnXwZ/G87G+xM5w24l2Z9joyka7C2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741966701; c=relaxed/simple;
	bh=g4f90mwDJuR26wqS/1igJqcdIvIeUlPUF9yUW95/6IM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BQpV+lpTvUsq3E4EYWJ/HMIBNsNvmjGirW3y3uTqeeo0bJljw/bw8Ee4+F488LAUAEni8+tdpYNXnHy+LApi3TxGhKPrvbvYr1999+ygVFls5JmJrSSfzPfDLo3NQBMQC/DnlFCb1UWqCFbzyjzsmZ8mQy0lYfNC/azzWNco2HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YoDhXhrE; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf680d351so21403625e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741966698; x=1742571498; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMYM/Y59VrWiEn+/FGX1UKrQNBbRBPg1viYvIvRGXN8=;
        b=YoDhXhrEM5WDMs/QmHYeIwMkLROYI4h5NvS7NSDB7oNXnbRob72zHj1eJAZ2pSdSlA
         W8ed5qcrDmEkSXFqL/8kTxsnez+8p04IZNmVzBKQhWibdpdeKARfYRHyXMQ9Bv2tCf4e
         wl7qdIVO2AnGMzIHoPyV3MQ33YTXPiHgx3zoO1y7PpYrbg8gwmZd2dGYNjL9yALL2XZF
         hBN4qOu30oSMKDL3GdiKrBZCRJT4YK6vhmE565GMy42VqdNmcgM5M/U8V5mUwR02w1a4
         jFjxyN+GSAF/qohk1iupIoD5cIy6sacX4O8t0ZGXLtKQ55+dz6j0ktkvw629PYzvl68V
         7urw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741966698; x=1742571498;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMYM/Y59VrWiEn+/FGX1UKrQNBbRBPg1viYvIvRGXN8=;
        b=Wzw/yTYIvjX8VjRnBBZr4wUDQ5kU1CMvdz7E6JiPZUzF1N8MYRSIx8+JLPbFS3t6Zh
         IMOp/rtPWk8vYM36aIUhy9ltcvk/ohL1iA93bWzEaylgNn7b6WjYIdUBAKd15oILNl8g
         nKAIrr7cCDXdS/hUlPats63CHmUv+04BLTdaz1pyqOttYibXilRGpd0GH03zk5gSjnKS
         ShFB4eXyq91e9s6u6mtzLTqEiuz5bc2bjfyotPi/NmO1QyqcAModp9QyDEEdLGwc5AYA
         6zC0sELWkE1BA8zkXZoOwYisusrOQNMjvxNg6tBDQH+VOpkGSh7CedyslcAdH7WRMdOq
         Iw/A==
X-Forwarded-Encrypted: i=1; AJvYcCXrCKHUkWvrOxuACZdw/Wp5c5KqdI1JGyHTM20a40qt5CZXdod/MQ33g+b0yP3FuU2qfoqJO0AvxZEd@vger.kernel.org
X-Gm-Message-State: AOJu0YzSD0mEpoP+/pKIgB38x90Fsw2xMZaa1joDNcYxGSk9mBvUEMxS
	5RXGw/C95itjJPcTC1ufldO521gumaNTP2/5mcp0wZRU9q6GtET3zkIRV8K9EZ8=
X-Gm-Gg: ASbGncscMlu+C2Kufh7Lj/Z93r3NCnZxKNGb7zdnWj+bcCIZHmOQhc7tjy0QnUOJ64L
	AgStwnT5ggSZGxx+GKIjQPHYS525vypbyRWbMXizyWH+FxMXdOsuOoBgVi4BicN6tR8NKlAS0pp
	iy8OqbSuuNqddo6XMGDdWNNAPVdXHY2ovh7ed6iO/NmZMWZNAIVMnEwcrb4v97Xmb3TU0eqQwun
	hurvICZ6kY+K2c7Hi9PBg5rvQxZX3Rh7/fuob/7QtJqdULWkZoApZNeAT39gCw4SNZnD/R66Itc
	AXJg0l0nu9+Y7ZBQJTpaGu2EQwQ2/yHg1GiBa0bYZFEIU2JDpoxeg8C12UwSwSpuJqul2hiFPx7
	U
X-Google-Smtp-Source: AGHT+IF0c1R4A731Yp+i5adNCqzDyfMiv32JNj/6QGvQRIP7C/RfyrTNHmzLFbxoNZ8YFJMzjNoGcg==
X-Received: by 2002:a05:6000:1acd:b0:390:dec3:2780 with SMTP id ffacd0b85a97d-3971dae92ddmr4101987f8f.24.1741966697719;
        Fri, 14 Mar 2025 08:38:17 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([209.198.129.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb40cdafsm5944388f8f.62.2025.03.14.08.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 08:38:17 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 14 Mar 2025 15:38:03 +0000
Subject: [PATCH 2/2] scsi: ufs: dt-bindings: exynos: add dma-coherent
 property for gs101
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-ufs-dma-coherent-v1-2-bdf9f9be2919@linaro.org>
References: <20250314-ufs-dma-coherent-v1-0-bdf9f9be2919@linaro.org>
In-Reply-To: <20250314-ufs-dma-coherent-v1-0-bdf9f9be2919@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, kernel-team@android.com, 
 willmcvicker@google.com, Peter Griffin <peter.griffin@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=931;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=g4f90mwDJuR26wqS/1igJqcdIvIeUlPUF9yUW95/6IM=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBn1E1lrzk8wn/m7Z3q3ttJavIAK2e1eKNBbYLA5
 JQ2Q5NtdqiJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCZ9RNZQAKCRDO6LjWAjRy
 utKED/4hPCY3Gp6xFZBVY2H08Ll2kfO1GsRnfO//B8bkd3czF2j30oImYeJvcg4bM7d1oc1Yr4V
 NGPH8Hk9EKbtDZSaYpRnRIP4rkb+QW/ni2ntZ6I9J1cKEDpb8KjUQaSVgz4ajIDGlbqGO6o7HF7
 0GwOjCQaEJ2c1rBTIzfat/7Zhz7sBKa5gxkLH5KGhejx0/kzvYm3PS+yOMnjEWNfg9ROeum5kPV
 HCWq/4Tt46gwj5WiwgHQB1MY+luGeAm72KnCHBfYqMVY0Ol/i55IhRcvT6oUUbbPUrhFRnAUTae
 V0HlLhfPlhSZiosyZB/Vk42oKcZOWUw/8aARs9r2YJbPbP+Tc69vfThTN/ixsCtNTPGSRjrNHV0
 nWyhBJGLiKC91dKYCYXFm4rv/1LDHvb8PXTkIMGYxpA8VLzr9QiwczgdTUKGR/4NF3mw7nRwjpj
 u4IAE3Es/t7lMP0Lay6/zsYvjzh/j6ucCXB/wPn42KWTu64Jb5fCdeHomQBuCXfNgRuthaKp6Qk
 1eyV/LwD7l4aAh/Wyso4tYsVALuREJEuE6Ilddr17L5PUmF7+C/Y3SkcYRtT0FcWBVRmfni5fte
 g1rLHY5w4qyb/3TF+CJfvYIIKPjLTfUkvQxNJ62Aj7hiDV5SPiTkAfjQknnzLuU4UAy/lNq9vvz
 vIv5kje8ghGwFPQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

dma-coherent property is required for gs101 as ufs-exynos enables
sharability.

Fixes: 438e23b61cd4 ("scsi: ufs: dt-bindings: exynos: Add gs101 compatible")
Cc: stable@vger.kernel.org
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index 720879820f6616a30cae2db3d4d2d22e847666c4..5dbb7f6a8c354b82685c521e70655e106f702a8d 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -96,6 +96,8 @@ allOf:
         clock-names:
           minItems: 6
 
+        dma-coherent: true
+
     else:
       properties:
         clocks:

-- 
2.49.0.rc1.451.g8f38331e32-goog


