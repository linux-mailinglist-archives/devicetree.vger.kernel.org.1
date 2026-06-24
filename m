Return-Path: <devicetree+bounces-315256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PyMOCo/iO2oKewgAu9opvQ
	(envelope-from <devicetree+bounces-315256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:58:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 720476BEE28
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:58:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Pvvx//0T";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315256-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315256-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 795433013684
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 13:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D911E3B7B7B;
	Wed, 24 Jun 2026 13:57:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C223B71BE
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 13:57:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782309454; cv=none; b=NzRgy0A0TpgI7wo+RvtzMdRaJ6P7+RJD/UKmPCO4vOwFy5nr1/Kk7pSjH9Y3vU+R7aAumLaeb01pRynBwGye2BKJJovQanOxE4iypE0B3fmUSrRzI7ArCqIcu4JN7h8oyshJpt1nBegoX/AuLH10MJQXbKjsvoGCNNjccv6x+Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782309454; c=relaxed/simple;
	bh=lSN8fwJzMoOoe1Em8kYvhvxEFsCMOPfETF5wp2itgRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sN/2dxWMdE4h0FJ4lfe413OnHmpSvBDAEMGo6eOpWqwGTJy5k8QHRYcnPIFnXa7siY2+J9XezmrvvV+xDStpjDi1I8Pg8iw+9q7V+8X5+YO4gzt3Ykan3dFRxfAONiDffxZa7MNM68a8EvL1jpy2StnR7BTERI6fsr9GkhAJ5C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pvvx//0T; arc=none smtp.client-ip=209.85.217.45
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-7296b265360so489701137.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782309452; x=1782914252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9WzTe+1vlDzzoGxy8+EdE00Q4JOiUjNnl8CApnpdjw=;
        b=Pvvx//0T48K8GB7rBbFnYBV8Aq5jo7t/xqecT4DRifPbz4qWz1uMT1UhdaG60nRlfQ
         q1YON0QbbCOeN8/a+pVJ05LqvnA5CxAYROwK0KOL6NTZAj4dnqxM37s/7OnbFbPFC+kS
         IH5+FcJnBB1cfy5rf03FBOXwMwV/mywAHa7AQZeWroz6l8C4fVZD02uBTanLigNntv6q
         dgpMgWlUEjZ70B1DhlxUjFbW5LqHpx4JQVuZmCwpLkm9ks0y3nlOVs624gqRizV6HvR4
         IVqMN8h4R80Bc1IUMHEUIwl8hp6tA3bFFLiF3CQZLFTYGmlhc6Bu920ROp4QiNIBGP0i
         F9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782309452; x=1782914252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O9WzTe+1vlDzzoGxy8+EdE00Q4JOiUjNnl8CApnpdjw=;
        b=MhzsEUoog/qS8vyZk5bDZl2lANz6iZLdl8LC8hKe3P1HJlGK6Cs51XxkghQIL5sRsO
         g74gAFczj0ZnBG6pp3ItRrPfi3hJr/XWppjkmuD64IC+cEI21Vpbp+TACM3wXKr1qFzz
         iPPim0ni0QT2c+jc0OeBRnu5nKGHluxhgCC3PPWEvTETthIayb6D+kwOGUfzsDaC3lre
         seH4x8UaAfpJo7YdlWRe70QwCvE8auVsOFv+ZphJ/dYnmkS7Vbo4fNhnZLEU6XEfk2l0
         cPx2kQ9rey03IYX1ZXUOqTgFAWvbhcY/AgO4cr1hRfy0FjCDjZzQg08gLRqRl2Fp7I6G
         3eQg==
X-Forwarded-Encrypted: i=1; AHgh+RrQpd/uVVIsHAUEd8aIRioNa2jKerKXL86s7dgvLwjx0KU6hKJinPZjtVjTGdMZmdQ52kDMEvsJxbl7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3pOjyX0PPOEhhyVW3pwXz+Gk6SkC//B7S7/Wl6fdJHPparBcE
	Pzl3fjlNgMwMzuOD5ViSonXB/O8lsYfckNGOwsToA9rs6XiXXU1w6b9G
X-Gm-Gg: AfdE7cnmAJU4xyKZrXByNkTyJ2DzwJdOnt2qbrJNFBT4ZKxgLQym6Dk5fbe0C1wApJ9
	VnWRi8xit1sVKD7LCmX+mZrzwg/4vTKIY0EzazZRHSHr173GuShSqzuR3tr730I9E6IwwPUcrCS
	N9MVZrI0zJsEuam3Gzw+6XdsDvb47+YerJXz8Vf0CX1aLDm9GAgvqTJ+VAsbGJK6E6tMW7Cj0pS
	IxIt7NfgCADuG+PN8WikrjjuJPCggWIm6bpPX6J9AwfSYZo1Ksl7TPyNr9fRoqB28HPutV665bA
	j6z0Mn69evKuXG6v+WKE9oM6XZdp9AeJ/M875AgE2QBzN6lqxh1UIuRFzWvuXlk/VpCVbKidclI
	sO8euqaGzYIV0kQ6sr8ntVSrw7/RyB2qhOB8OB6GDLzCXcoR2kLOB1mSzf0EVa8LJwFn51NG3W4
	V+iyZjgkXqXQS3fAHsuJA9adghoKHsh+S50zQ=
X-Received: by 2002:a05:6102:26c5:b0:631:4cd8:b6aa with SMTP id ada2fe7eead31-73114f11320mr1562339137.13.1782309452608;
        Wed, 24 Jun 2026 06:57:32 -0700 (PDT)
Received: from arch.localdomain ([160.250.247.70])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-72ba2dbc17bsm9805730137.6.2026.06.24.06.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 06:57:32 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Arseniy Krasnov <avkrasnov@salutedevices.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] arm64: dts: amlogic: meson-axg: Disable nfc node by default
Date: Wed, 24 Jun 2026 21:56:41 +0800
Message-ID: <20260624135650.727077-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260624135650.727077-1-jerrysteve1101@gmail.com>
References: <20260624135650.727077-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315256-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,salutedevices.com];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:avkrasnov@salutedevices.com,m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 720476BEE28

nand_rb0 and emmc_ds share one pad. Before enabling nand_rb0 for nfc,
disable nfc nodes by default to resolve pinctrl resource contention.

No mainline AXG boards enable nfc currently thus no extra DTS adjustments
are needed.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index f1f53fd98ae2..6457667d974e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1999,6 +1999,7 @@ nfc: nand-controller@7800 {
 				clocks = <&clkc CLKID_SD_EMMC_C>,
 					 <&clkc CLKID_FCLK_DIV2>;
 				clock-names = "core", "device";
+				status = "disabled";
 			};
 
 			usb2_phy1: phy@9020 {
-- 
2.54.0


