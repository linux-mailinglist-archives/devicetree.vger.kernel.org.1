Return-Path: <devicetree+bounces-306331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LEqKFoRBIGpgzQAAu9opvQ
	(envelope-from <devicetree+bounces-306331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:00:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A567A638E27
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:00:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kzkDjZ7u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306331-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306331-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 875D43412A42
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2AF48C405;
	Wed,  3 Jun 2026 14:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B21F48BD44
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 14:37:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780497462; cv=none; b=DfhEpyG/xDP1ihcgC9386DEUPdbmRzvSYT6Os/e4loC1kyZhByDvdjW0x7v4qz9D/0wFdrU06saQS6sk/97X3CmjjuXemmuEEosSnjwHRyDEwn7ANK4lc0a9VtAsG4NRbeO4qorkpTOAFPas6iQ6QjaI/hGXNmCJE56Q0q91zuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780497462; c=relaxed/simple;
	bh=40kREAfC/QNvMf2+8nmzJQuLMvLg9WZ3h0FgrQyV1kI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hGs/Yp9Eb8r9skiWh0dI6htEBxDx1EWiYFw2IPNj4fVq4ZL70/OPIDbP7J411Jpwf6f/LCu3N27x75oTFhYYvLuKx/HOgPX1UFWmNv/WwUdEVSxwZqP5JWl49K6f3cAG6/UI16TmFfD5zzuBHEuz7XZC7oT17s/1GAUbildeID8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kzkDjZ7u; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-490b64c8311so12276875e9.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 07:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780497459; x=1781102259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lK0+ywjBOh+XN+VJoI8pFkPksQ/EGbIta4VIkH+QnrU=;
        b=kzkDjZ7uZ0l6iXdfuzUJaCuQrh1wCI3cn/FCVIE3CyfT00gm2e7PZEID8Jn3QyPnxP
         eKTWLcpSGnRO2bf/VDp0m7tzVvbXSLwA/pphBGLfZMKCcn6oPjUeN9lKvhB8dZHEY2I6
         hofuV9Pt194+NIIysNdgetDUNSWNy/duyAMUvwUW97xZkR+Bjqt3DnzTFe8Nz2Vn4BFo
         s+IEAjgWDr+0R5cgLja7J0JHTTAzRwkuv9n6bWzw23rSpapNLmgnKMqYQoRoLxT9F30y
         WbSxQnCHX7vgkS1SFxeUXjbHPGtBllgofSLeb0b4TpMklyUWDWaRIRHnA9vX3M4W67+f
         ClwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780497459; x=1781102259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lK0+ywjBOh+XN+VJoI8pFkPksQ/EGbIta4VIkH+QnrU=;
        b=QM3oYXTrEsH9VwHZF3EcmCD+arM3aYifCHFLpP4Nr/kfxulXtJsK55CFz5vAk8hjsX
         ZJTP3ulkWTWPkvFpkBnhpWv+62ZFxT15Io9C74iqvQXSmLH5SkrpxN7p76yi0wMjYhjQ
         qxn9THXUDNSuUMCXuzMW9Ec8OTwbtPw6F6IxaJh21Xr/eCIwtgyiwtW/zBx7XtX8lecz
         PXF1F4hbJs3UBxtx2ruMwyATvWjZhYsEpXGO2HfmQpXuA+YSz4taOYRuclnfZS2Yjj9D
         4E6N979nGe9NU71skLtPpfU6ytaPJkm6kAozUgQ700yTJgZg1K4HKJ/CkoVdL00dDUIU
         Dc5A==
X-Forwarded-Encrypted: i=1; AFNElJ9Tb7IkRxLCfUqfxBv6EBRH015JNtbZGD6kXNNjFYqOoEzOuNyrEBv5RUksOcYmnPor5UyvKL/xoVXI@vger.kernel.org
X-Gm-Message-State: AOJu0Yze0RZi4vnHu3HpAS/YlRaWCxFLiaJKgZhIEqQIpiJmfKRL34dl
	Zxi07cwmCKpMuiHQQSxmRaClt9B+vNpSzbbrBlK1dQ2AMtyYR7vjm1X4
X-Gm-Gg: Acq92OEmLYxPN0URrjsrhxzdzz7/H7PDayfuB2jjNHhW22EWe1VNtvYoAdt+l2sikPu
	B8kkvpLN8gn+Vk/r0yraJWu+HypV5dR0hHaBkTVAa4bqqFpBS9fXfuHu1ch4P8b5Ke10xmH+Tja
	WUYlcBHLa8aJbP3SBNv92EaegeYYKp5NT+HCgRte0caRMnvv0d7vxxuXnATx8cKv+Sf/fnBCR8u
	Szj5ffDuNwVjAsuPVycxdGDQhCh5uU4j7ljbKICezeQKRXRM1g8ff4/euz54w/DB8pL8m1PTWE5
	AvmEWYXeAwvDwJwmWemx1V88hoSqHJfs0zRFHlidYxKBLNfJ3taS+AgQTODLDTXYbQiVo0D32nH
	rt/FX3UrMt9LxrQ6rIZSPugPy4cPGE1G0v7iywvxUWFDybhTv/02NAhnn7H1iUSJKfj5aHAfH1m
	1dDNysuVkRUhlk80AILTzutRfrQleF1U46+D6+BjoSESFmEIC0YiZp81B05CIDgsLb2g+rn2AS8
	uotW0D8a46IYN/qZEQBu1eKvOMGXnFvZvtc2ch3PvHgp3Aq
X-Received: by 2002:a05:600d:2:b0:490:b99c:9337 with SMTP id 5b1f17b1804b1-490b99c943emr39485645e9.10.1780497458788;
        Wed, 03 Jun 2026 07:37:38 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b6150bfcsm120267855e9.3.2026.06.03.07.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 07:37:38 -0700 (PDT)
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
Subject: [PATCH v3 11/14] arm64: dts: imx8mp-var-som-symphony: enable PWM1
Date: Wed,  3 Jun 2026 16:37:18 +0200
Message-ID: <04c8d4b2d184c210d24a0ae40e0eef7d47101c63.1780497188.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780497188.git.stefano.r@variscite.com>
References: <cover.1780497188.git.stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-306331-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A567A638E27

From: Stefano Radaelli <stefano.r@variscite.com>

Enable PWM1 on the Symphony carrier board and add the corresponding
pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 .../boot/dts/freescale/imx8mp-var-som-symphony.dts   | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 06d8dd7a5b54..28424c2405cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -247,6 +247,12 @@ &pcie_phy {
 	status = "okay";
 };
 
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
 &snvs_pwrkey {
 	status = "okay";
 };
@@ -399,6 +405,12 @@ MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05				0x10
 		>;
 	};
 
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SPDIF_EXT_CLK__PWM1_OUT				0x116
+		>;
+	};
+
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX				0x40
-- 
2.47.3


