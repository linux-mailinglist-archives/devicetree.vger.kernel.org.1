Return-Path: <devicetree+bounces-102648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C10977CE3
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 12:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 216991C20971
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 10:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39C971D7E23;
	Fri, 13 Sep 2024 10:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="z6e0hP6O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2671D6C47
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726221985; cv=none; b=MxbREG/boGzp111VRdpgQpbenQVkJmNUdtWpbJqMGM8DWR1HIt2d9tWzC3sDYQJKhotpw2ddsMk2YmkGA2dwfiVYFCUgZKi4VhTxihEMnm2JCtprrYFbOPWnoHCLOfLjthV5Nb5OF6Cj2FfZ3ndn9bgpCFamO4WMWXyoph0YDqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726221985; c=relaxed/simple;
	bh=ma3gih4QZb3W22XO1BUgS2TgaOmdM7cLRLgQ6YOHH+0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=pKG2+Dx5JyblQUo+t4X2r/cWmghW/qWnhlbkAqakK+YgcTeoxQqdJPo5VcmQe9gErmS1fcajO/ET/XXMG9mtyNlMzfAQdm4LrXwhZ1Im6y97QFuyyoQw+RPR7eLHol7LR6b3nu3N8FUiraW5rePaT0DYEWprXko7DqUiM3ox1W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=z6e0hP6O; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-7db1f0e1641so762917a12.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 03:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726221983; x=1726826783; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mebWSTRXrpHOd1Ov9TjvCQ1BH1A/L8W/aymjC8YjMyA=;
        b=z6e0hP6OxTMPKuUg5RaTBbFTmZqs3vk4s2dISS0tYPRoh8V5sR/hvna32G8oSlzlCE
         kZy8oXZq9iNnBXhvK3Qqmyy4x/uwXLOOJNMEpbra4AGZmtyc9l4UeVPFmT+RqiPUYFKm
         4C+coIIKTd4Bjg+JVzNIGghCHf6z07QBS7gIsgZAkYa1fCYwGWS3f+14v2/jhNVCrBoe
         8qbDAzmE7FUV+ZykKD8ujyvhP2C9udICRX3S7od5nYnIUA05zcXNQbx7or8PfhZo3GV5
         PqHisU/tjfFpk+YmhlsELWaQqtpqBX2C9a3JXohyZlIw6OtDf7k2+02KBCuR9WEAjQZo
         tlGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726221983; x=1726826783;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mebWSTRXrpHOd1Ov9TjvCQ1BH1A/L8W/aymjC8YjMyA=;
        b=oW1zwyRwOcrwyOI/gf+pF+GyogXrDE0c3I71oRvSGBEIUq4Kd9jBUo+jtqoPaynrQW
         frsRrtvmY6N8Mrqzark/tRJnNs5plQpVfeM2P8mL8eOcVbVYmm1zcRAp/eztrviLfRyF
         qa/JLJfsb34awjbFA5AyviUmyc8Z1HATllpLysfzbVV2wYP5h6mVxN+DRoBIYzR3SbSJ
         t7ohAAd5sjUZJkhb9Tb/0Y84PwDqkZP86JPZoUqoG2/6RcH5CvP/BxUZxnIOfT8W9J19
         fmhKZ1TmSzVZrYfJqVZn1vS9CkrcT/W4sX4crKGmf22LZGXPpZSy3zO4u4fa8TeO00M9
         NVlg==
X-Forwarded-Encrypted: i=1; AJvYcCUd3LXF/6ZPW9IlN7L70ffBd+Sx35xxp0uvG6I3Tq+IChn5j/DmFev9H8maVbowbt/pHFXWYU1AJbNu@vger.kernel.org
X-Gm-Message-State: AOJu0YzL98ZY478JaP9F0JzC3vYBifwlH+xSEcfnR7wB1wXU33UydIwg
	zp6pDX9+8vI3f+oWdUu7/U5sgMrX94SNPLT4zS4RMO2/iuSiGhCc4M+eypDt7A==
X-Google-Smtp-Source: AGHT+IGLF8zeCK3gH9gqiVNfJYO+Cu9SMZiiwsrMlizscSm85IPSqVB6yJRnzNjrd0cry5ZoLKZYdQ==
X-Received: by 2002:a17:90b:238a:b0:2d8:8fe9:b00f with SMTP id 98e67ed59e1d1-2db9ffbeec2mr6810986a91.13.1726221982859;
        Fri, 13 Sep 2024 03:06:22 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbb9cd2debsm1308113a91.33.2024.09.13.03.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 03:06:22 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Fri, 13 Sep 2024 15:36:06 +0530
Subject: [PATCH] arm64: dts: ti: k3-am625-beagleplay: Enable MikroBUS PWM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240913-beagleplay-pwm-v1-1-d38ee5b36d8c@beagleboard.org>
X-B4-Tracking: v=1; b=H4sIAI0O5GYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDS0Nj3aTUxPSc1IKcxErdgvJc3SQLU8uUJENLY0OLFCWgpoKi1LTMCrC
 B0bG1tQB9SXGEYAAAAA==
To: d-gole@ti.com, lorforlinux@beagleboard.org, jkridner@beagleboard.org, 
 robertcnelson@beagleboard.org, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1443; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=ma3gih4QZb3W22XO1BUgS2TgaOmdM7cLRLgQ6YOHH+0=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBm5A6Zx6uuVBdo3ha/5xti0lllZFtl8lR1cNRX2
 Yx244On5EOJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZuQOmQAKCRAFzvXHieVa
 dInaD/9Pmkto8ZWDHi68ML9FmaWdEtTeFO/ldoi3zNJVP1yWscyJL+64k9mbUgBWtRFcgkY55en
 FVeoKby3zVuKwpexAtk3iWqqkcRHcb2QTeEG7vD5Vdx/uh8N4hOFlSXksFWq0mEiSaw55isJMsh
 PYZq3Ni9YIutSxD/ChCuUsUw8kwkhRkCc4kmZlnm4g70YpM/CcjngrKJ6//bzdIthiTr4cK2r1I
 ZejdKGLIAoN52aT3GQJWKDcOmYhobdgCQK9kwr1UjDVvZpquj9zqYqF1UWFmdh4DxsL5xe7VJYy
 0GdacoRnwBtUxCdntoPefkWWzZnafpeEsEKAINH+pAcMr6DXdA9jVj4jAAWANqWzkIh7Pl4Z911
 WFSX+dfVjavT4lKlR4JCguiVvcQpJTIIh7FPLEjmfTyela88RE+E4zgHQHzS8mttVBcSdrQBrcs
 B6EQ78FA+AkM5s3bpKXi7qKBpt4o3JsWSjlzFP6GSjswfmuBQLZquQhSHJmstQ/m76J2lgGK1/I
 sSjhTst/is7qnvehmrHmrpjEpz0j6qp8l2z8sQ7rmacptSRpBPHqzkY9DMNmd6NyEvPRCTAqRbw
 Yy9WdtKWmee+GRJymhoclrzgEAVJiPmehtkWQ2W0QZwXooAvWMGlXfjP5DnhdDfmIqljeAo0t6n
 ZyGkzoWCBemeBjA==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Add pinmux for PWM functionality of MikroBUS PWM pin and enable the pwm
controller.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
Add pinmux for MikroBUS port PWM pin. Also enable the pwm controller.

Tested with the sysfs interface [0].

[0]: https://docs.kernel.org/driver-api/pwm.html#using-pwms-with-the-sysfs-interface
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
index 70de288d728e..2dbb8930be3f 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -419,6 +419,12 @@ AM62X_IOPAD(0x01a8, PIN_INPUT, 7) /* (D20) MCASP0_AFSX.GPIO1_12 */
 		>;
 	};
 
+	mikrobus_pwm_pins_default: mikrobus-pwm-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x01a4, PIN_INPUT, 2) /* (B20) MCASP0_ACLKX.ECAP2_IN_APWM_OUT */
+		>;
+	};
+
 	main_uart0_pins_default: main-uart0-default-pins {
 		bootph-all;
 		pinctrl-single,pins = <
@@ -925,3 +931,9 @@ &mcasp1 {
 	       0 0 0 0
 	>;
 };
+
+&ecap2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mikrobus_pwm_pins_default>;
+};

---
base-commit: 57f962b956f1d116cd64d5c406776c4975de549d
change-id: 20240913-beagleplay-pwm-b859db19318d

Best regards,
-- 
Ayush Singh <ayush@beagleboard.org>


