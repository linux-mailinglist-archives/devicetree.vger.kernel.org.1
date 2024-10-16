Return-Path: <devicetree+bounces-111816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 857479A0196
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B877A1C23328
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1321A4F2F;
	Wed, 16 Oct 2024 06:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sN8fukCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C043418E741
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060883; cv=none; b=iD7um3x5IBoe+44d7+tYlIn3KX12UJjltejFw1bb7YRn3otOfXo2xVNmGHqZ9R+SgjjN5J1gyUCrZeYefopaEUr6PJqrFD3x14GJxHOyDDlqmuzeaZIpYJmpKXs5ZLbcpN4V3NwHcE6OdEsbMnkcZu3O9vDQvKhSMAF48Xqqfd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060883; c=relaxed/simple;
	bh=Z53aOMeZ9dxjh6Ye2E8OpV3NlpVf/yRrRqPPZ0kc3uU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pAMW7JeHrK4L3ikrZLx17XA3A4TNW3GuO9EeuS//Gn4p4GmemJ5Bn2+GgNlNxhM3rQVNDs8862IKSTiIpfGU8+EW9GooQkb5L4I8eWKu4XV/khDH4NALQnT6Budqs2rJrXXR4xfdC/QEsPkI9Ogx0ZWRmnOL9Tc25M+bvKn1fhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sN8fukCH; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539e8607c2aso4265139e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060879; x=1729665679; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BIlz5IPvjiz3SstcywK4OPs5YHovdzCuvfijsrKaVOk=;
        b=sN8fukCHgHK41sENB7o1o0m7nJobRJDN0s90+rqkSpRie79/vNpNKlRrYtagX0E4NQ
         ZiHzaD7YOfpMjFvK8QJJgMt8hpgJ/Kl0ad7SsQApcgkk56PjIfiM5zPZ8YzkxhUqIUET
         M0kskjmiGUuNM8YA8j49VGVepDBK+sknP5zorWNazi4XZeW8cxqvXM2FrPNzlRy1PIox
         xserCl+bewa8KSkDfDbarn1ZUsdi64HuUvxx8pezbqGBsrBgBcgnfAztAkpIPIT9F0NC
         QlY3OULYfNf9ovfihrAAkXm6NojLMlAAzz4jjyNMDZx+FNY0lXsTGuXwx7smnm6uB9tV
         4eSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060879; x=1729665679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BIlz5IPvjiz3SstcywK4OPs5YHovdzCuvfijsrKaVOk=;
        b=CmbJaoZrSIkQMmcq8anKCcrS4RFflpywshcorBlw74EQIUMBtkiWby7v4egRhW9zcg
         j7dsU+FI2PixUSBhOnoKqRI/aZAomcA/3RyoH3fhNKwtYCoeMsNcG7Zqypu0xfkH08pk
         XeSGQoE5b61W1KTOqq9Cti6IdF4D3v33BmwT1axHLWYCC3307rL9PCHCsb31jy4SUSiL
         U8I+ayIkGQT90gbUOfxm8u4sxua2pSOtfAj1BzwnD8jHDoHAryf8jUeDak0FIpDV/6JZ
         ApRc4fEmQ9LwFIqQX5VJ6+QclBuWob9VtbFoKgCwxCk2+GpmsuZJuoFqOWoUwJvnre4Y
         B1MQ==
X-Gm-Message-State: AOJu0YzcAogEHVOpjvtb73AXAz6OZuNxbPekAJH1i0B4vq+KSVQTtGQ3
	kOsCEpLqTcOWCgugYb9k71Jjgkn/SqFPKCEBQY8BOHTqNClGpOm1giaXZs7uxrI6wp8zSDLksiK
	T
X-Google-Smtp-Source: AGHT+IEFWOW/C7ZLL+reAmPUbpTe6R9fF0neCSI1+DeQWuWYugIqwNUU+AJ96gTPxNJbri/ehs113Q==
X-Received: by 2002:a05:6512:2313:b0:539:edbe:ac86 with SMTP id 2adb3069b0e04-53a03f0739amr1892074e87.10.1729060879088;
        Tue, 15 Oct 2024 23:41:19 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:08 +0200
Subject: [PATCH v2 8/9] dt-bindings: arm: bcmbca: Add Genexis XG6846B
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-8-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
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


