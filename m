Return-Path: <devicetree+bounces-249578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD96BCDCFAA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CA233025A4B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AFB233FE24;
	Wed, 24 Dec 2025 17:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cjr7F0Dk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4331233B974
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598745; cv=none; b=t+qCvZUjJnKbQjgA2d7rScWE1iCoPZpbi/aMQMcrfxSwxqetdDqEfUCr7w0z6uwf/Ur3+VpvJ8Q9/w7N8cc9xlQFBZDFkTAvyEM5mOi4wok0aG4iVSMCD/GmCfCac1jy/Z7VkJuYNENgUABL+K2R0F+GrlRC7JG1w40dqravcK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598745; c=relaxed/simple;
	bh=pOP7sffpPXBBP8XS2tEpqCAXnFXiTDSjJc0vKY9ZMCU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MxWgM2+ScybpHSwvdwTkmQEJ7Dwf0guqizB606V5Am68Rl7++1ir7xWsok4cuUIDCAFCrH/Cbk97ljLJdeNkl0/xKb55fBijJtCrk3mg9++Ol6eUwKMHNZkd1uUC+tL8m8TpIfOsnc6l3VutieioTIArHo33nDcLB2zkpRVyYm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cjr7F0Dk; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47796a837c7so41180125e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766598741; x=1767203541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wsWjFifWQcsgT/v2qEEgr1GvVwjk6hGvN3mMH9mtFc4=;
        b=Cjr7F0DkAbBIcgOJt5f5cKpCi0jjdENy/XLT65sGN2GFX0HHBkFAx0Jarex1+pGUf5
         YJ8AG091utAl6rw6NkW2rXgvEGRDOx5dmspCaOkPtpCrsFuQqZMz/DT+W+BIHIvx4ArI
         Xb0nNN8b3MJGzln+oYSB0RSjxeXPaqgVlZGDylkod/SSs+PYUHIYhEAkQrsrmWiHK74/
         vNVOpKE87PxVrExI/Buq6C+O4znC9v3rrxjopcOUlf5IRYPcj+G8cUHB/V4RnbaU2Sox
         pyvxEuJW+lE0n1YKxL2AUpOMGFuv8ozmG7Yg5vXGHP6Zvau095zQc7bH+8j9XYO///bS
         5vuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766598741; x=1767203541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wsWjFifWQcsgT/v2qEEgr1GvVwjk6hGvN3mMH9mtFc4=;
        b=uvNgqreXtsqRJQhjd9s/cnEypP1EtF+CnKYMbvM0kn3kzC4DVEt7NPPITKwpJ7VKrm
         UAcggm9fIE87Slt+a+EeQbL1gWtebmO/QZCo/Yzvzn9ovOQnpsdSe65jg8FPHPeUECr8
         0A8op74VeDAc2AZZoeo7XNbzYV/10Y8fJDevbAg0+XDXU56XdoeYiJOS7axlobmFglym
         ex9TGcRyRD1QqZwEBoehH7zggzoGQNAjvuYYxAYNcLKGidvOV/y02ijQSSCc2ewSYpcZ
         PgxF2fzDotCsmT5s2KwoPABTtuvJpkMW+94rpvI48LWN2EDdfKKNcZNo0UMed4tFJM69
         87Ag==
X-Gm-Message-State: AOJu0YyRJLkQqF+7vTygKTJxd66ll8YHO1/zSlr9NrHCEYRlmNmPXnFp
	g49tRgnRPoHreHaLTywaZuXTEllgEsgowbpyx8HCqHP/X0ZNvFC3Q0wD
X-Gm-Gg: AY/fxX6M/RjQFyfxVa1HjYRBuuo0hNNdTB5QXmbSeKSaJlt1btbQa46xelZdaMzZhze
	N+Wae4xnqNvHaW9Z5j6nnkNcmaSH8BvwelzqSGLomjLxKXJTMkJ0juAQbg74MBuVh4CZO0k2CTC
	CSZeDRlcTVR8txRbpmsah3FXtO4rxfb6jh7X5RLBuvpq+PRAkBL0JGjZyiBgZNBZqf8nflbWl7u
	bqTD3feyKADpk36g1AdWGgBzf3tuj2fVRanUQfUMwNCE5fQAMjtIJozsWBa8NHFlan5JKHu9sCs
	ruWmlR7RVvGGHRgeXthY1UhGYOz1L5K5j9x3fgfQ8Fj3GFW5nXmuNUbSAf3MBC8b52zo4hwL14l
	8R9TkUkg0SeueLuj/egF/RcIGB2WeQsZ7bMWJ5j575RUjJh2VVXRCS4L+AMlZo8LsuzS0PVAX0g
	gFBx4BdxzJt4ahKtpwGANd8mmdZx8uzJuWoj2OBDygCZABYEZ6fqc4aJ0g3O5+JQ7IG1s5dCzmg
	A1qD0/8CHk65yilO2hTX613bTJVXz6Gw0o=
X-Google-Smtp-Source: AGHT+IFKJQX4SbUcxclmhXncs6UXp3kWhC6qM9fe9GH0ZAUiP9St1bQpdW/PhuLI0D3rfo1ohchEgA==
X-Received: by 2002:a05:600c:46cb:b0:477:7f4a:44b4 with SMTP id 5b1f17b1804b1-47d1953b78cmr207555495e9.1.1766598741250;
        Wed, 24 Dec 2025 09:52:21 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a4651bsm140167935e9.7.2025.12.24.09.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:52:20 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/6] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Enable CANFD
Date: Wed, 24 Dec 2025 17:52:01 +0000
Message-ID: <20251224175204.3400062-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable CANFD channel 0, which is available on the CN55 connector.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
index d1474f1bd523..e6d6012a5154 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
@@ -138,6 +138,16 @@ led-8 {
 	};
 };
 
+&canfd {
+	pinctrl-0 = <&can0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	channel0 {
+		status = "okay";
+	};
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0_pins>;
 	pinctrl-names = "default";
@@ -166,6 +176,17 @@ &mdio2_phy {
 };
 
 &pinctrl {
+	/*
+	 * CAN0 Pin Configuration:
+	 *
+	 * SW7[1] OFF; SW7[2] ON - Use P24_4 as CANTX0.
+	 * SW7[3] OFF; SW7[4] ON - Use P24_3 as CANRX0.
+	 */
+	can0_pins: can0-pins {
+		pinmux = <RZT2H_PORT_PINMUX(24, 3, 0x19)>, /* CANRX0 */
+			 <RZT2H_PORT_PINMUX(24, 4, 0x19)>; /* CANTX0 */
+	};
+
 	/*
 	 * GMAC2 Pin Configuration:
 	 *
-- 
2.52.0


