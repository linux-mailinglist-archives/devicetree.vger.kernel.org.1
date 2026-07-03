Return-Path: <devicetree+bounces-319932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hr3sKqx3R2rIYgAAu9opvQ
	(envelope-from <devicetree+bounces-319932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:49:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FA370044D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:49:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WYcG4Kma;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319932-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319932-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 60FF730472EE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B38E389443;
	Fri,  3 Jul 2026 08:46:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8746386423
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:46:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783068385; cv=none; b=Ob7aQp8GCVjbmfxCEsZ4t+nn0nhyCvC9p150Yf+jIn6m9FVVjjK+ELpChznjbXQOINU42ixg55HqDP6VBqvG36uFmudWGOHiN+fbF/tiK+paV4qNfSGoQU279EQocM75/c9G/8hpaklQdOgXZ1w6bd3QBnkKBrhDX7k2aTmiHqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783068385; c=relaxed/simple;
	bh=IT+jxrhfm+hmKKPCzcfibZSJDcxQg1VMKfZ/g39Q2Yg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K8vdc/DJ7qhiCsORbU+BkIWjT6md5SVa+E6E7n/3hmxGUiMJTv+ws3CQEzA7geIxR+mfeTeouzVewX3F36PJCZ39TRo8I6Sf64rp1Mp4sJluBoSLjBcINr+Pcpw5orM5an3zW3EjftycYkmY4Xp2drpnCFNoe/2ODYg26pMxiOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WYcG4Kma; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-493b6f1b14bso1276555e9.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783068381; x=1783673181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+RLRzA3ro3zl+cujzGRMZ9GCKdfl5rt1S6Cb2aE3ttA=;
        b=WYcG4KmaAE8TN/sXsm7dfUkdWG/tmNboa6vV1xuCfAcGRFRpWj0kMJ2gacgBoASdEz
         Ip3unnvTtOJzG+gBuRX3pb3IU043sSse70ls6m54AE07tLAJEXTgqpDcW9cRdUg/6RDS
         vqXMTbL6n0/uqL+FscMMjiRLjbYUrGZVuUJSq44r9/cnZWkj2KmaFNTT3q1pzHzA+vDW
         LjuYXNyaoEo80klXo2qbl6NyFYWBSVzHeQCZnaJoTrt356tb21f9vEdSaYQ3n5c9h5x4
         LhqJ6vzUfECWd4bRx25CygkLhwItEyUvBmjP2JcwVQ+Y/sd2D7FzwVDMWoIbarNlp7oy
         oigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783068381; x=1783673181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+RLRzA3ro3zl+cujzGRMZ9GCKdfl5rt1S6Cb2aE3ttA=;
        b=COmH4LrXQRpxx+Mb+ZkpGEXHPDjyQQwMmFA+iEgQDQjUbvP1JyXnlu12VhO9aBsWYk
         SnB6lB8n9Zczfi1OIFT3syOGDZnzHB0jq3lLfCf71uC/SY6PPCC6zn0KL6glExJuMKha
         n6+WTEUO9j/o93gMCfYJp6c6GO9P344U9LcCTTu9fFCxrjEDXycHSw9t8GSUkDTk6yqO
         5i+Nvt/TQkR9D7wVVnHIQOaDnhorn9z+yuLrPgmFFCKaO3aM6nFT46BqHxrT/lcEuq/z
         uR3R0UdEWrp6L8pYfkfn+K13QTLwpsjbQhiyftRbM60eQowzoI24iwPPEzI6lUo3B/No
         YxbA==
X-Forwarded-Encrypted: i=1; AFNElJ9y+5qbhaL/P9GrSKWwbqJf7CubtDVXeNAC1UyCfu/bLiUTIrixcL1DDwicWDUq7OkNnF7xSnEasKnH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy93Bv3c2PacJiRFvk+lem81rGGhavDhruRwIbb1A7AirVHUf8O
	Rc/tL1jD2PXtRJQd8Gos1akugz0GDV72dK+dUP/RtANVLbCpqJThUgVd
X-Gm-Gg: AfdE7cnY6aryNpogLH79RNAZ6OW1WcTOYdW33W9E/8y8oNVOTaxnvvQk7SOUUjdQHz1
	RUXeLv5NpHhff9SWf/Y8LM/O8nIclMTe/abxGTKLyA1IcQJZerd3R8wzFkkfMFDBEZFWmdnQmSZ
	B/7ASW4O8dPTh3i91rt5hTGeQAAJRX0o/tkmCEJwcJJS9Crf9AcVyHCYtf+XkCxOsf2z6R5kvcZ
	ueDU4Cg278SEB+cJjEI8UK9brrkRGwOqOKrcnMA/Iaad1x3PRauTquSWu21OWx2e0d6L2ZEaHR8
	Nc1vw0C3e3+ZQvtrzmrX1G08joq2CoCQqlQmab1D3Gi7kCuebwF+FHBIdfXgyGsDtUzvFYarx2P
	VP8Ww4kJDv2Vp47yzZr/lSVusR5W3KApKm+YrFirau6RAC+5IepbxnyY0YRhpzkrsao3F2aaNNh
	3ak+TuoxYQhjuwZfGWbJPz6N5qeGx9NyOvdw13LH/k50lQPwZTTyWyEr5W5Z00zFoeJpDaB/kug
	flGdWrDn3pB6rK3kJhhsCNbMg==
X-Received: by 2002:a05:600c:2302:b0:492:46c3:c7dc with SMTP id 5b1f17b1804b1-493c2b50755mr81163285e9.14.1783068381013;
        Fri, 03 Jul 2026 01:46:21 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493cfb6f199sm6335505e9.3.2026.07.03.01.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 01:46:20 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v1 12/15] arm64: dts: imx8mn-var-som-symphony: add wakeup sources
Date: Fri,  3 Jul 2026 10:45:59 +0200
Message-ID: <9223b0d0cadaa8a3340f8866b550d5155aa2b621.1783067947.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-319932-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,variscite.com:mid,variscite.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47FA370044D

From: Stefano Radaelli <stefano.r@variscite.com>

Mark the Symphony carrier board GPIO keys and capacitive touchscreen as
wakeup sources.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index 4898018f030c..c98dca8e7889 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -40,18 +40,21 @@ key-back {
 			label = "Back";
 			gpios = <&pca9534 1 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_BACK>;
+			wakeup-source;
 		};
 
 		key-home {
 			label = "Home";
 			gpios = <&pca9534 2 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_HOME>;
+			wakeup-source;
 		};
 
 		key-menu {
 			label = "Menu";
 			gpios = <&pca9534 3 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_MENU>;
+			wakeup-source;
 		};
 	};
 
@@ -187,6 +190,7 @@ ft5x06_ts: touchscreen@38 {
 		touchscreen-size-y = <480>;
 		touchscreen-inverted-x;
 		touchscreen-inverted-y;
+		wakeup-source;
 	};
 
 	rtc@68 {
-- 
2.47.3


