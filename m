Return-Path: <devicetree+bounces-287908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAdMK4fh4GlhnAAAu9opvQ
	(envelope-from <devicetree+bounces-287908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:17:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB8F40EA45
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:17:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7A033304C46E
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 13:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 242A03CA499;
	Thu, 16 Apr 2026 13:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="i9PnDBwk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D9C1A9FAA
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 13:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776345308; cv=none; b=UUTbOq7dxrn95bE8KM0td9eUOOlyS0gB7DCQMab8BHBEDZ3WnrwZxqWT6B1519mGsHEAkhLx8uWLyhvT0ShftZNmUFPXgXbgTLDGohbrpjqRrnGe9k4gX3gCKP9FperjAwvRu+DV3KLRo5CUt53HVHXht22gGl05qzDkgv3iNAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776345308; c=relaxed/simple;
	bh=V8vXVI39jbgE3XwUq/AMERATPzDdNIVT8/Z0Z76Yxdg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aObqG1iXs01Wq8ulalbMfvLyo53iEPDiJ5+4cYQfOJuYoDTNzCYmKFJF/EfVw/55SyrVu1oKN09wQ1ePshSj0BFQ8QRFOdUvY72tpgXegrkSosDRveobOSnBtrT+j6qZ5eiyR3Ui2MlMDN6ivxllM0zzix5DgvgTA4WuvxIC2UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=i9PnDBwk; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 46E3F1A3305;
	Thu, 16 Apr 2026 13:15:05 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1C9D160495;
	Thu, 16 Apr 2026 13:15:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 820831045A15E;
	Thu, 16 Apr 2026 15:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776345304; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=UCEvI2uNjvS5TOYemxXn6zhsX3CoLIJu6y9+89JVl2s=;
	b=i9PnDBwkTxccX0digZkNPq+phiIy3QjOCKV5WcIR1sDhb+Pz6yeS7K3xGtHZeo0pss0rvO
	hIV9UEOVK82YH4OOrMMxNEdXNHYbT2aOS912yAvL2SErQ//uK8WrhuWimdK6xEqLM3mBy0
	2HXAgRXrjHA4t+qvFLUD8W4PTDsoOgN+PboZOdsklAMOOxl4Byg0xoIrXvTzmVZU9Y08tM
	M1cRV4tU0xofI8aDHQEoc9vqeIzNmn8Z/we6i8u1mUvd5xN31ecuQVx6jMk3echqH5xaG7
	VE20Q1pXGHL8cMKix6LQmHe3NSZPYunaYno//GjkpTQR6stNGpqhk22ej753pw==
From: Richard Genoud <richard.genoud@bootlin.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Paul Kocialkowski <paulk@sys-base.io>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	John Stultz <jstultz@google.com>,
	Joao Schim <joao@schimsalabim.eu>,
	bigunclemax@gmail.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH v5 4/4] MAINTAINERS: Add entry on Allwinner sun8i/H616 PWM driver
Date: Thu, 16 Apr 2026 15:14:19 +0200
Message-ID: <20260416131419.3152419-5-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260416131419.3152419-1-richard.genoud@bootlin.com>
References: <20260416131419.3152419-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sys-base.io,bootlin.com,google.com,schimsalabim.eu,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-287908-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[richard.genoud@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9AB8F40EA45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add myself as maintainer of Allwinner SUN8I PWM driver.

Tested-by: John Stultz <jstultz@google.com>
Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

maintainer
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d1cc0e12fe1f..256ab8be19f1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -912,6 +912,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/hwlock/allwinner,sun6i-a31-hwspinlock.yaml
 F:	drivers/hwspinlock/sun6i_hwspinlock.c
 
+ALLWINNER SUN8I PWM DRIVER
+M:	Richard Genoud <richard.genoud@bootlin.com>
+S:	Maintained
+F:	drivers/pwm/pwm-sun8i.c
+
 ALLWINNER THERMAL DRIVER
 M:	Vasily Khoruzhick <anarsoul@gmail.com>
 M:	Yangtao Li <tiny.windzz@gmail.com>

