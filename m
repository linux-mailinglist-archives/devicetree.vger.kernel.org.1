Return-Path: <devicetree+bounces-79204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FB691458A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:58:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5EAF1C21EF9
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B809127E0F;
	Mon, 24 Jun 2024 08:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tW6dTo48"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F667F7FB
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719219508; cv=none; b=WuP9VjU3o8MivdBYrjwMIyTCMrgj9xj2tC4wuZj0a9ckXCc8CcVzxHbTqf2Zjxenay+i8NFtp1YQWD9nqllm8UD10YdT0XK543nqAqvatxde66UFUo4km8J9pDuVHklQZPi1lsP1ObSMYBzq3LBsxmZG0rIDjdNgbqERJlDj588=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719219508; c=relaxed/simple;
	bh=HhbGnewHH9Uu5MACNtsI7hL6taZoEp9t874dm8z0TXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tw17IvvJzdQEvqgn6ZueNxyCpv+jwjPRe1lLrmQP9Jt3Il7IPsE2bg0fYPLDyOfujs5z1gYM1rD5njmikF1S49rH4ZIeImIrlvXH93C12fetL77xfGnzaarq269N6/QzG4/pyoabfqdKzPIOTF9g5ywrk341GJFSpTNkPNjPEzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tW6dTo48; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-424798859dfso33922635e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 01:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719219505; x=1719824305; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tVw8ud05vNai0bHEiiP1EC9bB93mXMciruGH+Ndm/CY=;
        b=tW6dTo48s93OT29kM2qx0s+08LFy1oLrXICImp7lSHLwwCkcZggOy8vkpb5ZnLsK16
         BhWbKvXHzXWcm/OYaHB8RsjEqXCXZEliVVypAYuXUedNXE2R/VHhN+ebW2prSf+/3dAP
         dUhcobL6VE0ZsBDUnWdaw2PIgnEO90Yqs3A/Z5ndDbyum/M2IdKZFsNx5EZqYcoiT0zV
         cec3hr20XJlfHjhPKoGjkrkIGTjbJMyPD+BubbcoAR11dYiiyrQ9NqqA2WcUPS6RdF+O
         Snd6pwbbvGHcoWRUa+2U5N2+XswYerOpHMZWTMEEcn2mAfCJPX5VnBBaaCDoTh6zNoo9
         9tLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719219505; x=1719824305;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tVw8ud05vNai0bHEiiP1EC9bB93mXMciruGH+Ndm/CY=;
        b=q2civqHH76GE+3ivI9HkgWE8sVm+8xXlOY822ku1cjm/BffknmRfd9NW5su3Vz0jo2
         qWXBoioDcfHwodjCe/2wNgQHT85nOM8WZYo9H1KniT6xsZYdVBxluDvSy09I7a3UXB3H
         HoeOiUAasObANalXwNphc3kTYWpRa+uuPXDMIebDO5ez9boA6g2fLc3Cp70cA0SuE2fI
         qjchrMSDMIU6MZ7zyAO5IcN7EKLJApsJz0bEq3faGegZPxF4eg9Ctxv6r8UwsM98PIBa
         z32dtIZo/4lVX7pAdvemnxZ2C2IXvE6D2if9CQD8rB4hUDq46ON2ITXB0P0+LAjDIacl
         3LxA==
X-Forwarded-Encrypted: i=1; AJvYcCW0/b+ZYAZVZdVxOAeUy9sFOJSQVcNs/rND7e0ma3jhwz5GUTACxbJst7prI2zL+R2oLNF58dYTtllA5NHS75DNSVEwzypF7KScJQ==
X-Gm-Message-State: AOJu0Yz/fj4rMw00ZzqDo68uLioznBy7SdjiaMr/dohX68j4w1ohTsfx
	s7uL21EYwN9dRkhNu1O3nyYbimQZLXPavdvcgFx1lHxpXAmfhZkox9HV0rvFYAQ=
X-Google-Smtp-Source: AGHT+IGNkagBrvsH8nOB+3/sE84TJcZvnooSGwYbnRolWo4YrTDq+wywjT/bpCQT52wRLGxrKi6PLg==
X-Received: by 2002:adf:eac1:0:b0:354:fa57:a0c5 with SMTP id ffacd0b85a97d-366e94d572emr2539787f8f.38.1719219504534;
        Mon, 24 Jun 2024 01:58:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f696csm9465642f8f.82.2024.06.24.01.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 01:58:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 24 Jun 2024 10:58:23 +0200
Subject: [PATCH] dt-bindings: usb: dwc2: switch to unevaluatedProperties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240624-topic-amlogic-upstream-bindings-fixes-dwc2-subnodes-v1-1-f2544f21f594@linaro.org>
X-B4-Tracking: v=1; b=H4sIAC41eWYC/x3MSwrDMAxF0a0EjStwTAihWykd+CO7gsY2VpIWQ
 vZe0dHjwOOeINSZBO7DCZ0OFq5FMd4GCC9XMiFHNVhjJzPbCbfaOKBb3zXr7k22Tm5FzyVyyYK
 JvyQYP8Gi7L7UqErLMlvjgxuTAy23Tv+bhh/P6/oBAjE9UIUAAAA=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1352;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=HhbGnewHH9Uu5MACNtsI7hL6taZoEp9t874dm8z0TXU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmeTUvQBX+/LL0KlvF0sk7F0SSU5OmhhuAGnzX8N5y
 gZRcjZaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZnk1LwAKCRB33NvayMhJ0dH1D/
 wN+F67QwUrO7hcPZhIIB8xWI4gDnTe5WcXxYlGwTCdk7OrsYQUDlSZKFfreq6W/jvYYt0mDkWb61qE
 gVr/nl2sTPvbio5eNJr8ORJ/2LOmom9dfsSuIkQp49kjVD8R8N4qtrCUpJ1ZFsqZl/Hby0vTzmsnZy
 kJnPZ7pUtfD1UhbW/j/o+bkkH475mZ5wtszKqnDF1ssq+QW3JAvt+iAuRCzC4c8P/WhM0k4yFzqEgg
 3EzAMUCQVtHHhDrLXDmNjByEUYxSGUbCTzi8/jUAGbBX4Jb54sdWE3hGAbWsiqrdrUa5whagxlfOW3
 Iq4c/ryt9iZ4uP+5aWGWyVvPWOm21ILGrBKKkTk4K2LDeDsfHpwI3SF4zNUga7/AZBAH2WZL9a7EY5
 yTOzafSYSTSjCpVT0f3Z5BrG4aFJLnz9DcCr80KV9ScbJtKM9N9FutPaov/LPt+Iw/K9NKvUgDMFgt
 SYcCqmjIr+K4CKZ3SkCSHrx352AGj5h3UgK5FGu1YMHlaKrzbM6t6nrNDjLep2bbKCqUEjxKm18Lrz
 uddCgVJ1lcN/XAmkJUJf3aOR3Dp9dxodPvjnZQdhtA1XhH2fX8qYnAfEltbwNjl0acGrobX1YUXmXH
 EQJ5YxF/crwZ42n+1fjk7/CD4FHHWleFeQyKHdmGBT7XVa3N9CENNO+jkGFA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Define "unevaluatedProperties" instead of "additionalProperties"
to allow properties from common schemas but still disallow undefined
properties.

This allow defining a device subnode and fixes:
meson-gxbb-odroidc2.dtb: usb@c9100000: '#address-cells', '#size-cells', 'hub@1' do not match any of the regexes: 'p
inctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/usb/dwc2.yaml#

Fixes: bb88dbbee2c9 ("dt-bindings: usb: dwc2: Add reference to usb-drd.yaml")
Fixes: 54bd6c9a3b7b ("dt-bindings: usb: dwc2: document TPL support")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 4f36a22aa6d7..a5f2e3442a0e 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -188,7 +188,7 @@ required:
   - clocks
   - clock-names
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

---
base-commit: f76698bd9a8ca01d3581236082d786e9a6b72bb7
change-id: 20240624-topic-amlogic-upstream-bindings-fixes-dwc2-subnodes-f88620bca1fa

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


