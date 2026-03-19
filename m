Return-Path: <devicetree+bounces-277555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iArHKGFzu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 261B02C5B9B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7A18305F4F5
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C91736215D;
	Thu, 19 Mar 2026 03:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q/dSUt7E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A794386C39
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892435; cv=none; b=cLio1OOAKJWU2tTPoeJVjapzpqsdpQZyqv5aS6l038fb6C+F++55MKgI6/RMygaddv15PZ3Y8q1lCQyUcG4dq0LDNd6frlVr9M0+ooAnB5gXByAAeYwxsF3BiPH018XDz/D5FIkumDPqOMeQeIWidDGSc5Kd8dzA6mpDXN69jGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892435; c=relaxed/simple;
	bh=nAztSRnJDrv6r4of02zWaoxx8M+gPmoWFdz7JCFm49I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WIQJDheCAAm2f9mxOqdADnsTSjzsgsgF7ujDnhcXizuYXMySRHA+PoDnsWDMnmZMredwjHRqceIDFuYzM+JYm0FtqxV9veXhxnn0MbYzS6yYpDWiiGsXtJhed4yyjPxWZBJocUK51sz+477pBeKDaWkKiwN2ymTsi7bq2boE5BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q/dSUt7E; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35bb863824fso307412a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892424; x=1774497224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dugvu+kfXfd4GY/8CmBdh92vQ65gf2fojnnlSbzYn9o=;
        b=Q/dSUt7E7EqfExHqaUkK/PnGrugzS355CCNhbCQKM+sGM9JBYEpSlOt9X8KxVVH4GY
         V9XDDk+074omcyhbmNVZ4UAuESpk31bCYudrToRN1v5gezCQEl/ZDrCFyaGzHzM5IU4T
         fq68vogDeTuCKCzSnzInlPLAGOGEbpcbMEdTB3QbTwNHojziVcjLNJGprCX5NyQGLzsf
         XxeA+YtF2ZIDa1IEjf4rYntv7s9PKwiaPAiiIMNH1PnKOrDXAhjMJmOeJp7dWAaRdUxm
         I0b3gosyOGLqi2DX6GW0QzkRN50dHhc5EYqFQn+qU9jfYacSN8BWvtoaAVIDYBdTShtT
         wDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892424; x=1774497224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dugvu+kfXfd4GY/8CmBdh92vQ65gf2fojnnlSbzYn9o=;
        b=UDD3fC30+9DM+hb7i9WXH0HP0HiGWzyJX96uVwz6RxIIvCqQ90nNlSPP0Zu2Wpz1Mz
         SSl2Q0IT7Ss01j/oBlZlfz+kLTQh0kIvrYFjbYsw4m1RvDGHRRp3PoroHaqX6NCdB1aj
         hl4+9gqGiLflu/8EgBXOdikj58lchDHa7wwov9occFWuA/f10LwEmn51E5/CAVHPbzrZ
         5XHMIOnGh1HH/kmXVBlQNdtr0cEXimn+lj1r3W2jmDdUjT78EUQB4s02HTJDheJlw/JH
         ODdeaOD9Ih8jaajtpCY/dyKZLz5kHrHXeGQdg09I+iME7qVv5qKAVHjL4IPiO2h/Y6/s
         BGdw==
X-Gm-Message-State: AOJu0YxMr+yZKnG7wwkZtf8H6b1jKwnzpN8xAWxaItMSiN2VylKKtyQI
	7VirrOPLblmUyBKH14+hQPeoM6SSpJJtlk7+Gz97EN3Dl+K1w5H2f2/sm3IZRaQs
X-Gm-Gg: ATEYQzwOq4P38BvRDIMJkDfpGbEID2kdVXSr2hDhAZmh6lO+wdlDeYhoStIwRgc3ZGg
	JIZZvxMihGwxTY+Yis2PzsAZMyQfFwf5tHTqL+BNpY6QR7YNZM9Oi0O9x5AOC2v1q1ub65734Yv
	uotgqIX/GkOiMZYltR45g1pSR+D/wb2dLtXf5iNtGxqszjGmu90hJwd+qYHUgyTuPIHsFQ3LhFT
	G6ZBrwVtdT6VA1sKEP1gRlLj2MOE85WYh2WnrICZ9Fg7NHUa7EIC3pAz8ekf784k7x5eZSpPMfN
	SKlZ2ZMQ599QwE3z7ubZbGCETgsXCI0dK4F5Ds3CM2VNaZnrVI2autvzh6ca2l6ZZgsnHQynT37
	oe42GT6VHYAWsTLbb13VNb4XBeQHxNgptfsBNYwjget/BnDCk1Yiz4R5S186cLM2OteH6OOAZcA
	tmcpCNKRrMTMEy4ln0oIbFCXfKM4fV2Qb1HH86qqAIrgS8boC1eZMGQm8=
X-Received: by 2002:a17:90b:35c2:b0:32e:3829:a71c with SMTP id 98e67ed59e1d1-35bb9f2e0c4mr4631369a91.16.1773892423807;
        Wed, 18 Mar 2026 20:53:43 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:43 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/6] ARM: dts: BCM5301X: EA9200: add WiFi button
Date: Wed, 18 Mar 2026 20:53:19 -0700
Message-ID: <20260319035324.269905-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319035324.269905-1-rosenp@gmail.com>
References: <20260319035324.269905-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277555-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.834];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 261B02C5B9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Adds ability to configure the WiFi button.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index 7c6ad7787945..dfbe16d9f354 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -40,6 +40,12 @@ button-wps {
 			gpios = <&chipcommon 3 GPIO_ACTIVE_LOW>;
 		};
 
+		button-rfkill {
+			label = "WiFi";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&chipcommon 4 GPIO_ACTIVE_LOW>;
+		};
+
 		button-restart {
 			label = "Reset";
 			linux,code = <KEY_RESTART>;
-- 
2.53.0


