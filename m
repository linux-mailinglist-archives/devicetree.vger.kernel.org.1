Return-Path: <devicetree+bounces-293068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIVAMXzm+Wl1FAMAu9opvQ
	(envelope-from <devicetree+bounces-293068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 14:45:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D41B4CDD5F
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 14:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C4F730943B9
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 12:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B0047CC80;
	Tue,  5 May 2026 12:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IHvTBlcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43F144A73E
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 12:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777984638; cv=none; b=c+8J6lvxeQggMxMANBTkOUEMH0zUHr+rYlkXjPCtayPSrQF+tjXfdrUXJncmywsqaaLr/a+PYNug4S78hDK+du0mobRWE2bh5KfTwW1tn+KuK1MF5BoTNa/rOUxRh9vry8lCD34pwiNnVRPXYDwgPALI0P01C+1gc8JDAsdFi3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777984638; c=relaxed/simple;
	bh=E7JDCwHJgVaFL1A44K4ePqolMC8wjNE4dhRVxypVutY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H1/d2ivDBezC8t/Sw/gB2Hp4OSgwxxCL2eDmzFpRoREjOPR3+vx9rJ3SUiyfkNLveuGFpif8EeXtloNB+2pa0G/F8lBV0YR7AhMXX0yMvWdHRMyze5m274nYzWp/vaD/9E8pC3yEw3hQVcq1zC3/6VsbbfPQLRa0A+wq3yPM9uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IHvTBlcH; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43d73422431so4891771f8f.2
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 05:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777984635; x=1778589435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32ZCzWFkzCwQPUS0qlHqnLdTw8nu/0VnY/TwVeNGcz8=;
        b=IHvTBlcH9TpNBnrsgSPJtP2ZC/awjX3uNd3DkuMyWme9/EK38vGLRReVE15QN6WhFv
         0q0sK/n0v1gAHSTX0x/RxSDGCCEDYVXsHoY0fYucKcmDA8J4N0zQElH1hsH8nPy/JRO5
         vXiijxFC5yyuMr9uWVmaEUO+43fGLT6CZzxY71jUdYajngh6tFcVmyOk7su1uQ3wFy4W
         8CN/BczTJSo7Rx7IQXGEFX6FvwOLeKgaNYrlEb+KomVcWPAiIBWfZwO+Pjr8TqC0Rjr+
         AXZn9wf71XT0J3RtZI0jYdECo6El2/ChJhXg+4zExj/ezZdVmcuqeHAAOZTbSQLeB/KI
         n43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777984635; x=1778589435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=32ZCzWFkzCwQPUS0qlHqnLdTw8nu/0VnY/TwVeNGcz8=;
        b=Wm9nHUFrd4vI4zb/3U1Sqw3j0pAbWgfGG4oF64KDMjrmjbvWCPCmgBASdIyofdIWHS
         qvasrxPcv2gvGCrjrnNYcQv3E9jNr3RBWvagUjEyUE2cECgqwwJPT1N/S6IsHwWkacV8
         OsF2Xcy64cjpvEwvXEM8tR/HjvhhYm2AcUjIxhZSstF2SePXFgdAkN6DujTm2BZbCWgV
         F0f0yii/0Lx9kxZBHbhtpptUq3tbog9ebh5Jle38jymgEWNNqeNkzZkMycr+JQdv3F1y
         BPisRx3SD61HwJEyalqh3zqYgl1CdBvcfS82ZSSjCEwd4I6T9KuWR8MsWNd4ReG6GFTz
         GNsw==
X-Forwarded-Encrypted: i=1; AFNElJ/rDmgca603GB0yQHn9K3tn/iZp7MvMxowqQC3kc5h/aJ7XU/erqABjDdhyRd0sFWghf6QcfXUJx9tI@vger.kernel.org
X-Gm-Message-State: AOJu0YyEQ6HiIFBUToZpFJgfIDQB+uYRk1AblIvB9gYX/IOGRnSFxd9d
	Q5aBMFwXdzKeKdfx6qecBV7Mcw1q0ids4JkIOyMmYzKjH9sqtcfUYgPo
X-Gm-Gg: AeBDieuxQVfan7xnsE3ekkZr0MB9hlvSsPham0K1mc+pvLdDez9BWiNt7JTqjXTjw+j
	s9pE/Du9/xpJHtjamZFvWxUgB+vq/2bhPK56AOh+C0bwrDhO4DTPfrwVdtiGpoRtZVkAGYeo3EI
	06PLkuc8HlcZLr6XOxqlN3vANCNME6/0I2kMlspqgW/s1nzs6F3LyZGP7NvnQdMRTP0T61tboD9
	n1cxTQr3v3rIA7NKbWkLyE3+N6E8C5mup+UgNvK5DuUj5U7FOgyH7j3PM+mo0sGfB0XIDTWDeDv
	pPQSOs1/zflkeiDiHvZEd3dZ9ouumse+L9veBInkkSBss7lWPKwsf43wd0blRidxO/eUDJGdmPb
	5aEupPDCbJlopsFNR6yEie+CadHsDSfVcN2X8dLq8FQgXVYBw3QQoNHAtp+reuo+w+XrsDKneqS
	UTV9qE5c4y9MBfp0T3al0XTiMOzt9ZYZTMopFwcAUdAoaqOyn+0bmjNRswpZs=
X-Received: by 2002:adf:fe8d:0:b0:44b:dd6a:2c80 with SMTP id ffacd0b85a97d-44bdd796f29mr14779940f8f.2.1777984635192;
        Tue, 05 May 2026 05:37:15 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:1da3:f63c:84a5:197e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055960902sm4703780f8f.28.2026.05.05.05.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 05:37:14 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 4/5] arm64: dts: renesas: rzg3l-smarc-som: Enable versa clock generator
Date: Tue,  5 May 2026 13:37:02 +0100
Message-ID: <20260505123708.134069-5-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260505123708.134069-1-biju.das.jz@bp.renesas.com>
References: <20260505123708.134069-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3D41B4CDD5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293068-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,2.220.108.0:email,0.0.0.68:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bp.renesas.com:mid]

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/G3L SMARC SoM has versa 5P35023B clock generator to generate the
below clocks:
  se1: AUDIO_MCK (11.2896 or 12.2880 MHz)
  se2: RZ_AUDIO_CLK_B (11.2896 MHz)
  se3: RZ_AUDIO_CLK_C (12.2880 MHz)
  diff{1,1B}: ET{0,1}_PHY_CLK (25 MHz)
  diff2{2,2B}: Not connected
  ref: Not connected

Enable versa 5P35023B clock generator on the RZ/G3L SoM DTSI.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
index fb868ea99b7f..419a0e1584bc 100644
--- a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -40,6 +40,12 @@ memory@48000000 {
 		/* First 128MiB is reserved for secure area. */
 		reg = <0x0 0x48000000 0x0 0x78000000>;
 	};
+
+	x2_clk: x2-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+	};
 };
 
 &eth0 {
@@ -75,6 +81,20 @@ &extal_clk {
 &i2c0 {
 	pinctrl-0 = <&i2c0_pins>;
 	pinctrl-names = "default";
+
+	versa3: clock-generator@68 {
+		compatible = "renesas,5p35023";
+		reg = <0x68>;
+		#clock-cells = <1>;
+		clocks = <&x2_clk>;
+
+		assigned-clocks = <&versa3 0>, <&versa3 1>,
+				  <&versa3 2>, <&versa3 3>,
+				  <&versa3 4>, <&versa3 5>;
+		assigned-clock-rates = <24000000>, <12288000>,
+				       <11289600>, <12288000>,
+				       <25000000>, <25000000>;
+	};
 };
 
 &mdio0 {
-- 
2.43.0


