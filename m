Return-Path: <devicetree+bounces-279027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOkQA0EWwWn5QQQAu9opvQ
	(envelope-from <devicetree+bounces-279027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 11:30:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAE52F0142
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 11:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 56BE73057A3B
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 10:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F305338D01D;
	Mon, 23 Mar 2026 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c2AappYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE6338C42F
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 10:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774261181; cv=none; b=Kkhaokf9MP3LYqQ5GFqrulhIwJWZEkgiY5n6+a6cw4KdLixXL8ADJSCUD5aNnk/mLzi4W2EtgYUZQf6yW3H/iqQ1iLn4IHxh1ka/hUvmPEVy+vGfthezBUDyUDzaSCjY/RODDjl1FWbPz2QTiEFe2e7B/B9CH0FdNwd76oVB7Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774261181; c=relaxed/simple;
	bh=UQ7f01+3cOZP1rigv0i6MWf6GRkDoBBSKgBLPigIAzc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m8qDNS5lqDdasl4/qsKJIGqxvMWe7lgKWzjNDZAetcq8lIb59exzEoXEeQbClphP901QJYoZRKTgMSxKCW6bOCdq3mXdg1IusvACR9wo4wxSJq3vp31RtjTqHUKoWZDCc/cTSxJA0ykFG0O3z+VBbgbkpZWwyBWwDHdglB/T1KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c2AappYE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-482f454be5bso46402705e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 03:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774261178; x=1774865978; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LzM6tXzzJeFaZBA5QZ0/60M4eJdHh0h1cI1z3A71Evc=;
        b=c2AappYERkdb0kOFozvjaut8/5qe5/o8cvfVHy5powY3vPBgKxyRqO6tlFoJRnSo8R
         jDROj1TIJFbBHbifMLKSE1SOqry87FwUUIvClq9cO90QDvJEr9+3fn4Be5p12S7mSFlG
         ZYEFDCwKIokCA+UBWu2LZd2NOv+HMEYewbBcpCdR0UsC6h3mB7lea9r5qi3s5ebDX2QE
         NtsxFr/f65IqM4iBvXG5E+pWlVrqdaI3tNzbok2VJ/e99bdynCHTy7VNQvrgPRpzfJG5
         /PEfR4BgQ7fFepIQe7pmOrKy4dLsfXGE2LqCGEO3s6TMhTbZbDc+7oS3gogu1WtfUCl1
         Z9yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774261178; x=1774865978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LzM6tXzzJeFaZBA5QZ0/60M4eJdHh0h1cI1z3A71Evc=;
        b=RSf0a7SHLpMglwjh8S0MnY2FBc7cc6Eu5C2CrWPOM9/ZLveE3jgYPruJ9r7t7YHsZz
         dSe8eHSRa3SC8WptTnW2f19jUwYt79bj1hTDzONHjjylfX3bRf7o+q4olYe4J66LN4Yx
         30zOLY2R10ptoIxxEKHQBkNy8atQh/ifgsnF2rvxYvwrKoEeIyrRJWu1LqCvoo/fx3hG
         MuY1gxdk+wdrVboc0d0Ub7GlnewKelLa2YtfK6jm0P+LHOj+ZOXyPa6aeb21XX20ptre
         Q2BNhpGMHWRsJYBicIuWOuA3soHTsL2/I1oUnBAdeFbs5KBqzc1ZiCnPnuH6CwZix7xt
         TEBw==
X-Forwarded-Encrypted: i=1; AJvYcCUhH+2wCdXTAywqLEjXasrM8SzMffVhMWYRKGdKlIOm8OSZmuQXXImadHZn1YElJBYuaPhmdkI6Rt1j@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd89GyEm12xhkENKLtF/2mDJkhn5kKUZjmRhp3qY1TnRfJKeLN
	1lFj9MiLHKGudYxDbQU02k4vrUYReuGif2+BiO8s4Ui3xx2xkj6cAxSPGjxTlw==
X-Gm-Gg: ATEYQzw4KBoSRUf1qQHHhxkjsQQ5DG0Nczx3hkg+OjmMYJ2ufY71qD5nRVm6Sd5InnM
	euAkFaIOvK91XuZEgtONMsQ16tVXPxAI1Z/y4CHSGPRCOmAE5aaaqJkcSj9gCryC5h0EUSmnyrS
	hDJAabVpWlCtQAUbdAd5oD5pupDvKgvNIwJUc1y7dzictzh8gUAY/PnFpL4ruH76SBnT6AdZgNX
	BZ6DdqHo9krZuJxdx7QG0HTUv1cX8r1+ga7Y/SmASrhiIpsosFgBpsxAERVPh3rzIqD5aOebWe5
	nNBwAigkEHpOBaOBZR2jHqXubu0rhRTOWH9jaPO/1rgXlGJhM87F/t9mNsuSyh2UeVOOGxZevnC
	qZI2BiyK9c7uGC5bpEQcJKt98TC+z/yUYOsp5z8fu5jZApglTFKzuYjFKxGOoqVUbxsgyHfBtqO
	ptv6BUW0Jqmy6ZZjQgxw4UxaIUVD/i6WJf7895nZaXvqaRKTKeRVrFWhft/c9k6C+JkuZq14etX
	4Y=
X-Received: by 2002:a05:600c:1e0d:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-486fe8efb0amr191701715e9.13.1774261177699;
        Mon, 23 Mar 2026 03:19:37 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.232.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fe86acb0sm78755445e9.6.2026.03.23.03.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 03:19:37 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 23 Mar 2026 11:19:08 +0100
Subject: [PATCH v4 5/8] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and
 power infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260323-orangepi-sd-card-uhs-v4-5-567c9775fd0e@gmail.com>
References: <20260323-orangepi-sd-card-uhs-v4-0-567c9775fd0e@gmail.com>
In-Reply-To: <20260323-orangepi-sd-card-uhs-v4-0-567c9775fd0e@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279027-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,baylibre.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.41:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 3BAE52F0142
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add Spacemit P1 PMIC configuration and board power infrastructure for
voltage regulation support.

- Add board power regulators (12V input, 4V rail)
- Enable I2C8 for PMIC communication
- Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
- Set up regulator constraints for SD card operation

Tested-by: Anand Moon <linux.amoon@gmail.com>
Tested-by: Trevor Gamblin <tgamblin@baylibre.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..9c417a483f6bad6e60617cf8d5400ca079588726 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -19,6 +19,25 @@ aliases {
 		ethernet1 = &eth1;
 	};
 
+	reg_dc_in: dc-in-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
+
 	chosen {
 		stdout-path = "serial0";
 	};
@@ -92,3 +111,32 @@ &uart0 {
 	pinctrl-0 = <&uart0_2_cfg>;
 	status = "okay";
 };
+
+&i2c8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c8_cfg>;
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
+
+		regulators {
+			buck4: buck4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			aldo1: aldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};

-- 
2.53.0


