Return-Path: <devicetree+bounces-278127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4D85OKYJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:47:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F17E2D7701
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AFD630364F8
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D2137A4AE;
	Fri, 20 Mar 2026 08:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cXqlcjiy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F39379ED8
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996261; cv=none; b=G4Q0WiFHqFKgtsRj8XrU0cyJG47XoAS05yv8pZ3fn2/cFi0Kq1dlDGWuLHQuvGsAZHRgSwzpZT3VpZgsnJTbV2qNhBlbN2FieZHBer6efzZo+0kHC1or+qyc5ogC7686Z9zUskTsXX6M9bK7UHeK/Ft1ybAgnh0PT8ZhybtkuKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996261; c=relaxed/simple;
	bh=026L6lBIMNfb6dVPfCvghHlQhBemR0Un5Qb8cssV/B8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WAGDbA5biJGL7qd9CFpD0Ltlwcj0ojLR6OS79XZzIctoEHSaRQcoOcFkr7Wx/+RqQBDSD2v7wU1LACjBtHGBiAirW26Ax+kdtF7FOUjGaaBbcvG8Wp9FNOCSm/MFW60rDDskb/FQuH0ROri0q8FTaDGlcgHimLwjq11hNtQA0MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cXqlcjiy; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2ad4d639db3so1557545ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996260; x=1774601060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=skgYPmd/csbMfVTbMpbPZBTc77Iez0lUU9Z3iDW6dW0=;
        b=cXqlcjiyKifsMjzYvQ+yKM8/dcvi3rwThjC0xLYKqpbWIiJEShbJODyaEXvH44VEeE
         8Bx6hddkzf0ggLz93yKJw2YLX8x/MBnxnELT1EVw18pWeV0AQ/7xlLtditVTdZ0H5S/d
         bzhEVM7nbpssZLuvFdr/atQjbSvgBhCmivBIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996260; x=1774601060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=skgYPmd/csbMfVTbMpbPZBTc77Iez0lUU9Z3iDW6dW0=;
        b=GXAvkqsmWQajzcnW/zr9wjmWRN9iUSI5998JQ5lhX9HdsENnbTZw7fYHgHjVaeqMV5
         CsfIeodGSx744VY1eTSmnamstcpIyBrzm3OwTNYM2uGg04ui56+oUhH9Lv78RKibnULX
         9otVszcU9qdFlrfCwqzS5tlZxghGvNCk5YOETMwQms3guiDtgeGI3wvK7OvaMH6V9o9b
         /AIrvbFtAIk0Kyd14XI8VjVuthtevGKON5bFuCHJNa5AMwVZSnsNs7F/29MUHmD8Tl6l
         OZrBI0KkhymKTUPoHDdWNTtpjSdiODxMKZ52JgrxdCnArvpW/YQqqJ1Nn4mQfaxkJLGL
         HjEg==
X-Forwarded-Encrypted: i=1; AJvYcCVdZyEjZH3b6YTojSm8N60otw0VzNX0yqfT9Vffongyc2tGy9aaoL9dZGzpu1sDiqK9Nj+rDCqEPPJ8@vger.kernel.org
X-Gm-Message-State: AOJu0YyydaOja5jC+8MVc8vfYkhudPk+IXpFvP/bKsSLL8+hxaBc/Wx2
	eUculoDeFQk9yIdcdUhDE7SbT7k2tJIZ6LJn0oUeqPMbTDjKmcBTR7OEvxJ56JQD1Q==
X-Gm-Gg: ATEYQzx8q0uBVLY1aYKLZCkimjLFu9G2QAaWhCOakwkxwRJrlbDp8FVBjlTAilcvQTE
	8W8BSDY+9Jq2Gksmcg3q5EktaHlJ8+ibZcm0gSNrnzHL8iqpxMXngxiwNywPLbxG+Wc2tGNnqtC
	hbLjYgKkmypFNFUUElBle5J4jwnqzpxLzgusl2zjRuCk1T0MveaZBxseBqvAug0CSP6mpRlP/kH
	9trjBCuLXPlLE+UxS2bh5KbXQE0QhT3Rm59Eb2ESeXvldCLkh2ij1lm5qeEZH0Ct+4otDKLvNvA
	y+IK49TkpanMSv/2RCgHLPyggcF0kK8+8g+Mw8dULQ/Yqw35o+u11ekaa2QRuFp9gicm5TjkmgP
	qVvjFNE47Dvno/l8pwjnj462c0NQAdYQLLq/z916D9oCPZxGNAnVyNBor6IljR8rTVv9iiv+zH5
	n73MUYhLEQSwf93fj0nHOA4IMGmREIfx7uIXs1zrw7PLd12kt3FyJEvP+ksDSgj7H5ZFeyoJ0Ov
	KajtFZt
X-Received: by 2002:a17:902:d4cc:b0:2ae:ab2b:bd75 with SMTP id d9443c01a7336-2b0826d8db3mr20448475ad.3.1773996260036;
        Fri, 20 Mar 2026 01:44:20 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:19 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] arm64: dts: mediatek: mt8195-cherry: Add MT6359 PMIC supplies
Date: Fri, 20 Mar 2026 16:43:41 +0800
Message-ID: <20260320084351.2461060-10-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320084351.2461060-1-wenst@chromium.org>
References: <20260320084351.2461060-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278127-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 5F17E2D7701
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT6359 PMIC has a number of power inputs for its various buck and
LDO regulators. The binding recently gained property definitions for
them.

Add the supplies for the PMIC regulators to the common design dtsi file.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8195-cherry.dtsi      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index f1ff64a84267..b53e602659a7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -716,6 +716,27 @@ &mt6359codec {
 	mediatek,mic-type-0 = <2>; /* DMIC */
 };
 
+&mt6359regulators {
+	vsys-smps-supply = <&pp4200_z2>;
+	vsys-vcore-supply = <&pp4200_z2>;
+	vsys-vgpu11-supply = <&pp4200_z2>;
+	vsys-vgpu12-supply = <&pp4200_z2>;
+	vsys-vpa-supply = <&pp4200_z2>;
+	vsys-vproc1-supply = <&pp4200_z2>;
+	vsys-vproc2-supply = <&pp4200_z2>;
+	vsys-vpu-supply = <&pp4200_z2>;
+	vsys-vs1-supply = <&pp4200_z2>;
+	vsys-vs2-supply = <&pp4200_z2>;
+	vsys-vmodem-supply = <&pp4200_z2>;
+	vsys-ldo1-supply = <&pp4200_z2>;
+	vsys-ldo2-supply = <&pp4200_z2>;
+	vs1-ldo1-supply = <&mt6359_vs1_buck_reg>;
+	vs1-ldo2-supply = <&mt6359_vs1_buck_reg>;
+	vs2-ldo1-supply = <&mt6359_vs2_buck_reg>;
+	vs2-ldo2-supply = <&mt6359_vs2_buck_reg>;
+	vio18-supply = <&mt6359_vio18_ldo_reg>;
+};
+
 /* for CPU-L */
 &mt6359_vcore_buck_reg {
 	regulator-always-on;
-- 
2.53.0.959.g497ff81fa9-goog


