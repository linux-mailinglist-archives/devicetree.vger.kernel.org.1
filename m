Return-Path: <devicetree+bounces-273569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EI5RAQcxsGkShAIAu9opvQ
	(envelope-from <devicetree+bounces-273569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:56:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F10F252A97
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:56:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 847FD314DAEB
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13B62BEC55;
	Tue, 10 Mar 2026 13:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WEbIXBVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9659A40DFC7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150704; cv=none; b=OHukiaSJL9cb77JtihYYNWdKMW3gZveuSWWnpxet+IHl5a3m3Q90QEIPlmlz3hByDmstCkgjB1xtowMjmDKAVbM9zcJIZopvK22fBDAKuBZEVjmKz/P10Muf4XYRsa4lPz/nB1eDw2eFEhGdiTubO4OhhHOkzniNvkCV4C91pJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150704; c=relaxed/simple;
	bh=YVDiNvaqy8sCApKrm9kvLC1lhQ9DRY08kWV3zI9fpl4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gM9WnP9u/utPvPjlrSwgj1/SD8JYW69VNDv8MslU2U/2Wt4NI3AF24jaVSeUUeBeBx4AjWmekwPuaKd2i+HPDVIl0LFTBzYlZVDVPhGUEkbZHWhR0p898Mo2UNwjLdgVEeMpgBE9k61raWtHbWz2yKv2zyJdfsghwMKMDCyS7tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WEbIXBVz; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-67ba8095a87so1900792eaf.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773150702; x=1773755502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MyfM+MhrYn2/RsgfcmOrlLX4awk3CYqAr4hHOk/rflI=;
        b=WEbIXBVzA/tK7llpzFmnlaZpg1AiwZVIvkHyVBT/9/9HJttpiFjqmTC9PrX8j6/6DZ
         hJE2gqt0Ks11oj0yjgM1lLKhOhNlsOboGs9BgB/HAGPq1z/9mQmzQap72VEC3g7F+wpv
         3nVWGkiL9xFYLLZAB/gNZ82ooHke859gzgshu1zbBNTTwGbdkKkCH2bN2NUrscNWueGx
         iXOz0eHMQdOwutl5ieHVUd4aeU46AmrrbATYYY4ykycK3qQyFTLk+doDbXkM4wwEaT3E
         uvFGbYxcB2FrNEPVAamiqWelpOv5zPUcKnT9Xf1A2RefgMlnznTuPSiZiKDMX34joZsY
         ZKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150702; x=1773755502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MyfM+MhrYn2/RsgfcmOrlLX4awk3CYqAr4hHOk/rflI=;
        b=JQ6bh/0LBLmf3/dqWgmrTgkKSM7zV6z6QXUdfBn6ZfPvhEHhAbj5ene9DetVq1Ykx8
         JdOylIokY4jLjRG9hdMbuWBAV/kIE4lobreHJKSxX12EGgOLze6wSu8BvnTnWpuxdA0I
         tKbPiE2uQifc2DsnbOBGG0eH+IcQtoo4aqJlQw5eIIF2rtbmXIMXcghoebEmvDUYz1SJ
         4m1pycdn0EWF6LEJ9oNlX3VsL16j4F81FYXRwgtOkbKDnbtYHtm3uh5DaYiICerrlBSr
         vXanpeVJnD3FbwCyS/SYjbNmuxglw/eYby9CnPkVSIk4cBCX+gT+bm7rsJSjUn9a+3VZ
         J/og==
X-Gm-Message-State: AOJu0Yz1eNQ7gh57dfkjBdPeTtm9kUpFjlE1DUvoQnu31X1EeNFUyYdF
	2C1hCFAnH9jClciwENYppzBsReuiIRUuPvJ+KV8qO5FUwIhFGMUEavMAqyUy/g==
X-Gm-Gg: ATEYQzzDLBrkxoTvtAxoLxPTn3SzLz+qfKoO8QupLemYfZ+gAkR8fxm9ysNnZLLxuMj
	6Wkh2caxlyrBILujgKajzfXtkws8d6PGVUeQuPF08Km/JnjJh0P9FKLF0qAj6SvK8jrn4CNaQ6R
	ajJr5aP1Bta2Amb3aii0wE5FCXswwISw2uS7UkdkOQeypkoouXHzMf9cSj7QZD4BIgYjS2Et7d4
	nZJc0D0h214sTXxtmQyiTxBCEeHHlxdc0fP6dGNGN8AjBtyWHnixG8bofWo2oLoyKC0gnC3+yZx
	2MzVcmZ3ejyNRT/RQsTdFiANUKd8sPI2Ljrnt99h3sWkn31QR0Wz1nu6ghIm1bMFmIQPj6AFlYC
	BF0STQCnuXluDZKqr6dCIpzoI1nwG7y+gI1Rpzl+d41OmzmwoVmUcdkYNX95vkUVl7frLv8czEF
	UXuqfmQI4YrwRS2w7kZmuN
X-Received: by 2002:a05:6820:3096:b0:67b:bfc1:c0e4 with SMTP id 006d021491bc7-67bbfc1c256mr1202247eaf.71.1773150702429;
        Tue, 10 Mar 2026 06:51:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67bb230e0f1sm4500971eaf.13.2026.03.10.06.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:51:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	sydarn <sydarn@proton.me>
Subject: [PATCH] arm64: dts: rockchip: Correct Joystick Axes on Gameforce Ace
Date: Tue, 10 Mar 2026 08:49:19 -0500
Message-ID: <20260310134919.550023-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6F10F252A97
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,sntech.de,kernel.org,hotmail.com,proton.me];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273569-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.3:email]
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

The Gameforce Ace's joystick axes were set incorrectly initially,
getting the X/Y and RX/RY axes backwards. Additionally, correct the
RY axis so that it is inverted.

All axes tested with evtest and outputting correct values.

Fixes: 4e946c447a04 ("arm64: dts: rockchip: Add GameForce Ace")
Reported-by: sydarn <sydarn@proton.me>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index e8ad525ba3f9..b69d7aa0b2f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -60,8 +60,8 @@ axis@0 {
 			reg = <0>;
 			abs-flat = <40>;
 			abs-fuzz = <30>;
-			abs-range = <0 4095>;
-			linux,code = <ABS_RX>;
+			abs-range = <4095 0>;
+			linux,code = <ABS_RY>;
 		};
 
 		axis@1 {
@@ -69,7 +69,7 @@ axis@1 {
 			abs-flat = <40>;
 			abs-fuzz = <30>;
 			abs-range = <0 4095>;
-			linux,code = <ABS_RY>;
+			linux,code = <ABS_RX>;
 		};
 
 		axis@2 {
@@ -77,7 +77,7 @@ axis@2 {
 			abs-flat = <40>;
 			abs-fuzz = <30>;
 			abs-range = <0 4095>;
-			linux,code = <ABS_Y>;
+			linux,code = <ABS_X>;
 		};
 
 		axis@3 {
@@ -85,7 +85,7 @@ axis@3 {
 			abs-flat = <40>;
 			abs-fuzz = <30>;
 			abs-range = <0 4095>;
-			linux,code = <ABS_X>;
+			linux,code = <ABS_Y>;
 		};
 	};
 
-- 
2.43.0


