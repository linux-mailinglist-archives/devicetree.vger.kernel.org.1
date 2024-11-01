Return-Path: <devicetree+bounces-118074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C269B8E70
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 11:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 05B2BB20ECF
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 10:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AAF41A01AB;
	Fri,  1 Nov 2024 09:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DfXQFLSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E9C19F117
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 09:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730455080; cv=none; b=Xsv2ZrjJ6ErhPOUaGh+M/su0pRKVNCcsBDZCksZo4oo4F7EkFSYSP3AnnTF2aL1BDbF5vqdgkjwZuVykMJ7SVZ1Gt7CXl0Y9BLFLaiKHW1mwqzK5PVH8IzpXl2ttNaqIdNGhwiV1uUzZpK3xZeW6askDFDsABTtT4ezBInOT4yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730455080; c=relaxed/simple;
	bh=Pf9k322Noul/AUoZF1lcvPKEcxZYOYxw5S5eT2YDnXg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C7IsCA9b7jy4xSBWi4GMhe7i2Aw1rOrxsvwCip6z362N0HDNVdACt++nYxoIn6B/H1hrjyHvmxgar8U8FYwwJRxPCW/kEriZoKVpEq932duuf1jQqTxKI9lA3vh2CS1fagBnUj2Go5jhQste7R4EsuiW50Lb8ZuSS2qoLzcvhDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DfXQFLSs; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5c96936065dso2251724a12.3
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 02:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730455076; x=1731059876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CsdPZF9emf18XQgtgS7Xp71XPblYsQ7NBPKTENRn3uQ=;
        b=DfXQFLSsrbMNA5VOknfWfhySdFrCjvu0tDgwrTEWF1sUtGqbT8H2o/gCGINS0nfl7j
         nouq6LwZH23a9x2wml4xQCO7kR5XuND8zx1qG4+OwTqPart8LGYYvU///slPG0xfhNRz
         3iGfjI65SIjGdrP6opiRuR27K2hWE3QtrLCR6ZdSmbeKwAVCGhYio8n4rqw9VdZCHmJc
         SbCp6ML4isJAZ4q0w80/ROUfyOvxpRSM+mZwYUVUxnWEf2Za4rbFiVXnZO/X2SiJmFRV
         lKCrJsV+lA9gi1SEv1bh8fr+HWB1HJOU5aSTYsUeATkfWePam0hr28Fg989jaizKmSfM
         WDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730455076; x=1731059876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CsdPZF9emf18XQgtgS7Xp71XPblYsQ7NBPKTENRn3uQ=;
        b=wLsI89ETYLhpZHApQr6F21CGq/E5y/tqHiaYhsyQ7KbnPbjCuhusfeLH5A6eKj/BCr
         5WnB59+eitujvhfKvVWsWfnb3z9h/DHXTPL+Jdu75EqO+36f7W6jVrHAyamTLDVWx4JB
         ESGMMR5luzHBkp9pv4GC4OIGa/6bqg8jn8l0jBvNi/eGenXqH7HLWQdI2j7UnF2QgjBW
         6FH2PDaUCFBE8fejL0vGKjB1ITrIFc7WirujOKTVSgabzo4QEURUdeV8n4D2e65s9QTF
         /bCdAwfmDHlVm5Q6reaURPnbgxtVnGOUY8MbAc3cExNHlERgFzaD2nAdHG64pFVtOq3/
         2Z8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXgsoWNYYaFdoFTnjjdqPrR90vt213EF0WfGFU8Z1a6K8F4y9alO1M5DbIwNIgtOZnzsZRyujSza31f@vger.kernel.org
X-Gm-Message-State: AOJu0YxBR3oNQvFHK1MjGa9PUQEA5lJ58wy5HX7uSX35RKBxsOSrNrVs
	VCuj5W69LdSNzie5zH3/6FaNURFWUhrLvK0awMmpIx8BrcSVRTx0GVS+gYXtXw4=
X-Google-Smtp-Source: AGHT+IHIInFyvvZ21N4w9XKZUzECowUn+aG9F5+oWwykmTnOmG6gYMfAOXIH3hB+PUh/16T6BdSrwQ==
X-Received: by 2002:a05:6402:518a:b0:5c9:76ca:705b with SMTP id 4fb4d7f45d1cf-5cd54afde73mr7392400a12.34.1730455075953;
        Fri, 01 Nov 2024 02:57:55 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ceac7c8d87sm1364136a12.76.2024.11.01.02.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 02:57:54 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v6 8/9] arm64: dts: renesas: rzg3s-smarc-som: Enable RTC
Date: Fri,  1 Nov 2024 11:57:19 +0200
Message-Id: <20241101095720.2247815-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241101095720.2247815-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241101095720.2247815-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable RTC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- collected tags

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 30bb4f5a7dfd..2ed01d391554 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -345,6 +345,10 @@ mux {
 	};
 };
 
+&rtc {
+	status = "okay";
+};
+
 &vbattb {
 	assigned-clocks = <&vbattb VBATTB_MUX>;
 	assigned-clock-parents = <&vbattb VBATTB_XC>;
-- 
2.39.2


