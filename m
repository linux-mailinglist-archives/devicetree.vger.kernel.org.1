Return-Path: <devicetree+bounces-135495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F01A011B7
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 03:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 103103A45F7
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 02:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF0861FDF;
	Sat,  4 Jan 2025 02:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K7HXc0QE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184E13A1B6
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 02:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735956389; cv=none; b=YuKBw+L3dNXq+fZ/tEd2D0CtTneMzcW3i1ZisBIhBLaAzEx3trrOzzl+Gt6Gb5VKN9fcMXOGnZO36Yr5RQkUjaFKyMXPD7+qKMdBf7oBIsyUFrwZdgW3/TEMFYjX7FrQzPAnpVCNZoRZV9GCapYyV4op60cgs2E+Tr+TpHUmHoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735956389; c=relaxed/simple;
	bh=yemAYE/O/0i8bawf74tTjL4IepEYb9tFhMFby2rOkaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vqp2vWRZqFZUH4fOE6SEvp7L4ZGD2ko6Q4ezJcEbpzQm/4sjQdGT2rrVvf91fP0jRJHcfot+NW5foO0cZeGj/rFeKpCOJZN0zvXEEyLCRzGLcjIi3yYEJcVPuyM6iGadWhgGgj43yDZUyUKKoeofy/WB444+2TiOM92wh0dwKwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K7HXc0QE; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e2766994bso6568073a34.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 18:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735956385; x=1736561185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=K7HXc0QE23VPC3plAVKBPDYBhQt4ZhSPZzk1jDx9UIZBAVu4qaiW09SB5/2VIHVPxH
         b1VYsvIVfi2lbKfMFp+NHU/XqxFCIfbSfDenSew+gUwZK4gz43dbt9oc6+I8yIzmMOCb
         ZuJopUt6WuGlYofFkLL6uGPhwqkd6rPc+ld1f227i8pCdA6wvO1/sc9IlLlZKsrH2FIM
         K6c3alfnk8/PODWu5IgA2ri9sem4V512+kau20hoVTBw4Q3lWJliYf0ZG6svvHUgci16
         jKDCsI+otsyuAE3I6vFd/S12S+UsuFVMP9bUyWvuGwCLkBcCRi1ZuzHRMctWYy3yBHBB
         VfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735956385; x=1736561185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=dZZGuf0N8FZMYKr9LiZdGwmrZgZSEelT/wZE+S6QwVT90Kw0jzi8MjSM+PYXikFjW5
         1+A35GXE1c9SQEc1ui2mLG0dbY/z5P1dsddJuFieBuqHHwRnXDwR9+bZBMZMi2n2tjHz
         CQ4KIpN/HWmVdq+FWYbPiD2Of2OR89tOBqyc25l/O5BP5fHv2S3EY0fRQKefx70OcuKd
         8Da5ciBGAUg/wC/9x91p4CwxeAQKLRlmVMVo84LyDRh1xGxh4G/d1GRJmqWeOzgGkMOt
         MKliT5R5y2y8J38bq7xXFaLM8gOtE8HuE5ok8zecOMhLsqVR6wGMgjA+hL5EVSVwZQYe
         a/Rg==
X-Forwarded-Encrypted: i=1; AJvYcCUe9qKeIOYyhn/FkWI/iTeQfXrOPNKQ2Rv1QAjS0WFzbqDLysB953zCJXF7FCYpisKEI5dUMIF3Oq8V@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0oeYHPNXL79abTKAtIozqIvOfgGiFIgnv3GVMOQW53K2CKkra
	qQwnQXbBE/QefSUeh54kThIQNk5/5GElX//eT/R0nUVP6DdDEJxC
X-Gm-Gg: ASbGncu4/EBq/qxk5t14yoqKNWYscikfu7IgLPs3jB/N9OzFl7n5t5dzYEKcPLF0rY1
	vHGV6mW0nhppzWj+xiFFSV9jtprSi3YmbuXowGYKly/rbturN2It4bc3JHFZz2T6DQNKbVaqxO5
	pNzszBbJooWaOrrHi5B73QcFo3UmeDQwFJsIRsla9KE1lV/dHw+dQrgk4q0wHcj4EAdSn8KpgdA
	OlscUFkY98z9AKhth12/hpGPqfAk78STRP2wjwcMjh1D1SCysIM77if/rOk9D+4OA==
X-Google-Smtp-Source: AGHT+IFfJu0KWbafVRQ9nCVj07LtoEYzd1Pxn64GMymrVWa+4v/clLuGTdqdSOuoKn2k0AtwnI3T9Q==
X-Received: by 2002:a05:6830:700c:b0:71e:5a:f4f4 with SMTP id 46e09a7af769-720ff8ee854mr35955653a34.25.1735956385152;
        Fri, 03 Jan 2025 18:06:25 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:7057:8598:1940:24f4])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc998ef6asm8406568a34.50.2025.01.03.18.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 18:06:24 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v6 4/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Date: Fri,  3 Jan 2025 20:05:40 -0600
Message-ID: <20250104020544.6777-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104020544.6777-1-honyuenkwun@gmail.com>
References: <20250104020544.6777-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the second HDMI output port on the Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index ce44549babf4..ecfbed2d0059 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -21,6 +21,17 @@ hdmi0_con_in: endpoint {
 			};
 		};
 	};
+
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
 };
 
 &hdmi0 {
@@ -39,10 +50,33 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx1_cec &hdmim0_tx1_hpd
+			     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 &pinctrl {
 
 	usb {
@@ -58,3 +92,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
-- 
2.47.1


