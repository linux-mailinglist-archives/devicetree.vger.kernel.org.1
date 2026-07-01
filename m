Return-Path: <devicetree+bounces-318316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cAyGIVnnRGp22woAu9opvQ
	(envelope-from <devicetree+bounces-318316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:09:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 227FA6EBEB3
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:09:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LrRb6XS8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318316-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318316-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A20AD306B1D9
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C320A3FAE00;
	Wed,  1 Jul 2026 10:06:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5914E1A683C
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 10:06:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782900364; cv=none; b=sONNMgF3Vr6IGPR6QjpvWlL9590iwzI4p6emAvLwn5xQnvaDKCwjGcytCUcg5Vi0w81Lu3Fik0gn+pgPOiqWLkNf52VRdJp4GF9cll3Fr9D44hYsrbSQd1Zw1JBy4/QZfeP8QshPPrfw4dbxqT88+uqUGtR/hCrllYWnB22M20o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782900364; c=relaxed/simple;
	bh=OMgFl3mgRw7oi7ee7+ffpJeMPc/deSBSwkR2KYQda/0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XgINcbJm31GFhjA383hUG0yAhPmB2rcOFhVqtgpCXKvEimyCtaRIVn3FKs4iS8IaM2vTHJJKoM+uQeOnOq5vfIgNOidyGztdVWURWJdkCYFW9HcCOCnPjcdLfmtt9LIpxul+XDDsxvpAY7659sPuunFwiJ5SP8wfKO0G51nI4Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LrRb6XS8; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-47122683cf3so336139f8f.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 03:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782900362; x=1783505162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IK0eBtS7c0+Md+AQXziX/hdIdbv0oXutseltgb0KCfI=;
        b=LrRb6XS8dRp/BzwCa8QGB0aeke8hu/v16c4Iemva55X57Y04CIDpPAXNvBNZD5Ki4U
         BFTgiNRfl/URibaJNd68i5x7cEjosXKHgFDuE3Fsd4wyqax8xFLSOLtZp0c3jOWY/Pzg
         C6NIhw0jcCsZlbWARUXIJ7FK/ieCu4HJ2EyJj+pmrX2xmOYg1M+GUiIrxfO0l8wTACzP
         iDLaAinAWa+OiLD4PSWC6P2Qcvv27Ys+S63m3CMt5MYK5dgHtzFVUaX5gyGFrsT6yeUh
         8/17LyTQzYAuveTwTTn6Aj60qxYJH7z1WKzMHBxH5ZMd1JCXqPbv850BbmOQsHSdrzDm
         6PRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782900362; x=1783505162;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IK0eBtS7c0+Md+AQXziX/hdIdbv0oXutseltgb0KCfI=;
        b=nnEqR5G7xepZ3eDcOHBncE9Sb/lPbijs17fIjl/bl57VhA9a5y69ppteupqx+iuxAs
         /V6AEqW+Oo7ZYqSvTXkKTCC1D3UY71pwnlbEX7UoXxOkzr6QjPlxTXdHvo1r5PBUDKhe
         Uev5L3bh2zVL3p/04kwGOjwJoUESgzn/q6od9KAuDphBcdEPqLWlkiTrSi0BWrvo/6+k
         UMm/mqks+qqvabhLeYZWPCT+cWhRnaaYjC1Qejf1yevwHOZu9Qf0tKckowuMPrHAW0qq
         DS6Vr+8vsKJa7TnLojwb4SUzSy+E+HQ+5qG6Xw0Cs5A9QFlRStm3+Kjjj85eQZ5ExhbA
         jHUg==
X-Forwarded-Encrypted: i=1; AHgh+RowpVgAslU2ikBG9hlzsDOBIZRwO5q2++6I1Uu3boXa5NeYK+moSg6PNIWmxsC7dvY6axW69ctrtqVW@vger.kernel.org
X-Gm-Message-State: AOJu0YxTTglxK1npsvzwXMJF6ICIwnP+q9GSJ8eSeJdxr+XUNjRxBOYk
	m6c8n1OZv2dKOn+tl70pWzttarb9urt0A/mLSK/jS809/HIp988pww16
X-Gm-Gg: AfdE7cnQYSriDJBx+vZM/KilaOaGftHXmpHD+Pp72IHNrVuFFkE7ETQHe1eC1SUEATF
	SX7NNagywdkHXmu//fhi4vmrNtIvAY6IpY8yvawXllwFiqc6S6kmGXQj8CTzQ/C8cst99KPkhcc
	QfR8reM4oKxy1pZUpFZ8j6L+mR+YROV5ip0cuNE7GwXclOKyu8GGC+jzqOnBNGFjR/2//bTrQyv
	5Dk8aGEUJocSWlaQlrZca2YQ05QhoZrCqNS/PWh+AmEX6vxA57e2XBH5cUpC010T1OqZuSkX3Aw
	jzRMNSmC+G+OZCyf9wEWQnpyWaMGS0uhRniZd4VoEKuuNBF7vVWWGcQ6D0doSTuEyMVovcz3rhd
	Z+mcObVwUxJ+sb6XldzJjgB7DfbmtnOLghr/b+1LBFWG5YjVzxhhbQLM7TdDCX5GqdJ7F6XZQqY
	ztJDIab41DwBFVuqzluaAyEaxvteB9cpgbPro7/vKx/4l08DeyQx7jrPyQzh2PoKDXG1QuUWStR
	RKMkcPSnUQrwLsToZIyoBKXvm29a57mAEQa
X-Received: by 2002:a5d:68c5:0:b0:45e:779a:302c with SMTP id ffacd0b85a97d-4775a100e55mr1113050f8f.29.1782900361613;
        Wed, 01 Jul 2026 03:06:01 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4756636cf26sm13742935f8f.19.2026.07.01.03.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 03:06:01 -0700 (PDT)
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
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Josua Mayer <josua@solid-run.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
	Maud Spierings <maudspierings@gocontroll.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: [PATCH v6 0/3] Add support for Variscite DART-MX8M-PLUS and Sonata board
Date: Wed,  1 Jul 2026 12:05:54 +0200
Message-ID: <cover.1782898728.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-318316-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:daniel.baluta@nxp.com,m:dario.binacchi@amarulasolutions.com,m:josua@solid-run.com,m:alexander.stein@ew.tq-group.com,m:ernest.vanhoecke@toradex.com,m:maudspierings@gocontroll.com,m:francesco.dolcini@toradex.com,m:hvilleneuve@dimonoff.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com,amarulasolutions.com,solid-run.com,ew.tq-group.com,toradex.com,gocontroll.com,dimonoff.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,variscite.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 227FA6EBEB3

This patch series adds support for the Variscite DART-MX8M-PLUS
system on module and the Sonata carrier board.

The series includes:
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v5->v6:
 - 

v4->v5:
 - Fix nodes order

v3->v4:
 - Add snvs nodes

v2->v3:
 - Fixed wrong som eth phy address

v1->v2:
 - Fixed wrong sai peripheral reference
 - Fixed wrong eqos pinctrl gpio
 - Fixed model name
 - Added new usdhc2 regulator pinctrl
 - Adjusted irq edges

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX8M PLUS Boards
  arm64: dts: freescale: Add support for Variscite DART-MX8M-PLUS
  arm64: dts: imx8mp-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mp-var-dart-sonata.dts  | 733 ++++++++++++++++++
 .../boot/dts/freescale/imx8mp-var-dart.dtsi   | 475 ++++++++++++
 4 files changed, 1215 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart.dtsi


base-commit: d0c222c2e2ce577d801bdf129dc6c078f29e22df
-- 
2.47.3


