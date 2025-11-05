Return-Path: <devicetree+bounces-235394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EF6C37CFF
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3200518C7BF5
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 21:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1138B2DA77E;
	Wed,  5 Nov 2025 20:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EljlnVn5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885B12D9EDF
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376388; cv=none; b=T8lYd/t+e44WjeTHLPoILnrrnq6L8iHJsYY1sVBrPPMGzeJMSIcEoIm+/QsjfesZVSbrIy0cQZKsrloLXDNJuy18vd/M73+NminHXtdqT3kkezDVlLJ8nI40CgsDBSSmAYyEyzJTvrE/4iSJZUkhWjTnUGp7MoLgDzlnFlP1R/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376388; c=relaxed/simple;
	bh=wGYYg0GPI34bL9wio4b4WWKg9AIDZ1Te233trdbXWRA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UAzuwx2D1/cF8qLp387iT0F0KGwzxyfjh4CGBL6hi9Z6Bq/Z/jiOhkBScYJc5VKoEK+xypv3soEbt6KVE8RaUjErsU2W/gOb8nuTcc9ooCEOybV8yQIG72rSU+WXQuHoFbKnoXXod93uCdIcWJu3UDCGONQUxn8kfAfK5A+4a38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EljlnVn5; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-656c07e3241so127467eaf.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376385; x=1762981185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRtK+lS9rHtBCW3jizyzFl27YU+3fK4QgSpnBETL5cU=;
        b=EljlnVn5NBcIugZ/UBywkLezB4oeucB1y5N6aXfsbGW3EHVrDu7LlesYUBI2RIs+9z
         TIG75ROrJeguAktkFO3D3m94zHjHFHNuNrJqG96r5TKiQ4qhD0m1oCurA8tfG2cr2j3o
         xwfyDDBSLMOyuUvKHlQCPMCQfURrAVhzynoSk3+PGkfqggM/3QsmttthnSxzeDlwMya9
         N6+2kg4h9M0kj16XKXBT8NTsf3OA3XPz6xbxPlGHfMVt3PBPLAOF6H+p4xAWSQoe3XMf
         vVb5wg1lwR/fp6nRc2zWyIVARKk1hFUrzJGRm9Uhi+0ENiZMDe7ot4c5qRP6bCAw6h/d
         gCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376385; x=1762981185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cRtK+lS9rHtBCW3jizyzFl27YU+3fK4QgSpnBETL5cU=;
        b=qNOZH9Cyvo6M1fxHhQ5UlW1JvDq/p+Vk6AKgxlCqFryIj+GAsYwpIqfYjaWrJ5A336
         dhoBTLN7TiB1S0Rwdgv7/NU3zq1Y746396Q5CHVdIEiVvWOTfortvtS6zY3PWj+gfoMQ
         PAX/ncfKwKA2rDizs8h3DTyEwaaPDjqjVRK3Gd7JdUu2wUnl5OQ1od9NQEJ0xvCeaquF
         mAyDk1sxTcqKz4hwjHoku3ube9vkqOb7ZplRxRa2MK1hWIjEE5y04X+2gvSA1fDT4SmR
         ooUrKoXNw0+GyMqyyuDjoDV/+ehijX7IP8vpoNOCtQ+nx/JnFCcnZmNLX1lVvhST+8F1
         deoQ==
X-Gm-Message-State: AOJu0Yw3SoGPFtb3csNYeh8MOgG2Wx3f5V/XFz0FwKM72Z4wVdzykl0M
	JBCq5ATo7KLoP8bqI33r/WpcPDH9T4ju3X1/vZuEiJO71mphv5CTRK5OyUwg1A==
X-Gm-Gg: ASbGncum5oY+pZ97gZ/VJTXse0WUsA9bUdKlyfbKsCcMAwUxEcvrXO4Igx788JYrrl1
	KDc7hVqandZPGZaLp9DMCcTdFOj4t6o/mCgqbGJVrTBxHp2VE97r77VG63sCF5VVMV/MPM/3g/m
	Qlf/FlAYe9lDRwooEEQCnDNLVj9fIxThZuNpu033Bugwp5CChkXz13x6Ws5GUjnkVe5qKC7QavA
	Vb7CiGWLTHg9sxsgrcoM3mEWAvzh/77JjE0PhyqdN0UWIZY7S6nfSCQ+rh099oaehw1X147Idi5
	dQrfwjPeZ1OnTwNvsLUALYPKNGMwx9rof08o/VTW9kcyWt68V9KcraENakyHlCDs3Xhj6rirz+U
	7JGQzrb6yjzerufgxCA5HOHrP9MHKWgHWXxkHysCnS8ftLzCUkwT2NetyJToZM1QIt9WXkLUQ5g
	==
X-Google-Smtp-Source: AGHT+IGR02gANsIG5Dp6MaMRMO3Hbvadnn1pJpAOGH2hNz1l0v9uosfD4QX9u8Nn9h260fG5+C6XIw==
X-Received: by 2002:a05:6820:621:b0:651:c86b:528e with SMTP id 006d021491bc7-656bb5a4bd2mr2143335eaf.1.1762376385625;
        Wed, 05 Nov 2025 12:59:45 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] arm64: dts: rockchip: enable NPU on Indiedroid Nova
Date: Wed,  5 Nov 2025 14:57:06 -0600
Message-ID: <20251105205708.732125-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the NPU on the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index f40782b6c7db..62c8c8f68713 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -471,6 +471,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -522,6 +526,36 @@ wifi_host_wake_irq: wifi-host-wake-irq {
 	};
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
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.43.0


