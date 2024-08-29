Return-Path: <devicetree+bounces-98182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3728C9650EA
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 22:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD7401F24126
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 20:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18FEB18B467;
	Thu, 29 Aug 2024 20:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JKiZ2D6M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC2018950B
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 20:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724964464; cv=none; b=m588DZKRTXmfHuqcnvHWBMIBW2xPQvGjR4BkDx3OuUya6a9vUfzOhUg2bGFMQoEKGMDBgzvAMHI24fAvO5OqXqThmNnB9i6tVcCa0sGkQ5GzcJggFOtm0ysHiXq7EFuF1lQ7W4SiBfOytcJOMc4zP8/OoZBVCs8Skg8x/JjqA7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724964464; c=relaxed/simple;
	bh=QsS4UdM98Fvd9hChtVbcqOuy4eWwGKNp8r66dTymdAs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mVBPOM+rM7vFhmMxE1JG0pIHOvqI9iJnSKNFMIlDhzRX0j5+jv52fIkpdmpOShO+rnDjOV1XpIhV5usvl3I50SWI8Zv4nLJZWRmYRJxbNx7bj3TEFGFQ9tq1+zmgK5NmFS18tAfrlhb8V8WPBQaeEaDPDK/feq+O8/VVQeyHths=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JKiZ2D6M; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-268eec6c7c1so645984fac.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 13:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964461; x=1725569261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GMNECcNc9zIPRm151CO50e68GZrIwUGK0WJbxMBA+tI=;
        b=JKiZ2D6MMLCtYgX6M+KcKtG4258xVMWfevykpKX1s2gpL+20WOQqrb03HavNaoreHv
         pFUZ+eamAYhMmXiNi5j1OkVnGw+v1u4W5JeuNEuwH/tG4HqQgjDzz0Mmxgdvs8QgJwBL
         MEkcSEI+4cmUJSyXwjNAvzT7Y9Km1Txz/zFKLVHRN4xVuPo0BRgRjGXaUgTFXKTuY+u0
         SlSDWz2iy7OTiGUGd+abgDO0cTUjUYr7b+SHgAMOxPsHWoUL3Y//aDkxuw6W3lJG60Yj
         FDasmKK9CHmcBWlf2GT8GXqWbJTsY1uZl1MQNW9rwk/jb996IRrLbt36NSD74w7BqMDC
         RjIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964461; x=1725569261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GMNECcNc9zIPRm151CO50e68GZrIwUGK0WJbxMBA+tI=;
        b=PWNakOpNDExrC57qFyoQYVXRfac2GMxLNAMYcJqwhiJ85aQr/0miVpJnKJI+h2+Xd5
         IQ7XRnynwum8r3s48DJjdSOJKMVE2d8ADizogvU8KpA+n9anDg8C+euQYiagn22tj1TL
         N2sR47uqN+hCVSuKI6EY3zy4oV0Eq9x+x1gsXNvlSeHI7H6FauAYRn5zlFWsYbceR0mg
         GB3kx8zeVXGLqpEM4rRxyOCQxUCKoAKTjI4Fv9X0AbMl20MnMnOVaw5Le8fi4r4wwBeK
         LtMEX7/p9Zuq3BGvMBs8fr4h427ySIk9dthguG8my6muRY6YAInqETkmEkDTysgg/jZM
         Qnmw==
X-Gm-Message-State: AOJu0Yyn2hVvBZzR98zCXAQMYRLViROsYjHapCYxj/fDAPqblB1kj5UN
	Mc23RIYlf8hZBUItCNixMpi94qRbSW4lUa7oHQ3FMpZxrAcR3VVf
X-Google-Smtp-Source: AGHT+IELJG/5Sjygm5cXL4PnQ/JJMp1w2z1g7qjOKDFcXD9paEK2TlhFQiWv2QT5yXZKVKMKntD7Cg==
X-Received: by 2002:a05:6870:7815:b0:270:4134:1d3 with SMTP id 586e51a60fabf-2779006e927mr4694462fac.9.1724964461561;
        Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V2 2/3] dt-bindings: arm: rockchip: Add GameForce Ace
Date: Thu, 29 Aug 2024 15:45:16 -0500
Message-Id: <20240829204517.398669-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for the GameForce Ace.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..a5a2621404ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -255,6 +255,11 @@ properties:
           - const: friendlyarm,cm3588
           - const: rockchip,rk3588
 
+      - description: GameForce Ace
+        items:
+          - const: gameforce,ace
+          - const: rockchip,rk3588s
+
       - description: GameForce Chi
         items:
           - const: gameforce,chi
-- 
2.34.1


