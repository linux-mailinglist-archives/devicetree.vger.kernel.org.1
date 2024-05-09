Return-Path: <devicetree+bounces-65986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E8D8C0DB8
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 11:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C81561C20E72
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 09:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D2014B094;
	Thu,  9 May 2024 09:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d8nGYgy0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B16014B083
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 09:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715247784; cv=none; b=mQt1KReBxES/SgCofSvMR7yJm1wStP2uUitV4FQMXJS3EbtfpzC5qJ7dn3XitKJZYl0SOgGVBeEc1cKVg1SW0xk87UehRU+ZdvVuiYrBbsz5pUFKik1GLHDHCVMxyPLCEhslN2/XqUcFSd96d4PPAykoWR3LYQ4aH97yGw1Zwq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715247784; c=relaxed/simple;
	bh=gjCs0DV7B7RR1j6936MwQyQwFKJMltSF9sVmZwvdZPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DfYbmEhHnEdEVn9FdAL1crbQtKBlUmdZQGRR8pkfAjj0rz1s/0f1XhTBzU1l4LQ6u7oVuyMjfKiEw8xNtN4d3qVg+QMtXGsDFc1lGwNavzLpyzhTpGrGT5sLlvjMMd1BXApFiKgKCcR+h234y/qjKWZ7K2oDwI7wYkMDQi1QPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d8nGYgy0; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a5a1054cf61so154351866b.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 02:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715247781; x=1715852581; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nXToc41FJ1K1jyZaFJj827r0wMrkwnVZ3gTS/QEqFfk=;
        b=d8nGYgy0z/r3Blns7ktyIvjGYKvKPLJhWD7M0trh0d4O09vVZ1tiObzP2wzzsBbcOe
         tMOP2bGN79W3XNji6e9l4UCVNNY0Wn6e55SO2xzNfpmT+FxSKIomEpcPIv8Qm1bwktr7
         BfCTqD7V6ogtlCBIuS5DCQt8O+R+TGdtd/bZFQ8T5ZR4JsYi8ZEpuUD8paPZT5oUAXaB
         ScSHVbbO4u6A9NudnId97ddnSF+vSyhDnZjAOSJ6u/XFqj7hUc02hjKZCQYnED52PKTp
         Y/+ygZMZ/lIb0J6Ai67zbotbDkQgaDPmIH3VDWoEgf7t/ZbGyra+i+mcHY9vEgJYRrvj
         EECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715247781; x=1715852581;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nXToc41FJ1K1jyZaFJj827r0wMrkwnVZ3gTS/QEqFfk=;
        b=SarCNYdWRx8+y6lam89StY34ZyRNakT4e6dG5LzsLF1evjipxt9ODV8Mmc3f/GGj8e
         QC7Iu0qAGxZdqNwJ5d5Sp1nHcjdbKrnUDUgIsEnEoorJxiLSwsL43+xVODG3+zwngc4T
         sROT+MmZULvI8gsWwPh1wkMeqXwZKBvUIZlM/cIRA1a7dNguO9xK+6lKzO/6UnLPiuXk
         LDwHM8ZwHJ2Lplu+/A+6nNMTEjO1sCGXf8T64eOnpikiUjitxyI4+oeaJDvJ2PmlIam+
         +TwzTLo9yG67lor+Ko/vjxQsfIM3X3pBwMP0s++vjIs6Ay29eF2xrjBfaQ3KvNj6WLYK
         BWQA==
X-Forwarded-Encrypted: i=1; AJvYcCWFH54ourkrl0PmkaKPKzBjF5kx/eLk4foz3z5d0wbpVY/05nhzkIPzOXE6wp30sAgdDFJ5C8SvtuUVMqcHDi7VWdjsCc+azSeHYA==
X-Gm-Message-State: AOJu0Ywf+lnXi21axahg2fX4JdtG5hNaf2kIgYEoTlw5BqYr7qiy8ZED
	fqrTxQDUdvfpL+VBNEg3sU7/2tF4XqzeRaTcwc8+80OsfRs1fyqM0Zcs46BW1Ig=
X-Google-Smtp-Source: AGHT+IGXROeW0KH1SDJKVClcQZYZh6a7R3plP3x7ydci5rtTGkV/8BOhrB2UWJ5um9j8RF60mjnBQw==
X-Received: by 2002:a17:907:1c09:b0:a59:c3d0:5508 with SMTP id a640c23a62f3a-a59fb958791mr596004266b.35.1715247780581;
        Thu, 09 May 2024 02:43:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7deasm53835666b.103.2024.05.09.02.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 02:42:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 09 May 2024 11:42:51 +0200
Subject: [PATCH 1/3] dt-bindings: display: samsung,ams495qa01: add missing
 SPI properties ref
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240509-dt-bindings-dsi-panel-reg-v1-1-8b2443705be0@linaro.org>
References: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org>
In-Reply-To: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Konrad Dybcio <konradybcio@gmail.com>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Heiko Stuebner <heiko@sntech.de>, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryskov <dmitry.baryshkov@linaro.org>, 
 Shawn Guo <shawn.guo@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=952;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=gjCs0DV7B7RR1j6936MwQyQwFKJMltSF9sVmZwvdZPw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmPJqdOM3LXjtcBIPKLbQXLjsQanOWad6C3iAgV
 aMXLVevr02JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZjyanQAKCRDBN2bmhouD
 1ybtD/47ueiz6JsAgTGEV+DVeVn6zEvjTIKNZre2ojMqTXekMWCISRS7B5MyObQCQvOHMY5rA1J
 /lBLSVOeP+7lnyE3LfbcYO+yCcHNtxn5496WnBBiGnjgzSq18fuwwfZlTeJinNar8R3vr84Sb3M
 nWVv1yT55ZFTPtUf5IjcDE18xRGZVZPwm53Uylbjml9r+KSfJUHc0BLDmAS2bO+AeNdbaEe3upn
 sKBddMIoKXMo7zvCRDSmu9oXT33URnIunXKQhUk9bwvS0c+6G3iyQeSgnOy+JZwGjoavjKWasah
 TXGmgsxq8zkYSC67ZmJF8Wzki5icFzgLA77n4muRP2TxDExDEJcmA5Vfy0wNUreg2B5nGmEDabm
 2OraygdJPmYP3y6gb4+tSRengY67XafwsnJFgrYkRRcPWLLNl999UAPsWvAu8cIGQf3H8iJT+6r
 zNgdhTgVy3ddV+CxBOhb/kPLZ8o4j0CPGiR5a8KBB0OtZZsOSsknhDAV7wLkbMEKwA6at7q/S61
 PFQx0anPvD8q41vHvCNk0KZ7uza3VDvA83p/uExA/MAdzZlD6xfxrI8DiJRf4vsMOqgj5WOzo9Z
 APkHwUGGEtKU1+giVbE0hHJ0JcAPgEPUPJgbOBbYL/PFF/NRb94sqDMCR8OY9BZiIPqryJjHXUc
 Cv0ohzDrUmUfVBg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Samsung AMS495QA01 panel is a SPI device, so it should reference
spi-peripheral-props.yaml schema to allow and validate the SPI device
properties.

Fixes: 92be07c65b22 ("dt-bindings: display: panel: Add Samsung AMS495QA01")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
index 58fa073ce258..a5ff4de74a15 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -11,6 +11,7 @@ maintainers:
 
 allOf:
   - $ref: panel-common.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
 
 properties:
   compatible:

-- 
2.43.0


