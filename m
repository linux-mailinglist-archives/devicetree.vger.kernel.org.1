Return-Path: <devicetree+bounces-257407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLesLvtNcWkahAAAu9opvQ
	(envelope-from <devicetree+bounces-257407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:06:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 845A15E7CD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 485486A99E8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6D843C063;
	Tue, 20 Jan 2026 12:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nP/wSfZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275EE428832
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913569; cv=none; b=DJAMeoj7OZASiKk0NyzhJh8rm/Y4t1fY651HTToXqNOIFKKEjEUf966PGAOQ5JdH1B20lGSS8UtbIvrdFvsYfhEQYYgNY6u/KWsJAbVQ0KrPqyH/d+ZwgP9Oo4/BvMtlTxTdU9RagF0rfPqW5zNcal4ooq9JA/kdeaBI+gJvdcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913569; c=relaxed/simple;
	bh=0y9P4Uol4HIgbk4+cz6iwHkdzghQLj9ti5Di6Mh2y7s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sJRQyV6cJ7UIInGnjUDVVCKqnKBsqYHRyO5T2f1UtWWgLCqvOdNE1T6B9+dVs0DOTnRyTVIUV9/ViPRJOcXr5r6KWZ5QF62LGQOKBT9i5YhNMCJpo78pEQkDAmfS9H3SgAAZr2ktOS7dpayUa7BV8SK+mB7VjV0LfcP/Vr8Rr6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nP/wSfZR; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b8712507269so735403566b.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913562; x=1769518362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qL8xkBLDWQg0TaEXwq0QgvZjs42SE1DBI0R1nDd1O2U=;
        b=nP/wSfZRDFMAwYZx7CcbKjMuqhGdwvvXeyLDHPi/1+yZnWoddu40SiKS0d5LBvgnpm
         dBybyFH2EqrrvxjvRxeO7UBEBJvMKqxcn1gUm6WcguSMboeUX6hq5lftfqrFMChA7F0r
         bTmZhU3f4ouC7wxkMMeXoW9gIRtkwoeqVWxuK+wwHj4WbDeRrR7KufR7dvM1YS4cttQy
         uMI/wFcxBn7Q1jTItw6+CAYwHJ7Gg69SohsFlNtSLL8Nyam2s8FBekusCwwYBoHievyX
         9Jk3Io5iGSR1k3Kriu8OWM/yKcUhSCP0dpiNAqTrIJOFnZ7rQLHWAVkAJuontjE1J5OH
         vPdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913562; x=1769518362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qL8xkBLDWQg0TaEXwq0QgvZjs42SE1DBI0R1nDd1O2U=;
        b=QG5VpZGWmFc9tGpJhp+V5seTU6jt3wYP7efxWNTGk60+HIu9bb/9h19n007o4kfiFq
         Zm4C/rrCNjshP2LXH1L4l5KvBJMJl4UQTlZXRj95MSfXNtVaDbsTbO1nAzd4puQoHhXM
         P9AaThtKdcal+wADVJ3lo487JtcbkpeWgt4CV9MKmxjtIn+6A47VLFOQHgkRrU7cW8o2
         IR/Vai6Moox/3sfWkKdBh1SNCyxGU1RsIFx8i8DZWF6p6EDQx8pqsMtoFSF2yXNWWuTQ
         zXLcnh1AsUWIM/vmrvI7OakJt+C9OhNw3X2crnBA17ouGKYl0WmGsJl+NwGoSMpxECce
         KDUg==
X-Forwarded-Encrypted: i=1; AJvYcCVrLaHG4LOWf7mtVfPfSFPkvMEucL+EO/HQ9NNz4e5OYzyMLB+CtD+j2zo8D/rAISR0YC3EBWN+CRCx@vger.kernel.org
X-Gm-Message-State: AOJu0YyexzuLBOuJtrK/VdFr5sBaHISQx+VCg7JkIqVgXrJapzfrsvx1
	A89KBphT3GEggck1fTgLUbhadHnf/xFx55H3f1IbLaoH4W9uZ5FJFL/R
X-Gm-Gg: AY/fxX7kNB7yuZmjRrf8sYe0Dao/OXLogxJulxyuuY3+MrMcL0bVPSSvnpb8egIB0eG
	zbDl+7bjFBYkqj4CVMjucGpXTU3lE3DMIgLfyxPfx18WadkGkK48PFAbGiBD/DQpeNRbsfm7mqf
	3/oRoN1yDVz5F5L57K6225ap8aZ5q1IT4dLwdn7rYBsGCdg4Sq0gErEcIe8Ur+ZoGE3XN/t2HjY
	VMteC15ni0BJh1fiko3jEk43UZEt+f6/MYsIgx/p/vqI5WKGKuGOQ4hVKkJkUWnPHcjfvE34c0w
	Exfgb9HhkBxV7ypKa7V9DKtKJ69CCABsmcjOskoLZxpHvQtya7nzwXL75bmx5BGYx4Qu5AJOKuu
	T58RlfxBbhRGPsV222lL9Sxq0gU+PSpqzjkWYehh8Vee5ZVQpPPsDeBnC2ocF8kbznGmoYgk7Cn
	wtWrORh3oUDUpnPDjlR7y7KLe9JR+4a2b5JWA=
X-Received: by 2002:a17:907:9719:b0:b83:3773:dd98 with SMTP id a640c23a62f3a-b88002618e2mr171794866b.20.1768913561960;
        Tue, 20 Jan 2026 04:52:41 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:c8c7:2ef6:8ac5:5556])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1420626066b.41.2026.01.20.04.52.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:52:41 -0800 (PST)
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
Subject: [PATCH 11/12] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Tue, 20 Jan 2026 12:52:22 +0000
Message-ID: <20260120125232.349708-12-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[33];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257407-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	R_SPF_SOFTFAIL(0.00)[~all];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 845A15E7CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

SMARC2 board dtsi is common for multiple SoCs. So move usb3 nodes
to board DTS as some SOCs (eg: RZ/G3{S,L}) does not support USB3.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 6 ++++++
 arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi    | 8 --------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 696903dc7a63..cc75f6fdf7f5 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -248,7 +248,13 @@ &sdhi1 {
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
 
+&usb3_phy {
+	status = "okay";
+};
+
 &xhci {
 	pinctrl-0 = <&usb3_pins>;
 	pinctrl-names = "default";
+
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index b607b5d6c259..69c0101ff7f5 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -107,11 +107,3 @@ &sdhi1 {
 
 	status = "okay";
 };
-
-&usb3_phy {
-	status = "okay";
-};
-
-&xhci {
-	status = "okay";
-};
-- 
2.43.0


