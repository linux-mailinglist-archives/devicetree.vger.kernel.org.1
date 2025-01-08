Return-Path: <devicetree+bounces-136499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 544E8A05663
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B23263A71BF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6AD51F76A8;
	Wed,  8 Jan 2025 09:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mSRY2d9c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002061F7097;
	Wed,  8 Jan 2025 09:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327409; cv=none; b=cNmedGEe8VklM3vMCwf4LGpeiP/cjsiibeBqln+TMLYi7LJ7jUMbu6CGaf6NjsMkqWrYpmgwUgp2WIaHTlUBcqIoGmq33e/Y0WxbiPyxcMmdB0YKrkYF/CkSkIcDCqbJtlYg9vjiBujOeye4VIfe25Ku4ayf4yg2Ek0e2WwS3rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327409; c=relaxed/simple;
	bh=+x3csT4k7ekXzqHzS8jNnW3Fpv3OJz+8CHDZS6BnFRk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jxu6/qKq0fDd9/ehWZlmmQlzLGxkOz5Sdod+tQT79mwG6twjPQiTMk+lOsCE5iUgdK48PVcQ+y5RTPaFIdt84ocJKNVzSSJRyL6T6yZQg0MhZITkEPh4obdYuLVk6uZ8lqaA92ZF7PF/jnWlWayPJ8k2nrmUiQXaM6uKYbFc4aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mSRY2d9c; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53e28cf55cdso13450666e87.3;
        Wed, 08 Jan 2025 01:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736327406; x=1736932206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUSvQ4Xu4ATShuWHhFsElgSbFZFR6pefGB8G2DsImpU=;
        b=mSRY2d9cAMrs/WJFuYS9KgdFVy9Y3aB44stcDDFSI5Sy75kQiuyZiMvldWp03X8gef
         Aw7PugoFplETW7ChSGHgVjd5S0LWaWewnvFChKyxKOOTFEEkjz5ZNkZTh3XAuevv8QHK
         0/R/6MlorxfaxhHFlwq/v014VzvnlT2+nptRIQTJowhgfkQG/Co+pGGSC13CacC/J6eL
         iG4+RrBmxLL+4wSioJMzwkrjUO6NhvOY00aWiiG/4smJSGH26p4/Lg4iKz+BQ0DJgRbp
         ZUPWVRszYHymvQc7UoqocNlcOzhCRAUylDLuy3MSEN911a4epDd2tnTPlb2uapW794Zk
         bAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736327406; x=1736932206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUSvQ4Xu4ATShuWHhFsElgSbFZFR6pefGB8G2DsImpU=;
        b=SkksuG6bTKsxpFy+utwuo1q2QgzpjAUR2xdexbJe9YpbHze6QABFqK2hboo8DyAqH3
         vshiuhCCy6AbeqSJCDOYFJTTakUTUgoej9Yyi2aM3XgQWT9Z7stae9G18ZL7gdBokOyU
         YNkPp3d2v5Y+VRDgGVIJyzupe26rWhWQDjkVsg2tQeHW6ZvvZfZss17y1WHz+B+jBfhY
         0AZgLtX2mCvtAp4XdT2VSN+1EyANtwBQdin2SEBqML4tML1XuS4ucg+dRe7eCBPBUQyZ
         aeXLyM4JW528DYJ08L9dw5i0HDbdqTJEpCNqqAj98+jpcGLqS+yvuZDJHf4Agaj0nH0R
         vuSg==
X-Forwarded-Encrypted: i=1; AJvYcCU/rOG4p/jFAAdefJ9yOR9Twgh662p7Cw1IrDgvqiRh7k8HywI3fdPeWqWkMqFMkz02fTPjLHvry2jsbS8=@vger.kernel.org
X-Gm-Message-State: AOJu0YxGK978gWh2HcQKSeJ1zlkrnXzLEW4yxSfhBR7X+KwwfDDJBXIw
	/9F/oixNy6KhjwS4G+cs7PxKfr1w7i2l0wLVNqOmvHnrxp54shgH
X-Gm-Gg: ASbGncurXwOcqh5eGIne6LZfoen5OicUqGgPvVNPk/EcATGe3pAxwLzGkTIkTFjfW2+
	fjuiBjZp0CjaBfxlZbwOHUb0a1NqCXwvw66Vk1Psf8cC+IWvMra0ihY6oJp39/5x15jfrh+wMMg
	yhjBNdPomXAWWt5AhZtCsVVwrNLCKgkN8zLLtib0hLg/Rp3GgSSwEygSH3iuvLL4BTPz321Nowj
	QhA+HtlUlkSmj6JXm/xbI3losWdXhOgZRVYCMMxTKlKBzSJjnWuAcRT1g==
X-Google-Smtp-Source: AGHT+IGqheEd5px2UdkuTaxcRoCOzQeOILEnsMyEgdd8cdUdR02/8V8GvWYY7/7UaqdFPDM1m5lwpw==
X-Received: by 2002:a05:6512:acc:b0:540:2549:b6ca with SMTP id 2adb3069b0e04-5428481cc82mr524834e87.55.1736327406001;
        Wed, 08 Jan 2025 01:10:06 -0800 (PST)
Received: from [172.30.32.150] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813898sm5386450e87.154.2025.01.08.01.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:10:04 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 08 Jan 2025 13:09:06 +0400
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-rk3588-h96-max-v58-v2-1-522301b905d6@gmail.com>
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
In-Reply-To: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736327393; l=1088;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=+x3csT4k7ekXzqHzS8jNnW3Fpv3OJz+8CHDZS6BnFRk=;
 b=HWWcXGqo2JBDjD6947tLYXHkSebYGscP7VMeqD2GFDgTyfMT6jymmDGIOJeHCp8jpzEteMLtC
 5AMSfMSaSEkDk36f1dGG/td1qOEdOwUeEazL8/IcTdW2apldRVMQ8gU
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

Add Devicetree binding for H96 Max V58: a compact Rockchip RK3588 based
device that ships with Android and is meant for use as a TV connected
media box.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923fadaa48c407a8e55e7854db7203e..010db4731d5f368365c72d17f66cb55d94ae1630 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -597,6 +597,11 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: H96 Max V58 TV Box
+        items:
+          - const: haochuangyi,h96-max-v58
+          - const: rockchip,rk3588
+
       - description: Haoyu MarsBoard RK3066
         items:
           - const: haoyu,marsboard-rk3066

-- 
2.47.1


