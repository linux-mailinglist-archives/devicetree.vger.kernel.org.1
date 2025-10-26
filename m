Return-Path: <devicetree+bounces-231078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF3AC0A3C9
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 07:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A6DAB4E2DFB
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 06:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21C7231C91;
	Sun, 26 Oct 2025 06:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E5o0SPve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE971A0BD6
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 06:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761460253; cv=none; b=F1/M6QyO+RSGA3ByAdGlwE1UnNgronAFIj6Wemqs4hIdQ6chX6LgXPFL81Nav/10RObsXJcbhc6fBUmrMgzlJMlPd48foCbJXVqmJgGlYJb51cTq/8iZ+/N9FcpNY8mdzOLz3CW659QyWgY1Cacwd8SDJGb3IGEr9Qsl7i/xbNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761460253; c=relaxed/simple;
	bh=B6weJn5yTMgjU51LGFKgA/6LCJOJwRXqJ4YGQQN0U/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MGD+dUWN2lT402I9hJGRfVvri9097Cop2a0djw8KhDXS9uxSVYM0ZfykY1aIR/l9fk37KFwoHehKrAlY83jGYXGXYtQawki9bdAKQBEJgoYwA3nWYxHnFi5NAHiCn/mzir2s9Ww7KNxkmRA3oUSd6J3OCnGsz2IlfcnQr3iWNOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E5o0SPve; arc=none smtp.client-ip=209.85.215.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f193.google.com with SMTP id 41be03b00d2f7-b6cf257f325so2948906a12.2
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 23:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761460251; x=1762065051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ZBj0vgRHJC6aX96xN8RIRtjeiDt3AOgOJls8yqVpTU=;
        b=E5o0SPveolWQlTKzX+cNashO9kncsb1+p1WLGgrkQh+6D7MalV5+9buL9sshgNm8nM
         EfIz3ANnpi5O4K8TqW9QnJsL4Jkh6PFrZSiPltnOFnqAbH8KthYJ+L4GJ3P4QbNwejbk
         CiFW6Sa5nMVR6m6ivBwrvdPgqJQnDVvCyMbl38H7p6LtBVR/HEDmm/zfoalzjFzzhWxA
         U2Tt7j20McOZ2oH3DydY8QBOQINNwukiBuyclH+5cr/97SM7mr4MTcclfQdqslF4NXOt
         4UDtSLsojSQX7A+Wtw7jMHdR8DtSrpervyoRkoWHVYtW4atuFbJm+5x3h+nbV00MvGmI
         wYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761460251; x=1762065051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ZBj0vgRHJC6aX96xN8RIRtjeiDt3AOgOJls8yqVpTU=;
        b=Hmp71J9J7cF5DtEXJ4ZQFqCwAzggpm/NQHkGoKnbpL0zGNdHWIUYgiDCHboj6cJoXM
         ojj3A3K0xNABTyeHRoY3GCpqU7pW6ni1/+ZM6TONYu9a5ejqGR1QJsQGay4HuGSP7CCy
         4HUcCVSjFwaG3w7MMBBBB4/3rLFpzQRezMRZ85ea6TVyZE83WB+Mfk672CKm962YAF/0
         rMM2G9fRVzIurQzu49xyVZwgHt5n+gZIihQyC2agRfn3MFljxImlgZKfIUXBEFEiFPFQ
         jWhDyIgnbnZYJwMfPoYXie4OQTS/c9p/XI1l3sJpwJQuwFBpa9EWaXstUJAJQPqOD2fo
         PO4w==
X-Gm-Message-State: AOJu0Ywo7kS/Ed2N/qV8OAd6P4kBOuyzLvGhtsC0+L8D8GODdww4ZQ7y
	kyheFQIYlZYC+HQ9LuuGkuaJU7j35e2Mv6jP7ku66MdYxMgHmo9Jk4wV
X-Gm-Gg: ASbGncvWG+XLDeFdVH63z7wNYixaDmc7aWcuI3lId0WRL74ec0FyNu250Sf8c9MBBtT
	gL0TQY+/rw48XL4tQ6zlU0UqhEF0tc+Wv8QgRJejNgaCjNp/UWrAU6KP4zhm7PMRcGvtvqpLXzV
	4Ez4xvfWeH7NP0N8pW6pMTd0lL8DNf0UaIzS/4sgnnSjFTHZuhjQQ7XVg21xSOvxRNslRBvQjCj
	5iokCjJ0b8AofBqS5t1MQN5LkQwkztgA8yLUMMrw9qxrtsFtcPARMuwQfLeNt/vr+lt3kgksvHa
	CQn2nsHR+FxaO+I51TyNmWhFK/2w7jFT81LmfJXnAjB4M/Kl7g/fpwSPvuyG2pYAe6xN5C2tjIt
	XO32EitbcRUM4fnYXn+nfIO6CEw8cJaXRDVD5Tfp9CETWJCYRy/7Q8hlLN8J64p6UVbqoC5M83y
	tQmHanHwtlpg==
X-Google-Smtp-Source: AGHT+IE1eXwoc08oMm0xal+/gwZlEgSxffRo65GMqV2tDlYe8mdGyu57eUdYIjlh9cI3ppLNUpa66g==
X-Received: by 2002:a17:903:388d:b0:267:e097:7a9c with SMTP id d9443c01a7336-2948ba7a6bcmr78804325ad.53.1761460251468;
        Sat, 25 Oct 2025 23:30:51 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0a60fsm41583865ad.39.2025.10.25.23.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:30:51 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568 series
Date: Sun, 26 Oct 2025 14:28:33 +0800
Message-ID: <20251026062831.4045083-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251026062831.4045083-3-coiaprant@gmail.com>
References: <20251026062831.4045083-3-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This documents NineTripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Cc: stable@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..417100209 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -777,6 +777,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: NineTripod X3568 series board
+        items:
+          - enum:
+              - ninetripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.47.3


