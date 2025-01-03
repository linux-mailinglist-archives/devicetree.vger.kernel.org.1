Return-Path: <devicetree+bounces-135216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEDAA00214
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 01:41:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BB12162FDD
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 00:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5254C3CF73;
	Fri,  3 Jan 2025 00:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="armYphKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D103BBF2
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 00:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735864911; cv=none; b=acBjNa69u1Mm3andxePY+sOptp6D14El3eYBz2d1v9RewLeEbCZynIiCtYk668qUo95uLeflIcbyCRypHk4SNChYJyYX8RaJlLU5Au5bmDgX+kPOKJm7ZXck0iDqgh7/LeTm/NHmHCnNzQPap0RQbWLk9oamMtoRJPmBLAyLsuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735864911; c=relaxed/simple;
	bh=sneoKYbk2+BCZOEsHOlNEalt5Vr1F2uXYyBlsT1UmA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=evxkptmTrd2pVax4b91SKkr4Hc0oDw2qFb54/UW1hU9gwYQeCu3E+d8Y18KMsUWbq/98EDuJAc+iqn7L2RtsAyImQ3Nwt7QkKJJNditFt2rZHw9gI0/FyW4YFdDJiZGZC/J3DSynCwXfAWI4l/WcblebCv8gpETz6r8hzBAwvJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=armYphKf; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3eb939021bfso5344749b6e.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 16:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735864909; x=1736469709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=armYphKfTw8v5Wce0WgFAJjKsQYqACIUVdUG7lLnpTZIVB/7xGbssDr3rBqCFHkzIB
         Kll1mYlQxoz3vDWX1pGO8Cvk4Ck+HEY8Owjn2vDNeiZbfObNhmFGCD1Z6su+DW6F0lQ1
         QftN16i96apfZ62/wOe/7Xh50vXgyJDn1eJUiAy+pcGRVowCwnmOy7h3jM5imgOA8pff
         5B0fmEkzonzN3CRiXuqeoXEg7XXY4Bbs9pkPZiL6uTTfdTHCO3rH7t4JQeX/d2/n6XXy
         VFNXJaU95xJ0izjIq8P48CmZvIoHHV1jsD2KsWb2U3c00tnhqCrjqbYfdnIJITREDitI
         Omvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735864909; x=1736469709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=cWPp83j93L41uU+b+qXwiEf6hRozLLqC5Esdi36p6S9D8eiJZsSRbFf6yqRm3oq9+s
         nv/2HtZitp949ZCaIDA9k/K0Inrn2+bnv89h1hTo6Turt7Nin/lLkcxYFSn07FY/Sjel
         KJ9ZjMy0i0U9wSRmlOlhnGjgfAuiAMCPLqnjcLy2dvOk7cuIU5K/4c8lwyIfZgX4ZZgg
         SjgtIzRv40k70C9Z8JPuxnOcFVMROhoM73w+pIICd5XFObJF//tBCzag42WkvJKzZKJS
         IBiETbNrFh7Jx1z7tgG89cOv6Nhc7Ysfmw3hoBamOaM+a+RDpu5cAQUovBUB3Fo5c63y
         Z+bg==
X-Forwarded-Encrypted: i=1; AJvYcCVivnZ8jRu7Y/5RQ/Pf+ftiZzZtVSFEOBoevrzrV232xh4fai3j3eGvoAKK8WgGXsymrxXsSEOhVyPL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz+HqJ7nmpZwLSUb9cZD1lM68ggyfVbM+xEL2Cn8GNTKrCxPRf
	siWd9mf4+iooofqv+TP2UQH+vp1+AEqXKohJD75cwElHsad2IPPu
X-Gm-Gg: ASbGncsA/LdJJm/M+DX3kGt3DQY66y79UiWX57eBOT/6L9Xgv0ijVqS/dCzkhsWp21z
	ooqy0FDLuTQyvSsQIkjrWspMvdvvQUIgSF4O/deDB2texxGbXk6CfWiJEntNxwEhU51+QnhvSNi
	x4PE7HqrUVRwXcxozOdAr5Amovv3c+2OmMQ9v/HQ6swu8DTPWFTlyQE8r93hlo/Vfu5/+HQKrRI
	hGmazu9xSl4x+CwYSSy1tWOIOIsLc8xtb+Cx/024YjpGaICCSdnk7lSp7YJJ5BncA==
X-Google-Smtp-Source: AGHT+IFtQp/jVG0/huyhpVJeDXZ91IwLp+MBtb2GIhwvtDv8CqZDax9GO8dkN1aCVvu7z1at7XR+gA==
X-Received: by 2002:a05:6808:23d6:b0:3e5:f9ee:a2b3 with SMTP id 5614622812f47-3ed88eb62dcmr34524574b6e.4.1735864908831;
        Thu, 02 Jan 2025 16:41:48 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:19f2:4f54:d97c:af6e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ece2549542sm8087778b6e.32.2025.01.02.16.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 16:41:47 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 2/4] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Thu,  2 Jan 2025 18:41:11 -0600
Message-ID: <20250103004114.1902-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250103004114.1902-1-honyuenkwun@gmail.com>
References: <20250103004114.1902-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588 similar to the Orange Pi 5 Plus.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2a141d99c533 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1075,9 +1075,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Plus
+      - description: Xunlong Orange Pi 5 Max/Plus
         items:
-          - const: xunlong,orangepi-5-plus
+          - enum:
+              - xunlong,orangepi-5-max
+              - xunlong,orangepi-5-plus
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.1


