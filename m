Return-Path: <devicetree+bounces-244143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 800B8CA1A86
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:21:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D2B613002EA6
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3292D1308;
	Wed,  3 Dec 2025 21:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bIRlTpoh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872A629B217
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796878; cv=none; b=H82zLuBr1b3BhNDlpw6egJNZJReJi2FkSLYz45zah3jLqm+9Hw3V3nbSWjnJ046dFLKCf1YajpFZh7n3OvtixTMDzkN4p0LAgumV9IeQG6nJfsB24hicwjtTnWaIY/8p7ADhscvCPudPSq3b2SEJLt9ZDwoVWYN0EOJUFBaxe7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796878; c=relaxed/simple;
	bh=2O02A46urVE1HA8sKir61mogltLD52eOnfpgtmwDo64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eRG/Ik8hk0eejpinmrqNc3OvDEacbvH1Hdhx3IrCNG4UUNI8UAs7ZmsjHxMv31nkId6e/qJ3Jo2AI5cG5eiQY3U1wTHTndkTjmivyEVe1p9UMBXdOqJOaUSbJfHs+iLAfXui+hE6KkdXYRGrrXz+44Ks46Cjmym7WvXRgOvoXCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bIRlTpoh; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso144582f8f.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764796875; x=1765401675; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yP/l8JGC5vYhIjT7IhD8+eR57N9ujutEJJaapNR46/U=;
        b=bIRlTpohQf2ieulr765MUQWkeXOgjWnxLplg305CJwrfQdxBAbmS6bQMWkT6pQSURo
         U5dl9MKXsomd4QVQ61gPQz2s2swODjTAA9uxRID5XoILAU9NnQedssTZ5xRWFlrCNk24
         RVSpG4ueQ0/FO7ohuS+NbF9SZLQt27z0Iqjyc/AODLEfh/EMXIE9v9OC1UhigNI4Pk7Q
         vrChf6J1FyPtAwCKVispyzoNcf//Zc7HADXJr70QhMtZQeddX8AFsrlN75sg4dfJW9sL
         iwHTWUE17drMfvGh6hjY5Y4i7yFKJa9AfoC2Vo2pyasT8Ld/sMSYPjpODa9Jg7ie794w
         LYzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764796875; x=1765401675;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yP/l8JGC5vYhIjT7IhD8+eR57N9ujutEJJaapNR46/U=;
        b=SVZRO2cdL3If72ONPay6bypD+Mb3aluOKjCGF87ZyIu31Ua2BlCQ08zRlHcwBwxsah
         1Lq2y2ijQSC26gEIFE6omqhlzEseC4CgsMx6+cr+o+SYiTM8yubqJ2zlQGkGBI3i0wp3
         Gs2v9QjQ+sCijspl2IleKizIz80vroYdOUPPIqO7T4hfeS3FTOhBIAfyXgB86fyONHxq
         psrq1vh5KO/ODlkb52caUSVuh6Y14wdWuHFvITW1iRZMgU1qLh0+W1SXfpq4L8IlXhWA
         UQCN8NNVVf4COAY02pA7i4pyxd5AhJd5uVhHk6aoQbp2YtAA40Uj02dVGFfznj0okYOK
         VePA==
X-Gm-Message-State: AOJu0YwZ+VRRUeit3DRWDhwC6UEguSweOQGpVQREXKHBy0/VvN+bKJ2K
	aEEx8CPbteUayjtmkrZPQ9FrMJBUvihEDMjUlHqAy/aSZ9+F/KqpGqWF
X-Gm-Gg: ASbGncuUaLROWka2GGsr17fjngXwnvCMrdqWRS26CFDN8F5Rx/TbWbN5MzzrITNN8Xg
	v3DnctUYXcosn/N5S5yExLykTceiWsNecv7H3h5mgjsyKgbz8t/izvv1Y0lqHqPQ9wDsaQGnYLZ
	JXDutP+QNydAASjyd+XRc97vGV+Km+BtEm4ijlfIij6Gm0S3MUH3B86QK5JkqF6elDIJKvVF1Ff
	CJraBpcVB6xKan2oY7pV3J5vWv4Z0D1UVPdQpxHZtaJ5UXi2WoLBl21KRneRjyxMwx9dDmjYVwP
	293CLnGb/yQ6YDoeZUkbIjF54aPbq9E5DB6oG6zAHGG+Jayd30BMB7Bg4aMaOtYrRKAAvAT6mjp
	6G0yWzA2G3S7ar1kmddLqDIBufIgrOJ6TPcyoXhRWnY8P1yfM5naC+hoRFWM=
X-Google-Smtp-Source: AGHT+IGxZWzNDUX3hiHjNQKBnSxzzAZx7twXbp1EgxC0jGUK5ezYoXbz0OptPL3GJLKU9ZswN+2RqA==
X-Received: by 2002:a05:6000:420a:b0:42b:3680:3567 with SMTP id ffacd0b85a97d-42f73172b34mr3840601f8f.18.1764796874721;
        Wed, 03 Dec 2025 13:21:14 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:2034:6883:1f40:e708])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c81sm41648667f8f.3.2025.12.03.13.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 13:21:14 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Wed, 03 Dec 2025 22:20:38 +0100
Subject: [PATCH v5 2/5] dt-bindings: arm: mediatek: Add Ezurio Tungsten
 entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-review-v5-2-b26d5512c6af@gmail.com>
References: <20251203-review-v5-0-b26d5512c6af@gmail.com>
In-Reply-To: <20251203-review-v5-0-b26d5512c6af@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764796869; l=1590;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=2O02A46urVE1HA8sKir61mogltLD52eOnfpgtmwDo64=;
 b=usZKRfG7to0jkWap1PRigfzy8V6LxDPmF1ruY8y1wPJGnYhpRNrOythsELbDISgNwwOFTQZ8T
 J2mSZumKXODAWVJBDfzBBqrPgrb1LIsDqWTEuyH89pK4OXKDYznH6m7
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
SMARC [1] / Ezurio Tungsten 700 (MT8390) SMARC [2] + Universal SMARC
carrier board [3].

[1] https://www.ezurio.com/product/tungsten510-smarc
[2] https://www.ezurio.com/product/tungsten700-smarc
[3] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Changes in v2:
- Squashed both entries into 1 commit
Changed in v3:
- None
Changes in v4:
- None
Changes in v5:
- None
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index f04277873694..cffb0f6ac690 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -431,12 +431,14 @@ properties:
           - const: mediatek,mt8365
       - items:
           - enum:
+              - ezurio,mt8370-tungsten-smarc
               - grinn,genio-510-sbc
               - mediatek,mt8370-evk
           - const: mediatek,mt8370
           - const: mediatek,mt8188
       - items:
           - enum:
+              - ezurio,mt8390-tungsten-smarc
               - grinn,genio-700-sbc
               - mediatek,mt8390-evk
           - const: mediatek,mt8390

-- 
2.43.0


