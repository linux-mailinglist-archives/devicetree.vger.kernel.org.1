Return-Path: <devicetree+bounces-272338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM5NBIIyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:01:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E80B227576
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A394312E738
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50234508F4;
	Fri,  6 Mar 2026 19:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iYP6SP8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F38943CEFE
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827132; cv=none; b=H5oCGF86nch3XfMyc3AeqU5x75mVkhBLkuI14iFr5Ubkz/Z86FK8jlGDpyyqJMeuhM91qiBNQQC5cKsC+ZX65xSdTVoJEiGkVKpLERCJNCghY4EkGF/vXAB7ngtjULbDBjhw/kd0gSbfRFYF1oeszXgrhhxchAyzko5jz77lGT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827132; c=relaxed/simple;
	bh=4aVrNgDRvufpaoAAyHRbFgNpLX99+RxCXZtMDwCIHnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kemKrtAAXPkkjRu+WUyaUBFgq7EbxR0F8gV8Kak9B3FhMo+pNjtzh4Qhf2rvz92ELtIsn3xFOIgGYBUAhxq3ftnFci4U3sju039XPFi6Ek7QsM76ieP8CVpVHlqox3O9yDFYgnINNblps6mXC8Q3YmRWAuK+6F2UfuFoJJAmBL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iYP6SP8G; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439bcec8613so4365826f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827129; x=1773431929; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DQyi1SlQ7yqSFVYKOlrAnDhopzWugvynZ+QL9xEDhOk=;
        b=iYP6SP8GHg/QoB0teVPoncIVP13PpLxQSN2qbLsWGfbZLOOpdG0c9kRxAnZ1qXqsOX
         Bf3cr+VB4+PNjF9bfcXHfDrxk49o6s9G5AcEBMS753Jd/SYuSe+ZZ4jheM4/C40i/be5
         8Gaih6+gAw0OJAn7NzoFKHZG/mvhaqyL0tqLCNYAE82EWlkJlzHE1dh1uFAooab18uZN
         Nu1mHYgGyUrEgH/B9YANw7TFrgPnnnlL4O6KkWK+j2I5nBi+WMfuArPLTuNMhqHXnEu2
         exnjITszh0S/7KLO0tAa6hz4h0FQ3q81JKQWvUCBHuxa4Vi3WgIB1ILcqxvDS8PEwlA3
         GDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827129; x=1773431929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DQyi1SlQ7yqSFVYKOlrAnDhopzWugvynZ+QL9xEDhOk=;
        b=J969oHBhjWDkrnslenmfUHul7NzA85go3ejoNo47PA5VzQDB5YBZYjUiZl7mlBJBJb
         t/TgGvZuPt+sx21nIpT8TycrMIwa9qR0r9BuVQwaMw1BMofILdkUpc1emgTsRRuLniev
         BAO9BYvmae0VL4DdieMdyZou2Zez4UUIh6YxZYoyPEcS+rnDEhwLKMrE17yxXNK8pHa6
         LeT9OgvxZIzW0fJ3v3Rhtm2c9007k0fX/MVrJuD1gv7GGwwhkXzBqOimbJZYsRIAHOLm
         w8efmA6WsnCJJDfTQNODEchDbfMd3wIRrSa9Qh7TGk1eyQvaT8EezPGS2bZd21XCISU9
         BDFw==
X-Forwarded-Encrypted: i=1; AJvYcCWSdY2fQzjlfQxQkVf2IXEjraFXYpjpss+Wtc530sdcm8BQCFHA/P9P8FhqnXxkVzEM3XViO5+wh2qX@vger.kernel.org
X-Gm-Message-State: AOJu0YwufGW3uyIjEMxC6cPag03iPWw6suGnTA4R8tV4hpg3KSIKsQ70
	FwL/Hgj9xhTluu6ewrHfkpJJHGQDZoeu76Iioatgzc+Qf8bo2Bfr/BuF
X-Gm-Gg: ATEYQzyG9tuTHNwL+egNCowg8QQvcggj5LxLwRnjW0Jps1VhdJX86FpupvDGTq2obgW
	NfRt77hZx+j3ZKRZC3QvIYYmAnGXeXUzTBg3D00DcLIFxRuR+PyJyroPHtS0Van1pbOye1ljnCh
	km6iPz8qBRj+o0WTaYuYBqFlqzaofhIa1jOEH7bC8eT53HYSFeA6mKvKbcMmjeRpqiXrnuxPaWQ
	vzI1VakT2cqxvTdr+d9sKD3y8byuTsDcRxeAEcdGnmQ6MvZJvdf29DrK53VbzdzoRmyd4JccPi5
	k/6OP/oaaAYb/sOAV5QW8HS2tF+ZDCEVylRD3NuhRfTXH65Dr4XUG5iQNMRbm5TBGRmfjDBj6Ti
	Pk0bEyNoqyxc7tH6/IGz9EcErYltG8ga/An21A/ac3t1FGK9aATXccJwKtA0iLgPehTxFxbWwdr
	Lggu1/2ZI0/k0SIGS+tokZj5L/0lXbSxDbK0pQPcF1fBGLDatrFlhw6SjVH1iUBocW8TdqZs5AZ
	9rnnNd0FYJONoyTfQcuaP8JdR+VfHKowcUQpcADnXM0tgQk+A==
X-Received: by 2002:a05:600c:1c03:b0:480:1dc6:2686 with SMTP id 5b1f17b1804b1-48526930d92mr60341145e9.13.1772827129080;
        Fri, 06 Mar 2026 11:58:49 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:48 -0800 (PST)
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
Subject: [PATCH v2 09/11] arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
Date: Fri,  6 Mar 2026 20:58:28 +0100
Message-ID: <72e21074031d16153460e128f8f37b8c942aaf30.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6E80B227576
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272338-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.992];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.21:email,0.0.0.38:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the TPM2 device on the VAR-SOM Symphony carrier board.

The ST33K TPM2 is connected over I2C, and A PCA6408 GPIO expander is
used to control the reset signal required to release the TPM from reset.

This patch adds:
- The PCA6408 GPIO expander.
- The ST33K TPM2 device node.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som-symphony.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 66c306f755af..a77085b264e5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
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


