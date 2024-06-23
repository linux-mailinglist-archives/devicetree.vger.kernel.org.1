Return-Path: <devicetree+bounces-78863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EF23D913920
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 11:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98D011F216FA
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 09:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C246F085;
	Sun, 23 Jun 2024 09:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wp79Ia9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87B03F8E2
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719133283; cv=none; b=t2a/4bubJ/e0vk9ETtYb+SVSQzctlsdRnRFCHfpips7NjO7FdGWn6PkPvhEFc3clEslWzUXyuTcsqAQpFiQeMdk22eqBoH43Kxya6RP/RaxBvUzj5rkvUvj1f7VTk+c8fmuT3xWj1k15MrQ0t6SPtzMs1M1ImG2YwD4CSpF1/BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719133283; c=relaxed/simple;
	bh=pioqKyt4NxsI2AItWz1FsdmVjP4k428sGQvSTxTZh0g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JdfhGFx4PY/Wa5KSZ5mdQOQDgAstsqkawxnq0JqfYUkwbu/KRR6/FZ5zg36DHyrOkyU6LiseRHoidS2mc9eS6pwmKlFVvdI0EQvpC9x6jHa+7SW9sR52NlvsBXygGuJwhKLcncUrgjWAuDgnhi3bAzrXQzrkwOiKCQbV+Yea64c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wp79Ia9n; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a6fe617966fso91735466b.1;
        Sun, 23 Jun 2024 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133280; x=1719738080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFkUozk7tb7flvFcyJ5JsIPbVaD8NWPVa3/c5jb4Wl0=;
        b=Wp79Ia9nBA85YccaP554Ps4qDACp0EVRKwr+2BvkiU8ydkYVsuQPzd1nFsq4Nesnv5
         AK4/8Y9CIPN4k8wZaS/YVAuJovSfbDQv533bmTE1OpngmYaP3ARen6jrjYeyJgK93YWF
         VWL/q/HAL40P+bCzj1rCEIoBMGP05uSry3y+Pkd5Dm56R08JjnX5f3GRMoOpn0cY6miG
         8znVrzLKoDQLq7LXT2yqysvMcuxpZt2Q1M/tJ4n06k6sgj6bZXmPQPRDxzpS0mNrpd3+
         pSEDPrhgD0qMj2MNiqzGykiv+3eL9yv0Iwuk/VxyGbWG/xI8IY6WCQ6bDCbg43xzjOHl
         KzxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133280; x=1719738080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eFkUozk7tb7flvFcyJ5JsIPbVaD8NWPVa3/c5jb4Wl0=;
        b=cYi3UG61sVbun5Nfv+MvdW/RBJdfihh/RwDayB2+U8Hu1WROb5vhOCvtxn5L7z6YaF
         d+Y4qYJj7PCnTUQWolp+ihi6WcwEnjFoI3CqlXu3bdN15eWwmhB6GX9IQgN3RZy20Dsa
         aPLZN4CtLon/ZkIUxu93pIQfDrhRfs4bMSVdPyDOpQU6i0j0JmUEEH22amx5siPdcCfW
         VaKrQHEcKK4N2rHvCoDBz/kz7hyEZ5F+NVTjtNxT+Ewe2HPA7c+B8gbpQTp1i89veFUc
         Op6/ndo80CSZEWLdfJrghY1204nc2h+l+3Fw/BODt17Hl9+rkkkz7VmVcAaWvASwhN6g
         n81A==
X-Forwarded-Encrypted: i=1; AJvYcCVl8frp2bI6lrla6d1UTqeC0qgvssu/sKwJE4M9kCBLdidnwvVHb8jIVA96fZY+A+D7ptgx1OHeaSqENdbr7T7oR3BYkMqPsifbCiCp7dcREZVRrk2RNNmp/1lpzadAP3X6ivt5w/Z9
X-Gm-Message-State: AOJu0Yw4EPXp+5hyEy8+nuHgWRnkj/vPzaH4i3sQWGUOwR0q4U5XwSqs
	nxWaZlCLxcvWSqlhUsZdZe3LWKpr8Wl1mbbJmqe0936UzirzbEg=
X-Google-Smtp-Source: AGHT+IEkTY8f9AOaCiHWnETbKjMyatFQQde/0YHaQ792Qit++4rDQ5/AFcUhEi6j5LZQaTlHzyK/Mg==
X-Received: by 2002:a17:906:e28c:b0:a72:42f6:ff0f with SMTP id a640c23a62f3a-a7245c70af8mr79308166b.77.1719133280012;
        Sun, 23 Jun 2024 02:01:20 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	inux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add sound-dai-cells for RK3368
Date: Sun, 23 Jun 2024 11:01:15 +0200
Message-ID: <20240623090116.670607-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing #sound-dai-cells for RK3368's I2S and S/PDIF controllers.

Fixes: f7d89dfe1e31 ("arm64: dts: rockchip: add i2s nodes support for RK3368 SoCs")
Fixes: 0328d68ea76d ("arm64: dts: rockchip: add rk3368 spdif node")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 734f87db4d11..73618df7a889 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -793,6 +793,7 @@ spdif: spdif@ff880000 {
 		dma-names = "tx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spdif_tx>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -804,6 +805,7 @@ i2s_2ch: i2s-2ch@ff890000 {
 		clocks = <&cru SCLK_I2S_2CH>, <&cru HCLK_I2S_2CH>;
 		dmas = <&dmac_bus 6>, <&dmac_bus 7>;
 		dma-names = "tx", "rx";
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -817,6 +819,7 @@ i2s_8ch: i2s-8ch@ff898000 {
 		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s_8ch_bus>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.45.2


