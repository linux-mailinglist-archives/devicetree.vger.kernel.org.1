Return-Path: <devicetree+bounces-245229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DDFCAD940
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 16:24:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D61C307CA23
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 15:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28ADA31283F;
	Mon,  8 Dec 2025 15:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I21Me1NL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE8C2EBDD3
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 15:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765207307; cv=none; b=K8ei4nDFbmJ7OBQB1n6X29t/wrrKNxunHsIs8/im4Z6F9mnG3r+uT5QQu1abjEI6YoykLdIJijk9gzxFwcIbGgcEWIrpu/Mx22sTzHGSuD/WIgRRPGYuJucD+s+AtZJTVCke0QZOv0Hwp3PTAkB7dELtzpkl5jVZjPtaL/muN2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765207307; c=relaxed/simple;
	bh=gN4Lb0y9n07eAukUSb3zWgpxVym5NJ9gs7H5PBdfOM4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NnndLEruuKinJinSlj0sJSNmFJJ6bZFb0SSMV/oHGYpgTBpbLAtM4XUqH96QqfXpDEwe1MUCNz6asiB2Vo6l5QFc0ekFnTC8jm5XwrvvcXdBB3Bu3J1rMZem2JYunvXFdozCjz9MUDTaVdtlAFVzhDsvntym7oT/gbVd556/rAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I21Me1NL; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so5975048a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765207302; x=1765812102; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QfdD/YDC33QlvJadKSObtdJ/4VxyDtgNafuBr/k27aE=;
        b=I21Me1NLt+dtfJi1GUDfAG95hJZLvI8VHMM1ILpM2x0QzLuI7xUACzciW3MLcADcUf
         3h3Y6KPQqK14qT+5dnnRRJhIUAeSq5DwsXgfgA41htdYurWFI0FCb3/DAVVD1TT+fyYC
         ApwqSdogdXoi3UEuCv2CYhXlfDG3Y9xpB7Vm9sw2ohNmHcI7Rh8TZLRqJuNmpOE1nuMU
         r35hFp3gFpaGW+ySu1/TZ3MxQq/JtiMl+E/yRiDIlyQLDzpL87KbSkoIr7tNZWbEUa89
         g5HnbpgqHUPLsSJMbK5m5eCNZVMIJ+9ydMFk/lfZKoe51kfXlMoc5Yisc/Ef4DqJOsR0
         nOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765207302; x=1765812102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QfdD/YDC33QlvJadKSObtdJ/4VxyDtgNafuBr/k27aE=;
        b=wEj+7RiVNItgPKKkA4TEtv3mJddcWFDVIhnEtlhdUTLQsVmzUCTTjm21/4NIHU35+6
         uYA7M+OOwA2uQBhF2ltYBo0xDH1tAS1brWBXptRk1wr8R1NFC8qeAV+56dhbbstjFrGt
         tFl39hWZdqJIXpTkUcdE1MrbJt52mavRdnA1fGUwejza65eHMjzfhmx7BaSvwXtZ6GvA
         +wa2esfn3DYOEeCEIq4I59JoYhF2Ny8tpPgwMfXWM911KEuqBYw+XnAvDeCwLIA5troo
         3VEQRO0xX5vdb2aUG3+SdIxd7V7FLgCIM1Z4t6jTdG2tXBdRMrV/ds7sTR1/ayMCh42y
         qsQA==
X-Forwarded-Encrypted: i=1; AJvYcCURzVdn3lioCU3TsTFz6hPcdvxbGPUKHvgup7RNNBq4phkDTyswG0v8UR3UDt197KXX8an5rIB3wzGm@vger.kernel.org
X-Gm-Message-State: AOJu0YwNnjcePdpWL4jqJY25R4usWG9g9cEe4NIULsxAUp4AQY9Zkol4
	erLwu/PW6ikluWRWmmrWqzmX1pvSvfBsQTGU2ACs93gskbeJSAAZhw7N
X-Gm-Gg: ASbGncu5b76CfuMTHCMeXN7zd70p2xOWY1U+jo93Z5dKvC7u1JmNgNhExMooH5hgop/
	MFJqTAA8C1MSZc/ygXxU1xDM7NCujGEl5S706hc5cKisXybsIUYtmJq75omaOXGsin8lN6wf2BE
	evbx++m96J4CU05fKKQh4NheIgJbWpRlXfS84eMXwFMn5fupkv6XqoHNdbrLnLfdWEagQ71Mtvi
	NK7ZKrUsPYglQfzVKiTlubeiLr93tXAdF5LNF9SHLdnwvPRkX9/Q+U8sFG+wzSY34r+JEcqBuge
	7yQtnkdIEZljKceUe9G5IfBPRIP9SknLG67HUjoz3eOA6J8D4AZweCfW7sfPv18dKyNVdyzHkjR
	wUdO+ysSyu93RIO37dCOglr8JDiri+wgs3VHBLXHjTzcn9zSLmtRf9LT0y2XHaaElSaumabnT0k
	k6qJeZT2hmxaG8ViOcRF3mRK1cCMGwA1JOw+pDNk6ev3GWaVQIpwrcZMOu+kW5vRQuM7+U6ykfr
	ZZNYyoF9/dJOvL9
X-Google-Smtp-Source: AGHT+IEeIV2A0KiRT84xitY8kCT+hBcxwCHMfiNf3nPSUpux3S6fzyyFAznoZlJsgLE8JeaJ574ztw==
X-Received: by 2002:a05:6402:26c1:b0:637:e271:8087 with SMTP id 4fb4d7f45d1cf-6491abf210bmr7063920a12.18.1765207301937;
        Mon, 08 Dec 2025 07:21:41 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412deddsm11547484a12.31.2025.12.08.07.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:21:41 -0800 (PST)
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
	Biju Das <biju.das.au@gmail.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Subject: [PATCH v4 9/9] arm64: dts: renesas: r9a09g047e57-smarc: Enable GPT on carrier board
Date: Mon,  8 Dec 2025 15:21:26 +0000
Message-ID: <20251208152133.269316-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251208152133.269316-1-biju.das.jz@bp.renesas.com>
References: <20251208152133.269316-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The GTIOC4{A,B} IOs are available on the carrier board's PMOD1_6A
connector. Enable the GPT on the carrier board by adding the GPT pinmux
and device node on the board dts file.

Reviewed-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Added SW_GPIO9_CAN1_STB check to gpt0 node.
v2->v3:
 * No change.
v1->v2:
 * Collected tags.
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 0fd90d79b020..e4d2902ca4c8 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -84,6 +84,14 @@ &can_transceiver1 {
 };
 #endif
 
+#if (!SW_LCD_EN) && (!SW_GPIO8_CAN0_STB) && (!SW_GPIO9_CAN1_STB)
+&gpt0 {
+	pinctrl-0 = <&gpt0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+#endif
+
 &i2c0 {
 	pinctrl-0 = <&i2c0_pins>;
 	pinctrl-names = "default";
@@ -125,6 +133,11 @@ can4_pins: can4 {
 		};
 	};
 
+	gpt0_pins: gpt0 {
+		pinmux = <RZG3E_PORT_PINMUX(5, 4, 10)>, /* GTIOC4A */
+			 <RZG3E_PORT_PINMUX(5, 5, 10)>; /* GTIOC4B */
+	};
+
 	i2c0_pins: i2c0 {
 		pinmux = <RZG3E_PORT_PINMUX(D, 4, 4)>, /* SCL0 */
 			 <RZG3E_PORT_PINMUX(D, 5, 4)>; /* SDA0 */
-- 
2.43.0


