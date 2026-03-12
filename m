Return-Path: <devicetree+bounces-274595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHMDN8e7smmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9DD272539
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E6E3230069AC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B1E3A6B83;
	Thu, 12 Mar 2026 13:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fWDCm1kE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F403090DE
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773321152; cv=none; b=Cme+a3mXs7MYZoBkyo89tAGAn1fRf++jdNdQ4pgJNOJEPfsZkdYGZEmn625urJqyYosTwgsCRf0f2lSoGbXEGvpzqqDt5TLlOfsKh3OFvduBdgD+usQy2GYQ+AXg8BfMGGiRF3MwQnBbxHzHQY7ozp8k6TT71WDZfG6SpiNxSgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773321152; c=relaxed/simple;
	bh=1dY0YAKWqPQKpy0wX5QfyVs4CI3YqPfP2ubH9Wa4uIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dw8joh6nM3/xACCC1PxHkvfEBqh2A3qbSWRgDa9t+mBcnyl3+TYP7ZqX0eX/J/LYAnSp3WCiDxSleO/ArH4rH/L/3lySSFnD3g2Y+m70uS5X2M5ShPx8WsSIiW4NkjHb77t28hpMN1lVQVphU9Ar9917NJ7EMu4FBrTsWyFW3MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fWDCm1kE; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so807524f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773321149; x=1773925949; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9GO5Ex/QIWkGPUP7iuuggNm3NBAPmofIMJdKE65jaYI=;
        b=fWDCm1kEu/SIfBGLZ6yvApy7JT/SX++h9CKRWcZf/4h2FctXvlvjH4yY7PoStjk9rn
         6xAyDNhixRaiM4QVYpM8vkAcjQxOGocMh7w+61+eMXSLxRpIx+RAAElDNB+7aSicPBDp
         Lo6E/lJegwIXnqaANFNkbRY4WWnDjjiHY+Q12Q7UbP25tqQDpZxzdzaAeBJCZADUHpUA
         /UZ/lv3L+Mnlt6EklM1g5HVDaRVwRPGXMyMXeFxJl6ig2iilUQLLAUpj9qsrnfD7UfC9
         8qGnuSXHyDj2REOhYRrctw9lw5gTOcwt7ATHIV1spjTLtbnlqaK/mo2n6HiUEE6To5N9
         nyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773321149; x=1773925949;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GO5Ex/QIWkGPUP7iuuggNm3NBAPmofIMJdKE65jaYI=;
        b=nZ6cv6ViLIxHqa2ZdGttogcYK3CXtZ4Pu0oPho0rz8TNfXQtErGKnpsIuLusoaIW5c
         NmGkeqvXMjvRIp0rFr0HczTVpJEBC9xp2iviWHCgtLFRbttm0UzQSjzzxvkPaSjLu+Pk
         NsU+bRzSalKJO0iXm2IF+E8nhT2NFp+6I7XI/d8hxJ4GUTlcGUp+zSAzYX2Csz3i88hy
         QGomFl6b5IVWUbYwBR1qSKNnRStAFxuoJ5c4WOmv969/i98FC3BSu8wRWV/1sV9dTiF8
         hLAkizdxKbHBqA3P4zliZsRmhjx5zhvuvVH3MrwbJBzTAgswWsRNJ8nhyt6+ga8XLVwF
         F0Lg==
X-Forwarded-Encrypted: i=1; AJvYcCXwI8ib4ZQ8RGW+GbOel/35F8z/38HVymZH3+sKXM7CyNFmNdQo+vwJbAYeDVhOTWJfPsBgyhSm+YrQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzT2Nup0PGNP4p/ey/pfpfvGmw24tmd2oMEKTzj8N49S/KT4FlR
	EtDrzb2NTOtwmPTxq1xkcDeV4x1nY4qy+lXUx+gdNWF0hv9SYo8+WVfB
X-Gm-Gg: ATEYQzydhE0x5U4OE/kJCDEtbuCcJQwRuaZWV7rqSNabGHSWEDHGlldmqvoyoUBp9Z/
	zs0ZMxoo3Xna2b5rhpUNaPfLtmZcS7kWPVEXfXvuuP3e1O4C70xN+sFd9D2kxEzwkOgF6y5EO68
	+NJMESfmZ9ETDP5jUa3h8TegQek5dJSFVm/jH6Yw0AzKRBqls+5zle+cUt8J/s1RAM+xy0YXwOG
	fH4ZKabUL0XSn7nkTRaPYJMKuHyypISyOkdgU6GeApiVEOfZ9E4lR2nILRyq5pIKuV7MXZlU568
	xHF7Bm3rmtTAbbT5OAGLJTfdp4+vpr0oRjf2C1ZFPad33rFEsgo9Cg79g9v3JvRfmPPs3lPcjIz
	io0EyGll7MmCvvMZ8NV5lJAL85Ak9jpLauBB+y3Gx5eP3JubuUoHyvu9GrIWC5QVz3SgW4PFeyS
	esMCn4VA5IBermWZkepZVRL82GHQ==
X-Received: by 2002:a05:600c:8b0a:b0:483:709e:f239 with SMTP id 5b1f17b1804b1-4854b10c998mr108390745e9.22.1773321149275;
        Thu, 12 Mar 2026 06:12:29 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0bff95sm85143035e9.3.2026.03.12.06.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:12:28 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 12 Mar 2026 15:12:23 +0200
Subject: [PATCH] arm64: dts: qcom: msm8939-asus-z00t: add USB-OTG pin
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-z00t-otg-pin-v1-1-ce86137ab989@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MMQqAMAxA0auUzAbSWAS9ijhIGzVLlbaIKN7d4
 viG/x/IklQyDOaBJKdm3WOFbQz4bY6roIZqYOKOWst4ExXcy4qHRnRWLHHo2bsANTmSLHr9u3F
 63w9mLTF3XgAAAA==
X-Change-ID: 20260312-z00t-otg-pin-41e102d92c4d
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274595-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF9DD272539
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This device uses an ID pin set to active high to detect USB-OTG devices.
Add support for it on extcon-usb-gpio.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
This device uses an ID pin to identify USB-OTG devices. In this commit
we add support for USB-OTG gpio over pinctrl in extcon-usb-gpio.

For USB to work in host mode, a vbus-supply is also needed. On this
device, vbus is supplied by Summit Microelectronics SMB358 charging IC,
for which there is a driver in mainline. Unfortunately, it cannot be
added to this device tree at the moment, because charging detection does
not work correctly - device begins to charge only upon probing the
charger driver module. For now, we add just the pin - USB-OTG will
require an adapter with an external power supply.
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index ea90b00a2c8a..6c19044c24bc 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -127,7 +127,7 @@ reg_sd_vmmc: regulator-sdcard-vmmc {
 	usb_id: usb-id {
 		compatible = "linux,extcon-usb-gpio";
 		id-gpios = <&tlmm 110 GPIO_ACTIVE_HIGH>;
-		pinctrl-0 = <&usb_id_default>;
+		pinctrl-0 = <&usb_id_default>, <&usb_id_switch_default>;
 		pinctrl-names = "default";
 	};
 };
@@ -330,4 +330,11 @@ mag_reset_default: mag-reset-default-state {
 		drive-strength = <2>;
 		bias-disable;
 	};
+
+	usb_id_switch_default: usb-id-switch-default-state {
+		pins = "gpio121";
+		function = "gpio";
+		drive-strength = <2>;
+		output-high;
+	};
 };

---
base-commit: b0501426597b91ad69359c312e32fefe4cd8ec67
change-id: 20260312-z00t-otg-pin-41e102d92c4d

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


