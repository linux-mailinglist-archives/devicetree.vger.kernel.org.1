Return-Path: <devicetree+bounces-134601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E8E9FE03B
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4822D3A1A55
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 18:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61252158A09;
	Sun, 29 Dec 2024 18:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F8QN9kuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FC5210FB
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 18:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497921; cv=none; b=niTc5kcXglhJdOr1au0fLjvIgC1GKfFeU1/AVaF7yO4RuWqeUy6U4TS0Ptdp5PizIEFQgdspZb4vmguUL0n+Wtb4+NVs1tf5ahUrgptMvZZq49cBLSFB5V8MIkOshjKkBE+6+u/OwfMvGiLLWrCtDsouVTZMidQgPKDvS7+Zaoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497921; c=relaxed/simple;
	bh=yemAYE/O/0i8bawf74tTjL4IepEYb9tFhMFby2rOkaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tATk1gXua3N5Pk1XwUXgq2uqXY953grxWNTIfUXuJG1YFKWn4WfEb5DpWacYPvIM/zYu1bqypv3vm1ZMuLGj0EMsv2WIJUIKMO+ARjJzrULVgB3EH3ZDx+h1lJhQi2haG78vpMht2SDJ3dZmTLmTTbKsrP8jWCgypEMFESz9jrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F8QN9kuD; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3eba5848ee4so1929548b6e.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497919; x=1736102719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=F8QN9kuD729q7IYh8a2AbAP+7o+GN1yw1VpTuOZstzkdyN/MIRzYU/xMbd1HzpSzZA
         i7gew853C0c6pZPvFohgNqVJiUbSFi+lKMI7memdlpLDZvPFqyajIk1pgxjRk46CzAWY
         6dCn8AHTKRaNG4eUMUKj/ODnfwXedC3o0oK8oOkE8gLNHAg9A+cKSIN0D/vD44IXzUpR
         X34M/US9vomRCr/g/ltnenCAP8IsMj9UuPnQYT2hgOwvR1IRoFA6jnJSyKDy0JrfwGaw
         ChGaiSxDb8YGBDuHBKMOThCKSxOcCJ9reCg1jOjmMG8Mcf0FZuOLvTg27Th8MmHc7s0i
         ElhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497919; x=1736102719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=ao/EO43mnvu2vozNINz0hqqz1n4faD3UoaGMGQuaVJQrWfnmbtbrJXl2N5hhMPTTq2
         dmDXLswN7DY23/z6IF6iwmx3BzHlBTRicyDPOOrj45bfjBZ/N7oSuPcA5ieRpZdkeSTq
         rukoaTccCwp9P4cCv/SKGLhTes/JXRHYSbRBrEr2ctL9+YIlzrfvDYVCUYD1mgY59S3s
         onPQvGuyzf0vBsiAHNdYMJnMZ56AxvbAVtpD+EqalVmXDDM34Oe/Vhg8XYBYKbcS4iW+
         yK0sihw4pqknTAWkT/Kv7LCtgAApe+/MwiXYC79iSCauup4peUJraUNw/RQo4VlGqxoN
         BWGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUI9wq6Ffvt3cSKiCFL5tnyfCNsc17kWiuM4pkjzaqMy2F7mG+GoggDqy4lU5syH3033UKksZOvn6fT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx09JAci5VvzbdDBMXDPlIgRJVhAK27+56ruFPqiOEMv8uoGE/I
	bYexJ3S9MJaw9VUBDegRMC9dSiheMmNXpA1uwTSOH5HHTbtwKSKa
X-Gm-Gg: ASbGncup7/nWribxL9kSya+J6mkMHpH6vXJqRBraPdXRBtDL6H1M2HsgJU231HIMiAw
	0ccLTX3eXTXP457QjUHGGtLXZdTmC/RNdxdq4OQKcGH7FVK5+qxMAjv+hFvrA346qlzn5u6jJH7
	lcLqMw3mHH3yCr9xPtAScqw/BTDoqy0YpESE9eiLfKzhbJocgJmwHh0EQ135+OHWb7U0PsyiQZ6
	BSd1gcwIc7ymrZQV5hoi4ZYsIx0Z8+1um8elFr1CCY0YX14I8mO36rAIZ4gI1CJ
X-Google-Smtp-Source: AGHT+IG5Dz6PKTeZW52qvpIKHumr7L106ymsa0PWmwxEz12ib8r4giLp1CEwxs+6Mx00o60XZ9fD4Q==
X-Received: by 2002:a05:6808:1903:b0:3eb:62d4:7098 with SMTP id 5614622812f47-3ed890b15f0mr18259001b6e.37.1735497919043;
        Sun, 29 Dec 2024 10:45:19 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:45:17 -0800 (PST)
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
Subject: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Date: Sun, 29 Dec 2024 12:41:34 -0600
Message-ID: <20241229184256.1870-11-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241229184256.1870-2-honyuenkwun@gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
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


