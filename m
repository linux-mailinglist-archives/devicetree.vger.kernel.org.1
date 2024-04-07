Return-Path: <devicetree+bounces-56923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDB089B073
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 12:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FBB2B2129C
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 10:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DFB1DA3A;
	Sun,  7 Apr 2024 10:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aHyMTzj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA621379
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 10:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712485745; cv=none; b=FvwD/X6ywdfzT9sB4/s+UuLhGiSp2qelY9B9BbqRg0PTT50TV33nK2DnPiy7t0rVXparaY0LOV3X60Ul9yko/yfofEaqpk4vRfGdl/DqReVhXPPRQYkA6rdaTgbXbUaACQxo+nSjERBD7PY6DZzMPry8gekgcF6n7hzY0H8NtVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712485745; c=relaxed/simple;
	bh=l4QhM+IxjSm6mQ2XW24RcVpAKYRrWpvED2zUuzV8TE0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hMlWbn4hDugYHgNdoOaE5b84LgBWN8T5RHuKmSlFnELwxuWmeXZJELYf7/jOBkBeUd8DssqXw2RXRDxRlTVdm5wdz+16P323bwYvZzo1AxfxOi86G4kKjvPr7bjEdE5Not2TPmKFPGlM25nTbF8JZBykpvyzdv4afMaecvZZZWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aHyMTzj/; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4162ad8ddd0so20021195e9.0
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 03:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485742; x=1713090542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w85wUQFFRwhr768wNwa60mAcNSboWTs5qbhFvFElJwo=;
        b=aHyMTzj/SFN/QrpzCqPbLEtLQjD8drHr27GBHAQq4F5bMP0wQQdn+aIIi+iGOzYGP4
         q8gAUEESkmoicwUJRg89IlYPuzJftpKotxKRnsq9umdb1opCxJEC+B47Cr2L8SJJgxir
         30fjpqBxV502zGP1bhexx/oiSF6Qrm2vIFRMk9OKzWOYzlVCh4vwUhbsZUdTqkAwc+il
         Fh6RiIF3yLqieatCu1MSi3y3vkYTh3TC6mwamkKbwMurwk9SCW1575g8AGNfdYdSBQ41
         svd3wKzRZemt9hEHQXzfBKKJ37M/BE55Cq6wIojJduzuYTbOgHDwFj6UQzt6rZ46FT2K
         DK3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485742; x=1713090542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w85wUQFFRwhr768wNwa60mAcNSboWTs5qbhFvFElJwo=;
        b=EobVn/7bs/Pa93Wk8OXlpxnf2etoJHAVR8SGGAlExx5tzS0HZW9NN01pByvIVCOwAe
         6il3qVxkAI5QQhmR2ZRn8hHIrAKEEfxwJAngXRtREocZOy+O2y2T9aNww75KgVT0QtDj
         eYOakRJB1RvYIPpN84lEqFw42r0u35Ckwu8oyYPajr9SFBYvr0G8JxT/OyndTAegNvWt
         3V6bF4tITDLY899V9ruRYdd0VU9mu0NGrbD2T0PlQ+iuqUvx8ostsNr7u3b4I0XfeB/E
         G3lXrU1rnGA+J/2+Sa2x14mMm4nRLrIjkiaCHwmBDleq3e1UJd7+depTxWQtEmVdpzjl
         Gaxg==
X-Forwarded-Encrypted: i=1; AJvYcCUUIEUPCkH+og6gd+vUb1JtmJtD5jvydYoDMBa1JWRzo/UxF/yL8q32BeRGy+X6CtWlTdBU7JfUkfvUXO3/sIi3v5s0P0nm9ZuIXg==
X-Gm-Message-State: AOJu0YxHlwlboXuxidUocjPsEcI+UtWtkAvTO61JX1N97BVPewvoWCLX
	A2oPhTMnvDB2T2IPRksmt0Qy5k24Bm1ICt0OywpQcydYQlakZzsRDObx73qom3Y=
X-Google-Smtp-Source: AGHT+IEQe5/Bsm/TQKB4qX1qxV3uy3cg/WeLuTUZ62g74IaNk/xxpRT2tJ2alsoOZP+5w8I13D0dUA==
X-Received: by 2002:a05:600c:35c3:b0:415:540e:760d with SMTP id r3-20020a05600c35c300b00415540e760dmr4728605wmq.5.1712485742523;
        Sun, 07 Apr 2024 03:29:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:29:02 -0700 (PDT)
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
Subject: [PATCH 4/4] arm64: dts: rockchip: drop redundant disable-gpios in Lubancat 2
Date: Sun,  7 Apr 2024 12:28:54 +0200
Message-Id: <20240407102854.38672-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "disable-gpios" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  This property looks
like some real hardware, just described wrongly.  Rockchip PCIe
controller (DesignWare based) does not define any other GPIO-s property,
except reset-gpios which is already there, so not sure what would be the
real property for this GPIO.

This fixes dtbs_check warning:

  rk3568-lubancat-2.dtb: pcie@fe260000: Unevaluated properties are not allowed ('disable-gpios' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
index a8a4cc190eb3..a3112d5df200 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
@@ -523,7 +523,6 @@ &pcie3x2 {
 
 &pcie2x1 {
 	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
-	disable-gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_mini_pcie>;
 	status = "okay";
 };
-- 
2.34.1


