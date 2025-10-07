Return-Path: <devicetree+bounces-224189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA8BBC185E
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:38:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1886D3C4AF3
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB392E2659;
	Tue,  7 Oct 2025 13:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Nvi3bpaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5492E1C7E
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844246; cv=none; b=khEmnzIcqokzE5r8ygy2tMgx5HneDjJYy3RDC0jeTdOgVNihczhklkrlO0sMjZhPsJ4lpSibGppSRT4NVwMGVSo1zvlYeVB7JDUv+eLcsrQlMiJWYn/g+laayIJyhAHxon6UIIZQ2UYoK3y1x2dfkqCYJfxDdB4gtET7H99d9Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844246; c=relaxed/simple;
	bh=yaCx/QXvNC+g5usMHZ3TsHW2T6LwSJ/D6SVOOxCGqwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LEMSNC0tp3lkk2r+xHzaw/jYP9rbiK/JxWYvvgruuyUspvxXLGqN7sa2TI4Cw2evD9XXbnreBLDxYKlqorPVcGTRH6cRY3Zie5u6uEVVCr6m2li5p+Fd7KF9H7rdS8Fv1tKY7GOnUeA7euBsPhdTvDAt1fRm7w2h6Roe1KYw0NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Nvi3bpaq; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e33b260b9so59611455e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1759844242; x=1760449042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v1z8hWvOzadOavRT6eY0ADJYVQmzPY5Un07yvaG3S8o=;
        b=Nvi3bpaqAeNOr99iDZCXPGZUh/cBiCtvjUs9HYDnQsWXWQod7HuHRsHpQa5xg79Iy4
         6tAVoFt1VO2SKwgfE1oIj/kVl9gbu8w/d7ikwsCkkBp95Ydew2Yo6J818tA/TsqMCgHK
         H7j3ZWYK+py6DtxUeFa5L82eWNU3S2JCIWlmFBClaTJdOola0x9q5oolVoH72cthR0KB
         /88AnyjeItBSGe0/uP6ZHGgZJqAqzEg1tTlpTIXrmRR8ibydKUTk9cmEPE2P1SeKgDLh
         /SBmgbbT7twGNf7dWAw8LkFiC9uVEXs0FxoafghV/ppsenWun3HE3EGRbw4Yp7rSp+f2
         C77g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759844242; x=1760449042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v1z8hWvOzadOavRT6eY0ADJYVQmzPY5Un07yvaG3S8o=;
        b=bviu/fTUOZjK67jRTlS4SoLo506H6C3ByjW11ZKXaST9L3W7rsBuu10os2z/8f8Sn1
         yNg1a8Qju/1jZ7drBNPjLBwOGSvetargfvAmmqZfsM6k3mn3vvzFhqkU8dm+J18oZMXC
         3fpFyki4R5QzPpXmcUVc1ZXYBoq24O/swCXd+8jlnGDr6HuztY8Kw3SbXDcuPYAXrVvf
         dfPV86ifNDe/lFZG2PVCNbZuPlNFL4pVkLeRCztHgNo0NvK23qVUWpMDQKoEKAaTW4uE
         BTED9YKOIl/CLIXy0ze1tvuvstAoXp3bbNUMKaQndH87zPzJTqD8JkMlB20qypj6bY0X
         FUKQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7egXugB8dHHnhziw/WqNkDR9vhmqs05mnpVgkNAoWbHJRfANyq6LUBZKqS+12ghli9mCOpQTAKbEC@vger.kernel.org
X-Gm-Message-State: AOJu0YwvjZTBOSMrNtx6TUjdDYXNDXk66Q+S4FrrVgkcceBvfvsLei7U
	W/W3TA3IecZhY503hitqrw28HpOQeC2VoUt5uxF2ssp5GbmpqW/w8aVO1dNTYiH9Lis=
X-Gm-Gg: ASbGncugFbmwDTxC4FG4RW3TdPYiSe1Y3XbISrAD7g4/dmbozodmMzH6pfj4YWVkfHP
	nW9768vX20U3uCEI3N2EWVbIi0K0LgrNvNWZCDnCM4CqJxw1Zm40c+LpRueXNWMuqQRiEO6dBMu
	j/P9AX5qUziky0SzfF+mXzl9i2aQgd20ukXAlPJExV7rPDUYxg46AYgSULCj7Br9WPOz9qYkfAQ
	8HAniHESOkXt89Hn8/pZU/kGv7RKiKNXztEFSbBosDCFQN2p0ueVXX6JKrmoEUUxPH4k5nSkOui
	41qSQbX93/RB4vlrXAN1yyFlty3d6BzaPU6XXyoQJ5RuqPhrObnyQSOc4dXpD+NhYKfeHUg44ym
	hodLoJXCmhMb07Jf6DeL8GYWLm9IxdOrv
X-Google-Smtp-Source: AGHT+IHfz9zJI0lmSyerN85rG4LviPI/1bLy+sw6oZnepm7Ovg0zyDxv3/LrYkgGVaFxC0dz9CvL7A==
X-Received: by 2002:a05:600c:5488:b0:45b:88d6:8ddb with SMTP id 5b1f17b1804b1-46e7115afa8mr119636995e9.37.1759844241581;
        Tue, 07 Oct 2025 06:37:21 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.59])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e674b6591sm272189625e9.4.2025.10.07.06.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 06:37:21 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 4/6] arm64: dts: renesas: rzg3s-smarc-som: Add PCIe reference clock
Date: Tue,  7 Oct 2025 16:36:55 +0300
Message-ID: <20251007133657.390523-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Versa3 clock generator available on RZ/G3S SMARC Module provides the
reference clock for SoC PCIe interface. Update the device tree to reflect
this connection.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- this patch is the result of dropping the updates to dma-ranges for
  secure area and keeping only the remaining bits

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 39845faec894..b196f57fd551 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -172,6 +172,11 @@ a0 80 30 30 9c
 	};
 };
 
+&pcie_port0 {
+	clocks = <&versa3 5>;
+	clock-names = "ref";
+};
+
 #if SW_CONFIG2 == SW_ON
 /* SD0 slot */
 &sdhi0 {
-- 
2.43.0


