Return-Path: <devicetree+bounces-269465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KI50AuxFomn31QQAu9opvQ
	(envelope-from <devicetree+bounces-269465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:33:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 532CB1BFBF8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6F1F308F639
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB390225760;
	Sat, 28 Feb 2026 01:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NhlLmxRq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AC323AB98
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 01:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772242388; cv=none; b=J2sgvgJzI6Jqf/1biDyuUN8qV7CSKnFB4XQaiIFe/mFndLyYL5DhNm1vBYt5VNqAccSjm2rf1yBFlDQDnMI2+FGDSI3dCpBk+sl7jX+sSEXYpmnRWYX6mkcscLAHQwpXC1NFrsfmecCDeDP9pntkXKNXsBDeycH0F1az9CoJcJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772242388; c=relaxed/simple;
	bh=RbSWrvnFmeHMz6dyt5hCR4sPG8nwFgL+L2LORwJue+8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LhPW/nR4ey6oYrWMLIQB1IFUlgZPwj6ia9Wy0G/p3DTavsFrFskIR+6p/s/PCdQs7f/PsWPLFrh4nYQoXIesfVdq3Py654b/YO2J2DUfZsWh01p8TEVjYm/hbqCLd8B2V84n0wsW0HQF9/5siYV+XlKDudoByk2+GT0OfMmGQkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NhlLmxRq; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56a857578a8so940272e0c.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772242386; x=1772847186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ypXMFVhzt8vhHA0jPR3q8crLwJ28xwCmkdh+GFTjYb0=;
        b=NhlLmxRq1gkW67jNcE6a3VpBeYkEKYGrE9Y/wL8G/HfjQIWKAcvzkD6oROM7ZTCwBY
         RvOyIE53aVB9dfbee+K+bsAxqH5QjZfBsxK6YvJoebhg1gZTJqTg9P1jD9LnmYm60hYv
         8o5iXn/0SR8bPksviLougx9kqVdNTL1gvWOUuIEvjvfdGSwHqfbUfmLCgfeQrwCDhF4+
         DltU0JRaLwsgsSYkjP8p7sgzv0M6brGKILTMv17X87E0KXjpDGsjg0QLDaJjVqIxYOG3
         xWqK+6WNIoU1X+twlCppI4ruPpMyvww28sT8XAWbVCTdhr4jInRX2iVqvCcDzVRLfJDT
         /Vnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772242386; x=1772847186;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ypXMFVhzt8vhHA0jPR3q8crLwJ28xwCmkdh+GFTjYb0=;
        b=q2rH/u4m4FS9Ky+i5hpl9Esuxn5kPDeqnZxM9nRjrVjanZ/fA4oy5W8WfKKIysG6L4
         7nReznA4+GFAs9KmvQzjBI4Gp8xzaTV8/iEmO1zSzA1EVXzDdeJGYngDsAkTrBHxpNw0
         FZt1OE/rxcxmtapM+siIwMgXMbdp+nXRDjYbwn+KA+JWW+4Nz8stf/bxTMGAYEcRVknI
         i/7dLxk/duKNxVU/eUEYmA3vQUIksU/dN2knJOJQWHYnZnZeDM6ewz4BRdtNTrXc0GCo
         WtPKMwjok3pDVHcI7BQFXFHTmUzAa7WY/PVGRrocfY6/3dGhNwTK+OSJ4xxiXDlB0S8D
         XoAA==
X-Forwarded-Encrypted: i=1; AJvYcCXqTGcTt5Am1jDWAkafok7W6DhFGhuIAKaj8mAKNcggTou0mV67zEbdut58lBOw7ZAytArT7aSdecvz@vger.kernel.org
X-Gm-Message-State: AOJu0YyQOs9aOs4zSoRnEayzoQQcEzHdJKyB6EYOC733Ox10TYGo3if7
	PQPpdiQEg5xnfpKv8d7K919Qt+pFVAni8m8VMmg4iBz4NRW/8fXaPxA5+YFjjg==
X-Gm-Gg: ATEYQzxCktydydjVd1JUdCsivmfuRr5880xt1Z6TOncW6eW+1tnw4QUXctjvFVGBbyh
	T0ekBdGYmZUbsR61P63SxctV7xUBoSCtbZ0uniiEBa6Gk+mHYwBtgykMr4BaNlIxbHBy9GTf/Pn
	sskwutziA+mNzDT+CUecN8dg27aFjFhQuIirbitazipSmqCIqSLAr4zjP61D1oCiy0ur+kjoBcB
	sFR7wL47ENobYIVcWfFfeAdwYCnMyDz/lVmYVcTDdPR4IQq5S+LHtNPrELch7aNCIfHCknAtADW
	qEzVIaTU6k02xcH4B20q/YOFscgZ7uYqAnM9NSt6IqJYLCC1HRQnGYZ+YG9YvYuDu6Sq+uD59Ek
	GhKo6Tu98TYQFcvE4Ea5XtsZhX9cRjSEDJ8NaCv5rVV1D+UHvNFxXt9jMC0R03jHojSZUnLyiOH
	8oiij/QyJUQPMM6du9ycr3IwZu42d+MUKxSoaI4r7zULCIcKJqCVARr7x2GrtgVJhFZYjz
X-Received: by 2002:a05:6122:e145:b0:563:702b:e2a7 with SMTP id 71dfb90a1353d-56aa0ab1c3bmr2230694e0c.19.1772242386359;
        Fri, 27 Feb 2026 17:33:06 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:2e2b:437e:ccf6:b644])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c7a8sm8950597e0c.4.2026.02.27.17.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 17:33:05 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy node
Date: Fri, 27 Feb 2026 22:32:56 -0300
Message-Id: <20260228013257.256973-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269465-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[3.147.135.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 532CB1BFBF8
X-Rspamd-Action: no action

According to rockchip,emac.yaml, 'phy-reset-duration' and 'phy-reset-gpios'
are not valid properties.

Use the valid 'reset-gpios' and 'reset-assert-us' properties under
the etherne-phy node.

This fixes the following dt-schema warning:

Unevaluated properties are not allowed ('phy-reset-duration',
'phy-reset-gpios' were unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036-evb.dts   | 4 ++--
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-evb.dts b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
index becdc0b664bf..c8100dc4c7ce 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
@@ -16,8 +16,6 @@ memory@60000000 {
 
 &emac {
 	phy = <&phy0>;
-	phy-reset-duration = <10>; /* millisecond */
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
 	status = "okay";
@@ -28,6 +26,8 @@ mdio {
 
 		phy0: ethernet-phy@0 {
 			reg = <0>;
+			reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index ae2f84a4e922..bc6e6468fcc4 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -102,8 +102,6 @@ &acodec {
 
 &emac {
 	phy = <&phy0>;
-	phy-reset-duration = <10>; /* millisecond */
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
 	status = "okay";
@@ -114,6 +112,8 @@ mdio {
 
 		phy0: ethernet-phy@0 {
 			reg = <0>;
+			reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
 		};
 	};
 };
-- 
2.34.1


