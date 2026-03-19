Return-Path: <devicetree+bounces-277554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOlmMV9zu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 453CD2C5B93
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE85E30292E8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38ABE38910E;
	Thu, 19 Mar 2026 03:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KPbGJkjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9471837B01D
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892434; cv=none; b=G6JhiwiDHbv17y3p43/MnY+bfKF6p8rVoVQdlyw5HQmodjKwKk9LpRjWaWI4ziv/3QRSwT48rvjSXKGMcNMFID/BPElaWsNflF2i5vWKcrBotXCz2kiBANpNkEkJr3GhI6Q6X3qW5UAdTvDh3Ft+YTEvTI+WfbQJaS7OTafxdYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892434; c=relaxed/simple;
	bh=DMybCR/8IYIzHlpZg4fupu2M8J38Crk+HyilhZb7K5E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W38KhtZn5KZzoVfuPBDr3svV7FjjfzEpabH/uyzIKPMJog5RtV4nxwwBBnq9dsqRzV8cQOkPsSol7x2bXT37jWonmmCZATbmjdSWl9vLV6n0MyDKdft52Cs4Vnxgpa7zNFDFajMIc0rUPlICVS5XFcL+OiRtKxEK1yC5Eqt++00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KPbGJkjT; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so393861a91.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892425; x=1774497225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vj6rcJFTO7DaWtVeHI3TKWH2ayBVnwxQ2FZw6tvwuk8=;
        b=KPbGJkjT6ENRQpCINZCL/idA96OmcB7+c71LQ8dWLzxfkli6yEFr0jw9vr287M/cgm
         s52jqfn1grXKCzywiQdaYfeNDZQH8Kr8b97SOUt8T38c84BSW3KdwgtHxtgy+EyoYUrv
         qbYKPsFB2cqhf71KsYU61JgabqhnrfVacKr75h+V980nWCWTkYwFl9gzr337aDOZY103
         sLe5EQ+3mX1p7iAoHfGXJLMEvLSFJj2B3FZZNOqqOeuHQASw5z4Z2p8ZKv0gOYUTlRM2
         XK9ptRIIn4+anILvjcLx5/kHB/8wt2zCGoAmNjOTS9FkcH0OcM9WNpPUBDaTf6t6csfK
         nEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892425; x=1774497225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vj6rcJFTO7DaWtVeHI3TKWH2ayBVnwxQ2FZw6tvwuk8=;
        b=aK1QB4//KmgKUk/lHLSTubEfGImIaKO/hc9PekYoL4278X+T5P1PyQS7z9mbJR1ilM
         GxkLF4ZrlBrtj+yBiRZwdPqb35dzUMwph44HlljA3Wuiom0RYRIJbUwfFb6icqt/SIJj
         AS+HbBCs86AuK0GwSb9chPRf5L1Fu8wIE8ufcEan3KMlszCZhof+Qew7a/vuL4ZIx+No
         IReRvlY+D/UG/ounCnI/QHAkzCYVVEFkNuA9OwC1+27jjHaTWzlTxM9L7Ae2Sud8ypEv
         vX88TS7mouUrJb7tcjLZSj/WhOotfbiK/qEprJ/GBMfzul0JherJ0gSsA1lBSH/UbjJi
         0xjA==
X-Gm-Message-State: AOJu0YzZ6Vp3UY+o2cKEI4QVcI71n+pSrMk+2N2LGaRtTXJ9UDYv/20X
	J+lXsLXytF99LbaGyVQpM6Nox6+4ltQ6184oAQgfU+d2Of958xxloVLgH/dkDh6N
X-Gm-Gg: ATEYQzx4JKNIpg+giqUJlYdQPkQLwyrc7zyhEMpaK7Iw+YiM3l6mQ2/e1LWWMTC3SNl
	1/gfN4nB4VXUlVnOi/v4/4faQ1wZ1iXdhSIZEAQ/nx6h3EmrSGJNTFHxi8dG5PjYf8mb1yKcT0Y
	EgGKtvjQUrh4PEPYhvosiH0sysWAzyeXcyWYbhWyjscnHzM4VvXssGO8saU7NDPv8C6e+ijRBig
	z9BAuiuAhLWd6rmsDsqWSYgmp0WRGQzzmhD+k1jJJAn9zJ6sL/2bWkQTND1nmFRO8tK335ZroJ6
	X9XNMJJV/y9/WI98jhD2Tk546fN9eRfwKOvr+NMNrsTRDEzgxgOTHbOGPB83ka2IuL7m4rF2RG1
	9d878vj+bt/2pA7vfJY2kTryzKLQpc0ReSe3YROC6Sg0Bs0oubyYcQvjoeGLJZ3CrNBdlBrNWip
	xPYPjtHzW/og6mhMYTD1XGKKOaqp92wekgxMw6l5YUWkUTAjOM2c+yMkU=
X-Received: by 2002:a17:90a:e70d:b0:35a:275c:4c27 with SMTP id 98e67ed59e1d1-35bb9e3b95amr4766407a91.2.1773892425145;
        Wed, 18 Mar 2026 20:53:45 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:44 -0700 (PDT)
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
Subject: [PATCH 2/6] ARM: dts: BCM5301X: EA9200: add USB GPIOs
Date: Wed, 18 Mar 2026 20:53:20 -0700
Message-ID: <20260319035324.269905-3-rosenp@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277554-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.828];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 453CD2C5B93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Allows at least halt to turn the USB ports off.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index dfbe16d9f354..a579c372d404 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -58,6 +58,14 @@ &usb3_phy {
 	status = "okay";
 };
 
+&usb2 {
+	vcc-gpios = <&chipcommon 13 GPIO_ACTIVE_HIGH>;
+};
+
+&usb3 {
+	vcc-gpios = <&chipcommon 14 GPIO_ACTIVE_HIGH>;
+};
+
 &srab {
 	status = "okay";
 
-- 
2.53.0


