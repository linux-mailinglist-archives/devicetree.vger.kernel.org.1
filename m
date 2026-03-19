Return-Path: <devicetree+bounces-277790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC1VIC/6u2mzqwIAu9opvQ
	(envelope-from <devicetree+bounces-277790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:29:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6132CBFB7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 33A8C3028B4C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9893D47DB;
	Thu, 19 Mar 2026 13:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NiDU1B+a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC90F20DE3
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773926956; cv=none; b=bqego0OofhsU/q3UrRJPqg7COkW1gPegqL9z6LnShQUo+ko5rfdtI6gOJcorEr/CG+7sMb9uVQLCGA+JC+CLcYsR+OHceX1LYWF/+gRUFDq9XDdD9srh5W2ba8Nf8ZW2i/T3tz+lvriFtPj1IFbgmaydPB9gajkMbrFrC9PGfBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773926956; c=relaxed/simple;
	bh=VRgAkdyRMfnSvzgx2lhwuJvHQrdfzpIbhlWZuwEHB94=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LlBIQJDh3ItERp1bcMZMGjGJuxgHwDORi60rvObPcDprMRR2Lnj98dhiIxZFLj7RKsr5sbMrVWaQMvGBKDecuYLEFC/QX+a1CDpgUtEiScjnA2yNRpShnJL7W7vZk3dtrNR4K6v7rSQt5/2M9wa/ODPRu75h3kZ48Jp4wQk5c+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NiDU1B+a; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-50917e02472so10515531cf.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 06:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773926953; x=1774531753; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mYhP02QkOfJ2jdHzFLfwbhYh2I9Jpna8dg7+RGyb+Jk=;
        b=NiDU1B+aNPod04wdSwL2vGB+Jd3sdUmfUO/qhSwqgMXz+MlYwCc4WuMiH4o8YrrtEd
         uKcRNSgf+JX4TgIlA9DlJLXA/BnPhZFSUKyVm9QZCrEZAAts85G+8niaIMYywV71CsSY
         ZOTizG7TsvTFoglSv9wzdVz8pz4FpzgmjwPbMAhESxnagutww94a7jNxgxEm52EvBQvs
         NCWBpEvFfgL91DJaii/WQ0+Zx1hUtMxHK8ozOhs8os4SH9K7Jw+LliDeHxVvubSPDLrl
         id/39NCFDth6LQogH7S5cCChG7HWraOOxzMlL55Mwr8jjYCFYuQrIwWEvZth2rpREK6d
         NB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773926953; x=1774531753;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mYhP02QkOfJ2jdHzFLfwbhYh2I9Jpna8dg7+RGyb+Jk=;
        b=XYqoIcRm4wxHyphb5aYjEIjAN/xtkvjq9pG1s2uqGbMgT+HGgjVh0Uba1oDX9KGGws
         HYu+BVXCcF48kitiB2RiqOmQkj9xPKInTidv8jVgTg2oZLvkc6dGwqoDiCaFJFfArK9U
         0Kb9XnwpE65EYRBRlOKO4spiroUyoRxrzCRfdtF9xF3JId2v1rOUiENFM8w2qZk9WGVO
         BWjVzSqJA8GdqnpU+DQGX5t80WXZ/B17UiZVoktUi4LY+OvfcGdG+qJSLffG0DmMua2K
         IyHSy11CvtLIQrB0P23wzqbq/DbB5GmTpfL0Kg4TK9J+O/ja36Qe5HA/aqO5BXnvW8qa
         ZIRg==
X-Forwarded-Encrypted: i=1; AJvYcCXZcBKaFMpoKhPvhwvzNzs5pPtnfltMsWMwN/hoVMvy98hJUH+69dqK1K9DUkqJ0C40s0q7Fw7VMIEW@vger.kernel.org
X-Gm-Message-State: AOJu0YxHG5BzgxhYedSn+C/ET8+nkTcfpc/78Pjehu+/I6p6YMkMHJwe
	P042Pa6IfEHzQZ/oDhABtC5f8zz1Xndc0IY8sbykRGwpmQpXDB5achpn
X-Gm-Gg: ATEYQzymeLeEvgFOkWdTyocR/pYQXnMborgzmz6IE31OlcidCiau+y3BPKarlN/SD31
	z18XsGvNs6XDuWAwXsziZHKFRfPHbdayHzcuuGhmYi8+0Ku+DE+0OKMyJgMfqnGJqNqq/7eZG42
	mxqTj2buF0dYI57QpGYWCWbMvBOO8BNIaJg7DcUDrAOvla+FctTqOdNXDfhLED1nCdnzq92e6T8
	tcEwMSudh6Q2vjC8Nf3Ro5H/v4bCKh2W2GTZQbbgPiifkWnc1ddtmDvnO4tS7aImQa+mCtE2IW/
	C0YXKTOveyLcgG+dM6Q9azvD02GEYMLQt1qCIdz9GEVHBX24TZMwnjcrAdGvKZRlktpkwyb11R+
	vCR82N3eOeOVRtoVywDDn4Fm6UKF5bWPwshZy58uyFP6rYy0w9UBVsUZd3CtoFQdpHtmNrLir+7
	Ag2Xm3SqrfDqbl3r01y7wPH+d3m6QtlUrcxxbYZYs65WQSBp7MvbNA6Crw3nO5eiBPecqVw4OQH
	g==
X-Received: by 2002:a05:622a:20d:b0:509:39b1:d4b8 with SMTP id d75a77b69052e-50b14863b72mr100330671cf.45.1773926953275;
        Thu, 19 Mar 2026 06:29:13 -0700 (PDT)
Received: from aford-System-Version.lan (c-68-46-10-116.hsd1.mn.comcast.net. [68.46.10.116])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c6b913e46sm45492176d6.21.2026.03.19.06.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 06:29:12 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Cc: marek.vasut@mailbox.org,
	Adam Ford <aford173@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: beacon-renesom-baseboard: Remove LVDS Panel
Date: Thu, 19 Mar 2026 08:29:07 -0500
Message-ID: <20260319132907.2350458-1-aford173@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277790-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[mailbox.org,gmail.com,glider.be,kernel.org,vger.kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aford173@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.939];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[60hz:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.70:email]
X-Rspamd-Queue-Id: 1F6132CBFB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The LVDS Panel was never shipped from Beacon, and there are device
tree errors, so rather than trying to fix them, remove it instead.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/renesas/beacon-renesom-baseboard.dtsi b/arch/arm64/boot/dts/renesas/beacon-renesom-baseboard.dtsi
index d55f2d7066ad..dcc98e8424f7 100644
--- a/arch/arm64/boot/dts/renesas/beacon-renesom-baseboard.dtsi
+++ b/arch/arm64/boot/dts/renesas/beacon-renesom-baseboard.dtsi
@@ -101,38 +101,6 @@ led3 {
 		};
 	};
 
-	lvds {
-		compatible = "panel-lvds";
-		power-supply = <&reg_lcd_reset>;
-		width-mm = <223>;
-		height-mm = <125>;
-		backlight = <&backlight_lvds>;
-		data-mapping = "vesa-24";
-
-		panel-timing {
-			/* 800x480@60Hz */
-			clock-frequency = <30000000>;
-			hactive = <800>;
-			vactive = <480>;
-			hsync-len = <48>;
-			hfront-porch = <40>;
-			hback-porch = <40>;
-			vfront-porch = <13>;
-			vback-porch = <29>;
-			vsync-len = <1>;
-			hsync-active = <1>;
-			vsync-active = <3>;
-			de-active = <1>;
-			pixelclk-active = <0>;
-		};
-
-		port {
-			panel_in: endpoint {
-				remote-endpoint = <&lvds0_out>;
-			};
-		};
-	};
-
 	rgb {
 		/* Different LCD with compatible timings */
 		compatible = "rocktech,rk070er9427";
@@ -480,18 +448,6 @@ gpio_exp1: gpio@70 {
 	};
 };
 
-&lvds0 {
-	status = "okay";
-
-	ports {
-		port@1 {
-			lvds0_out: endpoint {
-				remote-endpoint = <&panel_in>;
-			};
-		};
-	};
-};
-
 &msiof1 {
 	pinctrl-0 = <&msiof1_pins>;
 	pinctrl-names = "default";
-- 
2.51.0


