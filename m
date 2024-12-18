Return-Path: <devicetree+bounces-132124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3799F5EF9
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 07:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5455F7A420A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 06:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03293156F39;
	Wed, 18 Dec 2024 06:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k0NVFwYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB2D14D439
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 06:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734505138; cv=none; b=Yp6ihVzwcKCCesrPBrsb+JYFpOJFfvXB4N09RLD08t8v6rvXiPYCt0+e6hKVcYlu3lcqc826aQUkVQMMy3LP1UCY0RjrraZGFuBKGrZ/Gh4G8fmI+7pvLdcI1q5/QWM+HWfni9hrWPcne4qZO8L95AtEG3XdDUKthBvedocDLnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734505138; c=relaxed/simple;
	bh=ZgO9kQZ9eJKJcRR9wdb2Wcn0K+q4DwSZHDxy1sfWwCg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gbNDEODt8+wRr9+O0lUyxedyoPIceneDZRhHNmO2hZdFRe7ZHsfO5ETG7rcMXHlqOBK5dVaEbYbqGh39MeL+aNGhRhu8KFR2jfGKVtZEF7d5J40oc4VopxLgap/ShM8razicokU7D288heMtmJXJa3p01wooAicRkRmnfY2ok10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k0NVFwYo; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-21631789fcdso2807755ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 22:58:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734505136; x=1735109936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G7OyGeVhZnbClojdUY/8BygxbsEIReJurkJRAUyyzPs=;
        b=k0NVFwYo7w/AbkBgIjMEhPktsSVTfywcR2ukQlRVbNZezvarnI7SG/IC6BtzHFjVIY
         tu2W10GewW7eqECl5mRz5mUkdkw+DVvgWstSBuKB/1db9l218yyWltWxm5CYTnvUQh71
         axPPEJ9E0w9jO0uw8c/9TmGxPuzaoISMLWfo2+ZQq/cOj0Ig5XipKP4GnDJliltNgUBo
         zDuz0gP4P3Qg9DxeDwRbvqCmBftp0Efhvw5tXduvmYDenPaSu4C8TnPJyQTa4iCcdOaH
         AFNkvIuqO8iZ5WI72wptlDwoKRMnSjaoC5zy/0xn13u5/7nMwLSJiSjiakGMyplHPSQ9
         y+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734505136; x=1735109936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G7OyGeVhZnbClojdUY/8BygxbsEIReJurkJRAUyyzPs=;
        b=XtoNtnSZMCMhRcpwELysXVDUfFUKdGBok+7BZseWaOiuhDGmn7stW2alCbgqN4wZd7
         ZbD3h6vwzNeBks8zRMO0KD8hb46HPdKm4/PKbnP0m83zDZ0MdO3TxsOXM6hCqnBGN80K
         M+P10V8c4A7w/Egs8rkZRfhSUDZbrMAQSTcQxLVYalmw121dw+LR+selvqEnjlWwTUah
         T+UGuifVZsLBl5xRP0yIicKXS8aXeV8aIPFm7GtW2IdxksgwT/ob8KKwUB7R+4ctZj/r
         o6mpGcAKR9Re9Yi1DJhk5kexrBWZ9tlOdMwzMAqj+CA/TB5TGzVJksArZW7MdCbrzX61
         VaxQ==
X-Gm-Message-State: AOJu0Yy4L0QKD/uBMrjhzhKIY+nvkQldgZjyseYoC0pXxcjSdflm3eZK
	FoiM1MZ+PbL7OfHEennok2Mlxpc2TpnxPpf8Fib6OVI+XBcK0SBI
X-Gm-Gg: ASbGncvBcaaF/BByxLnC1WRcCR2TvCocwQBqFRJljsdWdDPgJCuV/88BPfbX86SWykH
	H/PxkGGDEQsWV5dR27hsRGBJD75SHh2NJJUlQgIVCFY5I/tzl/N6iaeeB0Vl5Of8/gn8C5xhHlA
	t74bIqQgTCnyjmZBBnP9n6odKT0RAUqEIoehEn1GDH9YRD8qqs8fqG3tNs3twXpOCCB1bTyut9j
	IpFsMGrNG6LlTsUoWqHH4b6lw+iXo2EE+EM1ixQCt+L2mY8ZzwD1JXacjn/b5ZrpjnmRuo+3cQ=
X-Google-Smtp-Source: AGHT+IHunQCrzWf6//mYuxztn8NEiaAD9Ml9awTqJKWllifBwWP+aLkVLEmXDq4OtDZBfs8D/HK9sw==
X-Received: by 2002:a17:902:c942:b0:215:758c:52ea with SMTP id d9443c01a7336-218d729200emr25585305ad.9.1734505136487;
        Tue, 17 Dec 2024 22:58:56 -0800 (PST)
Received: from localhost.localdomain ([103.158.43.22])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e652bfsm69192275ad.243.2024.12.17.22.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 22:58:56 -0800 (PST)
From: Poojaa R <poojaamonica94@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Poojaa R <poojaamonica94@gmail.com>
Subject: [PATCH] dtoverlays: Added DT overlay file for MAX98090 and the detailed steps for its usage is included in https://github.com/Poojaa-Rangaiah/DeviceTreeOverlay-for-MAX98090 .
Date: Wed, 18 Dec 2024 12:28:48 +0530
Message-Id: <20241218065848.12254-1-poojaamonica94@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Only the driver files were existing for max98090 audio codec (playback and capture) but now the max98090.dts file is also included in linux/arch/arm/boot/dts/overlays/.
new file:   arch/arm/boot/dts/overlays/max98090.dts

Signed-off-by: Poojaa R <poojaamonica94@gmail.com>
---
 arch/arm/boot/dts/overlays/max98090.dts | 96 +++++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 arch/arm/boot/dts/overlays/max98090.dts

diff --git a/arch/arm/boot/dts/overlays/max98090.dts b/arch/arm/boot/dts/overlays/max98090.dts
new file mode 100644
index 000000000000..eaf197384edb
--- /dev/null
+++ b/arch/arm/boot/dts/overlays/max98090.dts
@@ -0,0 +1,96 @@
+/*
+ * Device Tree Overlay for MAX98090, MAX98091 Audio Codec.
+ * https://github.com/Poojaa-Rangaiah/DeviceTreeOverlay-for-MAX98090 => for more details.
+ * MAX98090 audio codec as master and Raspberry Pi as slave.
+ */
+
+/dts-v1/;
+/plugin/;
+
+/ {
+    compatible = "brcm,bcm2835", "brcm,bcm2711";
+
+    fragment@0 {
+        target = <&i2s_clk_consumer>;
+        __overlay__ {
+            status = "okay";
+        };
+    };
+
+    fragment@1 {
+        target = <&i2c1>;
+        __overlay__ {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            status = "okay";
+            max98090_codec: max98090@10 {
+                #sound-dai-cells = <0>;
+                compatible = "maxim,max98090","maxim,max98091";
+                reg = <0x10>;
+                interrupt-parent = <&gpio>;
+                interrupts = <27 2>;	/* GPIO 27 as Edge_Falling_IRQ (2) */
+                maxim,micbias = <3>;
+                status = "okay";
+            };
+        };
+    };
+
+    fragment@2 {
+        target-path = "/";
+        __overlay__ {
+            clk_oscillator: oscillator {
+                compatible = "fixed-clock";
+                #clock-cells = <0>;
+                clock-frequency = <12288000>;  /* Frequency of the external oscillator (mclk = 12.288 MHz) but can also be 11.2896 MHz/12 MHz/13 MHz/26 MHz/19.2 MHz. */
+                clock-output-names = "mclk";
+            };
+        };
+    };
+
+    fragment@3 {
+        target = <&sound>;
+        sound_overlay: __overlay__ {
+            compatible = "simple-audio-card";
+            simple-audio-card,format = "i2s";
+            simple-audio-card,name = "MAX98090-Codec";
+            simple-audio-card,bitclock-master = <&dailink0_master>;
+            simple-audio-card,frame-master = <&dailink0_master>;
+
+            simple-audio-card,widgets =
+                "Microphone", "Mic Jack",
+                "Speaker", "Speaker",
+                "Line", "Line In",
+                "Line", "Line Out",
+                "Headphone", "Headphone Jack";
+
+            simple-audio-card,routing =
+                "Headphone Jack", "HPL",
+                "Headphone Jack", "HPR",
+                "Line Out", "RCVL",
+                "Line Out", "RCVR", 
+                /* Uncomment any of these below lines if the Line Input(s) is(are) used else leave it as such. */
+                //"IN5", "Line In",  /* IN1/IN2/IN3/IN4/IN6 (For single ended input) */
+                //"IN56", "Line In", /* IN34 (For differential inputs) */
+                "MIC1", "Mic Jack",
+                "MIC2", "Mic Jack",
+                "Speaker", "SPKL",
+                "Speaker", "SPKR";
+
+            status = "okay";
+
+            simple-audio-card,cpu {
+                sound-dai = <&i2s_clk_consumer>;
+            };
+
+            dailink0_master: simple-audio-card,codec {
+                sound-dai = <&max98090_codec>;
+                clocks = <&clk_oscillator>;
+            };
+        };
+    };
+    
+    __overrides__ {
+        card-name = <&sound_overlay>, "simple-audio-card,name";
+    };
+};
+
-- 
2.34.1


