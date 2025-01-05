Return-Path: <devicetree+bounces-135698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4124DA01BEC
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 22:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82A687A17D1
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 21:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F5B1B412B;
	Sun,  5 Jan 2025 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aBC2D5mx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DC117543;
	Sun,  5 Jan 2025 21:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736111303; cv=none; b=JibeMr+v++BR1phg+rTg3Y5jrKL/YGR9aBimUDNx+BzcYvRlU6BzlhwIS44Q0xJpuf4gJl3ukKfLLTM6YLvYkKG1D8QTAKN29WmKbh7c9gpWEbFZz+dkNumXAePHbE/mdCNkj6TehAB00G1f3rz2ihZerv494UzD7iKjKg7WymY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736111303; c=relaxed/simple;
	bh=eeTCvCciWfKUz5L1sZGrRkBrSqywxqaTRwz0H5B8ob0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YIql9GAE+ZJhjfNSYDFb0GK+l1v7PjMmR7cxieQHAQ9w0HhtwZ17ph4DB6lJtD17VazA37Z5s8Gn7UTf/4e/KGHuBCIEs8j0P7XxdVsw2oN9Qy9s1GCP0IhzWoFCgHmhjj3KLP1uFuBH6Z8jB6Th2SQLgAGSDWVu25rYWm31IWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aBC2D5mx; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so14487632e87.3;
        Sun, 05 Jan 2025 13:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736111300; x=1736716100; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kOF8vj4rqtRo5gcx1cwNenfKCZwtCi5d+m7CQDoUVvg=;
        b=aBC2D5mx5Udg/lj3GYkz2X+NDlyAYQ5kJVFrC2mTXIb1AgknZ4W1JzBXrmmOvd15NS
         OueZ7fQ2TWm2BhTV1IOTY1mDaV8MbBXZcY97FByPvNj24qWpF3DHLqeFv5ZDqYEmah5r
         npTCQk8jgiJusW1b8qjroVDHCSNGemU6QI82vw1zngLCDMz8JpXk1L+cS5S9qmZW1h+s
         cbDCDufkZRENRhEmBOzqBxiUn4wSyVJb18O5jU6j//DmPC77uW0+JGVg8jRCNbyC7RFw
         G55yJcCCsVvx6B2Z0BAX4lk08hU3nDWgHj3dawaRsyNyihQ7JAa6J5mLq+JautZjaPpK
         STWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736111300; x=1736716100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kOF8vj4rqtRo5gcx1cwNenfKCZwtCi5d+m7CQDoUVvg=;
        b=d8bEQudlLRuzBNvNF3JyyR41VDffXQ+7HXtItAoG4IG+o+QXyVbnd4Ha/nx1zgCXlM
         xm/D5L7am4pdqWKEPa0L+QerT9nOlMhqUpYyYC2+EjU5Me4xqE4K9ConQfbcVvYxDKX8
         IXfCXoznkahWlpOqTaAmAq7//U43DFg4DvOjBnVLdPG1A4phvOcM90wzDD7E0b8WAuKT
         7Lbfh37q7/M3ZeAJ04BR+PJFy1bifiNyWAQErYTkJy3eWYe4NFZviSIIzEqLztBv5WMf
         XnCqAXOrSVyswGG5hgZkVqwClqCjEB6P/i/sa5oUujspG4E6ZjaM2KCWoNugVNix18SA
         nedg==
X-Forwarded-Encrypted: i=1; AJvYcCUuJo4tuGXxfftIFKJYe/5rf6Re4rXf7Qj+ucunc1/aikM5b9uP5D57pSMPP9OoYmqGvMiYhxl4BNymQMM=@vger.kernel.org
X-Gm-Message-State: AOJu0YzdJJxxDTKF5HmyrDZrvyMGE+/Xo9uGzPLgXDRRUMwexcwOPfzm
	Ud5mATtB+mmK6xMcRF9MR2zSS8XA4/RewGo/V3gMO1Id/xUS4C8B
X-Gm-Gg: ASbGncuQofAgiaLtm1+Ipn96KPg7aoKqHoCWu/i2WgzTurM/ACBkaVVyK4B6dJBhllv
	7nbXUCER+ZEgWjCIpwfupO133D4PtTK+D6zUlowYEennLK2J9Fy3HVXDX14gs1JIT1Rs5lUbsOB
	+mSjJ7+g1igP/l8VEl/dhgmaKDgiWZqDvc4ysTRLhzl3CEYudx71ZUqH85DZOEvJQoJcV7FRed4
	XskyXdlGCFVPRCQ9PhVsZfZiXNyD6W1pUUz0Yv3UJLyd0Ga64o/
X-Google-Smtp-Source: AGHT+IGBPHpKq0o6kD7wxLxf/GzUbJ9oFyvCpeW1y7oTfUk8U7uV9oVdC+US2wWeIPxV4cDb8uYZqQ==
X-Received: by 2002:a05:6512:b0f:b0:540:17ac:b379 with SMTP id 2adb3069b0e04-5422953c451mr12305085e87.25.1736111299615;
        Sun, 05 Jan 2025 13:08:19 -0800 (PST)
Received: from [10.42.0.1] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813687sm4773419e87.137.2025.01.05.13.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 13:08:18 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 06 Jan 2025 01:07:17 +0400
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-rk3588-h96-max-v58-v1-1-d25255f851fc@gmail.com>
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
In-Reply-To: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736111288; l=1033;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=eeTCvCciWfKUz5L1sZGrRkBrSqywxqaTRwz0H5B8ob0=;
 b=qTv2ud22UsloqEYGxKS4alpOydVp1QGTwedveAJV83u+csXhCsxnkL8VLUO8KdJ16Vrf0aX9q
 XcvG0Tsp3IpDxdNICSOGhxrpU6YQmR/nyTwcSs9k1P/8nEbdQm6XGbJ
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

H96 Max V58 is a compact Rockchip RK3588 based device that ships
with Android and is meant for use as a TV connected media box.

Add device tree binding for it.

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


