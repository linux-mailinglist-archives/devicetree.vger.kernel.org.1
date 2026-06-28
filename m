Return-Path: <devicetree+bounces-316470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9It1A+1UQWringkAu9opvQ
	(envelope-from <devicetree+bounces-316470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:07:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 584166D47C5
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:07:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lXrEYUUd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316470-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316470-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D199C302452E
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 17:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A732E736D;
	Sun, 28 Jun 2026 17:07:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB482DFF04
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 17:07:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782666426; cv=none; b=NauWvq087c3BE/zuQ760xNKEBp+Dp6JcWeUd36TbmwsYsSL0jOiP8gV4DAohRwZG2kqhxNW+uqKs7Cjfp2jZX2uMoyY0wE2ELxOb26WX8SO2jocM+BSiVZKIS2XWqKgVZzVheUA5jZPehYwWXPIwTsDxOMoitAO4dGmULw/skNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782666426; c=relaxed/simple;
	bh=FeoBXgmmkzHKRI/bhWJNmPy83xWX9Gdd4gTU78fyoEw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tl85s/lVp0gRBRm/3vFBuVqDng0Az3wihj2xffHOrqprL5t5PiRhMtjT4Y16BL+62u1yPeiVY5FMJu9MWMabWu0AzxBXR1wzTGB9WH5zGITCgEsEX9eUlY+fU2q8zEX9wReeRW1vM7e+y5lJPTCl6cPW1LeQmlww8ShBfIMNPt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lXrEYUUd; arc=none smtp.client-ip=209.85.128.50
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-493a97fad2fso5665445e9.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 10:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782666424; x=1783271224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7tZqL3y1dOgTp1mPIxTFcmNs123y4a3Qb20/7Lp4iY0=;
        b=lXrEYUUdBsnauEe17IwS29oI7TPV+5M0+OO+nh9Ir+y9DoUD2wS/Ibf4MWZTajuMQV
         ulTT9wjOP0GriJagm/rVGqor6g6HP2/Cm5kyzRzkzm801AGimsZYWFtxHhoERGKCabXx
         y2HGSgrQCnh6PJiFDlWwG2qaEV/xUs6cEkbrU7/lU/KstzxFhhaY7M8bxvJH9mHuI4ic
         2/PyPoXZvYPu3H2KiVaPsbYoKGP3jEacTHWq0gYhggKLQjMhhs7grkSnHFc5DM7kn0h4
         JIIw1DEYXd5jOu0M/iGOH4ULko8lGQ5PPKPsCqUlLvl7HmSNJkrH4CRQcwjvtrvL27Du
         RRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782666424; x=1783271224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7tZqL3y1dOgTp1mPIxTFcmNs123y4a3Qb20/7Lp4iY0=;
        b=dzT931LyywCv1BFPjMAbzOzdVZsV7LQziDqZhdG5V9RhrhytY4nV2pP6zOFluPu0Ml
         iiSR98fbAFQT4M3eSl8TJHlNpZ20MS/OLzfGVn7bl+epHYGvDTDJ72Svq2y0vRiCb8YW
         VpMgWgmj1QIXfhVQWF9YJKy4BI7wmjE4p2pQLoSPbq4Mdvw1YwjK1ycZte4B/CIGR8tl
         LRRvT0ilSRBBU9NAp2OJ/aghiqNNVjxFqJS9pAPYc5Ltd+lS12pLrd9CpzjwooJ4ha3m
         4RZqjIsJbBb+R0JCVQSgemTMNN41phrhokUuCZfvWkBfc6veBe2PzhWTaU4KW90smnsy
         RM4g==
X-Forwarded-Encrypted: i=1; AHgh+RpN412ASgPIuaSn+RCYgs9sB+OwWf6j3djOU4uZDo0iOVU3bAwcUKzBHyAJvT4DRLWrAX38mvxLYTIX@vger.kernel.org
X-Gm-Message-State: AOJu0YykSS0sU3ghWE4WDJm2QDpiVU0kmwyvEjz0Z9ORH2LWHSDv9aRh
	XKPguCrMeODTFbdQzTx8Vm3pwg5mQ04qVeabuV1MZkVWB3TyCTxHy0vF
X-Gm-Gg: AfdE7clrhJYGsJRUuZ44cQ4zBvAL/qXHRjEPI74WEINb6YaDCBVcSUhPNYKPUHo66aQ
	vSkPwuEfrhwYDA6HEeDJM6og70vdwogvMErsO6eQ1m0gf8zu6ZrHHabcqk1ldoROaDNzpRZpmCS
	hUv9Qzu1HJ7twGepXj2ehmGkhcaLKZfRJBUrqncfDozTkdsR/ppcXT/epwKwV/jx+YzdQ4xkYxb
	uzuAadsTQV3Sz0EfXYBFOkj/OxajSAP2JmIwxZws9Mx3kN7Xq5Dl4w/cZ/85AcUN+UjamLRuzuG
	CPydPMNeFE9+/Ei9kQMHDeLJCsBYahwUF8Jr7gqlx1Y7kWNuzpITUvVeDqzsO94vh1dlMdCVilc
	PIWGAybxJneWUGgW++LykpMglgY5obLsSwYBDd2oh0/ABdm2PmBpZKsZK9UoW9T3WRxtOmyKM7t
	2oS+vIfLadjOZ1Tyy2215/ju3SNlMhYvowVk6NbbtcGHdXm506Waxgi+tK8eiTfOmlXG+7doznQ
	vN4bIs1nq7k9n0iz8F5KSoh7AYj/6H/SAdC
X-Received: by 2002:a05:600c:4e45:b0:492:6f6f:fa42 with SMTP id 5b1f17b1804b1-4926f6ffa8emr135782035e9.37.1782666423657;
        Sun, 28 Jun 2026 10:07:03 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493a7fd1b0fsm54217195e9.1.2026.06.28.10.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 10:07:03 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v1 3/4] arm64: dts: am62p5-var-som-symphony: add touchscreen support
Date: Sun, 28 Jun 2026 19:06:48 +0200
Message-ID: <8c1c298100af75da363ec03126c31fead6dba947.1782665899.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782665899.git.stefano.r@variscite.com>
References: <cover.1782665899.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316470-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,variscite.com:mid,variscite.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 584166D47C5

Add support for the capacitive touchscreen on the Symphony carrier
board.

Describe the FT5x06 touchscreen controller, configure its interrupt and
wakeup pins, and mark it as a wakeup source.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/ti/k3-am62p5-var-som-symphony.dts     | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
index 5ba4ed56755b..5c41647ff43f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
@@ -293,6 +293,21 @@ &main_i2c1 {
 	clock-frequency = <400000>;
 	status = "okay";
 
+	/* Capacitive touch controller */
+	ft5x06_ts: touchscreen@38 {
+		compatible = "edt,edt-ft5206";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_captouch_pins>;
+		interrupt-parent = <&main_gpio1>;
+		interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+		wakeup-source;
+	};
+
 	rtc@68 {
 		compatible = "dallas,ds1337";
 		reg = <0x68>;
@@ -307,6 +322,12 @@ &main_mcan0 {
 };
 
 &main_pmx0 {
+	pinctrl_captouch_pins: main-captouch-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_IOPAD(0x01b8, PIN_INPUT, 7) /* (E20) SPI0_CS1.GPIO1_16 */
+		>;
+	};
+
 	pinctrl_extcon: main-extcon-pins {
 		pinctrl-single,pins = <
 			AM62PX_IOPAD(0x01a8, PIN_INPUT, 7) /* (F25) MCASP0_AFSX.GPIO1_12 */
-- 
2.47.3


