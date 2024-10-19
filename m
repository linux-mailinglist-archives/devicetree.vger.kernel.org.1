Return-Path: <devicetree+bounces-113284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BD49A50C3
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07F6E1F21032
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D11191F98;
	Sat, 19 Oct 2024 20:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KtbB5jZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8631A1917E8
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370389; cv=none; b=W+gbe0URx+JPGxxFzAY25Vo2uwfbaUUPhjQ7i1elK8FzY94DYLj0v1PZlVT4Vx9XfSuHdNoW/C5Vx5H15dGfV3kXrCCkPFOYAJCLM5DR04WHvSOfPN2FHXi6yKT1apDmzaL25PiS6lxSP2rkHEku6N1atQQTfghRacncGEaH7Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370389; c=relaxed/simple;
	bh=Z53aOMeZ9dxjh6Ye2E8OpV3NlpVf/yRrRqPPZ0kc3uU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NdijBR2j4dJpeeH9Dfs5Pagxi1f7U8TPQYI6mYeOH1eoyYvBTHuNSHNMDDZoQ8JkEtmx441R3ZjtzsxXQDcmB4WXEIH6OTMqnNlzbWyIOdOB1dFcwSaIofCXev7owyscKKy+WJM9vLW2wkmUthRdOhY5sCVxObhAVh0oAzBjc3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KtbB5jZz; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f4d8ef84so3417828e87.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370386; x=1729975186; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BIlz5IPvjiz3SstcywK4OPs5YHovdzCuvfijsrKaVOk=;
        b=KtbB5jZzzbEIP/pqtC/ELweGqf7NwEOBy3dgTEQBXUIbADygGwPrCZA4kOuGHR+5Hm
         Uwqbnyq+WHlwqPkj6FXxGJM/yWdEcmZSH0c/78cCcNsuKm9e8FUkWODtTwl9XuQJmilq
         qP25GSJlkaEJB0hrI5NOVU8i6464KXD+97H9hoKYoBbNT5XDSMUViw0Hwupq4CC4dtsM
         oy7h8AaalMjfRCx48mIuOkTvC7zeZ+MJN1KdHDq6xjdcHkNObGYK2OR3WMe0o/+F/PVn
         7wvOrS+WGg1s5xFg23PXv6usnyFBpZQ+I/hBb34IQwqoDJdDUGRgkU3XxvyY3uxSm68O
         rFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370386; x=1729975186;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BIlz5IPvjiz3SstcywK4OPs5YHovdzCuvfijsrKaVOk=;
        b=iDtuB1/qIqaCqk4pCfA5N3wxwkR3d4AsrgINrGZv/MtRi2ekpzUH7kGNyzZV9fql9U
         imLpSPhw4gTON/5PExSk0EmVKiM3Mo74umFEF1aEBn0x4GA486pOH3UDXzlF8OWwUwsd
         EKheehmr9lze6kq52Ei9w3aDkqDjBidM8mJBrdFdM7RX3cCT6Yw01W87zKrVqAM0ACmu
         WNQnWHn1fs4P8PIAotxSw70Fxhcyd03+jvFUXxy+F4j2cD6OrcjyNfoFKT3evhlOgzxC
         VhgK1wQUg+iIH8cxKQwYBRG6CUjzrxmbdUjUkROT1mg4ZJNb7U8V6rJVx2TrvM/dW837
         0Ykw==
X-Gm-Message-State: AOJu0Yx5V/repP3XRxWDkwmYTkqJC+Wov3UiU9/Qse1UjEs1tmk7AuM+
	kW405mI3QYVUBvWJ8RVCgdv7+wziiN+zWhuTd1TSEGjwvUknDD21hKKGTju8qcc=
X-Google-Smtp-Source: AGHT+IE8bV/yk5kfLQAMOfEdMf3bjp2UunqsZz+3TZUt9pCS3tT5E3q1uCY5AbjRG6XjWjmjKaG+Fg==
X-Received: by 2002:a05:6512:3096:b0:539:f7de:df84 with SMTP id 2adb3069b0e04-53a154412e2mr3188883e87.10.1729370385543;
        Sat, 19 Oct 2024 13:39:45 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:44 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:37 +0200
Subject: [PATCH v3 8/9] dt-bindings: arm: bcmbca: Add Genexis XG6846B
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-8-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the device tree bindings for the Genexis XG6846B
router/gateway/broadband modem.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
index 07892cbdd23c..2223234be687 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
@@ -115,6 +115,7 @@ properties:
         items:
           - enum:
               - brcm,bcm96846
+              - genexis,xg6846b
           - const: brcm,bcm6846
           - const: brcm,bcmbca
 

-- 
2.46.2


