Return-Path: <devicetree+bounces-240461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FCEC71683
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 00:00:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 499934E42C2
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666EA30DD21;
	Wed, 19 Nov 2025 22:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dwjgdfZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71BE2DECA3
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 22:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763593081; cv=none; b=LjQ8y13vJUXrdSVDebhVCZm4axaECKVPTCAK7SX1FSYC0G1Dxft+KOU1xHFPZJFznKaklJO209htKhsoDjO+imhp2qOB+aNyKZtWH4+nm+I5i1HFyv0DicPDmw2yCcwloJgsnkWzQchbMNWDPZllJ5FAgi8CbP9mZKteEMyqJj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763593081; c=relaxed/simple;
	bh=tFzpyLvSLkuLaUTHc/3hJxzsOg1YTG0YF+znMIbNzGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cFAslFW9GNF2n0yLP/UJwGId+9l9PYUCrRPJud9w0Z6VZsGwFEujj9KAJ8VZ1SUimYRf6l4dwSAMv5TWGbm1JhuoCfO4egYBakKfa0H4ERAZC50juQ9CMd86z1od30CQpGRosImhW5zvVhR27TOEOrJ+dBIE7wMG6Bf6AqrYxvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dwjgdfZZ; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7c7503c73b4so174646a34.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593078; x=1764197878; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=dwjgdfZZyf/cFvXNCv12cMdFrr5kwoOoPkufsgWcWeC8lu7h8qtHy2jIIZf1U7IUJb
         f9S77TJkwMXtlj39crYd9hSJv+StSULfAqDMHml/BGhyCMVylN1cGBHRs9C5hmAACnep
         s8jG0v2gHoISZ2DTh8lAYIMgW3vLW0M66cgB9WpsSKyH5Xg1k/OMwWksZa0T1E+cXc4U
         daVAtw5LRqUyvIXgM2kRZu0JOvvBZpBOXXBRt31yiajPVesOj/kmQ7jvzFfOTmD0vaie
         2yJYgKxhNOyNqE6O1M/rnKptSeepIoEWAMyWmXdMWGavSZk/1CLSnM61lgX8HIJ4P3M6
         13BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593078; x=1764197878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=DQlD+YoBrwk0UfojSd5lgVtDPIzgAmOwWP6HGu+WoqcPnv2d3RUangGFIF1HmcWn1L
         un2kw8pDSj5UtIaJ60E3tx20DQmGFUWZB2DbQgJ03EB0RxQHusP6fQMk1TjVkx9gpkS4
         R7EVUVbvMARzl4SwKmZeBIR7qgbycBpyRgFQfXjsPDRB1SNQj5VbXNJue4oopifkV82U
         7LWhpQBIXjeY6NBXhguS62y6ijxukHZz7YWopym0BiGD9wMtOxQi+7i4OVsjVrpr6n1X
         MJP8Fi6CFKH7tzD6nYf4+50V95H41mxCzyv16oZz2K6RRVVI1laz6dTh+gCG80VFpBoL
         pdtA==
X-Forwarded-Encrypted: i=1; AJvYcCUampP3SkGu+WOIgKlxHp3XOql62D6Cd+lMwv5Ll+oJEC9VMthh8TOxfqbDc61jhV3fIPWD08e18RJs@vger.kernel.org
X-Gm-Message-State: AOJu0YzmlbFh4jv70JdzqX0Ni+6uZXmVMfrFE5rezO5ByYaqIQZjvjY1
	ObQKNXuxMMxldxkCMj0BMDJWrLUgHqPUVw2hbC5Cg6UtxjCKiohQANyS/TU+lw==
X-Gm-Gg: ASbGncsMUN0/IuL8CmUB2Z1CeYnsRcLhMCq9PuiRaz+bPuX9gAAvfTsi8+GxZ2UHzav
	XGaG9jyNQxYa5QW9WXwAH3qspC5aVBdj0YN7jbhU2+xZwnlgj/Ds1Nmzc8VJGXXnwUk02Qxoz3L
	CCvKSEqco8wEgD0aBN8FwSpAz8n+AnhvzNfcBJQn4ETnW6YlrNVetm7GJuKAsSM7S3cOe2ykQqw
	1IRY38Ho3x0d6s0yvOyaUCeEdPmQpDI9Wm9jvpP2L7D7fzMb8jTlOrHc86nRInBwgdLpsmTPKj9
	dkIfSb2t/pmr1Exyh5JpFyOI/kCW+SuqJqQwNox0sC9DrHn4STFOERpctdRK6nZ0AHOBFnozAgB
	shW//7bRuqPZMDZyUpbflmBzOiHS3pmX0xydlEa3SC16vIXMIq/uMnd7jIwvDNcrx/1xooSibVy
	NbS5XvoHDVL/jda9Y8zIA=
X-Google-Smtp-Source: AGHT+IEtt8X7i3eTJjeg5rMzfEF6Ri0+tEQiTgyoMB1/D5iNSgiCmp83clMkoOMZdVS/lRECHQLviA==
X-Received: by 2002:a05:6808:152a:b0:43f:5b3e:11f4 with SMTP id 5614622812f47-450ff34a912mr511966b6e.43.1763593077894;
        Wed, 19 Nov 2025 14:57:57 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:57 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	cristian.ciocaltea@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
Date: Wed, 19 Nov 2025 16:55:26 -0600
Message-ID: <20251119225526.70588-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
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
no-hpd to poll for connected devices.

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


