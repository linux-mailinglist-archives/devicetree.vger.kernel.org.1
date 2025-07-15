Return-Path: <devicetree+bounces-196387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BD0B05363
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DE847AD246
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB212D12E3;
	Tue, 15 Jul 2025 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="HWZeGdzj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EFA275850
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564594; cv=none; b=rrsxk4TOPkXyFoxcJ244JS/ny0cyYQUlM25Rao4nzhxFRB3phUuFINcUd2iBSp1rwe08giGif9BIlRlS+ez11RaO1n2jZCwG+KoBhhk+MPPhZcolNG6aNn1gmJyrYPiHaqQghdOOVaZwsyMskqfJ9imHGfV9Xu68N9dCsvm8jA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564594; c=relaxed/simple;
	bh=jzFcFIoWblJGC7al1pj4N6nIT0ZnqO6zL1kXGKeDmAg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lOaBZw7RU/l+Q3pGjb34+2UVkW2QaBZO4sMYsV/xRoLqETHhpFYKlFK1zR1oXWEcYks6zSyatM+l32XmpRNKAM/pMwUQwG+ZeUaukBMaV8OQe2JMCjTC0Awd1NyaWYFQjEpN5A0efcLqi9M3BMFC4pf/E5uw4ftfOZeqUyBvFMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=HWZeGdzj; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45618ddd62fso19586105e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564591; x=1753169391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HlXDOuB2NWs3tsHwTAfl9oYldXG75qTwJcRqgkwKc94=;
        b=HWZeGdzjEP6z/zZ/zZ0zN7CgG+V5fDdH4Er1xbz2at5VND1oTbX1O3xccHakadwNFI
         LuKzK9nlz+nY5rqu3VQqvLhFtXIWYL099fW/uZmqp9sPl1DvSHegGpEHWOMrW0Md5mC/
         L63Baz/ga26jIsutisM8qUEzgIWsc0kGBbylaxzd1BcHyCF7GXh9CfKkKve69paktVMg
         WtE9u9s0xSGn7OsSe77AWXnJ94Wbsw868x/fE7mlv7I1alTDw8Wv0+7tV1meXV9SiKOW
         GpSxn9AVXpqwyhmAOJAjMLxBI001AAmkkFBqqKIPPvvTvD+9zuO9RsZbajpwizYdQzFz
         IMGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564591; x=1753169391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlXDOuB2NWs3tsHwTAfl9oYldXG75qTwJcRqgkwKc94=;
        b=dZ7whIOFc9dJ6A6zRcrw7ZwDv12ecLMWDpMaUjWgzftj+VRfF0h1ahX65O6uHeTmbM
         66WLDxzB74S9u+cMt0l5sKPwHil4QUAKttvG/grFWq5D2tw+Rwafds2MHn1gvz9geBrW
         iHQEiIn8iu1wepAjB3/lvHnCY0WPU+l311Ir/ZG11sZ85qjRv3crsRFa9ESEPl3OR21w
         3/GYf1smhPONwxZDweQ3x/X2IUOVfXmIHe6G+jOfw2nBw6L5ZBkgXOvDAlg5qD0SBncc
         5qFej4sEe24abAe6x/nPR7LpSU1HvjIu8WSosEDLcNIAv6bO9/W8n7PsGZFbTxNSYQe7
         g6uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKW6iodebb8hS1QJY7Ho/7Emj7QUIN4mlmxU5hRJvtu9UEMe21cCaW933HH57yhqbaneT1dCduvueC@vger.kernel.org
X-Gm-Message-State: AOJu0YxjG8M8kA55j6fjCUdoaQdA+szXMYWPlXYblRTeiCbmeej7RObR
	cKCerc8rMHoO+7CDCHe6bskdADZPjDW/Tp3lZb0p0Gt+H594lQDRf6+axh9TwpTb2LU=
X-Gm-Gg: ASbGncuzr2QA6HN7wtbk/ms7v60YF8XV0lKrt07ISgPW9CK7/klMT1C5xolXNnLc5jm
	hsbeBi74xXAr24ItQAWs1H/j+Se1CfYEls2xPXJVB1FFMnaUFlM7pboxiqwd/E2y6HUnrRABoax
	YEQOjwllxOF1EFNLZ0gAdAYkki7wbYk4ej+bRID3dkHfX3oLFrvYeP+s9FqXrTo9jjhtjYt8bNn
	kXlqzuxY2yrIM5SdDA685zUoa0+RLHZES5qJLY+hW46zvcd9jY4VvIG4qEiSBk17pJhB3vY9ryf
	jWJ42fvP3Mmst3PMxgwPRK2ndptS+h4Ywyz1HBzi4hI0JEi9wRj7F3Y+E6eYGmdUVyAgPQ/CtwA
	eHeXjroNXq6PIEqeq/nUTmJ8cs3gh9C8sWvzRx2nbHWomD2weC/hddmU+
X-Google-Smtp-Source: AGHT+IFNBRgqSjk2HFJaRqvUEeFclqwrA9aBptgjfGQRiH2n8mqaepG8GqzAyox93VmumoOhYOZ6TQ==
X-Received: by 2002:a05:600c:a4c:b0:439:643a:c8d5 with SMTP id 5b1f17b1804b1-454e3399cd8mr155077575e9.0.1752564590536;
        Tue, 15 Jul 2025 00:29:50 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:35 +0200
Subject: [PATCH v3 2/4] dt-bindings: phy: qcom,snps-eusb2: document the
 Milos Synopsys eUSB2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250715-sm7635-eusb-phy-v3-2-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=970;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=jzFcFIoWblJGC7al1pj4N6nIT0ZnqO6zL1kXGKeDmAg=;
 b=9yt+l6cGjdO9axu+nOBS510EXP8FcGFhy41mnRfZ/ANKPK8zyygFXbG0EduAhrC0C0EZZUyzl
 6ZVPM7LcNG1Csu0bgS6EDkRl0LvHYvoIMB/YI+mqmcaU8GyRyWltYmx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Synopsys eUSB2 PHY on the Milos SoC by using the SM8550 as
fallback.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 142b3c8839d62d91377061ade3a7c400eb970609..854f70af0a6c1ff93615fa8dc1031b4c1ecc2e71 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,milos-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy

-- 
2.50.1


