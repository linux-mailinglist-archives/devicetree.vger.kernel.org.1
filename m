Return-Path: <devicetree+bounces-243005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81228C9261C
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E25F3AEC42
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A6B432E738;
	Fri, 28 Nov 2025 15:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QPZ6r1N5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC3A32E73F
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342042; cv=none; b=bksiMDqJsaItEbMYDs0wDTTNVcyO4Ze5rqAend1ucao3mxQqGUXERddbA/d8Z6tnoI3rlS4CO+S2i6cLxSUtT5Mgd3ww/O+n81QCjb8dEIH30Z6qsowX28hTp3cSycM1HHY6ON5BM4tZcaWqK0SMvWzS2TthM6cVWKwdttcUIp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342042; c=relaxed/simple;
	bh=2n1mGD5+ic6ozAMvN9X1jkRUnYXHrZr0BK+Mo+Rbuok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O0wjXtGveZkvh3N4Xq5g7ucfV1L6ICGceWzvVHbBJ2BNTRqvr+4KZjeCjUVMtoHXs5qaCVR6CFHkPza0BZoLrtE0xRTa+3s8Fuh9NKvcYOFZI+kqhb4ufd9b3UqnqN85H1lIKABGocg4fSjzu04a8JInJXl4qV4Shnf66/y6gfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QPZ6r1N5; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47790b080e4so9146115e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764342039; x=1764946839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pLPLsMZ0Rfo+ZS4duCCd3bYfWswLZlnM4WVeFNQjOUI=;
        b=QPZ6r1N5zGP/oDwMU6Pe1l1N/0PDLWXF4MiS6yYb/9Zr/lMkzrclKfUaQsSXKWwgkC
         xiPvO9HVqMpyzqtcezWGEBL99vzMzPgebJsTD0Ps3FUyaERzmgP4jB6ViA/08k7lNVmF
         3hgjsZeUOej2pO4xE8Qnqy10MwynNVdj25UecKn9dq6QiV13tpKTSGdycjyk0Yp2hCuf
         GugZlGYQ8je/k/SUb+tjoU1pM929ZFATNczHfz9geX+oneFvoY3tOtlQ/4ntssdtsRV3
         0qWk48VLPjiMiwkN6RVf6MR8MLSfLqfP1N/LojJGBpWexB95IXuStkfQKyRA6WmkPUay
         yc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764342039; x=1764946839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pLPLsMZ0Rfo+ZS4duCCd3bYfWswLZlnM4WVeFNQjOUI=;
        b=wZt7dtDwQoigmr6NmU2YjAFS43rJLW52eLKwBYDD1fpVTVmQlFbYYx51Qwb/9mqnIQ
         QC4r6VP5MjGG3n8Vk1q8QwhzAIQuCGCr78GkJU3fheeOfGGanApHTUKH9HyrhQBPYfdU
         ljcjf0+STqq2dzfWWO1BiMdf9QhfNUNG973F5Or1MfuEywSCf/O9YTpCCHq+pmbX3TGh
         moTsgxO0KTnhJwlu5oIQn4wm+hdHHY94/d6OSJ6DAoYWf4atcWjVYuvXPVO8j7SYzMuM
         02tutVHauGvUwIvCFMxYKEiCqypu1iuQE+nPFX5dGHDHtY5zqAirjqciOhuS9YlxPnZt
         QMww==
X-Forwarded-Encrypted: i=1; AJvYcCXvbwtsCV4DxvHuu88q6QmqsvLdhIC1bk01i3Xu7LqW0UAVWGFi/N566KSpnFuT8BOepa6/hIq8KVGu@vger.kernel.org
X-Gm-Message-State: AOJu0YzP8GMYZkEagz3PcYWPRU0Ud2RabvFZFa7uL/xn9xKUnbckMLPH
	EhD8PehRUHc4XjEOOm1kwkwK8hQUwiCsQIpE6NL/boyhXG6qDvassu6N
X-Gm-Gg: ASbGnctk12bWBoBqlLnOuYFKD239a+VXFEapgK/qOIn8g8W3Q45v51eWXMXDsd0GkC1
	TDWzDF/KPEoArHUoOi2vWYotp6D5hrRj03oNwX+jTMcfhts3V8ong9ixrBK3kSArK1yJ2o5PunB
	IZQwDz787hBR7cZW3tfR6AmuCh+HLEChdXyKyngzTqxjJmYthGnP4rfUtreRHUe9aaQe1P3EvbH
	PBpi3xfT1cn4v5P1TWdIx5OD3CieCB3COdzbUZ5DBOhIQ5Vy8EZOecuZ7F8ITJDCQAaEBGaFq4S
	hUo62BM0WAc2MQAt68/8wIe+4B+3eDFMUqSYWEiOwzt+QqW0rTK8sG+Vf3HZYmSO1lWqXV5f1k8
	fpcI8GpEw8EfqTQ3Rid+xJkgs/Xy/R3sSSxvlrtBMmLxp5bsQN1UOVz1mXP+9iy59wSmldTkouy
	sxOUtNXQhsFBOWy/Lk3ptAmSlRRIs=
X-Google-Smtp-Source: AGHT+IFlgJFRf2JMoaAN9eltREbdMzQ6kGR0QfXm0xys/mdvmCQM8er4HNjXsyUwxtFVt0idR/zaNw==
X-Received: by 2002:a05:600c:a41:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-477c1116de7mr269345345e9.18.1764342038958;
        Fri, 28 Nov 2025 07:00:38 -0800 (PST)
Received: from vitor-nb (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47905303963sm93117975e9.7.2025.11.28.07.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 07:00:38 -0800 (PST)
From: Vitor Soares <ivitro@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	ivitro@gmail.com
Subject: [PATCH v1 1/2] arm64: dts: freescale: imx95-toradex-smarc: use edge trigger for ethphy1 interrupt
Date: Fri, 28 Nov 2025 15:00:27 +0000
Message-ID: <20251128150030.35931-2-ivitro@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251128150030.35931-1-ivitro@gmail.com>
References: <20251128150030.35931-1-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

Change the PHY interrupt trigger type from IRQ_TYPE_LEVEL_LOW to
IRQ_TYPE_EDGE_FALLING to match the PCA9745 GPIO expander hardware
capabilities and avoid emulated level detection.

Fixes: 90bbe88e0ea6 ("arm64: dts: freescale: add Toradex SMARC iMX95")
Signed-off-by: Vitor Soares <vitor.soares@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
index afbdadcb3686..2cbd5606cb19 100644
--- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
@@ -582,7 +582,7 @@ &netc_emdio {
 	ethphy1: ethernet-phy@1 {
 		reg = <1>;
 		interrupt-parent = <&som_gpio_expander_1>;
-		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 	};
-- 
2.51.0


