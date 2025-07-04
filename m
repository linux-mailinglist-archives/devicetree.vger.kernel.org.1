Return-Path: <devicetree+bounces-193155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4501AAF97CF
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8AF61CA709E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04D72D59E1;
	Fri,  4 Jul 2025 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="m8REOPak"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC282DC32D
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645693; cv=none; b=Bz6sEh6gyCJetvJxPi/Lan06AeyMl98XOhnCfg69HVuP2HixsrjPvboEICMztlRmZdUU87h39nF9IHcftEWDlev3HGdCeUGoQd75yZfJpffrqH+sp4MXmRIghSFaCOoib/joMEpUgH7t/Nzh5KFXXBcfkGuJD+/3ljim1Kgy5UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645693; c=relaxed/simple;
	bh=gR9Wn5lFTL1dH5LwfqEgIlxPVfhpUTsJpw7A7wwQ7mE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FAiel8vEc0id8BbgBrmVQZIyFBHiMN/e27lWcp1q7y8GmRNihOBBefdLMACDGa8pwxvke6UuDXxJWDoQxOMDzNGPRwnKtYfWcKo6jv9+n+lp743pMaFhH/VazC+/i9Gvrh76sdzOfGnWnWncDJzuJ3rb6ZwclzfXc00I+C009eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=m8REOPak; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-acb5ec407b1so186011466b.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751645689; x=1752250489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RkNu2VPdZ05H1WkOeVUqdreqBFI4sSTNmK5wwP9pjsA=;
        b=m8REOPakEYChY/mVGl38GgbbgXq8xyhEg1Or896sgrIw5Qzg1QW8elA6BNjvsChfYT
         UFLIQDjY1bXM3NbgpofiqjFzcJvWpJEsIzIZelVjooXtoBfKkHKY7FsTCHKeA8mwUpu/
         NOCQDWBd1vrZy61n8WxjirBvbk05J1Z9qph2yinwT/CdxV9eNucZFu7ljm3+nKXoZh6n
         J7XFM2c+NHh+B3QPw0E1fTXCbQvUQRuSHCxqmZRlfXjRZwgGNmdR9XKpo7kc/dv6GZ+e
         oXyMEpHgqwH/F7u4wbRgpRyW6kLmblDiseIaCrPuIqtWC7Ec4Sn9EVV0baoJ1UYM9+JI
         uukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751645689; x=1752250489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RkNu2VPdZ05H1WkOeVUqdreqBFI4sSTNmK5wwP9pjsA=;
        b=rJNRX/3H4qqeKZSfAMjsevQuCnVNiAUOrPgll7dj8eArsKv/FMx8JR82k/La4zbbDN
         IRK9YiOw2bHm6kcw2L0s2rYsbljiqGQrvX2ISAyIS4wPTA20jxGmyuzGQRlM2DzHQd3N
         RQXZtMlCj7SASImKwIOTB5gBUMnrQ1HcEgPNpyH6XE0sDyOT7/WW3ZBQEKOakpaZWdz1
         J9zRjxEtekHcNUyWTtEWJZcHqEIzs8fHhpI1H6gUanDXF1pcZCl/dwlB3bsbfwFxkb0O
         c9aMgZBCACNhAF5Z4zYDWnx/qYHBhvPpPBy+Isz2j9zUYxru8Eah3GC1gEd5AZbeVKXC
         deBg==
X-Forwarded-Encrypted: i=1; AJvYcCU5/PHNWW+0MSN/oItgOXhjIDQ2N7MzKZDUd7PuB8mUmV9db6NWNuKi/NYLHrXO5cM9B11vPxg15p5X@vger.kernel.org
X-Gm-Message-State: AOJu0YwOjPKLw4oIYzYE9yt0O42t63QbfQJZT3RM0vVGi1dB4Je/EFMV
	0bvVOwKLB+YZi7QS8PXaz9/8B144mx2AHYWPvmT29HefymA3XI4FhLZphShF1bXJJho=
X-Gm-Gg: ASbGncstFMdvfmMXBR8hK434gpRpKfrPWeQtBaZkwZ91KqfbKEV/wvTX9Kzz9a4hy6u
	in503+WKMYIfzpCj14uCMK5GUgt9VSHYCcFiGEVOmLMzB0HPaE/BRjwAzV1PsXy0IcdynZrOmFs
	+UslCRJwSHvpLnVHNVF9tSv9kO7S7AvrIOOuNbGKIoEBNXu7f4Kn0NfNLKvSPY3VlbRPGkIWK5+
	xGbKDXDnMNh/OWscE5KeLEB4oGy0eLkoGMsSJusiJWVRd1wo2BYHyobHgUQODaA6Qo/bm9hPreU
	WfGizVB8tFFclsdrXDeXkheYWt5gPYySXB/9EgHLGLoaQmmtHtT+5X1phAhJyRlKXZ0Yst7oEWP
	X/IbKUQwGE2ZdCXE=
X-Google-Smtp-Source: AGHT+IF8OBJYopz78uTu4zjr9M4q7cZs8YsJ5lxwKzH9GFcsxUYxUdsvzpbrV/sgFDsSrcOtLDUf2g==
X-Received: by 2002:a17:907:3d0c:b0:ae3:163a:f69a with SMTP id a640c23a62f3a-ae3fbd13e86mr283273366b.33.1751645689346;
        Fri, 04 Jul 2025 09:14:49 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d9215sm194703766b.2.2025.07.04.09.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:14:48 -0700 (PDT)
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
	catalin.marinas@arm.com,
	will@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	lizhi.hou@amd.com
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v3 7/9] arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe
Date: Fri,  4 Jul 2025 19:14:07 +0300
Message-ID: <20250704161410.3931884-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The first 128MB of memory is reserved on this board for secure area.
Update the PCIe dma-ranges property to reflect this.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- none, this patch is new

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 39845faec894..1b03820a6f02 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -214,6 +214,11 @@ &sdhi2 {
 };
 #endif
 
+&pcie {
+	/* First 128MB is reserved for secure area. */
+	dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;
+};
+
 &pinctrl {
 #if SW_CONFIG3 == SW_ON
 	eth0-phy-irq-hog {
-- 
2.43.0


