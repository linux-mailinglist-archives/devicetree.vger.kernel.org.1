Return-Path: <devicetree+bounces-235803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F19C3D086
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 373133B0F5F
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F3B25A633;
	Thu,  6 Nov 2025 18:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kyx+aOSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639F34F484
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762452703; cv=none; b=eOtUidHQHfzGAxwDYJJcMkuLCNTZZZ23vqkOhIcESK8C2UsCBI4kGqrV/JpCYFS9EMtDPI+wmQIitnk4ScZV/uttCZywgEBwtCI/QBpZfDSLBghpm6aAu1XeLCVDSqGdBpsqWXGZpCgE5C5ZwEmN9e5r0W5IW+4CGClskhTflOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762452703; c=relaxed/simple;
	bh=r/Rq66ZATtmFHfLPR/3jwlXAwBtrp1gxKoKO9yGNNmo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cFk6XY3koih+fJG7Qmdfx860FRWBdFxf3X/NCC3JOA7qRTQ7zre3bBI7PT94zq86y1M6l+5j0MIRyX7rhDmVR9sfW12lvAtzUUlpHMwaCDoLC2c5ouwX5onZB/mKrjgAW/eZt9WcuAbtQ91ub8jUlTFYymAW58ijHcKarpCGbHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kyx+aOSG; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-656b1c08cd2so234246eaf.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452701; x=1763057501; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nTvSrRIoFUcQoZC4cTRmqWQzhHQETi5HQX0+94VQOzE=;
        b=Kyx+aOSGG0J/V7GRrckBzX0o4hCQhNXpzla/4K+cuuBTSJvZ9p6rTyq1EyLchnuz+9
         0CR5LpAGgSg6dGZ0bcR1xy9DVOm1Hi//0qd8l4nwqJ3U+sE4RJ/AiX1eozDm8dnbwzRN
         3ScverPq/pLZ4PWlxVe6CV0iRFhvva+IgYoPrjuGYKf5oEpFRktSrp3UR5qP7FHbUtOX
         eYxqvVhUI3XecbS2dWHHmM0C5iTb9oPxbpSGNXthJJl1arPFjbS70Q2XLoc76dTLJ0x0
         PPJLqtKxlQc5i7aCiBs8sL8lWoFEUd4SezBp6yZE/qb5VP7r3AhHC7CnY0vR9Ba1KM/c
         mycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452701; x=1763057501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nTvSrRIoFUcQoZC4cTRmqWQzhHQETi5HQX0+94VQOzE=;
        b=jW+iFVIbK069W2oNHWFWv4ougHRhzDlthZL7QUU4jA0UjVL7MKHIwwlfxMoua8VGWZ
         jsT/nDQrwuu4KY5jQCEmHnZs/XujxDYv1w92VWxrVcRJvk/3TxJjPVLezQ+1ibkwo1i1
         rfwU1b1Tgfjfc7kzPy9rA1wKIxbSuLQogxxB0lxIxHvBxhYA8Jp3JTs9OxHn5PFq7qzY
         L057E+CR3zhKS/tH09T6+BkRUuUZcAB8T2/Iv23tXsTUvWehYwJXAEPrx3cvNaDcviC8
         sP3VF4p6EauOVwYRO6kAXEUj2hAbzdBGNvI8Z4XmFPvf1BS+WFqOOYTx1zNxZZBZx8O3
         nFmw==
X-Gm-Message-State: AOJu0Yx3fbMm+Wj2vEIrtpy+utRtLt09zm0dmQsXuE0X/unnwdQtcs6h
	New/0u+RVy0PC7rcnYNChkj2IJxs/aj224iCQOtvrZDK4EgiKCnPA3AA
X-Gm-Gg: ASbGncu0RO90HbDzdWK+jWSOFKfqM2AJwbdTkUenvlDKximp1/+iCV58RZWIoxvX0hz
	Ifhsj76+L0cxMxuvN2eFpMT4Z/1plmv8iEw6u/Y7VkZ85tnonHZdD2x8ZsQO2uNBpylgouFAWlL
	cMjZLhbkFZtZEZ76p8Y1HtQpUT8hHEN7rfOKYALG6pUc+q1IcGAeio82EsxbaxhJFVFdt2/MZNh
	/TF0s4gQnRngpcU+WUpmZ7WqTb3fI+xNGslxbnKDlP4siu3UIjwQVkkA2v/6yJXz6gX7bK/jX6k
	7oS0FgQW4I6omsRkAa9u96ZEnPK/bFA5YwhbuikKYc4prcKby707vdZb/QwGTbv9/xj3ajvjOn8
	R+FJ2tRbIahsN21q6TXlcmqiw0Ku2xN+e+KBh4ql/bCYN0Y07McoiQaiIyGaMEou6HSavdH22tU
	5ZkgiIc85HdhC7cjoM6bA=
X-Google-Smtp-Source: AGHT+IEfuV69CL6SVcZpapKEvHBs4toFoMM6EFJyVvrWMOaDwcUJHXd4zzkXKqfcYAZxWxaA5cWcnw==
X-Received: by 2002:a05:6871:2b22:b0:3e1:1de:9c0d with SMTP id 586e51a60fabf-3e41e49bdefmr305404fac.17.1762452700826;
        Thu, 06 Nov 2025 10:11:40 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:40 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	rfoss@kernel.org,
	neil.armstrong@linaro.org,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	andy.yan@rock-chips.com,
	heiko@sntech.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
Date: Thu,  6 Nov 2025 12:09:14 -0600
Message-ID: <20251106180914.768502-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251106180914.768502-1-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the HDMI port for the Gameforce Ace. The HDMI port
has no HPD pin present (the manufacturer's devicetree states the pin
is reused for an additional face button) so add the attribute of
no_hpd to poll for connected devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index f5894672fcbd..b98e1a3369dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -300,6 +300,20 @@ amp_headphone: headphone-amplifier {
 		sound-name-prefix = "Headphones Amplifier";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		ddc-en-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdmi0_en>;
+		pinctrl-names = "default";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -498,6 +512,34 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	no-hpd;
+	pinctrl-0 = <&hdmim0_tx0_cec>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -746,6 +788,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mipidcphy0 {
 	status = "okay";
 };
@@ -842,6 +888,13 @@ charger_int_h: charger-int-h {
 		};
 	};
 
+	hdmi {
+		hdmi0_en: hdmi0-en {
+			rockchip,pins =
+				<4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins =
@@ -1416,6 +1469,16 @@ &vop_mmu {
 	status = "okay";
 };
 
+&vp0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
+
 &vp3 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.43.0


