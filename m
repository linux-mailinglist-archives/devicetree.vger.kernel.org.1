Return-Path: <devicetree+bounces-278130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGTYEOIJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:48:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B60B62D772C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 794593080C10
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9710937D10B;
	Fri, 20 Mar 2026 08:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QxQJVIGx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F14537C90D
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996268; cv=none; b=m+XqfvLPJV2rKIsYl6jlE0qUtQZvF22EOnDTwN2g7tzeOdjlR9/JFrzDgTUXaXVhjcdKhpK0bhCwKrStnLuSKwIwAKI5tNmm84TpDO/XLOT0aF3w40z1l3x4EHSc7jfZUo/D5xJ3Xu0vuho09QlTPR7OO1TlKb8LSMa3lBLpNPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996268; c=relaxed/simple;
	bh=7JT1Z73KuHWEIVWR7nAPcYPFZiYtCIfI8iLxzHxt0wg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f/HFHRGFYc2Jl+J3gy6vS70JOpqEY19s3nhPT1SPsdVSLpKnaoamDrZ3KxrikvtAJ+3wLq2VbXQCWz2X6+hb3yhskrSOkjhzO25DwDX9IUTRAx2ldgzzxdW+/U4Qm90TYonH1QOS5He2QF32mFMqpuVmuyGOx2DXvHhPOHpFG7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QxQJVIGx; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2adbfab4501so1538145ad.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996267; x=1774601067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dTU2TMlRUybrUic/FwbykBhoe+23VKaHqHh1ixkwW9M=;
        b=QxQJVIGxrlXWFFdhlOT+VVpK35XxXhDx2toNQHHkD1VyeijroAKrcha/fyVDxvnr1w
         GbD21y9lqBRQXKLnxn+NiEcFFJ4MezmXNwATul6pckYd1xQGbnJ1a4bhTPVATCJw5BQf
         pISSD2E7VcnPixtkAa2w5sCSCB8gPTvEpQ5LE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996267; x=1774601067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dTU2TMlRUybrUic/FwbykBhoe+23VKaHqHh1ixkwW9M=;
        b=eOlqseySZRClR+zzdxLcDgjjfY9b9aUnCcX86X0kY1KGxzNwquN4cLUAsd5gzeL209
         /Jx+ZDhfHh5fA3RBhOCSlMuPgDvyFQN/cJYpvX+FjwuszRMrqjWuPvNn0CAuPteLUM2z
         PIOQev+4giay1eX5Vn5f3qYc9v1lsyYsqdMz/RBxeXbmhRI7PU4vsLVn4FswKu8+rb5C
         sogS7GxyiQm4aGwl4fELnhgR+y0Jvqc2u+kGMk31gsw1dKWWW2UhmPUnipVJ5x6dUnVr
         1tS85CA32qpTPVoc2GldISasPgTxkRQ5m2lbEW6oVGxRAwIkVAXMp1IpT54YOd/KkxWJ
         bBYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwexQhqZ+ciIVJywdbGKaVvGUWWsuTUhGC0GLXSrmwfphUMqONDatPpP6JVSdXLX07Kl0TZxlmYEEl@vger.kernel.org
X-Gm-Message-State: AOJu0YzAodjzlV999B6bgLq+umj7ovoe0d27PfZGNYFTfFGlZz3nwE4h
	rjUP90enpUuApfwiNBgKRDtIYKOzouJuBmSz1Ljt4r9qFiOKXGy5DfCfmce3tIDNmzPXMiB/Jvv
	lJZw=
X-Gm-Gg: ATEYQzx5wXUXXZJfh04yzcjYWG66lj3S3+v1AwYOjfXbCjSQRIfEMxxlhxDA3w/VVGf
	hRPbXNc232euEOfpqt43bYQBRaxYF04WMVQ6IfpJDDytYYA3tShWSaRmUDcEnDvqo2zHM85RXK/
	C30v/1MEeZlxAGUwEXIqW1UU3Z4C3C6rC5cbD4mmequzYaiLNJVrSIsIJAfvnWEfFYrUQ2ED2cR
	43L1zbIdRhz6ohaAeG9on7IbwsP+K+yVwUVqTMEguB0ggke9PZR44+uu/d2qm9U6FFU7MZKVZe6
	/QPVqtMur/b3G5pbXyKBPm8wOsqF6KsHHvxwvNThloZLr7XigXWl09t3Nb06W1IXThIZtl5qL93
	jPW071T5/cK9FJTwalM7JCw6WManOj8DYW/MMzZVDa0V3/4kfBz2sPhkpRv3RIJRljuccuNR0bp
	BjcwWzwJA0K4qW4Gz3P2Fti11B7hmBXmMcQI9uKtbUJ7AjQkSM1KCnbZydj9TTTEAWN5YnU+20c
	j4sp0xJ
X-Received: by 2002:a17:902:ccd2:b0:2b0:5682:6973 with SMTP id d9443c01a7336-2b08273d0d4mr19970415ad.19.1773996266943;
        Fri, 20 Mar 2026 01:44:26 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:26 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 12/13] arm64: dts: mediatek: mt8188-geralt: Add MT6359 PMIC supplies
Date: Fri, 20 Mar 2026 16:43:44 +0800
Message-ID: <20260320084351.2461060-13-wenst@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278130-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: B60B62D772C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT6359 PMIC has a number of power inputs for its various buck and
LDO regulators. The binding recently gained property definitions for
them.

Add the supplies for the PMIC regulators to the common design dtsi file.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8188-geralt.dtsi      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index 8e423504ec05..fc84dfedab03 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -544,6 +544,27 @@ &mt6359codec {
 	mediatek,mic-type-2 = <2>; /* DMIC */
 };
 
+&mt6359regulators {
+	vsys-smps-supply = <&pp4200_s5>;
+	vsys-vcore-supply = <&pp4200_s5>;
+	vsys-vgpu11-supply = <&pp4200_s5>;
+	vsys-vgpu12-supply = <&pp4200_s5>;
+	vsys-vpa-supply = <&pp4200_s5>;
+	vsys-vproc1-supply = <&pp4200_s5>;
+	vsys-vproc2-supply = <&pp4200_s5>;
+	vsys-vpu-supply = <&pp4200_s5>;
+	vsys-vs1-supply = <&pp4200_s5>;
+	vsys-vs2-supply = <&pp4200_s5>;
+	vsys-vmodem-supply = <&pp4200_s5>;
+	vsys-ldo1-supply = <&pp4200_s5>;
+	vsys-ldo2-supply = <&pp4200_s5>;
+	vs1-ldo1-supply = <&mt6359_vs1_buck_reg>;
+	vs1-ldo2-supply = <&mt6359_vs1_buck_reg>;
+	vs2-ldo1-supply = <&mt6359_vs2_buck_reg>;
+	vs2-ldo2-supply = <&mt6359_vs2_buck_reg>;
+	vio18-supply = <&mt6359_vio18_ldo_reg>;
+};
+
 &mt6359_vcore_buck_reg {
 	regulator-always-on;
 };
-- 
2.53.0.959.g497ff81fa9-goog


