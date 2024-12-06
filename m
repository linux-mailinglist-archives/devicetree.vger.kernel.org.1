Return-Path: <devicetree+bounces-127967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3119E6D1B
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:17:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76CD328219C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15D76206F10;
	Fri,  6 Dec 2024 11:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IGUkLjZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E18206F1A
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483665; cv=none; b=YPa5URga/KAxpTUazjFi+mMggA2YtrsPpTWhHgLf4zAOd0G5IHtBpdJp6NRfY3wPFt796GPQu81s+3fF5ZtXJbDRNXLo3502hdjVrzEc5wM3sSeb0avHnEQAYmkl9UZOnMUqsXZSeVMnYnUQan3Abze8pbo/CWm5JGrl3axDzZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483665; c=relaxed/simple;
	bh=a4/gsQVtR7MVHM1KJuAuPMWGtk0F3Gae6xSRbB+vIWo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IFpBnMGsrLlPP7yl9Do6zCVjOBGkV6fr84xuiYniHPijtCKd6bVid99/YmH+v917L4zD2bIuzcEwqI9AcbPD3CrPBHVgXzgDMt+45Ibud12YzEhDA2M2NvRZVvrFMB6IJOpdisY4wjpnHbrPuwnAA7DZmg/cEZDuDqdYYS6LqS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IGUkLjZj; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa62f0cb198so197914966b.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483661; x=1734088461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r9Dnr8lBPRV9hwY5+L6VmdONZwzLphVT7+zA8FZuSvc=;
        b=IGUkLjZjdXavSltmBn7WJKCt7ZmfqpeDzq+c8eJyOQNUX4pmJzPPgbOzPqDCz+QuVr
         0Ee0ApCmiF9L5o970PXWXaFksLDbsPONJoXANY1yjBKK15S8LoRwv4yaI96oTxeBqJo2
         Yr+gjDZ2FhW1Kh/GXVTV7lOFJ5gypIS301DAgBcVqqqsEkmOy52N31+BTOmEd/w4lLyV
         bSuerh/gR7UOtBdU5HxbeKm1lP8vXbSByk1US73myzpL1FAp+lFZ5EzLpOngyAbGRIu/
         VC2PirSXVrkC6aPm57d0vKHq/bjE+wVAIULPleREHmFcG5WpkgNHfVv27jaeWKhyDKH2
         hA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483661; x=1734088461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r9Dnr8lBPRV9hwY5+L6VmdONZwzLphVT7+zA8FZuSvc=;
        b=lCXjeqttl4pffh49wHmnuRpU5xSGHzyYHkRFc6uW7EgA+xMasHK78okglTIgtt1flZ
         hHQhdWopN9+v3IxQ/d5JKcjySO6qQEggWKHEl0+LepTeLI8XgCk/xJKeXrchZIgs1Otv
         0i78zQSYFsbS08kerQkj5aYfNXQ5oDOzCjzlcs6UH/lECpQl45s3sisQjht9NAD1t+lW
         yg5BA2OA6U0CA0KgrGs+wbG1UlRzy+56HqSeY4loYIeficK1uyHWw7UtgSmkRLcPw1Ct
         4XFLmhAt7ZIno0Okfmis84XN4RD/iZuDe6eyisjE104jtOqQqXgXtLuBokIsrG9aYHYE
         +WWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQne6Ev7kFn09JaRJcCr81Wi/hPgD5CAcFTJi43zkI+2aCJXoI4G0N0xY6b1smvv55YNxayyATP8hh@vger.kernel.org
X-Gm-Message-State: AOJu0YzKhZFez7/Sv4BCQvMtwSURL2CXQlOczuEZXKCD7LH6s6JGV4O2
	ZjMzL7PFZYbyyuLDCvbrmd/rCbPsyIfaMGY45roQGVQ7mBMifsT9DMAdf57Z0m8=
X-Gm-Gg: ASbGnctpeoCsq+7gv3O9QBFIljfSIbTaZrLXyRyJVdjidwZr2jK/kobjkiDbns6t/4U
	wTOgZzk7AbJaa8CwLtVgbqJilzbu4XPc6KEUwVy9BoM/YxBP3nLdKAIEOi8ataL9mGrkJKAE/2z
	L2bUTapFv9wmEgvYbN9uSmTrqjCb43nf+E7AyG5n8gHRYlqMeovLdgqlWjNx2NHhIPY0oCON19R
	LCGPOWLM34Y0x+UuhQYWPOGq5UZaSm9+i60fPwnDWggiQWnidNkgaD9FRbWlFdFrP4GuTlnAntf
	914M
X-Google-Smtp-Source: AGHT+IG7gJqc4CGdANniAawsf3QrNvInv7nJ0Q0Fqm3FfT2wXTQhceZu1E4SlHPGcY841V3MyHiZiw==
X-Received: by 2002:a17:906:4d2:b0:aa6:2e07:5cf2 with SMTP id a640c23a62f3a-aa63a2086e0mr165912666b.38.1733483661317;
        Fri, 06 Dec 2024 03:14:21 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:20 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 15/15] arm64: dts: renesas: rzg3s-smarc-som: Enable ADC
Date: Fri,  6 Dec 2024 13:13:37 +0200
Message-Id: <20241206111337.726244-16-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable ADC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 2ed01d391554..57ebdfc858eb 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -94,6 +94,10 @@ vcc_sdhi2: regulator2 {
 	};
 };
 
+&adc {
+	status = "okay";
+};
+
 #if SW_CONFIG3 == SW_ON
 &eth0 {
 	pinctrl-0 = <&eth0_pins>;
-- 
2.39.2


