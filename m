Return-Path: <devicetree+bounces-259279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPrsHjFddmlZPwEAu9opvQ
	(envelope-from <devicetree+bounces-259279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:13:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F1681ACA
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:13:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DEB2B300424C
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 18:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787EB2EFD8C;
	Sun, 25 Jan 2026 18:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KPx5jyYj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D28248880
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 18:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769364781; cv=none; b=ixgzA9HzRvSLp5Tz8QWU/MwHooEvkQnWtqXbYv1Opnnhqsik3hS4+dqjv/2M+mr6d0H9TMlcTPBy+aspd+Nwz8Uh/3IhQnmqbjb6qdSxAClA98oGuL7Tu39xBJ4/zVaaJjKgNisBQi4fBzVQiQVygt2LCaTssVcTTCVy5a8TEhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769364781; c=relaxed/simple;
	bh=K/tlQ4PyynKHOkqZ6O8CCgQMCglnXCVZ3PU/lDcyZR0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fz8hnE7HAVDjjc+9ayWpXCV1QXLyoFO8pVXf0OkDvUxFcPjxiX37yXms+cOF0j6tuehl87PeX8VMXIBd4MY1MOMItrcrSXM25utXXp0Kgzev9GOb18+TlqsgZxg4pIJy3HL1YWbM66fNSLqvQwOM4LenNpguBdJfA0M9yKjaq0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KPx5jyYj; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso38096795e9.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 10:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769364778; x=1769969578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+KgUVWqzHwJ5YQYyVy8QnSy/op2C+C4KeJA5ZeUsIuI=;
        b=KPx5jyYjL/4cvNSH9U1H1qPEJZijQLSvAPMoIMxpxG5E1hJywIMRL0XlyJALNt+QAZ
         HvBvXe3QSZP3Pc/AubSXeSOIumY7zEdNEfjFpuPFOmw6/FyjhqPf7YKkV6d4p/zKq0ei
         Z9Cwt03hCIaiEdgcLHwmA2YSMoAQ5gcgj8oIBC/48Nd4DE501LBNJvez1kC4p8bpuKpC
         5jVh2a1bS74TKpF2mEeckg/7JQZNN8d1rgenMA3t3pCO0Vegws2FjgMFb9r9RKcsrMH1
         6KlYKNBg+2lLSJT44dTVJcA4+WyiAWLxOHIYnE8DR8NMwafsrghQOx7IvqxZ1wpdOqrG
         J1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769364778; x=1769969578;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KgUVWqzHwJ5YQYyVy8QnSy/op2C+C4KeJA5ZeUsIuI=;
        b=j0hy+fZ87DTfP/KhMb9S3h+cpWfdustn5dWPtVErTX2N5T0FDb7kyMZGkAmAgj78Z1
         rWNovgBtruDdE77C5T74xWEVe/cpUnK45G9Mg0dR3bulKaDycVnUWD0+RMK6dANeQyDm
         aWNXs56y7InedG6Etp1QN/nXu39KEsRR6i8YKlBebexcoeszNpfx+HFEQyqCtScvaTFv
         XC7cx4rwFFsFJ/eMEpStiq1SYV6vMCc4/XYYLO73dFmeNl2+YS0My9zue05ahMJuzMkz
         IpZyBSZWtwNJ3XQqtU8/VGZSHwm8l6SEOoQXSnlYCjE8O3tco69/OVo456us65O97pKW
         I6zQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpCqCp0UDs6zYbbfzaXDem8MHHwHzQ9h0tkrBC8vvB1ju1FVHAkgKbt2fFBhvcbrkOi18KEhpB7HK6@vger.kernel.org
X-Gm-Message-State: AOJu0YxcjFjDdDhaLPeN96VoNr9Vo+xy35AHhRv+2J9ZLndvC0vSfKL2
	OmsabmNaGSh3TLk3RDirwc9qABIN+yhtKlKvV8YWOpFiZFSIoFp8gEDP
X-Gm-Gg: AZuq6aJRa6ucalMHaeCbRj/kAU3oxiEXBmJCao9zthiIqz+59Th4znDFJXYhJMeTeQV
	n2vNFeDGm4INc2z/DyHOyMLhXjk3liGyqDQvGDD88RDDaGXwxM9sbdQfToc8nIea/uHfYSvCKdJ
	vzyh/p7Nxy50VJ+DdSVgOdqp/iaxjGv2gUxF6FYiq8VMcezVCnKywIfvLy5j/4132O9zLnQhEXV
	jYXpQFN7d7jiJkOQlRmrtAYhHMp+g5FkfS99fA/M/ZMe2MtA+WU74ZSKEhovFVpBPtm3qgVbpVS
	VDM75avxJpECNQoBIYMMBxhmkPf3l+IvesBrmdxIg4VioXs+9P6bUNNQvkfLizMKL0FPXkG61EH
	+Z2kOm3UQeIHcVrFgqgLVZdJBVhQMv3XJWHDj8NzZ7NdRCBdSlN0KEy0QFMu7l6xtsiOkpoqu8/
	+N47zB5gK5omGp6V8RgxCWwfVn8f4BdyCHdW+4Ww5adQ==
X-Received: by 2002:a05:600c:b96:b0:480:4d39:84b3 with SMTP id 5b1f17b1804b1-4805cd4090fmr36093185e9.6.1769364778155;
        Sun, 25 Jan 2026 10:12:58 -0800 (PST)
Received: from apple.sigmaris.info ([2a02:8010:6606:0:fd30:74ec:a5b0:107a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5b67sm215302305e9.10.2026.01.25.10.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 10:12:57 -0800 (PST)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
Date: Sun, 25 Jan 2026 18:10:14 +0000
Message-ID: <20260125181228.25145-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[manjaro.org,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259279-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sigmaris@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,friendlyelec.com:url]
X-Rspamd-Queue-Id: E6F1681ACA
X-Rspamd-Action: no action

FriendlyELEC offers an optional heatsink and fan addon [1] for the
NanoPC-T6 and T6 LTS, which plugs in to the fan connector on the board
driven by pwm1. Add the fan as an active cooling device for the SoC package.
The PWM duty cycle values are taken from the vendor's source [2].

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>

[1]: https://www.friendlyelec.com/index.php?route=product/product&product_id=305
[2]: https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev01.dts#L75-L90
---
Changes from v2: https://lore.kernel.org/linux-rockchip/20251109192128.72527-1-sigmaris@gmail.com/
* Set trip points to 55 and 65°C (Dragan)

Changes from v1: https://lore.kernel.org/linux-rockchip/20251026194858.92461-1-sigmaris@gmail.com/
* add the fan to the base board dtsi instead of overlay (Heiko)
* just use 2 trip points for warm and hot temperatures (Dragan, Alexey)

 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 90e7fe254491b..84b6b53f016ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588.dtsi"
 
@@ -89,6 +90,14 @@ usr_led: led-1 {
 		};
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 35 64 100 150 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
@@ -590,6 +599,36 @@ &i2s6_8ch {
 	status = "okay";
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_warm: package-warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_hot: package-hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map1 {
+			trip = <&package_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pcie2x1l0 {
 	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_pcie20>;
-- 
2.50.1 (Apple Git-155)


