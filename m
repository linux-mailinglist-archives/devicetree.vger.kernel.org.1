Return-Path: <devicetree+bounces-281177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPXSNggYxWnr6QQAu9opvQ
	(envelope-from <devicetree+bounces-281177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 12:27:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB94334760
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 12:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8E401307FDB9
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 11:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37F63876AB;
	Thu, 26 Mar 2026 11:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pDzId1Ph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB74D38CFF9
	for <devicetree@vger.kernel.org>; Thu, 26 Mar 2026 11:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774524001; cv=none; b=gWJxbDtgyAtDTdjiFnkJlXmGsB17H0NPTZ715j3ijxFU9So53KaicYHbP4TOwk0rFoKY+VmcEUOEJB+4xC4wQzwXZa7bsqxCjUOLDiNasQZ5ovvUr6J+9d67vAqOXVZbx0prmCruYGYwUjfsQey+YBzDcOp/RH5bY9JXEpnQ8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774524001; c=relaxed/simple;
	bh=7Vw1KTQROAzO/JTo2J2pvvE+FltMl07O3LMA6A6JUio=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dw2tYsPc0l/lnsjFK1PIeteCrXK1j7NtFL08VwtR12v/Aqkbxqji14tdHDEJijKVrpGvuqOSsY3+07dKGYM9WX4jybyN9b1hzAB0uZeurWez/ZLZsqq/yhEU5bZ3cRFmX+hHsXHY/InpLaxNk0mJKO+yEzNtnOuN9WcumfaxHsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pDzId1Ph; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-486fb112c09so8485715e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2026 04:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774523998; x=1775128798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wyyzkaIlkNuGwiDRwt078HQE7JTuTrZR9EC2AmTvLc=;
        b=pDzId1Ph6bP+8s0ahUSNxzFWSt+CrKcxk8gf10zQrnmkYhc8DH93Yzr7Znh9l+fmpI
         yd/8d80fBhsGcVgYoVj4igfEC+75cEIVlfHuG561jfI16GP1eWwNC4XMIMqivq8l4kdi
         6SstdoeQdi3CTWFdN7xRvWJA6IIDs6DnuH31FOAw8AEgIsGuF9cRt/L4OanmqG1Ap85h
         lUEn7en2pP8nlWzFw2AqiS3Syfe7QYRDePd8awLS3emtX6BohFdBNRZeEMVz5EO9EqKC
         W6G5L6JtdGJnYT9+9uKR4aM5pELi/26nlRO/uKMx9OhCP5sIvWNavm1cjGk99TIygmTo
         L0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774523998; x=1775128798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0wyyzkaIlkNuGwiDRwt078HQE7JTuTrZR9EC2AmTvLc=;
        b=VISkDo1lMeoBOpLq7lLgLHVI5oEvtVQCJKzkgjykA0JxFTGik2IBQxy1h+LH/9E3wl
         UZXHUco0zxJusuCUS1I5C06DXQycdd0dwalrrF7iKG2JnL2dE3Dek8VIUJN6fM13fNwO
         OF3Cl1V264mk4hr9dpLtuAN+rKwWrm3njbl/pinInqSbumM8qwlgsKV2zYNE2brxvpRO
         vGGtrO2RDcTP4Ub51UJH9ZLo35NQs3+GpeJsti6uFqO49TDl1f2lioge9F7gs/BO27TG
         tjhrUwFonGgtsgZpm/R17icNuiqKwrAChLaLPJGtT5wzTaqeLT0eGd1+Yetrqnb7gXnd
         MkqA==
X-Forwarded-Encrypted: i=1; AJvYcCW7tDJ0T6iFlGalC2qblyVItXUAm9Nr5fnSYdoGcaWut+fZk50NPUQLeErNZ+FrQ6FyjrjY+//kFNlM@vger.kernel.org
X-Gm-Message-State: AOJu0Yztir+a39KnkE/xuXlRLTaiG73rwzSiDND+M6F3PHRvFOE4frAa
	ad6ClVfwnRSaQvC9OqjqUB7QoWSoI4cS5D69smsgTjmPs9D+iBzdMoqG
X-Gm-Gg: ATEYQzwRa5vKeHccyiAA9Ly8Mise1+5gO7iLc4F+zWdPbfD9RD4t75uYGJI6kzA9r2q
	5G/IrdbsrSvWs2dp1u+YC9AQgSYn55U3QsRUhShOteekHxxz1iZJKt+iWIOzQL2jpHNIYWHXd3S
	XgU9FN0bdsPzITN6NNE5FTND0z3lonNTd6pDuxWnOcbxUhzHdss9gQrgxcvivfRHwgVEjZeZtPe
	ldYZsUM21mR8V/9h6MfOtQBCdzxBFNK/PXf2B5J//fy92+nISMZ63pnFzmzKi7SWUb1Wu+2YLwl
	7xx4MVRXbetW2dmMhotQzcr0lYPQm6lD+k/YzM/h1q8vJXHQXgeGpcJDfqUe26yqYAF4LB934Tj
	9kUSXLD+g5kH1N5hjR7zyu3T4bVfo+jgQi8ybxLWCJz3r8blCBPSsUu8HnN6AePceHnv7mw/sFB
	V94rEi9J7bnrlWsmhbDC8SX1VFe8r8WolGfEx42XR/1fQktGUnpJ2H/kUlfMw=
X-Received: by 2002:a05:600c:3b16:b0:485:45fb:3472 with SMTP id 5b1f17b1804b1-48715fc3a88mr105944325e9.7.1774523998023;
        Thu, 26 Mar 2026 04:19:58 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:377f:9a3e:6c94:560d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4872092e105sm13428045e9.29.2026.03.26.04.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2026 04:19:57 -0700 (PDT)
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
Subject: [PATCH v3 2/2] arm64: dts: renesas: rzg3l-smarc-som: Enable eth0 (GBETH0) interface
Date: Thu, 26 Mar 2026 11:19:50 +0000
Message-ID: <20260326111953.31024-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326111953.31024-1-biju.das.jz@bp.renesas.com>
References: <20260326111953.31024-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281177-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.7:email,2.220.108.0:email]
X-Rspamd-Queue-Id: 6EB94334760
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable the Gigabit Ethernet Interfaces (GBETH0) populated on the RZ/G3L
SMARC EVK. The eth1, pincontrol definitions and hotplug support will be
added later.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * Dropped ethernet-phy-ieee802.3-c22 from compatible.
 * Fixed the typo txdv-skew-psec->txen-skew-psec.
v1->v2:
 * No change
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
index 7c21afaee9bc..392f1229784d 100644
--- a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -8,6 +8,10 @@
 / {
 	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
 
+	aliases {
+		ethernet0 = &eth0;
+	};
+
 	memory@48000000 {
 		device_type = "memory";
 		/* First 128MB is reserved for secure area. */
@@ -15,6 +19,36 @@ memory@48000000 {
 	};
 };
 
+&eth0 {
+	phy-handle = <&phy0>;
+	phy-mode = "rgmii-id";
+
+	status = "okay";
+};
+
+&eth0_rxc_rx_clk {
+	clock-frequency = <125000000>;
+};
+
 &extal_clk {
 	clock-frequency = <24000000>;
 };
+
+&mdio0 {
+	phy0: ethernet-phy@7 {
+		compatible = "ethernet-phy-id0022.1640";
+		reg = <7>;
+		rxc-skew-psec = <1400>;
+		txc-skew-psec = <1400>;
+		rxdv-skew-psec = <0>;
+		txen-skew-psec = <0>;
+		rxd0-skew-psec = <0>;
+		rxd1-skew-psec = <0>;
+		rxd2-skew-psec = <0>;
+		rxd3-skew-psec = <0>;
+		txd0-skew-psec = <0>;
+		txd1-skew-psec = <0>;
+		txd2-skew-psec = <0>;
+		txd3-skew-psec = <0>;
+	};
+};
-- 
2.43.0


