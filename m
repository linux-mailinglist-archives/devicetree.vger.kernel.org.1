Return-Path: <devicetree+bounces-270433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AtWBG69pmlDTQAAu9opvQ
	(envelope-from <devicetree+bounces-270433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:52:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C650E1ECFE3
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 554DE30391D0
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129653B5845;
	Tue,  3 Mar 2026 10:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jwq5ZGIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BDA3B4EA4
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772535083; cv=none; b=a+IZ8rIpEOLuDx2yWIFvOjw40ReMBIJ+IHkA5WiSfVQou03pntrzrXloAU1rJvu9WdcLS4tkzpEpxSN0x6lFhhZPa6EYSdfB5d0+qLw6P/s/R/OBe8/x0RHaHm7CorGTQ6Whk7pmipYRqeaV3ancV6k554ZVcOwVkd/QhKm13Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772535083; c=relaxed/simple;
	bh=kMO1mUplPoeX2sAJ+bgJIIhKz7q/jcfABBVHbd7B8rk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K0yerNnWlT3Q41WX8OS0XeKk6wLu7ZskB3mwzAdSpfsLTd43G29rG0y3lw6i2KTGN3d15LwkGmuZuzyXasavszE3sNBz1To5WDVVIjBww0CZiLT9i76oZPGPfgn2FO3iQA4c+2dNpKzINuDos7z/1V+rRGtX6100mIEQNCQVO74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jwq5ZGIH; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so65439875e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772535074; x=1773139874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qRBxFrn7AC9wXOJpDQL0/mC0loZfyU6jw3bAKE+4IaY=;
        b=jwq5ZGIHmufp/8pyKDzo1LF0A7pnZaixbUTwJJ4OlKyTWYArci7joMbjCQ/xtRQxaq
         7CXZ1qLAhsOau480Jrc2OwuhnoubMyeqMlrvSH+84zIQbFjvUtDmrwquloFoXBjpDG8Q
         LoP1VXMNTT6Yukk3yquEQczRljNBVvbieZkn5o3j0Fxbx4nl42ZraQOL7XCUwSRS5nSU
         4cPWL4miLH2RsxqNjM5NjNj2/mJz1OKqB7OFmA4Ux7qWbrjseWzIsOwS4ZWMyLCksBqE
         Yz79lILUQuMSc67L/60xf9o8nlnWr5j0EM1+53hEndBVRVbhVjePo2I2fJa2yitCRK2K
         LshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772535074; x=1773139874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qRBxFrn7AC9wXOJpDQL0/mC0loZfyU6jw3bAKE+4IaY=;
        b=Ys5Cmo6Yx+lt/BJABNw78YmjasNY1i5SYPKBqEG6tndT2W8XES9Jr0Et4qe1hpZj/o
         5IokyXtoiGqwsMiE+hDCbsaZf7fA5y6RkKZzfQ5d7s7yBNh/rksn1A4PWfOCtnJOSOTB
         HoWqA6cKHhZDCyjiezp3BDg3szavtkRu0nDUjWUKD7SiUINoTaMH0f26ZDpW9nxujsE5
         Sv0Y1wzzCoYYLMJK5z8xcg6eWFc9A+BaTA4tylDUH1p8JbpcLw8kyN6Va0tMSDiDvoBG
         LMAw6vLBOVptro2o0G6NV2tI6dj3rBiMksxXgL/0fBXVKv7bVTPAjcO/wCQQy3V78xBO
         FJYA==
X-Forwarded-Encrypted: i=1; AJvYcCWegOD1uvKaveRGm4FQhRQCjv3zQQn2iLTQNkYZSe9yeAeFaHAfTcqurjo5EzQMCVtt4xVNclwGtbh0@vger.kernel.org
X-Gm-Message-State: AOJu0YzChyPRbk7suOSeTe+nLHvfG0hcB1a65b96Uw7ATd7Noc1h+3Aj
	iu/bv6tZzk1Musu95haRjGMdZGGs1GkzTGt8NgswjcKNnQj87ofsWjbc
X-Gm-Gg: ATEYQzwx3xhOZ1tu2HvHUt5WYnVJlGmaATSWd7c/uUkNe3xNCfdKrU7gcVtLnf9u6Cy
	rTcv2qWTp+dBKfcV/zudjZTZQVxqTC1YfI0rrWc8e9BhwSgIQmdFJ6ywqvEuoUpg5q7CjWrMeMU
	PtdoCF/k6lXCegjqdIIT9ADbDVt0CK0GTqwRU94Ubiy8s4CdAGeavIgMg03cngT7c40Y4nJIojA
	o9N8Hhg1V5f2f0cu6/NzKao+8Dyqax+z1Z4qR2zS89vSqE2cTT+VU3EYdmdbQOHGGIXmKn9z1GG
	oiylwTgNa2J+AlhY9odXP5EHFazfj04bAxqn4bBGluSS9zXB4Axwq4jM80ph4s+R/FPwFqq/dIq
	gAgFjX8Q9lNlESghJJ38DzqBnkLboMPtsz1JZjNKS2EhiGxC9JLfck6F/Bv34Vv5QH8lnfH7Fgq
	ifJi4hs3YKtjIW5cYxUl/OP8D1zs5fvVEpv44rHJxTa1ZiTuLyJeIfJCLuxposGnFZXEMaibnRq
	1T/wa/9c0ao/ybySsc/J1SjbPocFH0222jI7RY=
X-Received: by 2002:a05:600c:c490:b0:480:20f1:7abd with SMTP id 5b1f17b1804b1-483c9c204b0mr264369755e9.31.1772535073748;
        Tue, 03 Mar 2026 02:51:13 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b3474dsm318916045e9.1.2026.03.03.02.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 02:51:13 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
Date: Tue,  3 Mar 2026 11:50:37 +0100
Message-ID: <3b6984f4cf47f98fe6aa69705b771e7aaf787f79.1772534362.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772534362.git.stefano.r@variscite.com>
References: <cover.1772534362.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C650E1ECFE3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270433-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,lists.infradead.org,microchip.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX91 SoM and Variscite
development carrier Board.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - Rebased the series to fix DTS apply issues.

v1->v2:
 - Ordering by hex and node name.

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..be2b88c3d9ee 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1545,6 +1545,12 @@ properties:
           - const: phytec,imx93-phycore-som # phyCORE-i.MX93 SoM
           - const: fsl,imx93
 
+      - description: Variscite DART-MX91 based boards
+        items:
+          - const: variscite,var-dart-mx91-sonata # Variscite DART-MX91 on Sonata Development Board
+          - const: variscite,var-dart-mx91 # Variscite DART-MX91 SOM
+          - const: fsl,imx91
+
       - description: Variscite VAR-SOM-MX93 based boards
         items:
           - const: variscite,var-som-mx93-symphony
-- 
2.47.3


