Return-Path: <devicetree+bounces-269772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCz9DljxpGlTwQUAu9opvQ
	(envelope-from <devicetree+bounces-269772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:09:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D44DD1D2693
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A9463018D4D
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36461FA272;
	Mon,  2 Mar 2026 02:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVjLtmv5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293C2284690
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417337; cv=none; b=QkLwQPg3XV86fdhWhY8JkJULK4iBny0dgYsktFOV3GF0eH3qSGddtl21prg/Azp0Z++CTtRrCtUAPPmStJO2nh6+9CZiDxmw7gVt62fwOPl9YvhURR9oFFP22Zzkjql3qmkacabQIxPrLPp6cE3p0xwAKfQpsqdvoqhlmhupdao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417337; c=relaxed/simple;
	bh=8jL9Qfm415JXlhiJKbxCTF3VZaQzO+LpPE4DAo3cO/g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OpJLmUXH6/I1/0CQpW1aiQeXnTwKAxkNIVdh644C1RZEzSgtAhYFxpOfcYm7fyqA10Spnjc3la9r13nNoerdn0IWjF9dbfdjVoVygeec4Rwt+TSOlXbM45W+gsbcVOadkoXXkz63VnR8nKhmGmEgnZUncXvXy5neHS6j4tbjwGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVjLtmv5; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-359866a1d02so713282a91.0
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772417334; x=1773022134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPp4rqmor4aB2PCAetYan6hsDfGcu08LGlQPnz1RyHo=;
        b=jVjLtmv5Pa30fnf1NCDYsm5Xpi1vy2gChK0yDq077e810pFwcsNL9AtLqNK5EWQCzQ
         yG3uNHvrqR0NVUz4F6zPVP1bLPfWNleuonwfykHqItas9ek7Xj4vPdsc6dvDBPR6Cmej
         UKRMn+nnY/rByaD9WrpTtK6wFo++eERTSF+NM9MSHNX7r/9xvb1tdVsq2c6cX3JkS4w/
         vnfko7/oG8SU64c8Pm2XqVOVXMucxWSdYcu0JELLeR8e3ybELQ2SDebfVBfn3sw7gxfy
         kPi1HSLpbxOGFHWdFRpAHo6caoSqzpCmIOfBLPARmo8dKVgDzKpMqZSrZQ6IaeasafLa
         uxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772417334; x=1773022134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bPp4rqmor4aB2PCAetYan6hsDfGcu08LGlQPnz1RyHo=;
        b=Wz20rGgwv+m+R/EYF4ONfvebXiBeWqSUbcqh/INnIi53iZ66Hw1z1i8DoKE6xyj1h0
         MiXVRR+D2ZbkH5GyHljcwGMIejf3l9V+CpkQNpEp2frS7yMT+YnZOCLjE6BMNjZjkvbi
         g+9rV62gB93EKRxCYhYH8DCuM6hXdWRlt1ul+bPGYCIRQ7WW3uL2LXExG4i3Iigya/U0
         XOdJzqk8S2RPz7ui8a0oi74CYHYFqdDZnWTMS92CpVi36+2senFB6c173PzDxLT18jO1
         v7LE7WoeO26ocmA/FHGVXC7bSHh7jNGmDNjo6ePTCTHskegM6tbg6ne+2PQj0J+MzwO1
         2lxg==
X-Forwarded-Encrypted: i=1; AJvYcCWgXFryIwR9seaPlDs3ZwA+cZLAhaM0/fDpCafYpuTwyyqdb+znLS5rwu6vpykr6Mc7w9yxE/ipJbGH@vger.kernel.org
X-Gm-Message-State: AOJu0YyGHbFtlDsSeTFkuWGWWZOpsG7KVuwFZ2Sy3lJVT8XV7YmOEwk9
	3pV0XctJ+7vXtTqHyfa5d5tIz2tg/AB6myFwM5c8C7tLD9v0/sdFZZzP
X-Gm-Gg: ATEYQzwAW6WWAC8KYrTjkIEAEQEf81X2TpPvTLkggu/IydxZGknUuuiqXAoAljitStB
	zdxRZySwIJ1jO2vdWB7J86qrlC+zQ0ngPkfH/zskYYQ9BMUtFccImHRwiTc7h/7zTQ8Q5o3pQw/
	VE4Lz+TwtIN+ADKYjXzH/hFVsftZpSGiIg82uZdApLs8digxG7SX9pcrKOGGjiQloJUN7t4XfsB
	LOoyPF26YWC1vcJ1eUyfVo8XJ8Gy+6Lk7cnmt1ZY/D0sWLW42gW4qtWhDByX693BrSTVdVvkcOn
	4s3n/aIXQKd1xRWF9uT13xrKBzu9yCdsdJPf+2Uo2U8HWIa/WyQBmZgLEXsuxu7CWF0QH3KtAp2
	FZk4Eh7Q4jRA4Mg75wRBRIwNcb8fb8P65V40VLRbT9/q6lkDOnkpP5kBRTe2jpmSB7LMfbqI2X0
	zsunOqEQkyX9puCIozhP7mcYZX7Sln2LfyQ9G7zbMzf75CzK2C7E0lRGH+lFAI1H3mbavYmZpS3
	VRMYp2cqaa2gOm67MEt
X-Received: by 2002:a17:90b:314e:b0:359:849a:7357 with SMTP id 98e67ed59e1d1-359849a750dmr3044128a91.20.1772417334443;
        Sun, 01 Mar 2026 18:08:54 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35987523629sm2764697a91.7.2026.03.01.18.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:08:54 -0800 (PST)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: andi.shyti@kernel.org,
	ychuang3@nuvoton.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	zychennvt@gmail.com
Subject: [PATCH 3/3] arm64: dts: nuvoton: Add I2C nodes for MA35D1 SoC
Date: Mon,  2 Mar 2026 02:08:22 +0000
Message-Id: <20260302020822.13936-4-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260302020822.13936-1-zychennvt@gmail.com>
References: <20260302020822.13936-1-zychennvt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-269772-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[2.111.43.64:email,2.110.221.32:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.110.182.16:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.111.199.128:email,407f0000:email,2.111.82.80:email,2.111.4.48:email]
X-Rspamd-Queue-Id: D44DD1D2693
X-Rspamd-Action: no action

Add I2C controller nodes to the MA35D1 SoC dtsi.
Also enable the I2C interfaces on the MA35D1 SOM board
to allow communication with onboard peripherals.

Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 14 ++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 65 +++++++++++++++++++
 2 files changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index f6f20a17e501..2a8f0fd90ded 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -98,6 +98,14 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+	i2c-grp {
+		pinctrl_i2c1: i2c1-pins {
+			nuvoton,pins = <1 10 12>,
+				       <1 11 12>;
+			bias-disable;
+		};
+
+	};
 };
 
 &uart0 {
@@ -129,3 +137,9 @@ &uart16 {
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
 };
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index e51b98f5bdce..36bd19e37b57 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -17,6 +17,10 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		i2c0 = &i2c2;
+	};
+
 	cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;
@@ -372,6 +376,66 @@ uart15: serial@407f0000 {
 			status = "disabled";
 		};
 
+		i2c1: i2c@40810000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40810000 0x0 0x1000>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C1_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C1>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c2: i2c@40820000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40820000 0x0 0x1000>;
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C2_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C2>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c3: i2c@40830000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40830000 0x0 0x1000>;
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C3_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C3>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c4: i2c@40840000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40840000 0x0 0x1000>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C4_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c5: i2c@40850000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40850000 0x0 0x1000>;
+			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C5_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		uart16: serial@40880000 {
 			compatible = "nuvoton,ma35d1-uart";
 			reg = <0x0 0x40880000 0x0 0x100>;
@@ -379,5 +443,6 @@ uart16: serial@40880000 {
 			clocks = <&clk UART16_GATE>;
 			status = "disabled";
 		};
+
 	};
 };
-- 
2.34.1


