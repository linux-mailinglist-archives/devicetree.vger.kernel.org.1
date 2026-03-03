Return-Path: <devicetree+bounces-270802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJlXAM9vp2kEhgAAu9opvQ
	(envelope-from <devicetree+bounces-270802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:33:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DA31F864C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1177830774CB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCB3358380;
	Tue,  3 Mar 2026 23:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fl7sf4gf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0675319859
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772580805; cv=none; b=J9Xtl4Lf/8eCw4bi+42nd37UW1mxg4UBA+b5fhTEE53hBHZ9PXBExHel4UefqpWOmyd5zM/Oo5W/oi7z+y6RQY/F/+I8v7MVU+/oU4GLIpTjLUm6YeiMgV8fG4G+h4zH++zQk8XndcN+RlGyvEaJxx1LYNTFhazyjMqBACkigJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772580805; c=relaxed/simple;
	bh=DzxA5HOVJC1lWCS3Zn0b5fckp0DX81RLCALuVVhdd2Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oPql2Wh4aKClvC6XgLYWZgPyFSfb/p92wlqHqpO9LsD3P3rElcwLvpKdh5E57Z/8qas6IrhnyewfPIRM4cIYKMmUnkU5XMXeWIeiIdP7E42GQEn6I+yrflQwg2dV0Euf0ov2Wfh+L6huHwNLYFrFPF8jSzOJ1TS6MM7b6qVsR94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fl7sf4gf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-483487335c2so51763405e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772580802; x=1773185602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oh+3G+7bH2ZmJrkS0IlH5a5mfzrOQ8n1ijjIvSM2a30=;
        b=fl7sf4gfmMkMmZe//KyLQrSqbW4su5lIw+ufBneTtFMlfJ3aYg5yIJI9Nim5l1xWAT
         KQGT1px4ayROHBRA+JYqlQLeOfQWcRo6SIWFsCFaE1eIklhmIkerX+pHYUqslqyARybD
         0ANx6AE7smadoZQscWm0Ka4mjQj6xHa4wxGaCqHYHoolvbKZdHMH5Fuw/nQ14Sej6c0c
         u7Taz01FLvWyKzFge7/DdWOPp/VxFq9SQiZImKvryP8oStwyB3ObAeLWVkJJO52LDrvG
         Wdffu2412GqzeYib8m4ffatNCxbuiYOZMSWunrbS/h1/hnvL4WCHMxtQTgpvjiKvS1/v
         MdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772580802; x=1773185602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oh+3G+7bH2ZmJrkS0IlH5a5mfzrOQ8n1ijjIvSM2a30=;
        b=RXVif0qxDE/zyveH5HB1WD1SgCtJzt19oEzIddpLjt+XjEpmOOMDc1yHYh5Eitd55M
         EVPxelB9hOKR5V27auz/dmOWN+jkTkMNNPoc430DFLpoTP82KLQQqJkULSTyhBvBtNCX
         r6ONtsvnmCIYL99cz+3PajZwwxpIzWkDHBCd3IQ8WsQub0NXZzUXxaZVjrzrxKVbUYQS
         hMRDw7vJqmTX+/tykDuhnvNAAekBEBbIZ9T+ZnoLk5ZPcLDxu6B0oekdWp0AEHsGUWmx
         02zWPjirSCh4em3wFSioo9YhY2Nv8c9rFX2v/tJgwGvzyKbw4hTlFnYM3f5VBKNZH/cK
         +IMw==
X-Forwarded-Encrypted: i=1; AJvYcCXff3vvuCbO08N23WgXRQiUo5L4tQLioUZrxozlCWKta3x5cHlzmq31BIPDFgG3AImkn568bqDFxDvY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2MS50HT6YioROJR8OFnACKQuuGKgLcviQh0AmIykCt08cs9hi
	6sNEqbnpKHI1T/zOKx4eu+RHSeCti1TvD64i+KmWbh3VOomFi5ilSIbg
X-Gm-Gg: ATEYQzz9WUyKS53xQ5U9V9acHkfSGIvHgF8M268sgUU6LFXUZ7AGRNrW3NBg12+M8aj
	NaF0HwpDvrEAsNDOPbpQRdKW6UB66QC0UuzXIAm96l0R+vT2Re5Av3beFvItf3q56ykFQz7GZKi
	fzIVG3M+6VMWvVJacMPa/gQ8z/HvTOOwgRRGoDuurmZjw3FbzDVsdV+pV4K4Os+RrF9tYhuzPXb
	DvG19C/354gOAszrzFUCBXtGG2eVD8iAxmdlEIfU8gvtJAR4W1MpEks2Wa4A1j+G2BwzSb4CvxO
	Tsq/j86sVL3vEsdgUx3C19QLduKlNG6TZLxHk0jlLJqBLRATQDJW2f6ZT5Ikxytrhqnr9zQMftC
	IGl57KLs4cq6n1bNYuwb9HfE8r2FA4t0n84FTwxxzAyJ7CziOFiSO+U5cGVHkqKylk7HfCHH5Ck
	XEsQYKQsopKKgqU0bIPaIPL+CbUOSdb503PRhX5FDSscCvDlfRN8RlCSlfqj5ldyTTlB8Uffwpn
	Jclb9RYEKprtrMLWOFBskdA6WZnvEcQZa9HpQ==
X-Received: by 2002:a05:600c:8b25:b0:480:1b1a:5526 with SMTP id 5b1f17b1804b1-48519874e40mr789395e9.16.1772580802470;
        Tue, 03 Mar 2026 15:33:22 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:30fa:3523:429c:2894])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126705e5sm26188185e9.5.2026.03.03.15.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 15:33:22 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 1/2] arm64: dts: renesas: r9a09g056: Add DMA support for RSPI channels
Date: Tue,  3 Mar 2026 23:33:13 +0000
Message-ID: <20260303233314.2928711-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 91DA31F864C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270802-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.195.83.32:email,bp.renesas.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.195.80.0:email,0.195.81.144:email]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable DMA support for RSPI channels.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Added all the possible DMA channels
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 494f0e5a83ab..9192c5bf7e59 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -784,6 +784,13 @@ rspi0: spi@12800000 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7b>, <&cpg 0x7c>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448c>, <&dmac0 0x448d>,
+			       <&dmac1 0x448c>, <&dmac1 0x448d>,
+			       <&dmac2 0x448c>, <&dmac2 0x448d>,
+			       <&dmac3 0x448c>, <&dmac3 0x448d>,
+			       <&dmac4 0x448c>, <&dmac4 0x448d>;
+			dma-names = "rx", "tx", "rx", "tx", "rx",
+				    "tx", "rx", "tx", "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -805,6 +812,13 @@ rspi1: spi@12800400 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7d>, <&cpg 0x7e>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448e>, <&dmac0 0x448f>,
+			       <&dmac1 0x448e>, <&dmac1 0x448f>,
+			       <&dmac2 0x448e>, <&dmac2 0x448f>,
+			       <&dmac3 0x448e>, <&dmac3 0x448f>,
+			       <&dmac4 0x448e>, <&dmac4 0x448f>;
+			dma-names = "rx", "tx", "rx", "tx", "rx",
+				    "tx", "rx", "tx", "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -826,6 +840,13 @@ rspi2: spi@12800800 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7f>, <&cpg 0x80>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x4490>, <&dmac0 0x4491>,
+			       <&dmac1 0x4490>, <&dmac1 0x4491>,
+			       <&dmac2 0x4490>, <&dmac2 0x4491>,
+			       <&dmac3 0x4490>, <&dmac3 0x4491>,
+			       <&dmac4 0x4490>, <&dmac4 0x4491>;
+			dma-names = "rx", "tx", "rx", "tx", "rx",
+				    "tx", "rx", "tx", "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.53.0


