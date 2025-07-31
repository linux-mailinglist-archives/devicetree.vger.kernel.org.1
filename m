Return-Path: <devicetree+bounces-201064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2F3B172C3
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24F437B6E46
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C5D2D5C78;
	Thu, 31 Jul 2025 14:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vo4MtXY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5942C2D4B62
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970530; cv=none; b=CjKyia4i5ArKYuleHk9rz/Abxll/o00eZyU6BjdcGk+BAYCvwoh1RxPej8ey/xmmm3lhjQ2LhjXJNKsvnNercCHy39kmq19ODgXvMQcyAnoEIfJziVrsky7bqhArlXS/6ITct/tvlHN5N4P+Tp8Vl+NqhZ4rHAlzS4XXARmSO7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970530; c=relaxed/simple;
	bh=Q6gqUDKWSByswweoa4MByrpih4dPJFAYYxh1yHsXWcE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=orrCMyVF5mdD47jBLEVegvhWuUVLea0bsjECgqGgVdZbwrlxLhnZpDFG/Uw+OdZoZl3O7KKYZ0UUxSVnftZtLOi+0FgMP0wStmOyD1fZezM+uzAOkS+VgLwmAwDfh9sxI61eCVICBWe0OzEEmfdLocK07DrvDtQgV41KTyd/xIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vo4MtXY0; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-455fdfb5d04so5218585e9.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970527; x=1754575327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UbYDXw5XC5hpPAAcjH/Cyq+ROm5RlEeQDd+B8eN0DU=;
        b=Vo4MtXY03kYNuUrUeQxCtBINIE0fkvMJJYmFNFCbCJF/MfH04UE4cqKIQjOhpcYQxA
         ovP4MFcUEedM3gd1MSFQ20AAcJOmGMkeXpfnDp5AmguQkH8AZ4zaS4jHlPEOaP8ETSAX
         fjqiKyNxvLpyia/z4/9JPlvcrzQybnoOWcx08gBk9+Uy5EM0nn/PE5TjOunGSroDD5Ai
         4t+boDxQc9QN44HnR/VN3D1TB5pFTU8FsCkZllBqkj5ZTUl5M+ykRmElsyvcDyT+hThc
         KK6M2d74Z2kGkEXM4y1K0BcGVjfQNQhiZ0Z+metZi4aJJKkc5dDF7LZep5JeO8jakxkx
         PXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970527; x=1754575327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+UbYDXw5XC5hpPAAcjH/Cyq+ROm5RlEeQDd+B8eN0DU=;
        b=A6GRPwMRkF0kBMY36HXuDwLE/iOiEXprvDvp1zK1tmJxgxPsi94VxkKNFfnoK+Ehdn
         p4ZDb6v+qOztXY1unUc3Dqa7ieHgwDdu6nBK9KCOZaTA5LoVEx4BbhyhhVewSEu8LWOX
         cpln16rfyRBPjNBHYhxxeDZxPE2CqUQfGoV14BvVHP+6c2WBcfzhIPzzXd+L6N9hEU2q
         Osc29Vmb762BPjU6sgOPOOeAarCBiFTsE8L8gEK1aiFeoCXtlGuKABoERC7Z3D3TyIHO
         jWblD6wLlU5y5J0yBTB97OsCtWYrGDQt9oHaJMcA/2bERGikOwHeYa1DxW1XLEk5Y/Dj
         m9ug==
X-Forwarded-Encrypted: i=1; AJvYcCXOxz6XRwfXA9GxyDrP/r9E8MxQJ90rPsB293fqDDH6S3+362MT5B23rNjcwGNu8InoFwdl9Ak6cq7A@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyai1HrX+eUPK2/YCckELgpW4GQo1EPLdu3Ob9Xa1ikJGC6K0w
	0NrlK1sGG1hInXhzKP7zWj95hDOzlG51ynk1Be1WvkX61gBBu+7cUzpYikqw6t9+9m0=
X-Gm-Gg: ASbGncsB7/R6ZXVxOiqoVp7f+UtfF3IaCKa6XOEKHDO/fRLQWqx7vyY+acitrkQCnst
	h/Il4qlVy67A3cQC45Voq+5cD2pekvKSynAu7qEDTPdP8btqW374BkMrLlCs0/MTpmBELj6P/Lk
	tY+fbY+55ckPlTJ3rQbuLv2JUASVOu2VAoXQZwwZYJ7bAB2j3Ir7vRAJ3dfe53rJRn1pOqhSMRG
	tfIz8XB2XWqYsluIKsMos6MFm32zpapH53GrEfE2ZMdycDh6hI0H768e0YVteRVtmpRt48en4Qx
	dTNLDASlnGUG4Iu+StN2vBWI3yhkl74VSSPxlqokKh1nDFpzkAB/hOHbdzOMowXGh5X/CUSTXId
	Hri4xRbEKN01IIucVQWkePz8TTqP/Kc1nJloOlfweWG10GSonjiFbRWl+rPo=
X-Google-Smtp-Source: AGHT+IGoCseWUX+0lPWppwUdmNG0l0frr+iK8vwkU/QkBfN7U5WGI3OnPVlPht7D/5AVPZPGmJkn8g==
X-Received: by 2002:a05:600c:8812:b0:455:ed48:144f with SMTP id 5b1f17b1804b1-458930ec808mr51382735e9.14.1753970526033;
        Thu, 31 Jul 2025 07:02:06 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:02:05 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH v2 8/8] arm64: dts: s32g399a-rdb3: Enable the SWT watchdog
Date: Thu, 31 Jul 2025 16:01:41 +0200
Message-ID: <20250731140146.62960-9-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250731140146.62960-1-daniel.lezcano@linaro.org>
References: <20250731140146.62960-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SWT0 is directly connected to the reset line and only one instance
is useful for its purpose. Let's enable it on the s32g399a-rdb3.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
index 467e0c105c3f..e94f70ad82d9 100644
--- a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
+++ b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
@@ -72,6 +72,10 @@ &stm8 {
 	status = "okay";
 };
 
+&swt0 {
+	status = "okay";
+};
+
 &i2c4 {
 	current-sensor@40 {
 		compatible = "ti,ina231";
-- 
2.43.0


