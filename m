Return-Path: <devicetree+bounces-203520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D01FB21B3B
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA6F4620C27
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 03:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993F62E2856;
	Tue, 12 Aug 2025 02:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AXOny/N2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEBB2DECD4
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754967579; cv=none; b=L1781yfICfJiOsfWnMyzggb6FmNOtucTslHPhRfZrpm+sDXIqTepyWBGRa+nNb0wlKrzqBHWPkPzKPjhDzqDh+qc4T2iFonzSjYe4O/R994E8uVRwfePPphR5UIz5cwfHyeoP4Hu99vgb39oAsQINxkFnx7R71Mq4oyw6t9sjOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754967579; c=relaxed/simple;
	bh=muWAQCKvFlanPdOUm5xOaNTEGFUjOjZR+6uqmKrFBdc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rv/SPs2N4laPEDVGK1WOnproKrnIf56zG0TqSeK6K9QEdaAK58tEwyUORSrIdWP6gzBUvnj0ZOXv2I9gz/x4ZiJU/vR9h9qzKBj9piNAPr63ap/8PdHdk2EgawBk1KLJV93TO2KQPLnAPUWG2a80KirWjperz3mgD1BA/fuWVV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AXOny/N2; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-30b6b801f4eso2701690fac.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 19:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754967577; x=1755572377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WjOlLOxlY3+Npk8OAHvLo4jSrWHUgC4FwWU8lR7tJvM=;
        b=AXOny/N2XAP2LZAN5gehQh/1hs/JuIqK9La8OUrBxgPtI2iiWuNEcZQPocc79NHiSo
         0RQo6Jmv82jGvPepEIblzja2KiuEYNlahz/YHuxKj4OU2e3+ThDwm2su4HL9hY1uJ22l
         CYMTs8Fa3w095lqwtsxKux6zuAqpLu/JswZJT7yIusRU9rjg/nnKb0T4lG7M2i0gAEpO
         NC5Y62rP4oYx5rKXUVpQNqbMGX9FY7Ol5Vng9PizGusWcndihBUtOQn1c9NdjYQ4Vqtv
         MgzxBiE5u+p8SGRqmo00JHN987BZ9MQxUN9Z+tFmyyzf3+kL7l+eAYRE3xBJb/7bZeKU
         mb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754967577; x=1755572377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WjOlLOxlY3+Npk8OAHvLo4jSrWHUgC4FwWU8lR7tJvM=;
        b=HSzSZNhogMx2hZX0SCz6e6l1j4SaUlp0nfgPcy2plZ6LZDvV6QX5hV3I9+kZIH10gZ
         iEx8ScGTzkgfe9mclJ6/jcO7pfvYK0Y/Sd8PmXlCxrkWC6b8FOaqIFj+fc5jAU1H/m+x
         avCVari+xPmLf0X12AXDUb+UJB4/+qmPJdzKQIiqECYD0AKHku7bAioZ9q0RsRGITJfO
         JUCuvi1sfP1hV24zcpvyR+MxXY+g7YMUfZSrjaNSif8idkM/ueWcfJibPTxs/eUgYhiC
         2+xizZ23KtyQARADLMHxveYI0g4oMzdjvv/vkRUKwbppWoIu7OB6pKG+bkLd/elEQcFZ
         60oA==
X-Forwarded-Encrypted: i=1; AJvYcCVuuVox2JYg9jsgO8vylYHCmBsKrB8sypiTUDGczgrbi5JnOTg5lqzN58P70z0tKcmThV91wI2DoJND@vger.kernel.org
X-Gm-Message-State: AOJu0YydZHUoihKExwbrt+fjfxQh9LDDipQyc+v5V4o8quc1WDbI4gfA
	EAU8bD62s8ahaz1Xa+2vFSg1R6W0OZ92RL7c8E/cBnNiA28mgs57wr+d
X-Gm-Gg: ASbGncsNM9k01yscFeYzT6GN6MB2mP48zYLRptsTHkXuELlZiq5neZPhh66FcbQBHJv
	yPCwv+09dz194r08RYs89WvFwMU4RB1aM5aV4NoaxsuKkWzbE/rqALnDrBKjfXIjUlrgmplv4Qi
	gGczOuCpr8X1TqIiyL1EdpkMSK6eYFPGrvefgi6cDnquO4WxvNcs5zQ0unFUInHmUq7sZpnOk0O
	c4noY9t7qwd3gf7Y2d5v8IMjkSu+tSrGegZV+uJL+Lz+rTWVg91K/5uWHpHW8kDAjfn5NOM/CMK
	4ru9xea38aP+NReTLdMruY2B66NvVOYN/J9NPFGK7LhMAqx0IpqM2S6lW2OUd4r4fAlLhtxOoHb
	8ys4DBVwmf0i+Kdsapp8YhiZH133WgA==
X-Google-Smtp-Source: AGHT+IEtpPZkA7KIS2X1ISDAp5IYizfkL4VVy+9hQb7FaniU1X+Gs7C747xRFcwg7CI7onQp8EyfPQ==
X-Received: by 2002:a05:6870:d111:b0:306:e3a8:a97b with SMTP id 586e51a60fabf-30c212bf761mr9418599fac.21.1754967576882;
        Mon, 11 Aug 2025 19:59:36 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:36c5:be5:e9bb:c0f0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30c3a9d052asm2726690fac.14.2025.08.11.19.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 19:59:36 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: enable NPU on OPI5/5B
Date: Mon, 11 Aug 2025 21:57:55 -0500
Message-ID: <20250812025755.2078-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250812025755.2078-1-honyuenkwun@gmail.com>
References: <20250812025755.2078-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NPU on the Orange Pi 5/5B uses the same regulator for both the
sram-supply and the npu's supply. Enable all the NPU bits. Also add
the regulator as a domain-supply to the pd_npu power domain.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index 4fedc50cce8c..65a06ce8c131 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -377,6 +377,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
@@ -407,6 +411,36 @@ &pwm0 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
-- 
2.50.1


