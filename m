Return-Path: <devicetree+bounces-56920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B837689B06D
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 12:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E46771C20A34
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 10:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C32182AF;
	Sun,  7 Apr 2024 10:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tJp0k+yC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CF91EB3D
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 10:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712485741; cv=none; b=TKML807AjVQR3eumd8nXv2cFlagEMplpG2hyrWjrIC2OjKyS8HuDJ0TDbGCpLTbrGYsoX1K/iFvanbYazcYQs/y0RK9mKThdDE7bUS4LKkcot7okSskLkarPBKohvRFee+ykEVNACs03zJXCqWC5ktw7j4cM5NIUCOcP7sf1qu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712485741; c=relaxed/simple;
	bh=I5VfWiu6ZDLhwRBYVmmcKI/4Wf6DyoHtVj8HRjhNeBs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BdgzXNFXLnSVlIpycWUTNxWZcGdpb4eNWnI/BlboKVOIwURIS1fzcQc4PMlmVxN073VtmhR9aFh4n33Q1IilNunMncp3czZp+NSrNurjMMTWzfKKNhULBBENdsKxqbQIMhAK6++fsqaL+rXBJOCRn7BtuufB1AY/ksylZggsqSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tJp0k+yC; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4164c9debf6so3034485e9.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 03:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485738; x=1713090538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J2qX1t41u1T9MwLzZAGHfGyEjQdDcaTPM4SrGSAT2KI=;
        b=tJp0k+yCJxejA+L/osl24UhWF+5KKBLA9QSHPLA9u0XFgqGs8IoOhIni0n7khc7ePL
         eA3w5e1NU0ca1+rTl5uK00LCYv5bQ6ZeFOk2Xxo9yo0DvaN/zr2PUAGnTQVZfdMv+FaT
         qktoSHUDbMVCYRGs/V9G+iGcLWXGKAUrpP2v3zuT559cAPnJjLgiLueJvXKaurXlqKwa
         G0STorzYph0jzlQgHc2g5qoP0wP3TDCvUK6ekkEtc2lVgSb9h5k58s61eo+EVFuMNLmQ
         Lpzea9o7awfCOYS0wSdxzIgImH9zltjs/sTkZK+RFmrwjseQmApALpBFhot2ZGK77xb6
         avfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485738; x=1713090538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2qX1t41u1T9MwLzZAGHfGyEjQdDcaTPM4SrGSAT2KI=;
        b=m5HfYzcaeWHQdErcuIYziVEzn1g3ChVugmfG9HUirusr5TTNBEUcH7n/p1xEOcjGIJ
         fr2ctv98XvZdQ57e0SyyY5jeFAvuCeohg8MKp3vKRNHshCFnSPEqI8mSe5TTHC0iV0nx
         njRUPXs83RAMxDoWKJ5FDgErh32vL9H4xoCcoaDGPw3TuBrnkwOM0paOLvRUHRNts6UG
         VdQuuiGCZ+TpCHCJ8VQmBGje12pYZ5i7OcVfq6DZmj7QFQX+ZYKjqP0QkrN9TmK/D4az
         5VgawB9n3NrmRYon5ednUyAHCc3BlyS838ULe6m9VPbijZzTN2uAokUUMfiN1a5/Lhc0
         4vYw==
X-Forwarded-Encrypted: i=1; AJvYcCVI1u9YKb76mglY9j3hrbUXbswZ+VG8faN6JQIrRO0zzTBhmWZ+gpOz/rztVXkpDY48s6FOyvIdzHT2M/snuFn9rTP8vFyw5mTH7w==
X-Gm-Message-State: AOJu0YwIzABAQ11h+Q6N0oW0wJHZoyjdAarYxR3/zR/LycJ9Oi7jE2Hg
	zYZgTQabKGcdgp/1VYVjvFjvrE4cFuuTfB6mjhzDamijp/chZnEJHbFNslsJ5gQ=
X-Google-Smtp-Source: AGHT+IFWfjnLtCEkxl1+BnC59PnN9cnn88flTr/8ui7FMcDA60fJXNXAp4TD+Q2z1JbUH9ZGPtfq9A==
X-Received: by 2002:a05:600c:4eca:b0:412:fa5f:7f85 with SMTP id g10-20020a05600c4eca00b00412fa5f7f85mr4058545wmq.19.1712485738513;
        Sun, 07 Apr 2024 03:28:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:28:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] arm64: dts: rockchip: drop redundant pcie-reset-suspend in Scarlet Dumo
Date: Sun,  7 Apr 2024 12:28:51 +0200
Message-Id: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "pcie-reset-suspend" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  Drop the property,
but leave the comment, because it might be useful for someone.

This fixes dtbs_check warning:

  rk3399-gru-scarlet-dumo.dtb: pcie@f8000000: Unevaluated properties are not allowed ('pcie-reset-suspend' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 5846a11f0e84..b9d64048d46c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -689,7 +689,6 @@ &pcie0 {
 	ep-gpios = <&gpio0 3 GPIO_ACTIVE_HIGH>;
 
 	/* PERST# asserted in S3 */
-	pcie-reset-suspend = <1>;
 
 	vpcie3v3-supply = <&wlan_3v3>;
 	vpcie1v8-supply = <&pp1800_pcie>;
-- 
2.34.1


