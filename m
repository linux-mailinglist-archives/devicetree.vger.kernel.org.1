Return-Path: <devicetree+bounces-239260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABECC6317F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:15:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A807636678C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016C5324B0F;
	Mon, 17 Nov 2025 09:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bRRQepz3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67C832825D
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370575; cv=none; b=CLJXh4Lki0cnYj4WAPVoCcoEC9D6GtEBCf5GhQ7WGuyjr78xm556GqRDfzjtnWoTpA+akuQ1VV2SBo4PRfzOe6YpN7H4Le0bzut+HGSVNXc3c7KpytfIEc1N/bdweJQ3R7qsPKY0Nh8Ktu7ytrPKjgKAyaalsvMnTZe61xXmAuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370575; c=relaxed/simple;
	bh=Uc0m+u0MfzVGyhFoLK6/9eDa4VlgU+XOoqI+PI/Ba+4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GX8ay4OhUrvQi6flNiBe64ol6Wlc3eLTTlaKdDap2WMmBth4CH/sOirfpH/sWF0x7jUU7Rwmx1vFakDDQlTRDUAf2Hz253nKclJUrNlg9oC03CIB3WdzscNCQlMNd30Ub1sTFONCSVb7i8yhYdeLNR/e9MpNK0flDtB27U6MQWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bRRQepz3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b3b29153fso2153300f8f.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763370571; x=1763975371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8pjDugLKEkjAIimWBDbAyQf5qbHt8SfkOSPMTheV0Y0=;
        b=bRRQepz33UaVXEcFsMqvBSRlcw977qDw4RQpJDuuZmBxQqwcN60KUcK7f/xnAHApPx
         yHkKTusUigICyyev0WqoLpMCVLbGe6g80WJnvoWqKY27c9n84HpPMAn3lWG/iYNtZkhz
         VAtP2v5rx7tosaf6oHwrmtTybPsuaxXm2lfhu24dY2OoOSVyqZGQ9zzmLOgmb4xsHwjb
         ZFzccWdAa+6sgnx1uuSIQ2Q9rH7yDs7CjJU3nCWhMnHEjQOAaoiDKB5rCob2k2c5rbJg
         +5qYhATuVAGb9ad8gHCK5UuiwM2jyckb0s7wdyGg2YX3v2nztzO8kxFlcVJjbHYktQcT
         ckIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763370571; x=1763975371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8pjDugLKEkjAIimWBDbAyQf5qbHt8SfkOSPMTheV0Y0=;
        b=K3bKeWATrCeDkjeAh+PKIhBXRHowp8nLZc+PAsPe0e7UovOKLV2+AOHGekvBDK7HeK
         GacbWUHUpCOuKfs9I7hwv7rzvPFaOnkFoXMQZvIoDG0RjIGlYfp+eBodNv85sxOf3EBG
         HnapoD4YH/ipMB2QovExCnMUjTo7emVRZN+h3uzyG99u8cgmX4Vnv3Vfb0jxbQehyCMj
         2laixDn1IHzFxx4ke6nmioKj0gIgEMvuooPbbqUCRwVGzlEU8U3lu+U3Z90F14k+fGa9
         CusfW039+on35eovg/LAJfB9+tufQLD3tpO7lV+TqsnULw+TSYWGvUxor+kuRzzTX38t
         Ng1g==
X-Forwarded-Encrypted: i=1; AJvYcCXlVdjibJ0cEn+83uDwYwysnQJ/0ugWN/EDfcMTWp0grbzsrz7ah+Zdvf0L3tfGGQ2rOocLUY24c4Oz@vger.kernel.org
X-Gm-Message-State: AOJu0YzZiJCY8I4zhz4N1VmCD3doa1PAw+VPX4Tpv4NqG6fxON/3oEG9
	mQJvUqfUr5Xw2kR+1KCbxxP9O6g8zv2DDe9MvfenvRvj1XOJC5rgAvtn1W4H0lMIC0o=
X-Gm-Gg: ASbGncsxiLKmC4wBSdP3SsUjToE3w4sRU4EOoKDZKAPWfMa8cdTe0vxt88VtS0E/5jY
	oB45gsIq2RHUa1d3kkM5p9fmebiMmO5xQaFQriH2izx0uawrGJOaMJ46KaE8rR1rGRw/SRqhX1V
	cJMj1VPNQUWSB4pPuWPnaAbdGdOwF/2yaDej6CUOqZOqobWbQ7VUi5R7UBVdJKMS4o3pzOAB012
	XUd2OzwuDPSz22Cj5fMHBJoRlqo80hccmbcOT0nOX5F92iQsEQhv4iiBVrmCEdwzfKVmCGFTapU
	vjb63rPsMouqi7GOOOSCMbsugjFb6qzOZ6hXEZh8tVa80D4WWSkt+/hWDk3jWSJkt1etmsWL5Kl
	YQT9nzheHH1hDe2KAUVaS63+Ug+r9jtSRjHI6J/hzfoGr+52IxQxTDU9jCoExwYHGtsDy+Vrwu7
	wh6x8Pnp3+hZ2alMnjyvWG/DV/pCfN75c2/eceHvnQ
X-Google-Smtp-Source: AGHT+IFgZYhCnic6U3YhRTVjNXH++Id/AtI5+oMJdQ8+Yorkl9uPjde2OHoNIXg0bcsWSzcUKJfixg==
X-Received: by 2002:a05:6000:2305:b0:3ec:db87:e5f4 with SMTP id ffacd0b85a97d-42b5932482dmr10896537f8f.7.1763370571069;
        Mon, 17 Nov 2025 01:09:31 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm25703786f8f.26.2025.11.17.01.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:09:30 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
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
Subject: [PATCH v7 4/6] arm64: dts: renesas: rzg3s-smarc-som: Add PCIe reference clock
Date: Mon, 17 Nov 2025 11:08:56 +0200
Message-ID: <20251117090859.3840888-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
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

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- none

Changes in v6:
- collected tags

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


