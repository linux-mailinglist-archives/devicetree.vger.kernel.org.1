Return-Path: <devicetree+bounces-316594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kGP0K6inQWqOtAkAu9opvQ
	(envelope-from <devicetree+bounces-316594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:00:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C73D6D536B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:00:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kazBMPuZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316594-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316594-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 19DFF30041F4
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7FF6367B90;
	Sun, 28 Jun 2026 23:00:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DF6361DBE
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 23:00:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782687653; cv=none; b=s493K904eFcfQyh/zE5vCKsJpzE7R8SrkwG2WJV2iyC3d9I9cPZUoPSMLiKP6JTld5nkTzlurmtJ7cC27UrKB7gMTU1K2V9M+padpn8NuHmnoP8kI4/hTpqQm4X2cR2qavTA3K07d6W9UeiTMGRaIW54Ina93WvSYQdfEo14jpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782687653; c=relaxed/simple;
	bh=jKxDiwh75tOZpGErzg0ad1TGbOClT0Pp9mWtIM0LDLA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NOBhHVFwrLRLSFdbg0zE074TLqmYqgS4gh6Jpl2uKjm8nQ4I0VRRzZMo2sOEqcMnbQLPqxjlp8ejAgwk2wyxYCtCm78Wid05mPb5lfJDmB1NL2ilS+Dj8qzHZsgSZ8GupK69EWpC1LRLS4sH7NMKOyWD/gdcpgZjcnrOvoKYX6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kazBMPuZ; arc=none smtp.client-ip=74.125.82.46
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-139edc6bfc0so4533780c88.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 16:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782687650; x=1783292450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fy+qb/ZkQcIV3HZAbLA2s/xGRr97lh54TOzRicHKOHk=;
        b=kazBMPuZklGHNuNSB9VvFIiFv/bM9QgPz/iUcH5H7Hu00L+ggsUveE+xduMY52vYYp
         jDA1asf7kKxCoNBM8EhsWvfXY2qNhiFzoB0vLv4YV+PoUgqKpMGe5Ta9kjnoyKi+UhHy
         lBuTG+QLwAn0T9G2VsLdG3R4u6gwmmFW5u4btFFDxcAFhYJWlTEWSj1H6c+5p0CM9b5K
         QM4lbY3ssvA14BSCjEKsAdgo7Ui2/S8+gg+LAEmDJaGJpqqRznVy1mUvPDBcNehhPj4e
         AbCGP88WibvgEy2+XfqX7rTzrDnclnbQNF/M2BGUzmCngrMr6vsVDz3FoKQRe4zWzYTD
         p4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782687650; x=1783292450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fy+qb/ZkQcIV3HZAbLA2s/xGRr97lh54TOzRicHKOHk=;
        b=TIxcpoefTnu9Lf1FFoTcZr99rd8p2QXtcfu6r7NQEZF0oztqAxRIA1odI0Aa4ugDlz
         SUxQURxX8GSTV+FH5RrGv0BRSpblBYuXg+BYbfpz6B0NVAiIXKM+qo3SYBoWh+JPpkBN
         8l2UbvpUSWTzHtuutcSj0FjWM6ORGlo20uu9wBpE8cClsxW8o5NI742/Aw38T5d4Wnkp
         qel8BTu9XQ7UB9QObhOmq4Vnog+XyoDGgrbCpPd3Mg78qVVp2cRxzddxVZosjNszOXmf
         5uwBRq09pcpSGIahBsO+ZItd3sLyG84aNUy2Lo0YvnOu7HZUdut6qATBf3+o+bHO6gOA
         miWw==
X-Gm-Message-State: AOJu0Yx/Ejrz016zjIsK4llyaE9rAWYzwYipmDUPOPrQiDTXeRbFpJtk
	zoF+nSC8DKhFdHZDtaItLG6SFRMqPqSiR3RplwAg9D8Dm+KPqMIJAq+amDni6g==
X-Gm-Gg: AfdE7cmH1ykiolCWFJ7mkwjUTySKxq8/XnCteLc2ssn8z3z2KQXRzsM+6NgvMvvxzSv
	xlzCkDnnsgQwcfL2PFTaV+V8aQeu7tygWBvbAzEHzshMoqqojwNpR4eg0IJs9o9I9Pnmcr9RJjX
	3ax/pf4tCEZZCDlT6G197WMQDVU73QdPho8UJmrHXdL+OqaodCJoOMacenT2M//QlkE3zObyV+J
	IYohsbu2BVMzuNKtx4LNstUh9R/kZf0gT+TB+eahhY9tkuoMAQr3mKSQ+Q0jaL+UiwVpQVXCfHh
	Xt0p/FB9TFZ+O61NH6hBr/4gWPRF/IbCuLL95TDjlZ9S/FG9yYHCU0KXu8Fm+ZeAz0Aoh5rkREG
	4HPpQlssubuwQ3W8mFJJdz0DgbwIgBBgLNFJGN/gjSVqJqJTcx+F4RuV70zMI2cIPUp0u4WHWV2
	+W7viJkfkXI6gpM7GbMmdD18GNJkcDL9uevT0pnq07q/yuJKT377ys7qdU3alugcpFW033XGnyf
	OponTR44A==
X-Received: by 2002:a05:7022:790:b0:139:ed59:4b7d with SMTP id a92af1059eb24-139ed594cafmr6888379c88.45.1782687648121;
        Sun, 28 Jun 2026 16:00:48 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d8f318e7sm41359030c88.3.2026.06.28.16.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 16:00:46 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dennis Gilmore <dennis@ausil.us>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Marvell Kirkwood and Armada 370, 375, 38x,...),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/4] ARM: dts: helios4: add vcc-supply to GPIO expander
Date: Sun, 28 Jun 2026 16:00:40 -0700
Message-ID: <20260628230042.1204293-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260628230042.1204293-1-rosenp@gmail.com>
References: <20260628230042.1204293-1-rosenp@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org,ausil.us,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316594-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:andrew@lunn.ch,m:gregory.clement@bootlin.com,m:sebastian.hesselbarth@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dennis@ausil.us,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:sebastianhesselbarth@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C73D6D536B

The pca953x driver requests a 'vcc' supply, producing:
  pca953x 0-0020: supply vcc not found, using dummy regulator

The PCA9655 (PCA9555-compatible) expander is powered by the same
always-on 3.3V rail as the other I2C devices on the bus.  Add
vcc-supply = <&reg_3p3v> to silence the warning.

Fixes: ced8025b569e ("ARM: dts: armada388-helios4")
Assisted-by: opencode:big-pickle
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/marvell/armada-388-helios4.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/marvell/armada-388-helios4.dts b/arch/arm/boot/dts/marvell/armada-388-helios4.dts
index 05540b8012c2..cf0432a0e71a 100644
--- a/arch/arm/boot/dts/marvell/armada-388-helios4.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-helios4.dts
@@ -169,6 +169,7 @@ expander0: gpio-expander@20 {
 					gpio-controller;
 					#gpio-cells = <2>;
 					reg = <0x20>;
+					vcc-supply = <&reg_3p3v>;
 					pinctrl-names = "default";
 					pinctrl-0 = <&pca0_pins>;
 					interrupt-parent = <&gpio0>;
-- 
2.54.0


