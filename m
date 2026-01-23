Return-Path: <devicetree+bounces-258839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KETXOZ1Ac2mWtwAAu9opvQ
	(envelope-from <devicetree+bounces-258839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:34:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF17373712
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 62BDC3001CF7
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 221E6367F3F;
	Fri, 23 Jan 2026 09:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SBj3gjtJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70B236A01B;
	Fri, 23 Jan 2026 09:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160843; cv=none; b=FMGExUhahjvkoGuwcQ2WuiYfHyctatU46D09J25J1TSUZvkI4xgZySgedIBLpH5SxL1hnsE6fTO1T2Vj0I8S3b82upoAjLXlEtSqnP4waZCumytV30g8NGP6FZnYcqF23h9rEifmIqAWEgF143DMrWPen+A4jHj8et8QcNBkXMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160843; c=relaxed/simple;
	bh=yPdMZHCd+odB+tMLYC+rVsxO4J1sPgCZ6HLjvUDlrWw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D8+BLJil07X7u6ndHZc/zdYphQOOG0JWa24DNn8dwrGYbGvk8fzMCnqAlZF7AXGGQLawDCoJy0t3vMa3xD6Ehwg2o3YXIEXT1ZLeZPXskTXtacsVWUEJyW/eUQesXHxVlJ71vOxE1sNaoip+t0zMGdkdpeVoDfwJTX5q1lqRzqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SBj3gjtJ; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id F3CD8C21ABE;
	Fri, 23 Jan 2026 09:33:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C68606070A;
	Fri, 23 Jan 2026 09:33:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 742EF119A879B;
	Fri, 23 Jan 2026 10:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769160831; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=6HdXNZ3Nba+GjaEjoZsm3NjZLI9rre4BgbexuF1mMZI=;
	b=SBj3gjtJo/1rgjyDl7/r5f9nceA8TyQzz6LvG0/gA6DDvoG+96GwNz7Kv6prMAItwE0JKX
	WdLOrIQ7+9MDcHUVFxpUPsliWfeMACv6NKH1l6zqyuogefVe2KqXYyePwE+IZs2Q2i3pCh
	YoKw1eecQLU5X5yGwfEiEkDgRcK/inTj36l5jF67Sc2UUGHI5NZ20mQ06GOtLqF1FkI0Pn
	F/yZSP6oQs3oNrjwL5wsfAU0qUSUyM3/FLbcOQ2ADrO34wXMCF451TsyGXF7JOi6KPAmFz
	+gSeJIdNrKn5CPY1hyaMrSIKM2Xnuxyxrqv7DorfreZX3yV/14o8E9rA4Xwlyw==
From: Richard Genoud <richard.genoud@bootlin.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Paul Kocialkowski <paulk@sys-base.io>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH v3 4/4] MAINTAINERS: Add entry on Allwinner H616 PWM driver
Date: Fri, 23 Jan 2026 10:33:22 +0100
Message-ID: <20260123093322.1327389-5-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260123093322.1327389-1-richard.genoud@bootlin.com>
References: <20260123093322.1327389-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,csie.org,gmail.com,sholland.org,pengutronix.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258839-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[richard.genoud@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF17373712
X-Rspamd-Action: no action

Add myself as maintainer of Allwinner H616 PWM driver and device-tree
bindings.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 765ad2daa218..ac7b07f4eddf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -903,6 +903,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/allwinner,sun50i-h6-dmic.yaml
 F:	sound/soc/sunxi/sun50i-dmic.c
 
+ALLWINNER H616 PWM DRIVER
+M:	Richard Genoud <richard.genoud@bootlin.com>
+S:	Maintained
+F:	drivers/pwm/pwm-sun50i-h616.c
+
 ALLWINNER HARDWARE SPINLOCK SUPPORT
 M:	Wilken Gottwalt <wilken.gottwalt@posteo.net>
 S:	Maintained
-- 
2.47.3


