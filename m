Return-Path: <devicetree+bounces-241773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD6BC82855
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 22:21:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3D1B3AE254
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 21:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7DB32E73D;
	Mon, 24 Nov 2025 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y2h2d5BT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02462F6927
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 21:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764019280; cv=none; b=glFgU8LQJcTvVf0s/v30wkE2+0krxZYF2hKcN+dPdooBAxRU3mqNhql97ejS9ycur32waa+Nnqd4JYIWGYRXQQIQ/vzWXZ1tlAYqoousZ9a5WpNYvwE78Q9dhyQEL6R7+tPmxLg0wgVvmwGikHbPUfDnRjQdavZRXnVPSrXuO+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764019280; c=relaxed/simple;
	bh=jUeZubYq/GCz6mpFSnBA+F4ImxK5g0uRrZ+MxmWk+mY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f2b6QUEygDMUZb0vnH7wBkWxBkUprScGPl/UfS667Sx8PHbXpA6p6e7Q/j85EME+XC5T49TNM0XTDnQVNi1OgTHkrFN5ZB8rjyEBZTUexf3EOkNeYvFbVPmCeVfecJBGjJd49edeY7vy/KplP4t88KaUz6N9AFloxWE7Clx0ygE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y2h2d5BT; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-343d73d08faso2472681a91.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764019277; x=1764624077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+5Inq94WidM1IzPMPQL+vlU5Af/EQE0R1rM2YRtli+8=;
        b=Y2h2d5BTNEZlHIU3ZGfXF+qN/Xkq+5RKKE+XoqW0+pY+q2XZPE8fMS5Plv7aeVIUWl
         Febz1eeqpKV+Aeg57syaZVJy/sxlLuzX9MX6PyKpMCrGU5CibIJabfr1Iaru+SpXypQ5
         JmpkC3oTFw5Z9zD0SDqRV2Ul3jgkei7pF/ZeHJ2PfjbaTXC5kf/8rfzzHwrq2hw6vkFy
         vCoLka51fEwXlbc/XRABbwpeUQ51/mvGgHB5S4O5Pc1UItrE7a5HVXMUHOTOt6NkTw+t
         ifSXBB8E7gxlpbDtf9DxXtZ9v1mzj74B6Her1yOaxXsyJckFnYjzJ4eusptzxTQxxFPI
         6BUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764019277; x=1764624077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+5Inq94WidM1IzPMPQL+vlU5Af/EQE0R1rM2YRtli+8=;
        b=ZJDtPYxXW1/VEuuiBK/d8qvwCTCVQ2LFcEvDfikxy6VykBCuwOFqSf8z9aI44b4Srk
         xuWHf3jhNiCZpH2crDnG3DnXl2NUtrzrM+tfHV0rdgHRghQ732uzeq64b8finX7cZHjD
         NzDHFQveeY2wrZ8d3Ky/ncI4mkfFfGrZmUcfPd/Tfmy6xX7wQr3US6CxhQGEa8YfYO5f
         MiZqrQZvmbg9LUPdoorYOioalbV7geLhHGWvj4fZIEiK/S9hFagSUrhMyBgTMTZOL+5T
         ojpSvG+ufA1Vjv4uvSOL33xyIJIute1tGaDTd0wTTrWXPwscuKzBh9kVpJzIEmGiVH5F
         b0Mw==
X-Gm-Message-State: AOJu0YzGpy32wdeD42I4DYPJ7pWqk8y5RoRsKMM91VPJu+FrnWUrKUmb
	eLmhVDuAhSPtfE2x1EtVoQcSlDyGFvbgsFg5aeDW8cSXIvF6Mrovu4+469SVRFUT4KQ=
X-Gm-Gg: ASbGncvUSDHmMuwv8vn1ycTKNGUxJCu52Q8Dy9JI4Hw+1vHj03HzLmGzGX5rG/HwTLo
	M2pJIx8GJLnuXa97PoLUoz0CN2UqZcTwcDaTqSbgmkDWMxS5pvrrIVLY/CDJJ1aBWFufEjP4wSA
	cPW53SIdqWFfO+Q8azDFACDr32LmX8oMRcoCYsM5enEoR0HxJDgE0Q44F7raf5/XFFEGqxS5ihE
	vxULBpH4TvpchPDBxoPB64U7N3UgU6hiLn2+r0gSLGIORvyLN/Vr+cNwvrbBWxY2fA+MFsoxL2J
	R1x2p3rwybQOGbuopUCXIhSEPNhPLmBgjpdZzo3KFzWjwvq5NexAbQrCGkQufcDgso+6RLZ50jQ
	Gx4QReasXINgbyfQi/PVfZ829PgOX+Alr5cHfW9XJOpnvec4F5m7kSm/HQ7OL5cNzIGiRO0PchT
	vAHA==
X-Google-Smtp-Source: AGHT+IGt9JaxSdMIg/K82kDNkha5T5JfwKM7sCcz1zE6ZPRoDIHpa7dMxg/PxPkD6VTRBOZIK9jBFA==
X-Received: by 2002:a17:90b:1d47:b0:314:2cd2:595d with SMTP id 98e67ed59e1d1-347331cb3e2mr11359605a91.8.1764019277550;
        Mon, 24 Nov 2025 13:21:17 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ed076eb3sm15702319b3a.1.2025.11.24.13.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 13:21:17 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	peter.shen@amd.com,
	colin.huang2@amd.com,
	Peter Shen <sjg168@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/2] dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
Date: Tue, 25 Nov 2025 05:21:05 +0800
Message-Id: <20251124212106.2068069-2-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124212106.2068069-1-sjg168@gmail.com>
References: <20251124212106.2068069-1-sjg168@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds the compatible string for the Facebook Anacapa BMC
which uses an Aspeed AST2600 SoC. This is required before adding
the board's device tree source file.

Signed-off-by: Peter Shen <sjg168@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index aedefca7cf4a..bcb874ebd9d2 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,6 +80,7 @@ properties:
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
               - asus,x4tf-bmc
+              - facebook,anacapa-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
               - facebook,clemente-bmc
-- 
2.34.1


