Return-Path: <devicetree+bounces-308386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dT4EO7bXJmpSlgIAu9opvQ
	(envelope-from <devicetree+bounces-308386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:54:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F01ED65798D
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:54:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XTZAlQ6o;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308386-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308386-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 95C8E3045424
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9DA23CFF44;
	Mon,  8 Jun 2026 14:41:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E603CC31F
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:41:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929687; cv=none; b=U/mSEZsnov3JmxIcsh67Xy9OJVI2eNtvsXsxxZjJd13ksgXEMAL4MQ9GkU0Gb8CasoM254fiiA0nw2HSkGCF36SFfRtMAMnAl7tZdsUW1zhhf+2o2EXb0fJuBQ+5v3LVF6yAiqXcCaYY+6SxMEJRBZHKhZfBu3g30BAu2rZDBHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929687; c=relaxed/simple;
	bh=lilfA9acgCtZCo33KjWuMwgzngzJHNaHTaGdvpueM1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BIGFy4p07zvq0oUCN42diE7gJaCO7+1Zh04sI3lSC8dSx99AD8fcEIM3vyf8XWRITYj8C/WhWFcxuduhAmLUPWdKUnZ3WP14o/UFXB53mcdh1+L/SSFCHv7eqGc6uGQWbZzggQ1+hb/1OGpiR9XhhmKlSmHwnNNAFT/XIlncknk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XTZAlQ6o; arc=none smtp.client-ip=209.85.221.48
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-45ef82204c6so2322960f8f.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780929685; x=1781534485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUFEbSrxjizvOlFmP7SeRCnWi8SYp3vMPq4IB/dpDJM=;
        b=XTZAlQ6oJj5QJJrmu45S+6vjbazyjl9JgZhEMdFK7OuY1vXkEyLaL5j1jpwswT7odW
         pc7HQS2ltHkea16mHOj279FFa/gVWdkyGJg9hYrT480F0etcJBKUb8wRvcQ2OeoxtWtL
         Wv2ZzKHOyT9/wqHGQOOdhSTFGv5zfkAfvh7fRk49y2VvPs7gEv15Mu/mutZ534kQyZli
         VsPYXlxSiU3E71mYPhey8yGk845vxSRxoghi560M6/lx6RSzRECWonvhbisDtKORH/N8
         ljMnYtdriBaf5XsfqOovw5b+avv/tyzTVCUi1DsmPnwn5HNw4Pd2/8gApwTkoh95mRvQ
         2LrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780929685; x=1781534485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TUFEbSrxjizvOlFmP7SeRCnWi8SYp3vMPq4IB/dpDJM=;
        b=T1THzmD9cH8njAzj+jF93CJzvZ+IPX075Tc4qitbHhMxP96tZreQk/u8f+5PQzDRHz
         a0O6/uTq8RNNLQUO6wbBMg+tp0Xt8N7THR4aaT58Cy0CzhehHJutrOg1sG2H55GViy+H
         klRSZSSJWwjiga6RzxCHvk0QK5oaFf08tecvutM7lbC7Im+AQ0/bdsdldcDQ21StZdbI
         cqiFrPheX3Z31Zjr+tZAjBcn8NqupD53fP1LnGVklcpvx4/1Mgna6yCq43fcbRCl7yOW
         CkjIyi4m13U/c4WOP/N5YMS+DQmi/e+7CRp0SJz/AW/FuLsntSFaSxH+IJ05Uj+D/lrw
         /1Vg==
X-Forwarded-Encrypted: i=1; AFNElJ8Er3/iCVIgxDkI5TsjbSXm0y8M35g+M7w5DO8opN/019UXAI3hgt+y+Zvzp5nM/m8U3WSyZZRLn94u@vger.kernel.org
X-Gm-Message-State: AOJu0YyG2VmRPZrWAt9vUXcwVnEJAplTDb785yotHZgezs8xcC3oadvr
	gUKexH5YJtZDQPENC4bWdCOoIaoZGxgxP5cFR8cGBNN6xDLlbxYtSig3
X-Gm-Gg: Acq92OG6347FZej658LoJ0gf0P6Wo/GAamkrOaIctxUUecbVx2OQPafBAGho6NFmm6N
	Ivaig1OmqwIerGWB1JAt1wg362ZDseFtJ2aukYo3YXQ8RBjCXgVyJi3HQug2pIzjJWzhHKV2tlg
	q3Avdq0iZKHwVCShgk1XN+T62P7tVA3bj6dMv3xORZjMIGpISV73bVEtbeYf63fFREH/qFDfDqS
	y27HfVPTdwIfyKPcbEvYniJ8Ez59Sys9OqnIAgsAIa6p6AE7GgZYuLOpfejFsCvDDa0NZ7aOxaG
	HatPAGRDJAscoXVSSxJTv1ug72nhk7188hGGsC5dZZpJlsKjuDy4UiAlCW1OjA7WsVHJrj78jR+
	SX3fPwDNhNN9FyhPlgdUmmOxvGRhXOGItECyGB2j7yCM1+EmMu6lL8e/SGGq84y5/eu5A+tI3J1
	xue8/voZmIjMJStIOyd6wYqgMjYGfX60e7CQykBGfAsQp+/TLR0k8KMM5j+kSXbLDNkBIN7xxqT
	KqGSSUML1UNa3MhVhP9+xiKAdhbC7nnWI13tulBIaYIrI7Y
X-Received: by 2002:a05:6000:189:b0:45e:df46:ba30 with SMTP id ffacd0b85a97d-46030630642mr18072389f8f.34.1780929684703;
        Mon, 08 Jun 2026 07:41:24 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcad5sm58222519f8f.5.2026.06.08.07.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:41:24 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 01/14] arm64: dts: imx8mp-var-som-symphony: add input keys
Date: Mon,  8 Jun 2026 16:41:02 +0200
Message-ID: <2a02e17dd1cf516332e2f86e733620d58b9a73b9.1780929317.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780929317.git.stefano.r@variscite.com>
References: <cover.1780929317.git.stefano.r@variscite.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308386-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F01ED65798D

Add the Back, Home and Menu keys connected through the GPIO expander on
the Symphony carrier board.

Also enable the SNVS power key.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v4->v5:
 - 

v3->v4:
 - 

v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mp-var-som-symphony.dts | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 291f65e36865..25f707012f62 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -13,6 +13,31 @@ chosen {
 		stdout-path = &uart2;
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button-back {
+			label = "Back";
+			linux,code = <KEY_BACK>;
+			gpios = <&pca9534 1 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-home {
+			label = "Home";
+			linux,code = <KEY_HOME>;
+			gpios = <&pca9534 2 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-menu {
+			label = "Menu";
+			linux,code = <KEY_MENU>;
+			gpios = <&pca9534 3 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 
@@ -72,6 +97,10 @@ usb3-sata-sel-hog {
 	};
 };
 
+&snvs_pwrkey {
+	status = "okay";
+};
+
 /* Console */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.47.3


