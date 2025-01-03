Return-Path: <devicetree+bounces-135218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8F7A00216
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 01:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CED0B188391C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 00:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2846654BD4;
	Fri,  3 Jan 2025 00:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nQL4Gsb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB56481B7
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 00:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735864916; cv=none; b=nvaRSk1WAXSHxqD0PYEV0tFAiHW+yc/a8yekqCytJGSC98AixKQkCiBIRHbxsvIAONcFRrBA4pDKu9w8k54pfH2G3UgjzBF7THZuIw6xHD+bDn1jv/NVx2Q8vIOWSYUcTMomjOLTv/O/M0MK6HZhvf5AK5HT80EYfuYK1YFNbgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735864916; c=relaxed/simple;
	bh=yemAYE/O/0i8bawf74tTjL4IepEYb9tFhMFby2rOkaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KG5PN8bVEastokuM3R5AJH6vTuMS6m/KGZ2+14dDdJmjkOteIJWS5As4+/LL3cztbCIwvM+aRS7jdWqcC9t6xaGwlxXF5D/H03ytBEXQjdVyDwVQLTx1ogJgcZnDJA/tSG5kFQYDdpp9KxcaNV5Qp8yemWapfFIo6aY+7r2pSxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nQL4Gsb8; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3eb972dd8e5so5630715b6e.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 16:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735864913; x=1736469713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=nQL4Gsb8fKpdhbrX72y5zryhpegqKMWNUvVLIy63MvRlJL1TkDi+Eyk32q0qsE+t1A
         rDq13gfeiBItiDoDL2lZwIwCfZBm6w6RqM/Gc7Bxuf90wdnD1XOoP9ob/MxE+2Nns5YA
         NkK4BBr4nXBt6ZeUMAnmqwI7esR1DM2FU/4VBYLmfziYe+nEsL7r97QeQcsgMBA6jvlE
         9c3/EckjlHuSvimKr8vAMrWJgHXmZFKcH/9Gvjeixcp/uj0NShMCnw08ZVkpVYjClyXG
         MWiIddbTmNpBQKrm9L6/M6AZftNsNiRESioxk3MkpW52T0xt3MOgogqnXIti6Q4pe0kN
         TDwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735864913; x=1736469713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=iaSqSX1uCIR4Qwjh/eaGz6pDmvfbKDm5SlBG0VV+Ailq8PoYeAs00go2+vP4m1B4L5
         mjsLqG382N8bc9AE6jlQsU7WkJvRw1fFxLV8xcaAUPwakVlXVszmh4eHY26UNmvN/2R/
         CM+EQhH+raXI8cueBXIQuVvVYYtnI/m7GaUXfTImD7/sOcpdK7KoK883wa6mBYxtJBMr
         jzHpGdw/8hbUEXMf9cB6OYTMi+gY2N8HNCyF2CrdnnqA3oujce3vqhAvr2Yu7MECZLqt
         YQioVvVqJzmwOQXNMGp+6DpWkBM/Pg2IM3KHN3LwDEyQsGplayBB/buISVgW3R1ejoeF
         qfuw==
X-Forwarded-Encrypted: i=1; AJvYcCXL5ZKvOxXHj1LZ3SO8CC8RRTLbrQfsdsMmxegVkt20fuFZQ6LwYCgVLoTBLoRiKED5zBOMej2Ra1sL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe9vWhlG4hDpQO83XnHpu+zP8shH5FJDXV+RunBa9p3d/CK9Fn
	456xjOWFWkl0i1yihG/PFgaIQfKg088oRMawi5yqwUB8PujWsdat
X-Gm-Gg: ASbGncvbVlMi8L9SrfjVUkBf+Pf73A68v+CkCY9BckcymzTafylQGZjxMS4uNiT+Uzj
	C83ND2wvADEpf8UM0UUM19xltUv7AJtgasSL3MO/mPoSLp6gpF7wtwa/9+Awg4F4AkoI1BMY68/
	z/P3lPHUFXd7qaaJd6dhN1VMXnpOI3RzG9HAt3UZBktlGv9F56oAtUaL7ymt2GwRItbAoGR9M9D
	xMaz3OYJH9iN7zIBTa3f96Ba/RCiSzLjQ1JmhTkHOL/+3WpfFnxmhb0nGxBSAP4CQ==
X-Google-Smtp-Source: AGHT+IEoHQWwiLapEKVgytJxSQmhBEks8va984wiDZUIavYE5wi+XlT5dD2vv0dEfEgVlwxD3tjWSw==
X-Received: by 2002:a05:6808:2e8d:b0:3ec:d34f:4c73 with SMTP id 5614622812f47-3ed890d85b9mr32263494b6e.27.1735864913718;
        Thu, 02 Jan 2025 16:41:53 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:19f2:4f54:d97c:af6e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ece2549542sm8087778b6e.32.2025.01.02.16.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 16:41:52 -0800 (PST)
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
Subject: [PATCH v5 4/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Date: Thu,  2 Jan 2025 18:41:13 -0600
Message-ID: <20250103004114.1902-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250103004114.1902-1-honyuenkwun@gmail.com>
References: <20250103004114.1902-1-honyuenkwun@gmail.com>
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


