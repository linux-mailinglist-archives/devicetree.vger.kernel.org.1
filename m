Return-Path: <devicetree+bounces-297418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INC/Im6gBWo1ZAIAu9opvQ
	(envelope-from <devicetree+bounces-297418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:14:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A3E5403B1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D20F304069F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6953B2FCE;
	Thu, 14 May 2026 10:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kP7v1g7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAA53B27DB
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 10:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778753592; cv=none; b=PfdYEiWyd3JtHV74lxZkVMs7OPvVgTHWB36pWdRWbfEWugu8He9slOtxUtUI5mTvPigtn+KLltb+9dyCjKyy+sE4bb5wI6UKvVUP9HBSNcQPKoq2lWLABJVqTcwZv41yBHI+xOAzZHn1/f5zxLMtgP9E56fmOxuOW2CeFRw89CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778753592; c=relaxed/simple;
	bh=tEXmbdXvOcfeCPdDrqaL6QqgNkcvgTjPIB14Zku07TU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j+SJms9/yVCGF1+TdtiK6njTz5lZtNQPcexx9IlkT1QrUmXcweXUtb4+Muslv6cKhbntRzS0lUAdl7b/1WjxhPtN4g8eMYNTCfwOhn2P14ltTohpsSpmrAAasKU5naFCFq7GQlJcdRCe32VZyeclNa1/8O/WS+pACTMm9F1o8dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kP7v1g7I; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c80227c9572so3633392a12.2
        for <devicetree@vger.kernel.org>; Thu, 14 May 2026 03:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1778753590; x=1779358390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yo+sSnnnw2cgQ7ZHbjxHFE6KPW/XWkxC49iilF+VEa4=;
        b=kP7v1g7IQSlz4yiD8+MtRgeLJUxc/jbOc5f4e39nPCPS3bBOpNNcgwBZgr7fF42qxq
         LOgaXqOJTEAiXyyQSEWQg9KnhaLaLKjLELwvgQ97mJeHmsbTMXRqPSPWZHEwMyyMDxWM
         WLsqmu+xfXp17iMJ3jvr6I+ZreBvhWHUdJX9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778753590; x=1779358390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yo+sSnnnw2cgQ7ZHbjxHFE6KPW/XWkxC49iilF+VEa4=;
        b=NLFSltho7FrgOlG2iwmVTstmsnsO9tugWWariaq5sSYyswpOsUhwtznJUxgSc6OI/s
         7OgvYXXV1uNXRmlgsGtIAkhIczHS5+XLqgNjSl33X0gHX4159AswOK5D3T5VTzq/GmmN
         mc6FuRgJ+9zxG7CmuNRVdyxg0v7IdB5y2lLfAXF901sDEHh8uOKZ4uKg7B9ueDrq3Ume
         YmXt17BZkun6CH9STumvp/fyQtIGkaff6q1chtyDuo2eRL17yFCwSZE1Y6XzdcVwYG51
         hkkgULWmrn86JQ265VwQNz6G4B0m+BasP4J7j2SjORz6zSG2yvTxIMMl9oE2CD0MpEF5
         GqQQ==
X-Forwarded-Encrypted: i=1; AFNElJ8AZz58fweUqjEWM64sF2Rb1+NvZcXwfW/vIaVJmMgR/pdLrhllhc9UQEfAPjozbmTBTBs5oRnoKTJA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx95YFZAyHFbDzAl6Rvus0GyHVTP0/S4TUBkC475Epi0V9ThEnp
	wLPCrt/87eMN6tK6Y1hcvpxCPL9Mvtk567euSxikIAfrpsWdOxfxTV+aX7kIcDuVbDah1f5AzJa
	jR6A=
X-Gm-Gg: Acq92OGRKA/SfZbP+xL53//ynfkqNv6/gfvEAS25AYHSI9TEssW+vKCo96qEmNUn3SL
	C71rmDWl7EL7+rGqyT0V1IvxStUscBIxO4gdAo/uSkDEyB1xhQlquHyhcH9DhWlIAqgkkTxlKg5
	dbgKrfbzHhknq0Ev3Kk371RfBVHJfIQWIXsa/xEjv7d77c5pwyURWUMNlBJvSIRIz9mfNxrOmJ1
	AsnjTVMgyWkYkpa0b/eZxyyVEGW6wQX/rWh+zWwmB3gYeKkK3J/VLfI3oAo0kQxsUPSjWvV9ZiM
	61JPDBAKVT3Dv8lmLockhfhMRrt+YtMIo+4qb6feFahIYY7Dd6azwBLnndabrP3Xqf7gkl3cSqr
	LHA6Otxb3nsUCqMtYesN3dlvne0U1It9lTcF+RnOky+skdZKHfNF6JNmkOKtr9Qyl7oHpaQewYA
	r7HwaPIyI3KBWCVEx41ypXoE/HRhA4Px4wXZs0C5Hd75465xbWP+vIP0OPbevFcA6DxFXBYMBWg
	XDO+P/w
X-Received: by 2002:a05:6a00:3990:b0:82d:62ed:b01d with SMTP id d2e1a72fcca58-83f05bec752mr7365461b3a.45.1778753589741;
        Thu, 14 May 2026 03:13:09 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:3a91:2f7b:b635:8285])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19664212sm2898427b3a.2.2026.05.14.03.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 03:13:09 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: mediatek: mt8195-cherry: Fix names for EC controlled regulators
Date: Thu, 14 May 2026 18:12:51 +0800
Message-ID: <20260514101254.2749300-4-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.563.g4f69b47b94-goog
In-Reply-To: <20260514101254.2749300-1-wenst@chromium.org>
References: <20260514101254.2749300-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F3A3E5403B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-297418-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,chromium.org:mid,chromium.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Action: no action

The names currently given to the EC controlled regulators do not match
what is used in the hardware design.

Fix the names and the labels.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index ca2bb367ee68..538c46ada32b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -717,8 +717,8 @@ &mmc1 {
 	pinctrl-1 = <&mmc1_pins_default>;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
-	vmmc-supply = <&mt_pmic_vmch_ldo_reg>;
-	vqmmc-supply = <&mt_pmic_vmc_ldo_reg>;
+	vmmc-supply = <&pp3000_sd>;
+	vqmmc-supply = <&pp3000_vmc_pmu>;
 };
 
 &mt6359codec {
@@ -1436,19 +1436,19 @@ i2c_tunnel: i2c-tunnel {
 			#size-cells = <0>;
 		};
 
-		mt_pmic_vmc_ldo_reg: regulator@0 {
+		pp3000_vmc_pmu: regulator@0 {
 			compatible = "google,cros-ec-regulator";
 			reg = <0>;
-			regulator-name = "mt_pmic_vmc_ldo";
+			regulator-name = "pp3000_vmc_pmu";
 			regulator-min-microvolt = <1200000>;
 			regulator-max-microvolt = <3600000>;
 			vin-supply = <&pp4200_z2>;
 		};
 
-		mt_pmic_vmch_ldo_reg: regulator@1 {
+		pp3000_sd: regulator@1 {
 			compatible = "google,cros-ec-regulator";
 			reg = <1>;
-			regulator-name = "mt_pmic_vmch_ldo";
+			regulator-name = "pp3000_sd";
 			regulator-min-microvolt = <2700000>;
 			regulator-max-microvolt = <3600000>;
 			vin-supply = <&pp4200_z2>;
-- 
2.54.0.563.g4f69b47b94-goog


