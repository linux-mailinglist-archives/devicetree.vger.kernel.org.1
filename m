Return-Path: <devicetree+bounces-324910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DmKqBWKrUmp7SAMAu9opvQ
	(envelope-from <devicetree+bounces-324910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 22:45:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A387B742D76
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 22:45:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Oqgxc/IL";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324910-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324910-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8353304BE66
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 20:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BA231813A;
	Sat, 11 Jul 2026 20:42:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03643112DA
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 20:42:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783802574; cv=none; b=MQvIppi3/ugWxh20GyiAtPaiPjiHcJjZPvzW6WOvB4WFlOUxah8G9X+rjsPe8kPikHNWaw/rhrhTUONOHcedDwlnlwBFb+JdtTcaiw9pydedlHVJzJ6MJbQzTjoA1gFzMVu5pZeBR4Oy12o79YjPiy754IFZMdhsLZZNeC9tuak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783802574; c=relaxed/simple;
	bh=yVMP8UAtXlu981/AZfXfuu6ntdCZq3l09RETxP3vnIQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M96cwo1buRmQFeFhgPsf509x9Y9VXHoLaQhpW28u6PLY/dwxdnN3GYSXQL6WuGA0pXdQR8yl0Bb6ERS8y/ZH1B1oS4PF146QRwKtTLHFdD+GeSNVek+OPDYA1rKzZByQMuOm3zQs8Yg+qVdaU0wQ3+N6VYKEg/vqaC+LCBnrioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oqgxc/IL; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-493ece78b0cso14402655e9.0
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 13:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783802571; x=1784407371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VDpn6H9slILEKuaZA30ay5+GU6mS2ER9t41k8f7Sm/c=;
        b=Oqgxc/ILhJbdZLdffAL/Gx5QOoL6JDhumNO3glwYxoqTfqXH1XFbpVBxn9KEUuCOP2
         Ca2juNqV6dbJZb+fDeGFzBS7jKceYOeJbtg+NstjzdaQ1mkA3T81KnHDEu6qcPG4bsvU
         G20yAO2J/mMz8enqH8rsS/LTRjXej5DN6dhKptOxXsqaZagV6FeISGFjpsdXxwppvmNv
         M4Rj/SDdtnPtz3/Bchld4+bt9yyOs/WKHfn4v7yPVve3WuKo9hyBB976i0ksOTLLhPhN
         AXwYPAYt05YGrNHILHz0I4wRUBsCaZ8EdjfGgfMJLa0CJBDOwkebBLSUOHT9B/r8Ohcc
         p3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783802571; x=1784407371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VDpn6H9slILEKuaZA30ay5+GU6mS2ER9t41k8f7Sm/c=;
        b=j+y9A8H0AweybJ1/NFEFkdQkB1Q48SenEPXvkBbbXNgzbPWaOSu2SL2sU59FG4a/WH
         CWq0WMWYn2cABNslTWkGIyMX+mFjhGZMvJlMAzTIFRUIGrIhniHl1bRG5JQ+8Comtdhb
         Lz4re3DVuQ6mhZ8MWgA+PZjif+veIdhw9hpUf2coIVzszomdvH6U5y+OP0spgU59G3hp
         cwoHbkZnEZuVjLdtD3SVptkouyCj1zDgq+gCvO+pCJnDBuQd9cVxyqDjqfsQDvbWNx4O
         kHgFhbgyMee+8uFvNxQfGlf9c0khNrPbWwGdUiXM7Ca74NZBaxXFuMAlbQr/dGbsP8yU
         5rwg==
X-Forwarded-Encrypted: i=1; AHgh+Rp7BrldaFng5+0Q2eRBFVO6QtAxkPJBKl1A+5APgPxCshqfAy3SBY7IGDvPLlzdFa17Wb7xCeV6hWBq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy90KliEKJ7RMeyZ0zdHGnp8cIS9F2ypj1gDrt71zdrCw+59fqs
	4b5heleGFGkYLp3vKTWu7/gtuF56f6pM58UH9Pi0cjkudk2A0yK4WhIc
X-Gm-Gg: AfdE7cnhLORMdUjn73DUZmZn9BVn+6ELSJaxw/DAnJxkrCmfF8sXvuBQ/hikIgMvZTY
	uIdEjEtLtbW1I1XCb86Q9lI6Dr75XIlumMNubeOAYWHyQftRorCyv/e2wRDYNsinhjhjPkKX3vx
	Xm5Y9B/mpTze2VDqng83wIVrppJCYGk3fo10fuGzjlZVXslTJadwPHHm1gQAH68jJ70zfO4/p6E
	/IMsfoJfhQ0/ujIG6oHsLVPTRM5IlRkgCG5LjaHZlYrfGQC+siyQw4b/XqfNgXrVHcBOzExKYer
	FQReHXyFyoFHGtp1k5zwyBqqI2LKYEMl3k3YWtVzxNQ+mjtPhAovfawGVFzxDBQZ+b738DGILnD
	5e71YMXw/H63dJLFuZVZ/ElWYS3SardBWuoiH+cjt6+NNcJnM/0grtYhoZ1KnWdKFxEHorOg01g
	vcWuWqL8y4MzXG2V/yIKJKP9/3TSG6Pn56nw==
X-Received: by 2002:a05:600c:a31c:b0:493:fd5b:2d5c with SMTP id 5b1f17b1804b1-493fd5b3043mr9045005e9.22.1783802571359;
        Sat, 11 Jul 2026 13:42:51 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493f2d97527sm172704725e9.2.2026.07.11.13.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 13:42:50 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	--cc=linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH v5 7/7] ARM: dts: ti: cpcap-mapphone: add USB safe pinctrl state
Date: Sat, 11 Jul 2026 23:42:10 +0300
Message-Id: <20260711204210.197144-8-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-324910-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:linusw@kernel.org,m:brgl@kernel.org,m:--cc=linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:ivo.g.dimitrov.75@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:ivogdimitrov75@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ivogdimitrov75@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivogdimitrov75@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A387B742D76

Add a pinctrl state that configures the USB interface pins into a safe
GPIO configuration. This allows the CPCAP USB PHY driver to place the
pins into a defined state whenever the USB interface is not active.

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 .../dts/ti/omap/motorola-cpcap-mapphone.dtsi  |  3 ++-
 .../dts/ti/omap/motorola-mapphone-common.dtsi | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi b/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
index 51a858021541..368cb539997f 100644
--- a/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
+++ b/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
@@ -120,7 +120,8 @@ cpcap_usb2_phy: phy {
 			pinctrl-1 = <&usb_ulpi_pins>;
 			pinctrl-2 = <&usb_utmi_pins>;
 			pinctrl-3 = <&uart3_pins>;
-			pinctrl-names = "default", "ulpi", "utmi", "uart";
+			pinctrl-4 = <&usb_safe_pins>;
+			pinctrl-names = "default", "ulpi", "utmi", "uart", "safe";
 			#phy-cells = <0>;
 			interrupts-extended =
 				<&cpcap 15 0>, <&cpcap 14 0>, <&cpcap 28 0>,
diff --git a/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi b/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi
index acac3c243c7a..475ffe678e76 100644
--- a/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi
@@ -352,6 +352,25 @@ OMAP4_IOPAD(0x1c8, PIN_INPUT_PULLUP | MUX_MODE7)
 		>;
 	};
 
+	usb_safe_pins: usb-safe-pins {
+		pinctrl-single,pins = <
+		OMAP4_IOPAD(0x196, MUX_MODE7)
+		OMAP4_IOPAD(0x198, MUX_MODE7)
+		OMAP4_IOPAD(0x1b2, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1b4, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1b6, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1b8, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1ba, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1bc, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1be, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1c0, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1c2, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1c4, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1c6, PIN_INPUT_PULLUP | MUX_MODE7)
+		OMAP4_IOPAD(0x1c8, PIN_INPUT_PULLUP | MUX_MODE7)
+		>;
+	};
+
 	/*
 	 * Note that the v3.0.8 stock userspace dynamically remuxes uart1
 	 * rts pin probably for PM purposes to PIN_INPUT_PULLUP | MUX_MODE7
-- 
2.39.5


