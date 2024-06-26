Return-Path: <devicetree+bounces-80123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A87917D50
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:10:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8EF68B21156
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811BB178388;
	Wed, 26 Jun 2024 10:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F+OVHCe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE17A17798C
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396581; cv=none; b=XojwYZ3ts4UqWEOUjuNHncwYNFIceLLW+sosAT6O4q5mBOQUQClbzAkKvRljAEXTohZf+wvYvR7ffUVB39dF8E4GxtJ+2eung34FETSsqOkOQQDOIefbWyajdm7mmRsstILXSnKhs6z4FE6htNjJymgHXLtjCsyuYrr48QwyKxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396581; c=relaxed/simple;
	bh=HzjHV2p0YoAb7dKSJR0H5taVVRVE4HdGIeGsfEBVEbk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UQGqSyjzqVNpmYExNuegk2GKZbj9QTO+BKGCS1tDQN3jhM54vGpFAyAwkVhRKEMQxub9gbRFqwbpdM3xzQ//Md6PEWom8VeWZOQWUFjIt1gazfSB1GCyiwiuWS6W9lN1LFLgR13V+SFgYut/I2TEVsfZL6tWKGyEuFv2Yklr9hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F+OVHCe3; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7ebe508fa34so352778839f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396579; x=1720001379; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yrRDhDMAfJony6yFg7+6ijdc+Hn8JcmRpBDuBtH438I=;
        b=F+OVHCe3JDHAHkMK58RLLEl6l/Q5bVimTEpZpy1r4uAw+KJxdHln+CicrhLqTuzb0U
         H/UjZso61Z/tjBiFYuimYTqPgYUVDw8koWjQC0hUm+e0RAhIqZZAJuAglJMQwdqUtDFH
         VqW/FaXlGbOta4TEkgIr0hCVaKGI4eCTQTx7r8MBmSU3KE2mG09E68ioCQw4/ag77D4h
         V70EuPfqVP7mwvdSYqwEh90eKwpyaqApGJKIuvhGjtWWsEzMUt6OebUTg/EiKMaFHZpZ
         8zlNq5PO+KTjB9RKAvvh8XNNqKhBg/CC3JvS23iIIkylph+5Y49pIhQZ4HdgYZ1v0KId
         wezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396579; x=1720001379;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrRDhDMAfJony6yFg7+6ijdc+Hn8JcmRpBDuBtH438I=;
        b=C/j547GPqa30c5+Zac2e7E5ldPb/f/Cr4QLVsg3n4ptGrY5+A0Ngyi1C6NprAXZOxB
         yjWuuhbdpeKuZnIivSVEpvrwUTxKs+PkRLPW+mx99nfY5psK2T3CxdJUyfB3g4zIady8
         qL83EdL/ze+HVzlSLdP5Eck4DorPIOZLUv8aICFBVyNAzQkRcCdQgLg2+zg3FjTn/BWt
         yoWLcd06PIB0xpFiIorGyR5tI/lV58VqABF1ZzW9cqTNeIeQ1NCAmoyAv1/Swo5E92je
         HVcif5VMqOqKI52h1dWMsuBu1HDIgEmbEzRKW4BlOeC+aEaiYSxOeLHtySUleM/nutUT
         v+uw==
X-Forwarded-Encrypted: i=1; AJvYcCXu29t4eda42r3WUb3yO9Fvl6l25vyKy4f3uGSGRXViDyCGqSo4mb2JG4B/iP4clZkmrCe14UQdq6PBi5CW8m71rBSrXPYOEk2CvQ==
X-Gm-Message-State: AOJu0YwMn1ic3nJPC6zpFhUnipBvNc/48rkmOxRd0JukvJad5WWF84nK
	jI8YElbFCqCAZjh4aAakE3/9EzSvzC0pKcB/t9oIq3K3vvN9IPBXcaEM4YO7a+A=
X-Google-Smtp-Source: AGHT+IHqwnO5pBa6HTOmyWnYZLgpN3Gi3NqGX/tjkp9Tu/WrmclyDjhC1DHXfx9vpGqIn01XeZ8njw==
X-Received: by 2002:a05:6602:2cd5:b0:7f3:d2d5:f06a with SMTP id ca18e2360f4ac-7f3d2d5f2acmr140707339f.13.1719396579188;
        Wed, 26 Jun 2024 03:09:39 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4b9d121859csm3079108173.137.2024.06.26.03.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 03:09:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 12:09:10 +0200
Subject: [PATCH v3 1/7] dt-bindings: mfd: syscon: Drop hwlocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-mfd-syscon-split-v3-1-3409903bb99b@linaro.org>
References: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
In-Reply-To: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=845;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=HzjHV2p0YoAb7dKSJR0H5taVVRVE4HdGIeGsfEBVEbk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme+jN/rKMxop1xT/eiXH0yfnc4nH4wTzAzWBLd
 sGOqlE3goOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnvozQAKCRDBN2bmhouD
 11KrD/kBFxg7oTtHPs9nfetBfgdL+FBGvLZ3f2pfG1Q82+mxioVyml+E0ACoJrF5fyUA3qBoNFY
 mZrROtgqx4qUEtIyipUhpEupd6qdZAGCj+VrkoGS7MJobjRksF62Ef6z15K/OhWjGQevjms05HI
 yQfTAWQFIAVzvmvFNxBSn0y/Yr81bCpJQzUP4aJF5ixpEXxyAKGCcfMe8cBeEDka8l0W2VRegjd
 z6rhRp5pECpwpGOZ0lzwD3gj9yYUeTdAcc6Y8qxCmXNgESx8Ynfsl5zyt+Aj7b+Z9lHvbJjx99L
 733ylo7QKuaKo0JwHc3LkMqtNq8XcFa94VtbLqLt1Hn0tbbrzT41uXTeyIIYbW28jOr11EsVtNY
 7Oe/+heg+jftLxUsqVJdvgC0ylLZgYmRQaPk6x5jR/B/BzDOtxfQ6WNzJVIJji/yia0fLL12zHy
 MYYY13ntHkBT9AXK/P/iecS6c4ti30TJjXvNcqV2e1C9LkMKNYhgZ3GV7Jwc13sOjZz9HoEYYjO
 HSYN92mS5miQI7Ool82Jc5JhSjR/6+EVG7C9HKoNtMnUBrFHSEPEkR1mm42rbCmjKWzzXbTmSIf
 IhjS7hbZqxjT6R/GkGWqEzYyql5GovOBULtnmB94dEDdnG08iNaG4M3eynvfzZOP9WIc75Juxks
 UdTXq7ePdotNovg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Apparently there is no in-tree DTS syscon node having hwlocks, so drop
the property to simplify the binding.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 79830dd51ac3..af442767aa96 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -142,11 +142,6 @@ properties:
   resets:
     maxItems: 1
 
-  hwlocks:
-    maxItems: 1
-    description:
-      Reference to a phandle of a hardware spinlock provider node.
-
 required:
   - compatible
   - reg

-- 
2.43.0


