Return-Path: <devicetree+bounces-278122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKwKDDcJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9753E2D7659
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8FC6E3058321
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC614377555;
	Fri, 20 Mar 2026 08:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JuOaqtnV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0F6374E67
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996250; cv=none; b=Jqcb0549jPi0arkrm4yE4sJ0sEmSiZtC3GatEzHa0+mHcGGnA0Uxciur8Ee8MSN0GGnQAe43P0i9BbgFSBt+aSiZCax4nHqUTpjplIAqPvv6jG0UhslzSe1r4r8qOglI9h74vcOEvRZpjlUaXUbRlKObYPVwMdGDtfEfFYtUITg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996250; c=relaxed/simple;
	bh=sIYqiYDpAJwXuQ0qFcn4wWS2y672OzcQghs0iu2jykE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=slp6Up/ANPToo9wj4HG2JHhUzgNJppC1pH+XcuWBOZ/JWFPb0iO0JAJElJnnissaVLO7iwjKWa1YLUKGFwEzMFYSv6FSjUurm0Yw0DlP4oSVuxbNFTZFl5z3jtNUBOm9dkH7jy46lRTlUPYN3fB6OAnFX1CuV1am57bkihDpRzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JuOaqtnV; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2ad21f437eeso15121415ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996249; x=1774601049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKdWbHOtOd1Eh/qijp744Js8e+N53SqNuNkX4+eo90M=;
        b=JuOaqtnV2aAl1zNRIZTtEwmrhwjkIq1+3tvFvRqjjaBa59ZRJv2u+hgZOhtilyc9/k
         2P8qKxwdvBpcb9uOFGFgAhvI+Ra0Xtg9JynRmUAsup4MYZ3+VrGlBfWMmozhBXqOaH88
         1hw1L4sjSEx+HfJiBXDYpopihANM8aExz45fQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996249; x=1774601049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MKdWbHOtOd1Eh/qijp744Js8e+N53SqNuNkX4+eo90M=;
        b=dcDGrfXz8Ij6cs7UtHEZ5lt7k4i9jMGxGr++N35EJ0AaXYGu+1BLu40Xpyu+H8f1Uy
         ZOVatw0qyY56e4Bm0WINhEs8xDg01Q4dML/uwGbamKtlsnxst7+k31bvjo+Ab1V8RQL9
         SczHrBP3hCtPm63pM4pBOtER9eDZHr99nyDWp18l5PLj0oF4pLmuUui62YeAWZ81lsjj
         ElaEDKv589c6bA3/YFyio07HPM21ZtUz5XKJPxJu9IFQ28oB2L9WmPamN+3cjdAXRyAZ
         hrJEUfpk7AYmC/i4ECRk/lq9oBXmlnnppJ18q8K8DW5aBEwni2l11hUQKGgyfXSyFTop
         1V5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUHs888FTxlk08kqdZB+RChurm9RwssovRYq/f3Bs5ckGDst2I7a9DPVkEL1rGQKSTEP/ZzjaLmNYzY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkfx1GctC3YW7vYOAWQoYrix/0HjC5R3q2ujPlowu9jMOQ7yAI
	gefUvXusgTzbVVvITjIkHjW1txnPy5z240l504SwgmUgK/glxPx9m07BXRsFI92R7Q==
X-Gm-Gg: ATEYQzyHj08zhSezAmzifOsARPulsxU48NoUOqO+SkpWQvUHRicd8JrZ8KShECu6KVX
	yGp4GdONKSTOOSAX0Li+j0jhmSLb2hDRXiF9BG48aPLKGCev9d9zLP5EYHkBg3RmfON1x7CUefp
	XEYaItvnQOQ7RWpt2if5nVi8LcAYm9cYalNnwdcsvBfzUqwNFIFOS3QsT9DK5wT7+fPtUadjRXp
	dEVC7WuRmCsAuPc5fMlsFWVKNnBqOXTs0niijrbtGi5vwx1I08NE7fNGZL8Y0T1EX9Dmo7MxqW+
	Nsd8fei2KgNqMGt4ZEPiwkXRm4nhUwOKbkE1NCk95qsC6XVQIKqfu/x9q7VIGHz4jsDsttj53fF
	nZinKrZQ+DyHhJo6euJEGUO4mz4ObE0W1YE/cU6cI7PTfoMWbtY4Risr8lir8sJxsGJGAbBtQIT
	oTuBhZFizZ4RUDrhaEGFYP1zMTHE3Ty+RwYKwKcNGf+DvcipZsPTVIIfbozDi+qvXODPAGPdOdX
	pF94Z7nrJ12zdiWe0o=
X-Received: by 2002:a17:903:283:b0:2b0:5a4c:726f with SMTP id d9443c01a7336-2b0771d6e70mr50846735ad.15.1773996248677;
        Fri, 20 Mar 2026 01:44:08 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:08 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 04/13] arm64: dts: mediatek: mt8192-asurada: Add MT6315 PMIC supplies
Date: Fri, 20 Mar 2026 16:43:36 +0800
Message-ID: <20260320084351.2461060-5-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-278122-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 9753E2D7659
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There are two MT6315 PMICs in the MT8192 Asurada design. One has two
outputs ganged together and two outputs unused. The other has three
outputs ganged together, and one left independent.

Add supplies for all the used regulators. In the case of ganged outputs,
add the supply for just the first output.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index d16634e9f342..318903b112a3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -175,6 +175,17 @@ pp3300_wlan: regulator-3v3-wlan {
 		gpio = <&pio 143 GPIO_ACTIVE_HIGH>;
 	};
 
+	/* system wide switching 4.2V power rail */
+	pp4200_g: regulator-4v2-g {
+		compatible = "regulator-fixed";
+		regulator-name = "pp5000_a";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4200000>;
+		regulator-max-microvolt = <4200000>;
+		vin-supply = <&ppvar_sys>;
+	};
+
 	/* system wide switching 5.0V power rail */
 	pp5000_a: regulator-5v0-a {
 		compatible = "regulator-fixed";
@@ -1612,6 +1623,9 @@ mt6315_6: pmic@6 {
 		reg = <0x6 SPMI_USID>;
 
 		regulators {
+			pvdd1-supply = <&pp4200_g>;
+			pvdd3-supply = <&pp4200_g>;
+
 			mt6315_6_vbuck1: vbuck1 {
 				regulator-name = "Vbcpu";
 				regulator-min-microvolt = <400000>;
@@ -1637,6 +1651,8 @@ mt6315_7: pmic@7 {
 		reg = <0x7 SPMI_USID>;
 
 		regulators {
+			pvdd1-supply = <&pp4200_g>;
+
 			mt6315_7_vbuck1: vbuck1 {
 				regulator-name = "Vgpu";
 				regulator-min-microvolt = <400000>;
-- 
2.53.0.959.g497ff81fa9-goog


