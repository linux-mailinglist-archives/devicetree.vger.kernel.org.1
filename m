Return-Path: <devicetree+bounces-134599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7039FE039
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D21757A0FA3
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 18:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42926197558;
	Sun, 29 Dec 2024 18:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zlow3Lq1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7A7194094
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 18:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497898; cv=none; b=JCcXZY7OQo+MAZPwHiT56oTIawdTvZbhByqS8sIpmeVWKvwxMGsbXSkKZS28Hs+TjFfoV9KL75DfQXCdcNUEhq/QqwhW2ViiyNvKWr1cJ8D+f1tPY42ghjee0rOyqWWsamK+UO7WSteI9a4NqQ+kJu4z7kLxZhpmvMwJo8tW5wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497898; c=relaxed/simple;
	bh=4yDdnoobR6n3EfZcGr7B6aoQUOhKXV1bxINFBewoCv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tGPb8zPThTz2urbl0Qx0v779LZycaujNJneWoB9LoWXIoiBZfUHW+zcKTYiWdRhHX5/ZxTq4dRCAiSXaD6D/AV5DSYKzuwp7NrnMOLmv9OZv1zfNbGsf2kwCyjxswapDHRO/oVFAFod2C1Rio2fPzxW1H/vWfEaLqjCTL7pXpjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zlow3Lq1; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-71fbb0d035dso4582314a34.2
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497896; x=1736102696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulhKLw5+JbKqvDhRwJDvbEaKwvgTV3rkm9lX6bKO/k4=;
        b=Zlow3Lq1+sihLeoM1sKN6O2VaOvZ6sutksJw9EXdK0QfeuHXu/I+2HRIg3ozJLx+DD
         fpx0NjN557qvMflZ/il8dyRGKqtDNBYgTlY7xsq3CeaRlgCnM8SJrzbO7kb+f4F/KsZZ
         A7vp0VdceR+d3dZ6S6sGGasDxeGwNx2wKa8/6KKYkRkM87D4ICXjBXJoRfN1IsNW9Dja
         9hxu5oedGx36p8UlglaMrH8ONXo21Bm3NtzQtbpJ9uePOzIKOuI3kjb3xgjZtrFjaUgO
         j66P6epJVAACRJa8jewitr1xcO2wyWwB83T1tMYE72U3JwOILUhcOXwAYsy209CuSZ/L
         PQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497896; x=1736102696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ulhKLw5+JbKqvDhRwJDvbEaKwvgTV3rkm9lX6bKO/k4=;
        b=hZEEbuiTjEuQjTYFJDFyePWV6Lr6GizNLkNhw4x7j65K24ZQEwXWJw8gxDS6kfn4z+
         r3362fnPQPz7jUDjHgmbP+HNV5vZKLokD51fPFC+9UxLEI6CCH1fLdpqaM0CyDzUo0mU
         Xv0hOVNXiLGwC7vlFLRWjhECA72waetcKdK7vtSAh59eLqInmeeFAinz4L4ekcU8vnJQ
         NP8R69VYM261aXER1zR44oJVumqE8cOg7UwRtPg22FZFVjrLALndE1uzrvN70Id7qrsz
         YyxiRGXyIhMJt5icFBaIIATvhvja/K1PeUOKOKZvrBYzB18TLMuS+yHdbadOeK5IWRVX
         DXmw==
X-Forwarded-Encrypted: i=1; AJvYcCX/tj3VCi8uHOXm4r939ij+43nhNe0dNfRN0AqznjY3+aioKNrdA/C95qX/K2zc5VgTTR+iAkCaFxB9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvy1zhTrr+kypUpD2pgKagNgNAvyXSeNg3+bur0ZvK5QHdYJru
	d5mO8pDK7Dk21q8dfmxNotAfqkAOwcVrRfZdlha457t7zxezXZAa
X-Gm-Gg: ASbGncvYq0md3NS0ALKVzPiVVQaBx1gXl/OUnZl7nO3uIFuUhWmyKyCMWa2hPYO35em
	WrsBBy4MVhseccEtUfHWOeaDrgSG0ysj9c/HOdbUcLjrMN/bL8oR+xzs7ftaO7F87bQd55GcOxP
	MXaIh6y0Rje5794RkSn7IhWTnaUsBlGC/CD6Jt5PjEAKnxqdX0k5rqOpN15p63hfOQs2I/HXIg1
	pFusLwcD6vuViRDne+2yeTml2p1eafb/RTEmnK4qmwV0k3xfIhemXR8K57oV/1P
X-Google-Smtp-Source: AGHT+IG353lfPKAUO0GPTNdiBZOi3/4Y24X8g/neHVLcYZrSeT7KQ9bG0wnDvPuvP6aZoQyN2ycVig==
X-Received: by 2002:a05:6830:488b:b0:718:d31:feb8 with SMTP id 46e09a7af769-720ff6c9bcbmr24007839a34.7.1735497895925;
        Sun, 29 Dec 2024 10:44:55 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:44:54 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [RFC 4/7] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
Date: Sun, 29 Dec 2024 12:41:31 -0600
Message-ID: <20241229184256.1870-8-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241229184256.1870-2-honyuenkwun@gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.

The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
for HDMI IN.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 2a141d99c533..9dd424265826 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1075,11 +1075,12 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Max/Plus
+      - description: Xunlong Orange Pi 5 Max/Plus/Ultra
         items:
           - enum:
               - xunlong,orangepi-5-max
               - xunlong,orangepi-5-plus
+              - xunlong,orangepi-5-ultra
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.1


