Return-Path: <devicetree+bounces-306330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vSx9DXNFIGrmzgAAu9opvQ
	(envelope-from <devicetree+bounces-306330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:17:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A43639098
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:17:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JhLWKPy1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306330-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306330-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32DB5316BB69
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA6148C3FD;
	Wed,  3 Jun 2026 14:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756F548BD2F
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 14:37:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780497462; cv=none; b=LaYy7lEWATyqahOteDQLxsyTmXFkIFJeMCGstq5yr6grrZkZE9WJxl3BA8Z7mU2gkiAud/7QLOH7Hq/fWiQAzGn9vrW3FUBMF6hzT1y9XnGuCROGeIZ8fspM3c3N9eL6gP4HfVh5R2+Emh+5fNVYeN1QGfX8C8eP8+195KNfd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780497462; c=relaxed/simple;
	bh=JQWYc/4fLffUjNA3wNIOzQv6+iqCyIBB6K7GqVimTcA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aMFW7AlzE/LnoL3fvPRg1JlDsNidSGL6s1UmZ02CK6Mcf4/tqtWyqdIOQjpijsQg/LUr2Ie8zk0b/1+2vHtHp4AdRrlEcJIhyfgBpzr3McRDequpbICpkCDmfbhjnkN9t5C9ql6ddAu9C8j6HlFTmXmtrxcfF22Ue9uchVjp8wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JhLWKPy1; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-490b3e03939so7470215e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 07:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780497458; x=1781102258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hljhn7F62l056w1LsgMyS3YqsFiEWlqkEOExxjIDOMQ=;
        b=JhLWKPy1FSzTaijE2FHhpSEKZDp7FIgjRaq4JzYAiIiel9UGZYtgsz8r1HnIZOBvo3
         v3mXY022tavIVkmaf0eKbsbgwp6sbS+/QKyAj/IzwOujQrFQaU/vPjyoKe+dkVxY932L
         Gws9950IxvY4j/kCKMGqEXPC3k9rrDFm08irloy5GF8erze9WOc4jb5F0ILaFdzHumyv
         G9GMWUf3dmMUwwZaju9UOcQ5P/eugaOxR+SY2n7r34xKeNitAn6R/gs5PxcRdZxpTt1M
         gzEYE/Ce7uakxH0d2ZBfiNjbb9DtEDjeRyUExk3fJp1KN5AaUVukepdh7ePKvfk+kVHz
         EmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780497458; x=1781102258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Hljhn7F62l056w1LsgMyS3YqsFiEWlqkEOExxjIDOMQ=;
        b=DMJyuKX8ZqdurDhuDSHBTA/89jdFuacbY46JSNMcbL4fv50mG+rE63OwBhbtjTgBT1
         ZFDenRRPd+/pA6A2SxeQ959PNL4vH4L9XgiW+3LZAKJW4z7pjXPvbd9IVcONzNj7ATU3
         wKCkCblLPgwc8QcUums/lQ3M/kpbS50Gj0hXOve1kwVibg+szyzsgdd1lDHLO9WwIamo
         VCEOovwiD8yJoHoL6i/pVZHR5oca7TyFJmVeuDk7h8JxeNi2n9H9HYb6desxsg9DfBrA
         6jOvDvvyHg7tpfcvDrkxtNxMVAnWqY5RP4apz0VzXtGLNGPgC+4MlICIIjznaDa+brce
         I2BQ==
X-Forwarded-Encrypted: i=1; AFNElJ//asangEiSll4sNQOnzYVBpxzCX3WywNI5mAnZNUTXDp1mDYK4p7TdV6bXOQ7KA/vppH4YIAUEr14D@vger.kernel.org
X-Gm-Message-State: AOJu0YzKdXoFb/wjrxRyvtplExAdM6md3U4dwjV7rsb/R2S4oUPad8d7
	Att/hqLgZNTePN4t8MOxzZfn2zuLpXY+3o6Vko1apC4CqxylMfF6f0su
X-Gm-Gg: Acq92OGGphcT1BEawbXb6Ubha4MnYg3aiPnE8e/k3nc12fJGAa01k3XwhZmzNnyTkue
	eliiZKI70ZIr9iL9rU227fu+MXYojN6CJuYP8HLMhzqeXSwzN1L1DO98KR4uqYB80TUzH8Ohsg9
	Ai1snmTOt8KMVao6x9SLobElWU/YjPY5pUZvCZdI7RVuUATYne5P05ltZT7mvZaLqOw4L64N5wh
	7StuJ0Lcv+znwUsjemDfjCRkZaOE+ZeNXJJHhgEOizJmStlxCUz2FBZRgi/4EWWeikyShgM9AZs
	6yRNw3pCZsDv9KmIHIzjHTQw5u+aUEeCDaVVRwb4BpsyLv9NREQBuRjhc+h3Xzp8f3Nt+yKgB8C
	DUJcdxB39+msPZUYyC056pX1Hulshshmx7EIh3isqpn+xbKmZ9TvhnrTzOK1qHQknph12AiUMdg
	aKkj9xzdYaKp8wvLjUDzebXkvlFxSMdv3DNcMOGDtnclmi9VeOlRPB9fpWXSPTMr/wm7DN6zcF3
	I8HuGZaChsQjSJ2y0Pf4LBuytsgKQbBZ0iOJZgf6m0DRiwrJuhG89DHYCU=
X-Received: by 2002:a05:600c:5308:b0:489:32b:ac0b with SMTP id 5b1f17b1804b1-490b6121745mr51329715e9.6.1780497457614;
        Wed, 03 Jun 2026 07:37:37 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b6150bfcsm120267855e9.3.2026.06.03.07.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 07:37:37 -0700 (PDT)
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
Subject: [PATCH v3 10/14] arm64: dts: imx8mp-var-som-symphony: keep RGB_SEL low
Date: Wed,  3 Jun 2026 16:37:17 +0200
Message-ID: <3ab5aacc561dc9bdea882a3babd39ba871eda023.1780497188.git.stefano.r@variscite.com>
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
	TAGGED_FROM(0.00)[bounces-306330-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87A43639098

From: Stefano Radaelli <stefano.r@variscite.com>

Keep the RGB_SEL line driven low on the Symphony carrier board.

This avoids leaving the line floating and ensures the board remains in
the expected display configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 9d08785cdae8..06d8dd7a5b54 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -193,6 +193,14 @@ pcal6408: gpio@21 {
 		reg = <0x21>;
 		#gpio-cells = <2>;
 		gpio-controller;
+
+		/* RGB_SEL */
+		lvds-brg-enable-hog {
+			gpio-hog;
+			gpios = <7 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "rgb_sel";
+		};
 	};
 
 	st33ktpm2xi2c: tpm@2e {
-- 
2.47.3


