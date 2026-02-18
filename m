Return-Path: <devicetree+bounces-266477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCWMGbT0lWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:19:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1BE158371
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE526300AB1B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F81343D74;
	Wed, 18 Feb 2026 17:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="jvNZysy6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay129-hz1.antispameurope.com (mx-relay129-hz1.antispameurope.com [94.100.132.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E85A2FFDE4
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.195
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435085; cv=pass; b=CXPUNsB2hCefhnV/FlUMhRFpwuA5QCy+yEKUyVwvWxV9lOB3BgKWwS731dqhK9DgA5VwhBBHrhMnqotFRCgyIxJYNCHumY/sa4WepwZ8Oyy+L8MO1NhSEnRoSjR11tbpa7uwGpA7Kp85tAESjKvjPM4Nm6tohmv6QL+8wgyUmgI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435085; c=relaxed/simple;
	bh=V5JXvkgPes+hEMu1PWoguk//7xNtXcWgtFp+Z8moPEY=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=YmNSlzC8OXTUihe1HDTSRupigXYHtf589luBw0+TvLbRUnW5ReiLpzlUa9nURNjAir0+badi53U83fk47us664auMXslKVKFXEoctgRaOBja6RrD04QVrI0KWIsY+crmSEmX3v69HehoJbrkccpImnV5vS26J/W+bOYpXZYlGV4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=jvNZysy6; arc=pass smtp.client-ip=94.100.132.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate129-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=H2vVKZ6E3yqlSTMvSj3TrmKQh+r9SzJHEpVVUrZRg/A=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771435047;
 b=bIe/CFK8PoQJ8gDyfAA1Y7EgP96Kz549WROi1rLV28vK2OX9k7xc53raNBNmGn62l2Likp11
 TtQudnaF+eDNNmXFc0uIjqWLILmWvT3lsfUjkFALeDAYhLULuKS1P9gy3/ub46m7BcLU20Aow7A
 fLZZ2wG8jSTFdfS2Bo2I4jx4aPsJHaF9+ugKJCDdhnvWhNObdLpi80nKbXy8ONyf7hT47cSMiNA
 ZhZTJ7RcTweFwI7cczqpJy53ysaUINlyJfGV6m5Dx2ia94krfqR3OesrAoSE2tTw3t88NbUdJqg
 XN+dJPYlPri7/S3g7WqevogDpTKKHkx7mXkT/oTUkWSbw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771435047;
 b=X6Qsp0axMcPn1G30RKr1KxLWk+b9HdPPRzre5gsrU7Wl40Cg8R1kKYB0E3pglNgP4aL8vKgW
 0IJd+i0swHZznKlYrK1T9NEGT0w535In71S1jmWq8w8nGPd+8PF1kJVEhgHul+UZ3IZlCSkSQjO
 I8FvODIO9QoTBKuwaB86S8TjxNziI/cS792RmJcVjOf4wnj7uJ/GxiqyCOxuQk6SA/8WKS5pLVk
 CpZLleOwYneHUVJ+QMuCoU0Is+snWNjBk0f7u8nvRUwkCvrJAtUZ/IUyYPCJSJIru/oe4EM/TRw
 nk5T2YpMvnMko59B0oLubm1CqZ07oPnJJAjYbfai6AVKw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay129-hz1.antispameurope.com;
 Wed, 18 Feb 2026 18:17:26 +0100
Received: from 10.1.31.92 (unknown [10.1.31.92])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4E951CC0CC3;
	Wed, 18 Feb 2026 18:17:19 +0100 (CET)
From: =?utf-8?q?alexander=2Efeilke=40ew=2Etq-group=2Ecom?= <alexander.feilke@ew.tq-group.com>
In-Reply-To: <20260218135415.204974-4-Alexander.Feilke@ew.tq-group.com>
Content-Type: text/plain; charset="utf-8"
X-Forward: 127.0.0.1
References: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com> <20260218135415.204974-4-Alexander.Feilke@ew.tq-group.com>
Date: Wed, 18 Feb 2026 18:17:19 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Frank Li" <Frank.Li@nxp.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Pengutronix Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>, linux@ew.tq-group.com, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Alexander Feilke" <Alexander.Feilke@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <19fdaa-6995f400-39-279b5680@147531990>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/3 v2] =?utf-8?q?ARM=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_imx7-mba7=3A?= separate =?utf-8?q?BOOT=5FCFG?= circuits after 
 boot
User-Agent: SOGoMail 5.12.1
Content-Transfer-Encoding: quoted-printable
X-cloud-security-sender:alexander.feilke@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.feilke@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay129-hz1.antispameurope.com with 4fGNVR4dr8z4FgGF
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:2d2b41fe47441c95072726fa908a7ece
X-cloud-security:scantime:2.174
DKIM-Signature: a=rsa-sha256;
 bh=H2vVKZ6E3yqlSTMvSj3TrmKQh+r9SzJHEpVVUrZRg/A=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771435046; v=1;
 b=jvNZysy6sLSz6EBms3de3CQ/r2iXbqOybIWA7zMyLDujiF+Md81DrsKZM53fvPQQr/AWcuDQ
 6y5oo1etsigbnDEVz3fQ/+Yo68pSxOfWsrmf6YUGKB27b8AsL7/MGlxuNRSrfwXK/34C1Vn2O5h
 +8z8+Laaupk4E1LCegQuCtiAL0BbisD3Phx8iLkwgSyYsByp9HCZ1q+DWBmJI3M3UYILOJyhJoI
 gy85IF8ijPB2VJ76pFUomtr6H7L8vJZNqWFBs0WKz5YzrsgDHk+pkgVEQi9bWN94+oRuYH6Zaw5
 JgG6sW5ZxPbTZmvjgpcY29TLzsUWLfKxZpVPFxDNmPb8g==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	FROM_EXCESS_QP(1.20)[];
	FROM_DN_EQ_ADDR(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266477-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,0.0.0.49:email]
X-Rspamd-Queue-Id: BD1BE158371
X-Rspamd-Action: no action

Deassert BOOT=5FEN after boot to separate BOOT=5FCFG
circuits from LCD signals.

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
---
V1 -> V2: Updated Commit Message

 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/d=
ts/nxp/imx/imx7-mba7.dtsi
index 03f2f2cbdfbc..4192adb27223 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -287,6 +287,15 @@ &flexcan2 {
 	status =3D "okay";
 };
=20
+&gpio4 {
+	/* Deassert BOOT=5FEN after boot to separate BOOT=5FCFG circuits from=
 LCD signals */
+	boot-en-hog {
+		gpio-hog;
+		gpios =3D <3 GPIO=5FACTIVE=5FLOW>;
+		output-low;
+	};
+};
+
 &i2c1 {
 	lm75: temperature-sensor@49 {
 		compatible =3D "national,lm75a";
--=20
2.43.0


