Return-Path: <devicetree+bounces-115483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFB99AFBF7
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B29C4280A75
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 08:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 572271D2F42;
	Fri, 25 Oct 2024 08:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cMu/6Npe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6036A1D2B17
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729843449; cv=none; b=iBDqkiGFNcQNFPL4bJZeTfaaz92HIKALNZ984Sww3sB8Bt9Vy17rrD1A2bmODz4rLaNCnsp+FArg9X6LS5cQ6+TJPCt1adbUIFsOeBmwV7OQbj0f4x62rJX0PBJdGNCB7VbL0d2XD46Qa9tLrQSyK5B4X+180akprCWLprG7AYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729843449; c=relaxed/simple;
	bh=0RUl0H/BXmrPx5mmgOjh1CEGTpiJIj6XAWAuimpM/oE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UfoQ4WEx3bp9YncN67ym80RVa2v9/1O16wYWzJBwB6PaAQENJtGnM/SpIKqx355HJW6PC+Er/sfbAfqpOW8dHpMAh0MsY/lVAhHFN6SXiD7dYNTvivoTvVuhM5yqq6MqcieRGht6CSI1e04e8aQ96rsBxKJIoAoZ7nj3HlU3864=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cMu/6Npe; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-718e9c8bd83so1870999b3a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729843447; x=1730448247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NDPyjQLJxhu/7enVOjQXyxhVyvrmjes2kCFmydRLWN0=;
        b=cMu/6NpelsLGUtbCvDSpEVERwtzq2Vxp6VXWIyT5zzo5ipJAJEqnqwYGzq31dsMjqe
         OW/x+tUlPuflHnQ0YqW4e6A1Lh/WQ0frnomwyggzYtc2hxfZzDtyb/RsFy4ku1GII2Xa
         XATHX9Bz7fi4NV+QJCc1kD7IBDV1R3iur8ATQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729843447; x=1730448247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDPyjQLJxhu/7enVOjQXyxhVyvrmjes2kCFmydRLWN0=;
        b=gn9lRzvFoTLi3h13RpBV1ksVmiVkDOfhw43qK3+Nh/Vu540/bjzksr3V/NQfa6/iVX
         bD4nANzKxc8niCxOxs82GmxD7r2K+iC0J06F6thkshEZnu98rG16zQyWtS5964I89J0l
         ksRb/miUnSmDAxD6IRztqv3NRtBC/WQyL+2IuA743JROvn0huK1NzJwyPwFGMmMdxJpC
         QGHUbXRRrTfwzBhv80GSSJH14hMNHUl1nEqv28RXZIbfZX2Sz8lLQ1Ou7yYxFFEz7C6R
         2mTVCHZUr4XiuvFumHdB3lgLhrCtQYrfGizGY1hS6BomZZyLTAl0mpkQUlnR5SVdD5oI
         g16g==
X-Gm-Message-State: AOJu0YzyR/yHsLwaaTlg7u70JTi45Dmx3D81LTqcGF+BYlxO1Xs/7e5B
	3qPBzqkt8DrglcsGDORULCGj8sPHTWCY4bTsVe31+eOGu+6JbjjnpII50/52tw==
X-Google-Smtp-Source: AGHT+IGMn5krXr2bDxQcM1KTz/KFZxm5bU1vktXqYGrTsZ3ivU3U8tGvEyAJw5wPsjNKYodNBtiSog==
X-Received: by 2002:a05:6a00:22cb:b0:71e:4a46:fdb6 with SMTP id d2e1a72fcca58-7204522aff7mr6540383b3a.3.1729843446565;
        Fri, 25 Oct 2024 01:04:06 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:5a9f:16cc:8d5a:55e5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0d025sm558120b3a.101.2024.10.25.01.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 01:04:05 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 25 Oct 2024 16:03:51 +0800
Subject: [PATCH v2 4/4] arm64: dts: mt8183: Damu: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-i2c-delay-v2-4-9be1bcaf35e0@chromium.org>
References: <20241025-i2c-delay-v2-0-9be1bcaf35e0@chromium.org>
In-Reply-To: <20241025-i2c-delay-v2-0-9be1bcaf35e0@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-2a633

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 0b45aee2e29953b6117b462034a00dff2596b9ff..65860b33c01fe832f3a4b2e21d24ea6b4f0cba2b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -30,3 +30,6 @@ &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <20000>;
+};

-- 
2.47.0.163.g1226f6d8fa-goog


