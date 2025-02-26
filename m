Return-Path: <devicetree+bounces-151531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A09FA461E9
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD7C917A9DE
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBA0221732;
	Wed, 26 Feb 2025 14:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="PIDCdYmk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B03A2206B3
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 14:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740579040; cv=none; b=cSAJ8IS+i0eUypUpoHX+7NvJT5YdWp0unCV3qVt9yJTl/Dk5Sk3482K2Ddtmi0G61vJHAL46Bu/PqwOMYYAiR78M6D2mDAXUYSvbPsLxGEiRDVOLwdTFN6WzP0gSlVREG7yqKo6jwD/vfY0HcyK1ndgUWvn6eIaT/t7p0w8k5Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740579040; c=relaxed/simple;
	bh=fn8elkgRSR/QPq4nFjI5143Zz5iXEhgsAPkbVKceBko=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WtbRI6o3//PX9kgdz3dzt6kv9Haf2ZWXdUTwMv80cKe25C+9ugOmDsIhYLI5wGl+2npWPjDpzGNCfWrQs9G7EJ2wf3k0efpEfch+6+1s5CUmPjTiv+0nosVoXSv7XfGBvXTM6xUcf18SmTbiB2JQOadmlTKuemjnuGYWNPFnvl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=PIDCdYmk; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38f1e8efef5so4021703f8f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1740579036; x=1741183836; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/K2OVzTJIisVIYeYej3QITbMMoKoqZpffJDULuTMdQ=;
        b=PIDCdYmkb+viuEaKGbYhv8RhEv7bB4X5HcqmHkAMSNwDmC20DLBSqgr20/i7DFYvTs
         TQmAz991JunpZkQfqV8QjmI+3YKDsMZt6Gnma6exmWMQ6qhZw9lgY9HCC36pAl2ifBdN
         N/oaoXuxwq7Dw903SRJRk+yWPWadJsD4+fd4c5z5yJzW485Ux3Vcx5AJZu093zwrOBqb
         X1xCxE6FFHltlc7vpQYT1EKo6jAI9UQK2iOEyOhVjqgNQWFNx3Hiy8VaynCJImCNitpY
         qh+mEy0r9hMHa9Z8qD9SRnRBR3LjSoOzATYQVEaya+YmhNykDBo7icK+71f327ZFtKvM
         Do0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579036; x=1741183836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/K2OVzTJIisVIYeYej3QITbMMoKoqZpffJDULuTMdQ=;
        b=jK0JapBsfWrQN9W+7ajY06L5/8Gg7s/Yj8vN40p6N2cy6VAXctia43wfFsj/4ezfjc
         RQ1ynVHkYulHRBblXB0PkhVJsXwQJvaWsOm6TjtxuF2myF6TxTGsQ6nPwvMpagsvXp2n
         1yxvFU1pwhcVXxCfLXkWcmUk95IU/2EEnMvHSeC2veYCD1x6KVXzEWXBUBzTcHraV8Pv
         B2pIfIjFXHM+lyIEBs5h4JWoMZ2d8kFd6c1NI7CLQ/6DdCKO9UB0s2sscGWgDgyMq64d
         4FVy+xy5FzuIlOKCENS/Do3+r0VMV+spe4j0vj5XdaB6OjnVim1DLe48OPCBMlmum2ng
         v6Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUCMNeAiBL49Wzw7+P2NwD8tNHy2Q8wuHrWEDyBQL2nBKl9cCNzfyWSYIuYompswL2eWhoiTHpZO4UR@vger.kernel.org
X-Gm-Message-State: AOJu0YwwG2S6N/Yx2zF8TTNW8idtkWb/4RCwTE/xT2Jro9ARJFprvQO2
	EtHHhBWLU4rL6NxuL6v+Nowe7ndYserU8XOmkCgqjcFgmJ37dwRjA4TmnzFv4T0=
X-Gm-Gg: ASbGncs/tCj7HvpdGVTaxXf1/E9YZlhetqahz2CTDAyiTTlbiFu7h4Y+M4ldOhCpgKJ
	T/kIVbnwmpiRIx662n/0Jl7mSm+rF5V/1NOpRqR97FGzus87y64hGSZkkwHH5VEPvK6YFMa7d+w
	Ivt8rzkifjkIsqngqFtFaQQ1yK3yAN/go/5DXj6DeUWXfYxghTsg9AXVeLxAPcmLLCBuMylP125
	PW+w27INV35PPoUT1gtFUUnSOtY5LE8Ldsk1ONmVi9VchrSRG3EXCC+HVZl2o2DBPdlH6dLolBJ
	PG4J+Mj+OHzheJETiif6p3qknQJ1XjcaPLYgXb7KbhXJwkH8/GpHHyyR/PpXEqMrCmzIzXiTe38
	=
X-Google-Smtp-Source: AGHT+IHoDmGXmyYKL/H0wIDHVZGgyglIAMrlTqOFlOQMhza3hOMOrfR6i0sWAbH8R3O6AiDzN0jNyA==
X-Received: by 2002:a05:6000:1fad:b0:390:dfbb:640 with SMTP id ffacd0b85a97d-390dfbb06dbmr443616f8f.45.1740579035700;
        Wed, 26 Feb 2025 06:10:35 -0800 (PST)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd70be4csm5755889f8f.0.2025.02.26.06.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:10:34 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 26 Feb 2025 15:10:18 +0100
Subject: [PATCH 1/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502
 redriver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250226-fp5-pmic-glink-dp-v1-1-e6661d38652c@fairphone.com>
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
In-Reply-To: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add a node for the "Type-C USB 3.1 Gen 1 and DisplayPort v1.2 combo
redriver" found on this device.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 32 +++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 582b19277de414fa9cbb8f9929c6eebd697e8033..3c134d28e0c1965de55356af9c19c1331b029669 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -166,6 +166,23 @@ vreg_oled_vci: regulator-oled-vci {
 		regulator-boot-on;
 	};
 
+	vreg_usb_redrive_1v8: regulator-usb-redrive-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "USB_REDRIVE_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		gpio = <&tlmm 61 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		vin-supply = <&vreg_bob>;
+
+		regulator-boot-on;
+
+		pinctrl-0 = <&usb_redrive_1v8_en_default>;
+		pinctrl-names = "default";
+	};
+
 	reserved-memory {
 		cont_splash_mem: cont-splash@e1000000 {
 			reg = <0x0 0xe1000000 0x0 0x2300000>;
@@ -747,7 +764,12 @@ &i2c2 {
 &i2c4 {
 	status = "okay";
 
-	/* PTN36502 USB redriver @ 1a */
+	typec-mux@1a {
+		compatible = "nxp,ptn36502";
+		reg = <0x1a>;
+
+		vdd18-supply = <&vreg_usb_redrive_1v8>;
+	};
 };
 
 &i2c9 {
@@ -1183,6 +1205,14 @@ sw_ctrl_default: sw-ctrl-default-state {
 		function = "gpio";
 		bias-pull-down;
 	};
+
+	usb_redrive_1v8_en_default: usb-redrive-1v8-en-default-state {
+		pins = "gpio61";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-high;
+	};
 };
 
 &uart5 {

-- 
2.48.1


