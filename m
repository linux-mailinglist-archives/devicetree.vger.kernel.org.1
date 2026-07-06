Return-Path: <devicetree+bounces-321003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /dNIBKWDS2rsSgEAu9opvQ
	(envelope-from <devicetree+bounces-321003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:29:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 579D970F2FE
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:29:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bJaJlDES;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321003-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321003-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D12DF30BBD1D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2CCA4E3795;
	Mon,  6 Jul 2026 09:35:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DF44302F8
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:35:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783330510; cv=none; b=mX5d7kZ579uQ1zuBtsghP0VapdI1jRhF2XeMCPR+UZj3TPFgUqiNm59GZmoCzgoQUUm58NCnwHLIOQmKUQx3xtxuaM1oW7YqrNUWYMkW3w+aP74mmm0m+JVP9JCw4eXzwgDO63B3yAVueN1y16HQ7BJn8siVFcnL0deiHx3kXRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783330510; c=relaxed/simple;
	bh=azFMDunEsAeZS7lsKgLMHZ5TSgtywquodFmaXPUTAGw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eouKBiZ8dOITJEqvV0ZXfWBldkVh4PyDRJbUHwnVbSu24pa97dWbkebEj44g6J6v/iVcmuQ4aaVSiH3krSvV/cecV+WvLysP39X5XyrxzyuEVKlnJAO/ojN5BguW7NTfVXlMDSVisABju+ZvRorOQS2gUGTJ3Sazyv9iQ4uWIgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bJaJlDES; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-493c2c0b9a8so25266395e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 02:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783330502; x=1783935302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S4URuhOSsv1qbc8AjA0mUMbgajYr+DySa1kGTUK9qwU=;
        b=bJaJlDESlyaDudZI1Ba/WHb97jRVK29LiJ3eYaU0KqsDzK+lD9IcqGQ51TVn3WLvZu
         iyU/8W9r6ifhTDvjorSKMTzIAgAZhhN7XXLLVorK9GIt8/ZH6sdxHq155TpsaFuVMdEn
         MZtvyKa3CB8dmqqRGwMk40P4t/DR1tNsIu/uaE13lpV4omaLHMEJEBWOmJ9u0z8IwmbX
         ZlEyppdG8lLZ8dHnIclpdMm5dyp+R+C0CoQQgmu906RD+NAAg0kqB7Kc0mdWPRCzewfc
         VsbAXjnEc9YboLfJH4f5U5+RGNpHhCRe4iawAY6dtvd1pxXPVbjzpoct38RL3nfyUDu8
         fr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783330502; x=1783935302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=S4URuhOSsv1qbc8AjA0mUMbgajYr+DySa1kGTUK9qwU=;
        b=Cz5Ok9Q5qSpI6uc0cCCSw5HbHJptqkHVgM/gW3btLBPNaoveR8zRY1hHz7+MPBdeug
         1L5rg61cPj14Gk3W7CQzU+hax2OJYbxzsIXHdy2IHCVIN68SPyeB1GoXfdBTdxgY6j1+
         vsIV3J55a7ucwFeQmKMrOS+NMYZqqvM2Goqih5TCB+wukNwumr74nojWNjPNqPMo4t8a
         XgA+QOV5IPNw3caYT3PE0/B1uD4lQecerrZTddd7TR37eMabFAtUPmyZGyVnlxxjSXav
         5fbzXugV/AadvAsGp7rWdrbufWnG2FZDCiOiuqLFqP/XKx91jL7Qf8VgPQCGIHVT81K2
         ALeg==
X-Forwarded-Encrypted: i=1; AHgh+RqrH3Yac1qZ79Z7BCJj9PCP9++WI1odDcnzZ9qM6PWUG8VLsMOuPwOC2ANXWKbGH5uosMsd06DjpFGl@vger.kernel.org
X-Gm-Message-State: AOJu0YwSlRpYsuFQt578vIyOVO3nL+IIxDD8LM/kHDjq+AJaGz1DEaHV
	2KPhxuHZyyPf1MzTM9pvRBbuOlz9QdJ58sI49HZEEQSqKg1oTB+r5op2
X-Gm-Gg: AfdE7ckndq3OSZy3D/kd9WlGCSxeBznwuUkhaT7Ohj1NEhZHfZU7J/PWhKdA4sTa8u8
	63SeLFkNTOdKEUVTrHiolz0WmZEy+XGQDPfEg3Q8Wrv6Kr1x92WW+N10Yq49ZESI2pyTBeOQ4LW
	I4PzyP5AnycZxyit0LaVUP5xm7xMLhBSkO0h1koL4IyNbI6hED648V4nMuEcx06XyaslwWXpDDU
	NfxtBv2tCnEVB8pAvqtA5ACPDo87InabMz1PCxZGhk53UkysIBlwVH8xE680HZyK2T7rNFxbhRS
	bWKDNimpmOpNPGcDQnvbi4pnKLh7jrU6jgKy8XNVhOMKRcIK2GFWLs1U2wHIeB0z8BwByQ1Nc0u
	zJi14PRdOx3hgVl5TlmCq4eMGqNZNAlKFXy6PiV0T3+y6IxF8q6YU+eMwNqLRC8EH0KjLGZEhSg
	rtkrs0QdBqeCdffKJzLuBJiZqvO0LlnkzHmh/ewhsLWF+MLJzFKW4A/1j4Lt8Q67zjwgnVRwdAJ
	Tx/PBISXxyy5T+SRynhf/GpWg==
X-Received: by 2002:a05:600c:8715:b0:493:de4b:de17 with SMTP id 5b1f17b1804b1-493de4bde72mr8048525e9.14.1783330502365;
        Mon, 06 Jul 2026 02:35:02 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c6375764sm314379715e9.5.2026.07.06.02.35.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:35:01 -0700 (PDT)
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
Subject: [PATCH v2 10/15] arm64: dts: imx8mn-var-som-symphony: Add TPM2 support
Date: Mon,  6 Jul 2026 11:34:40 +0200
Message-ID: <7cd17d03fa70ee1f5fd5986fbb0e8a39ad7b4fbe.1783330236.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1783330236.git.stefano.r@variscite.com>
References: <cover.1783330236.git.stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-321003-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,variscite.com:mid,variscite.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 579D970F2FE

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the TPM2 device on the VAR-SOM Symphony carrier board.

The ST33K TPM2 is connected over I2C, and A PCA6408 GPIO expander is
used to control the reset signal required to release the TPM from reset.

Add the PCA6408 GPIO expander and the ST33K TPM2 device node.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../boot/dts/freescale/imx8mn-var-som-symphony.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index 53130b521b5b..7d016ed5e911 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -160,6 +160,20 @@ typec1_dr_sw: endpoint {
 };
 
 &i2c3 {
+	pca6408: gpio@21 {
+		compatible = "nxp,pcal6408";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	st33ktpm2xi2c: tpm@2e {
+		compatible = "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
+		reg = <0x2e>;
+		label = "tpm";
+		reset-gpios = <&pca6408 4 GPIO_ACTIVE_LOW>;
+	};
+
 	/* Capacitive touch controller */
 	ft5x06_ts: touchscreen@38 {
 		compatible = "edt,edt-ft5406";
-- 
2.47.3


