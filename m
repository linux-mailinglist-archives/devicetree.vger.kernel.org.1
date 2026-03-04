Return-Path: <devicetree+bounces-271233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDtGGDaEqGmgvQAAu9opvQ
	(envelope-from <devicetree+bounces-271233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:12:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 002D2206F7C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6231F3026A68
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140EA33F8D6;
	Wed,  4 Mar 2026 19:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OMPvbvI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898D113D891
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772651572; cv=none; b=kCk6ei4C3zLG6AUyCS9s+TNr3jvi5GymSt2PJ24gtVo8MPpKRD4E/RsUf+qp5afWHsOFO1cm2phi5GblKTjcDs8lalyZwnQhcP8TrDNmFDKLwyfNpwcrXpnAfEB5IiptkLqxl0nLI743apukd3CmpIlzUBwtq9b9OYAAxscDFN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772651572; c=relaxed/simple;
	bh=t2vK1yMN4i2Kjgo4EVGOr92PdBtSb7p7gY3qrLzOtpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BMYQsstsEt/lQG7U3W+cSftMtTpgowPkg31dpCuT+mN2SuLZX7EDB+gtFnsIg6wHNUvbjSbcuaAnVn+RjAqGCZU3cR3cMAF1cDPBwncGXxdDBGBWVZ08YJpuo6veoqGWlPMNDobeaT4IdKkWHWTnbDXWN1q933FjwnqOyJQoT80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OMPvbvI5; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso65895025e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772651569; x=1773256369; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vgxQleZUPevow7Us1RXMsET49QdHaS2egowsDR9kpnw=;
        b=OMPvbvI5fG1mvmfAtoVJ7XY7BNiVcae2J/Js+g4JNvEen9qeOX7HI+5KsLb473UkHx
         HdwG+DJknyNohtkWSbDMhVc/YaPMr7Hp2m1ClqGEzN4I3X2yNbtlDslp6Rjy6ggeH0Jt
         Q6OZpBjFkY8D3VXpgoYkXihHy4eqeOZ+j0aOJHVJjDi0+EKXH+RN9U39JlXmWLEWFO/L
         74eu0Iemm6vIRjwt5njLn47EruK9XEoRYKzhmu2WxpLMFA8+fBFldtJFdnlPxVuMzzYD
         6tyvOBtEmsyPd8nn64B1FvxledDxFTg8uaE/SWRvkMm+VFaZFBSNMFb1kPlhRLgHdDq0
         bKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772651569; x=1773256369;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vgxQleZUPevow7Us1RXMsET49QdHaS2egowsDR9kpnw=;
        b=cEicMTTKdDPpjSyctCnM685HmOKzUPsVmOy63wa8rpFELH9bIJBIQD+cYRdXYxXfeZ
         cr0WPDYYJ/nVTsDXN0+9Kcjpth0woNzx08IHcyLmEbwhhyjXKu1U/ydEeUjl71wdZjtT
         zzGTdwiRogZ08vCSPC4brFsazEOOcrM55ZDBwMdIfLKYQuUr0UEucpicLuMUmrHPm6c1
         reF0cBug/D5xeZ7sC18as7JjZk6S/h2NYJe6ntklNAC1e5aDgcuj9Iwh6KlhmdB8fEf9
         3R7eFVw00ZfdzsQfcO2M2j/YNRC8yjGjEblGu1dHzSRTbRMx4aUto1Xh/IgMh8LtYmr0
         Sf8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWEjZZ/qyJ0iDKLcl4x57okkYMxrK2mVyzF+qSnMMRMkQkHMCnHO/dwLBWYnOI74wliZmMxmZPFR+HC@vger.kernel.org
X-Gm-Message-State: AOJu0YwDunAHJmuQKkdSpX8KKqm+ynWQehScziDUT1hc6xiMAZMtEWqO
	wwM5weYgOywzKjm/zcIYeTk+6I0pLAB/LHYEF0uwJKPfvRNVeEuerqrc
X-Gm-Gg: ATEYQzyWdgwv+93KH6Z8uxhGR97jsNv7bXYjSTz7MDJchEDiaQUmR34rtr3rMlPoiL/
	6xnoykIjihlYl+oMeC8lstUHmljAp+09pKRkfdqhfxYu5R6enzJq1YZNcFs7xlNRVUv+C6I3kAE
	QAOjdrdQyv4i3Qj2EK/BVqZdVsBP95BdAf4uH2KF1kGFhGml5rNd7YJYvNOVncVSQQ5lTCM867M
	1LBzFkn/rnPyeLArNEfa8dNpN0MPpgqRo6Fvla6sqeCo1NNBkyLrnL/0IebDz8LSfpb/zMccB5c
	4JDpmmCQAuFbBGVUJb7fTpdpsOHqhJE6oBgeEpAGPIeOBO37wlqEt6CDzUKh4/+iUiI95XbkMJE
	i/TyEQP1G+qP503u7wPUBLwB9VSp1YEu9i4Qk5bxp4pemd5Rdtexki36hBX774Ms0yasBYDyqSO
	MAEeuQR5NDdDNkEUOQ45JoHEYE7eT8RjXPs63Um41g4Q4Gm+ODROIC
X-Received: by 2002:a05:600c:8b02:b0:477:afc5:fb02 with SMTP id 5b1f17b1804b1-48519888e54mr52891945e9.21.1772651568664;
        Wed, 04 Mar 2026 11:12:48 -0800 (PST)
Received: from [192.168.0.253] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851c907a08sm11575825e9.0.2026.03.04.11.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:12:48 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Wed, 04 Mar 2026 20:12:43 +0100
Subject: [PATCH] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MOw6DMAwA0Ksgz7WUEhpKr4I6mMQFD3xkCxQJc
 fdGjG95JxirsMGnOkH5EJN1KXg+KogTLSOjpGKoXR2cdw2SzpQIfZszJl033G3AWSyi8ojcBf9
 qunckDlCOTfkn+f7773X9AS94PJJvAAAA
X-Change-ID: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 002D2206F7C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271233-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.226.144:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5e000:email,5d800:email]
X-Rspamd-Action: no action

The 'marvell,usb-misc-reg' property is present both in the EHCI and
in the XHCI USB host device nodes, however it is not documented. Thus
'make dtbs_check' produces warnings like these:

  /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml
  /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml

Apart from the fact that the properties are not documented, those are
not even used by any USB host drivers. At least 'git grep' says this:

  $ git grep -n 'marvell.usb-misc-reg' v7.0-rc2
  v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:30:  marvell,usb-misc-reg:
  v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:41:  - marvell,usb-misc-reg
  v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:50:      marvell,usb-misc-reg = <&usb2_syscon>;
  v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:372:                              marvell,usb-misc-reg = <&usb32_syscon>;
  v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:383:                              marvell,usb-misc-reg = <&usb32_syscon>;
  v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:396:                              marvell,usb-misc-reg = <&usb2_syscon>;
  v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:406:                              marvell,usb-misc-reg = <&usb2_syscon>;
  v7.0-rc2:drivers/phy/marvell/phy-mvebu-a3700-utmi.c:231:                                                         "marvell,usb-misc-reg");

Due to this, drop the properties for now in order to get rid of the
warnings.

Given that the platform is quite old, and its support is mature enough,
it is highly unlikely that the properties will be used in the future.
Even, if that is not the case and the properties will be needed later
by any chance, those can be added back along with the supporting code
and with a proper documentation.

Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index ea1824f5321fbb32fc4373c08a0d94bca1dc793b..44c47409f8793ae1266303607812ef481edbfbc5 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -369,7 +369,6 @@ usb3: usb@58000 {
 				compatible = "marvell,armada3700-xhci",
 				"generic-xhci";
 				reg = <0x58000 0x4000>;
-				marvell,usb-misc-reg = <&usb32_syscon>;
 				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&sb_periph_clk 12>;
 				phys = <&comphy0 0>, <&usb2_utmi_otg_phy>;
@@ -393,7 +392,6 @@ usb32_syscon: system-controller@5d800 {
 			usb2: usb@5e000 {
 				compatible = "marvell,armada-3700-ehci";
 				reg = <0x5e000 0x1000>;
-				marvell,usb-misc-reg = <&usb2_syscon>;
 				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb2_utmi_host_phy>;
 				phy-names = "usb";

---
base-commit: 98226a594f313442fcba38cefc1df0b6c1691c7e
change-id: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


