Return-Path: <devicetree+bounces-129595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2294C9EC440
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D0E7167A03
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C49A1C5F13;
	Wed, 11 Dec 2024 05:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IhdDvf8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF881C5F0E
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894695; cv=none; b=h1IhCSAP9GRXKvRTneOUDSJ2CYKII9AOz6HwndiKfL0hNyeBAyjFGY2gxmJKfvQpaj7U337AJd5CHdoCv7D3SzvBDlbGcp1JA8dLA3YCH6KYMFSI+AMyzOAU/8hH0X/ZX6VvJcm4s/nktqOldn+4wTAO+4qOT0m2cS/48KQ7pDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894695; c=relaxed/simple;
	bh=OTrtEBMh6OCD9cHCDcG1ayyCh76uO5tXuzJHSXzWcs8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bW3W5pnyGctg1rKJBAR4d4lvIi88HyDdxDyuFPy6YKlaesxTuIyLM2/OwZ/N38NQzU6HmM9K5RnLp+UrxhMZR37hWz18ickVsxXQg3DI//O4cA8khi5mSllnnB7gfkGSF5h6TztHMssSKEcRKnDcREEa4FNXRj7vaNgw5vYY+74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IhdDvf8Q; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-728eedfca37so258454b3a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894693; x=1734499493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ToTdfUFmfxqqBVuM594sv5/lAPTiIQZKFHPkEQ17A1c=;
        b=IhdDvf8QRliKFAfdbP4v9OLzZ9IU6+0u4glF2byqcUwykAeGoR0J9NGLqWfuIFtOwp
         4qcF3P8FZa+1RXRUQTUpwLHUnJKYT0yT6jXx2SiOJjhVm8PjX/0U+caPVlalJPqn4enW
         S7UuH+tnBEsS99im193J/Bt0i4L/TGauW4AOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894693; x=1734499493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ToTdfUFmfxqqBVuM594sv5/lAPTiIQZKFHPkEQ17A1c=;
        b=uHITSNfpL45f21Ic2X+PSk9Xna7RkjcRpxH+yUb8qAXn2R2FUnCnaB+P1oBGKMHXb6
         cPvuK2ZwKeHdMdz2h8oOjlYn2kBH12Ag6l0Qws11v/Qd78oKCB4SUjLXUhOAGB0iSpjP
         paTRAS34rP/wb7iciSLpEI/MVoKHZ8XaAWihy1qHnf9BXcyWY2MSULfK1P60N+MdK2hV
         Qs1acJNN2O64CTISjEcS/WGLChgpgd4QQRmYRkCmm5YQ9YEygs3gBaeQw3xkmFJmO3SP
         HfFGgn8yyzbWjVrfUD8ZhfqIFJxkPC2H0n0HGjY71o8eiq2aijLoo77Mbb4bj23V+ZYN
         knDw==
X-Forwarded-Encrypted: i=1; AJvYcCXOrBQKBtb5B59vjk317178z1xyU+/a1gA+eKm6mY5osJp4plm5eQcJav9l44AT0OQeNBE1Dh+nza93@vger.kernel.org
X-Gm-Message-State: AOJu0YzOB19tDt624OSViESGPyN5MkAO6qYGbOPz79KY+kDUtrb/o7xQ
	BNAKXiX3kQmywHapASY2HdYKSMd8uvyQei575tBbwzaM13Zns4Lmu8Mg6XR+1A==
X-Gm-Gg: ASbGnctM0YwpBIA9a4OfxUxMhVFhuorPhOPuUIlP/J8H1hqAO9797Oq/mu8UATzMUgh
	/ONKDD6u12kk39zGdmK80HJ4YeBq6Fx83Zf07Sgmn/x6D9j8iYdKZCSE1iNVzUfxERRGmioXaCc
	Gyh+3LPbp5J4CWTruOk6Q4P/LCOJou1A6VQZT5NXO/MzjnaOacUFPZGt1P210rVMYzc23Y6nbdT
	DR2d5XxdS8zpaSceLDiAAoGeB1XNKxtEjtiLjqCpelzZbT/TSFYIh3L2cRZq86cjeNXEfYF
X-Google-Smtp-Source: AGHT+IGlSrx9j4anjyHnvyNo1U+TCm1tsOqFjYIOo+mjUoxzwUz0kLYufreA4nXpiCewnzAxgBLNnA==
X-Received: by 2002:a05:6a21:99a0:b0:1e1:a06b:375a with SMTP id adf61e73a8af0-1e1c1380cd4mr2924903637.35.1733894692966;
        Tue, 10 Dec 2024 21:24:52 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:52 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/8] arm64: dts: medaitek: mt8395-nio-12l: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:25 +0800
Message-ID: <20241211052427.4178367-8-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241211052427.4178367-1-wenst@chromium.org>
References: <20241211052427.4178367-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "regulator-compatible" property has been deprecated since 2012 in
commit 13511def87b9 ("regulator: deprecate regulator-compatible DT
property"), which is so old it's not even mentioned in the converted
regulator bindings YAML file. It should not have been used for new
submissions such as the MT6315.

Drop the "regulator-compatible" property from the board dts. The
property values are the same as the node name, so everything should
continue to work.

Fixes: 96564b1e2ea4 ("arm64: dts: mediatek: Introduce the MT8395 Radxa NIO 12L board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index 14ec970c4e49..41dc34837b02 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -812,7 +812,6 @@ mt6315_6: pmic@6 {
 
 		regulators {
 			mt6315_6_vbuck1: vbuck1 {
-				regulator-compatible = "vbuck1";
 				regulator-name = "Vbcpu";
 				regulator-min-microvolt = <300000>;
 				regulator-max-microvolt = <1193750>;
@@ -829,7 +828,6 @@ mt6315_7: pmic@7 {
 
 		regulators {
 			mt6315_7_vbuck1: vbuck1 {
-				regulator-compatible = "vbuck1";
 				regulator-name = "Vgpu";
 				regulator-min-microvolt = <300000>;
 				regulator-max-microvolt = <1193750>;
-- 
2.47.0.338.g60cca15819-goog


