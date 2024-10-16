Return-Path: <devicetree+bounces-112044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7819A0DB6
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AAF1281678
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 15:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0CE20E019;
	Wed, 16 Oct 2024 15:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="Ie8Bkr/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B7220C032
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 15:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729091510; cv=none; b=jZiFx2SDxPgSfhQ7ag2j8uEtLE6KOlK2upMnsWodgHRbrcpd2ly2TcHX01pKkXHbqADoT97ksN0n/R4DTdxpUaCYxWqqp1Y9i3muNK2BtKpCbWGtZGo0iKUJSTpj4jN1ry2t8JD6Gv4Y2gNlM52hAB2Sn90D/TeA7SRO8zsudFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729091510; c=relaxed/simple;
	bh=ckxdzGByTXJUietXC5uAvZOJ6fBo9bKDj5epsvwfcw8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lhzlS9Id+PXzMo20UStOEj8qnRdD90+OKwT/7HBisPmXW4IAnLxxQhCo5ihT2fYzg9OR6s5fGTvjAASNBTCnQs7lfOW06OggaU44Ig90Ero7ng4zB4CKTos9vkVegGQXjhJQIcBArmIBBb1CG4U26FCqXn8lLCRV/iUIxp/9gOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=Ie8Bkr/u; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20c9978a221so60757215ad.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1729091508; x=1729696308; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hEOEoYJF2/Ff1J+c4cDFgOoOmZPcjeqN5UTMVGgmwos=;
        b=Ie8Bkr/uHLDpuEruVeg5GgTUdCIaP1spd0ATZ3M+JQVBE/mscGlYVxjg3UMOoHwaX2
         XvhOZ5EHq5cBwaPz5+1aJAdqQRkOANMxO2bmJvOuvuVagpczXctkSyMzT2hBvkrcxdRq
         Jig3ix1/wOtEOsyadvLFk3ogfQjH6FswTrJOsXm6romKDD5chPYQmbc+dzOQKm3ZVWhf
         EhMDC4sx3USuJ7eAgUhN6nDZ9JBcdRFcSkhk57k0R7599K1q41nEPMdWAw3Wqn+s7pkP
         DUg4vX6jEc+LJzL+DA0V67cIHzDwC6idTYQfC/+zumF8U733Bbk7AMYi670h+Nry7PGC
         vM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729091508; x=1729696308;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hEOEoYJF2/Ff1J+c4cDFgOoOmZPcjeqN5UTMVGgmwos=;
        b=RKrTo7gRwSmJCKG2uQErNcFpOBNT7p+CWFLxIRO6bdkVhuNuXRDadGdDn+wh9qIYRG
         cntuHw7gv8hGcT7xUdVOCMZRjJCJPgt/WdNb4F8L7UjDR8vsqwhtQVY/iDTurEzIbhya
         4HXRfoo2g9F35ZiQqtrEbQ2dN7j50dkIa26DLZZgpGUVpr8ll1uY6FgLitmrgp7oPC+a
         xYPY2YpefY6Zc6rODOwiuB9PBeBUyMH0Ybyg3qCYiSsJTyya2vjrJkGsJ7Uo/Nbp8om8
         padK4ajF7RKjMCi0ZSbMhzE1i3gyJgXcnLcOMAZpIl8dVYrokjXO0nYIceTjYw3n6qS/
         rrjw==
X-Forwarded-Encrypted: i=1; AJvYcCVrSWm+UmcnjvQLMzWk4sdmGHHx8YhUw1zIzKIQOV51MsfUnFDHTNIcSeCG6/oCLcnQaqPrTH4HaJrQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwazgKdnqh6U8Y6oMFY1m5jBicaDfAjg2ad0zEuvbuiZdV3jppG
	S1MkVT6WeXVN5cBjQ60YMjEA+K7xGo9fCPxerxT664rzjexTn4NB3rzcQaMu0A==
X-Google-Smtp-Source: AGHT+IHNFfZ8Imho4YOAv0s3tUMWoLPXD/ZhUSm7DPCRIhLtXTaXR3/u1W15BCKmwDmXqQPINHdiXw==
X-Received: by 2002:a17:902:e752:b0:20c:a7d8:e428 with SMTP id d9443c01a7336-20d27e59bebmr66237125ad.7.1729091508137;
        Wed, 16 Oct 2024 08:11:48 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d1805d070sm29583625ad.282.2024.10.16.08.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 08:11:47 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Wed, 16 Oct 2024 20:41:15 +0530
Subject: [PATCH RESEND] arm64: dts: ti: k3-am625-beagleplay: Enable
 MikroBUS PWM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-beagleplay-pwm-v1-1-245ae88859bc@beagleboard.org>
To: d-gole@ti.com, lorforlinux@beagleboard.org, jkridner@beagleboard.org, 
 robertcnelson@beagleboard.org, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1499; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=ckxdzGByTXJUietXC5uAvZOJ6fBo9bKDj5epsvwfcw8=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBnD9etsj1ViSMU4ImyLpm/OOwYvVrE1H+1dt1X+
 yROjMz+FHyJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZw/XrQAKCRAFzvXHieVa
 dMhiD/9DfQbiuPmywZaAmQZQhL+/sx6A8UMRKa+bo/73/SBfvdL0XYvP7x2B9bbTel3Bwu5uo/c
 Guc6WLjRozoux9uz4gT12khIEAYEAqoVrTwbKH4vssOoWDlRYDfZ2jJg1l94aQ/fbe7RSafDGv+
 cM57MI2R6cO1PYkU9+pVcrCPe4IDrKJjaZW6LTn/EQM0sSCVlDVUUHhYwT0JtVo3vJlK2BFEGGw
 QHC3UPD+At1Q3MNqsfM46L4P2O+Jc7Tn7F/qvBjF696dt469glm0WTqLQgtGzLsZHXgvLk3l3ny
 G79vXl9B4qtVdRWTHujZfiIDLMZEnkIhelG8rIbFMcHtjBTK8L0NgrhOXyVjXYtdj0u91Jk0IUf
 23oSkHBhT1xylSVZxXhnLx3eKWWoYW/vtn5Qs1l7GkCNEE5p95XzSongYjD0bAv+rRxBG5BY63x
 ZmWWXcaPT1ug72GzonpRLo7GOHxsczm6qJ+FGtoyHhXDvy2Cqo56JDvdEGidSV4jsuOtCInByFY
 jlIDPHLTasSfLVIBnU3itDlz5AjIEhNfscxmAc4toYSiMfiHbmV0VSs35SeX5nAe215sTOKuspb
 fvTT35aKQ72FfBEka3xDxynXIHu+Ld+V5nsnWgEcDA8Ynqj+6IkGTXJyA+BORl0LWezAboThC8v
 NwVuE/jYdrsvfjQ==
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
index 70de288d728e447d5053eab3c1417f23212a66e4..2dbb8930be3f2ea72f1c502233f303934c83c46c 100644
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


